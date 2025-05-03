/*
 * MinIO Cloud Storage, (C) 2019 MinIO, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package parquet

import (
	"fmt"
	"io"
	"time"

	"github.com/bcicen/jstream"
	"github.com/minio/minio/pkg/s3select/json"
	"github.com/minio/minio/pkg/s3select/sql"
	"github.com/parquet-go/parquet-go"
)

// readerAt wraps getReaderFunc to implement io.ReaderAt.
type readerAt struct {
	getReaderFunc func(offset, length int64) (io.ReadCloser, error)
}

func (r *readerAt) ReadAt(p []byte, off int64) (n int, err error) {
	if off < 0 {
		return 0, io.EOF
	}
	reader, err := r.getReaderFunc(off, int64(len(p)))
	if err != nil {
		return 0, err
	}
	defer reader.Close()
	return reader.Read(p)
}

// Reader is a Parquet record reader for S3Select.
type Reader struct {
	args   *ReaderArgs
	reader parquet.Rows
}

// Read reads a single record from the Parquet file.
func (r *Reader) Read(dst sql.Record) (rec sql.Record, rerr error) {
	defer func() {
		if rec := recover(); rec != nil {
			rerr = fmt.Errorf("panic reading parquet record: %v", rec)
		}
	}()

	var row parquet.Row
	n, err := r.reader.ReadRows([]parquet.Row{row})
	if err != nil {
		if err == io.EOF {
			return nil, err
		}
		return nil, errParquetParsingError(err)
	}
	if n == 0 {
		return nil, io.EOF
	}

	schema := r.reader.Schema()
	fields := schema.Fields()
	kvs := jstream.KVS{}
	for i, field := range fields {
		name := field.Name()
		value := row[i]
		var val interface{}
		if value.IsNull() {
			val = nil
		} else {
			switch kind := value.Kind(); kind {
			case parquet.Boolean:
				val = value.Boolean()
			case parquet.Int32:
				val = int64(value.Int32())
				lt := field.Type().LogicalType()
				if lt != nil && lt.Date != nil {
					daysSinceEpoch := value.Int32()
					t := time.Unix(int64(daysSinceEpoch)*86400, 0).UTC()
					val = sql.FormatSQLTimestamp(t)
				}
			case parquet.Int64:
				val = value.Int64()
				lt := field.Type().LogicalType()
				if lt != nil && lt.Timestamp != nil {
					micros := value.Int64()
					t := time.Unix(0, micros*1000).UTC() // Assuming microseconds
					val = sql.FormatSQLTimestamp(t)
				}
			case parquet.Float:
				val = float64(value.Float())
			case parquet.Double:
				val = value.Double()
			case parquet.ByteArray:
				val = string(value.ByteArray())
			default:
				return nil, fmt.Errorf("unsupported type: %v", kind)
			}
		}
		kvs = append(kvs, jstream.KV{Key: name, Value: val})
	}

	dstRec, ok := dst.(*json.Record)
	if !ok {
		dstRec = &json.Record{}
	}
	dstRec.SelectFormat = sql.SelectFmtParquet
	dstRec.KVS = kvs
	return dstRec, nil
}

// Close closes the underlying readers.
func (r *Reader) Close() error {
	return r.reader.Close()
}

// NewReader creates a new Parquet reader using the readerFunc callback.
func NewReader(getReaderFunc func(offset, length int64) (io.ReadCloser, error), args *ReaderArgs) (r *Reader, err error) {
	defer func() {
		if rec := recover(); rec != nil {
			err = fmt.Errorf("panic reading parquet header: %v", rec)
		}
	}()
	//ra := &readerAt{getReaderFunc: getReaderFunc}
	//const largeSize = 1 << 40 // 1TB
	//file, err := parquet.OpenFile(ra, largeSize)
	//if err != nil {
	//	if err == io.EOF {
	//		return nil, err
	//	}
	//	return nil, errParquetParsingError(err)
	//}
	// rows := file.Rows()
	return &Reader{
		args:   args,
		reader: nil,
	}, nil
}
