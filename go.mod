module github.com/minio/minio

go 1.25.0

require (
	cloud.google.com/go/storage v1.56.0
	git.apache.org/thrift.git v0.13.0
	github.com/Azure/azure-pipeline-go v0.2.2
	github.com/Azure/azure-storage-blob-go v0.10.0
	github.com/Shopify/sarama v1.37.2
	github.com/VividCortex/ewma v1.1.1
	github.com/alecthomas/participle v0.2.1
	github.com/bcicen/jstream v1.0.1
	github.com/beevik/ntp v0.3.0
	github.com/cespare/xxhash/v2 v2.3.0
	github.com/cheggaaa/pb v1.0.29
	github.com/colinmarc/hdfs/v2 v2.2.0
	github.com/coredns/coredns v1.14.2
	github.com/dchest/siphash v1.2.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/djherbis/atime v1.0.0
	github.com/dswarbrick/smart v0.0.0-20190505152634-909a45200d6d
	github.com/dustin/go-humanize v1.0.1
	github.com/eclipse/paho.mqtt.golang v1.3.0
	github.com/fatih/color v1.15.0
	github.com/fatih/structs v1.1.0
	github.com/go-ldap/ldap/v3 v3.2.4
	github.com/go-sql-driver/mysql v1.6.0
	github.com/gomodule/redigo v1.8.3
	github.com/google/uuid v1.6.0
	github.com/gorilla/handlers v1.5.1
	github.com/gorilla/mux v1.8.1
	github.com/jcmturner/gokrb5/v8 v8.4.4
	github.com/json-iterator/go v1.1.12
	github.com/klauspost/compress v1.18.0
	github.com/klauspost/cpuid/v2 v2.2.5
	github.com/klauspost/pgzip v1.2.5
	github.com/klauspost/readahead v1.3.1
	github.com/klauspost/reedsolomon v1.9.11
	github.com/lib/pq v1.9.0
	github.com/mattn/go-colorable v0.1.13
	github.com/mattn/go-isatty v0.0.20
	github.com/miekg/dns v1.1.72
	github.com/minio/cli v1.22.0
	github.com/minio/highwayhash v1.0.2
	github.com/minio/minio-go/v7 v7.0.11-0.20210302210017-6ae69c73ce78
	github.com/minio/selfupdate v0.3.1
	github.com/minio/sha256-simd v1.0.0
	github.com/minio/simdjson-go v0.4.5
	github.com/minio/sio v0.2.1
	github.com/mitchellh/go-homedir v1.1.0
	github.com/montanaflynn/stats v0.5.0
	github.com/nats-io/nats-server/v2 v2.1.9
	github.com/nats-io/nats.go v1.10.0
	github.com/nats-io/stan.go v0.8.3
	github.com/ncw/directio v1.0.5
	github.com/nsqio/go-nsq v1.0.8
	github.com/olivere/elastic/v7 v7.0.22
	github.com/philhofer/fwd v1.2.0
	github.com/pierrec/lz4 v2.5.2+incompatible
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.23.0
	github.com/prometheus/client_model v0.6.2
	github.com/prometheus/procfs v0.17.0
	github.com/rjeczalik/notify v0.9.2
	github.com/rs/cors v1.11.1
	github.com/secure-io/sio-go v0.3.1
	github.com/shirou/gopsutil/v3 v3.21.1
	github.com/streadway/amqp v1.0.0
	github.com/tidwall/gjson v1.18.0
	github.com/tidwall/sjson v1.2.5
	github.com/tinylib/msgp v1.3.0
	github.com/valyala/tcplisten v0.0.0-20161114210144-ceec8f93295a
	github.com/willf/bloom v2.0.3+incompatible
	github.com/xdg/scram v0.0.0-20180814205039-7eeb5667e42c
	go.etcd.io/etcd v0.0.0-20201125193152-8a03d2e9614b
	go.uber.org/zap v1.27.0
	golang.org/x/crypto v0.48.0
	golang.org/x/net v0.51.0
	golang.org/x/sys v0.41.0
	google.golang.org/api v0.269.0
	gopkg.in/yaml.v2 v2.4.0
)

