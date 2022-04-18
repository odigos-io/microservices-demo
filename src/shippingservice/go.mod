module github.com/GoogleCloudPlatform/microservices-demo/src/shippingservice

go 1.15

require (
	cloud.google.com/go v0.40.0
	contrib.go.opencensus.io/exporter/jaeger v0.2.0
	contrib.go.opencensus.io/exporter/stackdriver v0.5.0
	github.com/golang/protobuf v1.4.3
	github.com/google/pprof v0.0.0-20190515194954-54271f7e092f // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/sirupsen/logrus v1.4.2
	github.com/uber/jaeger-client-go v2.21.1+incompatible // indirect
	go.opencensus.io v0.21.0
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.19.0 // indirect
	go.opentelemetry.io/otel v0.19.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp v0.19.0 // indirect
	go.opentelemetry.io/otel/sdk v0.19.0 // indirect
	go.opentelemetry.io/otel/trace v0.19.0 // indirect
	golang.org/x/net v0.0.0-20201021035429-f5854403a974
	google.golang.org/api v0.7.1-0.20190709010654-aae1d1b89c27 // indirect
	google.golang.org/appengine v1.6.1 // indirect
	google.golang.org/grpc v1.36.0
)

replace git.apache.org/thrift.git v0.12.1-0.20190708170704-286eee16b147 => github.com/apache/thrift v0.12.1-0.20190708170704-286eee16b147