require (
	cel.dev/expr v0.25.1 // indirect
	cloud.google.com/go v0.123.0 // indirect
	cloud.google.com/go/auth v0.18.2 // indirect
	cloud.google.com/go/auth/oauth2adapt v0.2.8 // indirect
	cloud.google.com/go/compute/metadata v0.9.0 // indirect
	cloud.google.com/go/iam v1.5.3 // indirect
	cloud.google.com/go/monitoring v1.24.3 // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20200615164410-66371956d46c // indirect
	github.com/GoogleCloudPlatform/opentelemetry-operations-go/detectors/gcp v1.30.0 // indirect
	github.com/GoogleCloudPlatform/opentelemetry-operations-go/exporter/metric v0.54.0 // indirect
	github.com/GoogleCloudPlatform/opentelemetry-operations-go/internal/resourcemapping v0.54.0 // indirect
	github.com/StackExchange/wmi v0.0.0-20190523213315-cbe66965904d // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/certifi/gocertifi v0.0.0-20200922220541-2c3bb06c6054 // indirect
	github.com/cncf/xds/go v0.0.0-20251210132809-ee656c7534f5 // indirect
	github.com/cockroachdb/datadriven v0.0.0-20200714090401-bf6692d28da5 // indirect
	github.com/coreos/go-semver v0.3.1 // indirect
	github.com/coreos/go-systemd v0.0.0-20190620071333-e64a0ec8b42a // indirect
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/eapache/go-resiliency v1.6.0 // indirect
	github.com/eapache/go-xerial-snappy v0.0.0-20230731223053-c322873962e3 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/envoyproxy/go-control-plane/envoy v1.36.0 // indirect
	github.com/envoyproxy/protoc-gen-validate v1.3.0 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/frankban/quicktest v1.14.6 // indirect
	github.com/go-asn1-ber/asn1-ber v1.5.1 // indirect
	github.com/go-jose/go-jose/v4 v4.1.3 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-ole/go-ole v1.3.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20241129210726-2c02b8208cf8 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/golang/snappy v1.0.0 // indirect
	github.com/google/btree v1.1.3 // indirect
	github.com/google/s2a-go v0.1.9 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.12 // indirect
	github.com/googleapis/gax-go/v2 v2.17.0 // indirect
	github.com/gorilla/websocket v1.5.4-0.20250319132907-e064f32e3674 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-immutable-radix v1.3.1 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-uuid v1.0.3 // indirect
	github.com/hashicorp/golang-lru v1.0.2 // indirect
	github.com/jcmturner/aescts/v2 v2.0.0 // indirect
	github.com/jcmturner/dnsutils/v2 v2.0.0 // indirect
	github.com/jcmturner/gofork v1.7.6 // indirect
	github.com/jcmturner/goidentity/v6 v6.0.1 // indirect
	github.com/jcmturner/rpc/v2 v2.0.3 // indirect
	github.com/jonboulle/clockwork v0.2.2 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/klauspost/cpuid v1.3.1 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattn/go-ieproxy v0.0.1 // indirect
	github.com/mattn/go-runewidth v0.0.16 // indirect
	github.com/minio/md5-simd v1.1.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.3-0.20250322232337-35a7c28c31ee // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/nats-io/jwt v1.1.0 // indirect
	github.com/nats-io/nats-streaming-server v0.21.1 // indirect
	github.com/nats-io/nkeys v0.2.0 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/pierrec/lz4/v4 v4.1.22 // indirect
	github.com/planetscale/vtprotobuf v0.6.1-0.20240319094008-0393e58bdf10 // indirect
	github.com/prometheus/common v0.67.5 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475 // indirect
	github.com/rivo/uniseg v0.4.7 // indirect
	github.com/rs/xid v1.4.0 // indirect
	github.com/sirupsen/logrus v1.9.3 // indirect
	github.com/soheilhy/cmux v0.1.5 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/spiffe/go-spiffe/v2 v2.6.0 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.1 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20201229170055-e5319fda7802 // indirect
	github.com/willf/bitset v1.1.11 // indirect
	github.com/xdg/stringprep v1.0.0 // indirect
	go.etcd.io/bbolt v1.3.6 // indirect
	go.opentelemetry.io/auto/sdk v1.2.1 // indirect
	go.opentelemetry.io/contrib/detectors/gcp v1.39.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.63.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.62.0 // indirect
	go.opentelemetry.io/otel v1.40.0 // indirect
	go.opentelemetry.io/otel/exporters/stdout/stdoutmetric v1.37.0 // indirect
	go.opentelemetry.io/otel/metric v1.40.0 // indirect
	go.opentelemetry.io/otel/sdk v1.40.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v1.40.0 // indirect
	go.opentelemetry.io/otel/trace v1.40.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.yaml.in/yaml/v2 v2.4.3 // indirect
	golang.org/x/mod v0.32.0 // indirect
	golang.org/x/oauth2 v0.35.0 // indirect
	golang.org/x/sync v0.19.0 // indirect
	golang.org/x/text v0.34.0 // indirect
	golang.org/x/time v0.14.0 // indirect
	golang.org/x/tools v0.41.0 // indirect
	google.golang.org/genproto v0.0.0-20260128011058-8636f8732409 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20260128011058-8636f8732409 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20260217215200-42d3e9bedb6d // indirect
	google.golang.org/grpc v1.79.1 // indirect
	google.golang.org/protobuf v1.36.11 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
)
