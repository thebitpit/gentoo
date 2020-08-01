# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module systemd
GIT_COMMIT=12f574c9d

DESCRIPTION="A tool for service discovery, monitoring and configuration"
HOMEPAGE="https://www.consul.io"

# Upstream doesn't use "-mod=vendor" in their build system, and the
# vendor directory is incomplete.
# On the next bump, remove this if they have added "-mod=vendor"
EGO_SUM=(
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.38.0"
	"cloud.google.com/go v0.38.0/go.mod"
	"github.com/Azure/azure-sdk-for-go v40.3.0+incompatible"
	"github.com/Azure/azure-sdk-for-go v40.3.0+incompatible/go.mod"
	"github.com/Azure/go-autorest/autorest v0.9.0/go.mod"
	"github.com/Azure/go-autorest/autorest v0.9.3/go.mod"
	"github.com/Azure/go-autorest/autorest v0.10.0"
	"github.com/Azure/go-autorest/autorest v0.10.0/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.5.0/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.8.0/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.8.1/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.8.2"
	"github.com/Azure/go-autorest/autorest/adal v0.8.2/go.mod"
	"github.com/Azure/go-autorest/autorest/azure/auth v0.4.2"
	"github.com/Azure/go-autorest/autorest/azure/auth v0.4.2/go.mod"
	"github.com/Azure/go-autorest/autorest/azure/cli v0.3.1"
	"github.com/Azure/go-autorest/autorest/azure/cli v0.3.1/go.mod"
	"github.com/Azure/go-autorest/autorest/date v0.1.0/go.mod"
	"github.com/Azure/go-autorest/autorest/date v0.2.0"
	"github.com/Azure/go-autorest/autorest/date v0.2.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.1.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.2.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.3.0"
	"github.com/Azure/go-autorest/autorest/mocks v0.3.0/go.mod"
	"github.com/Azure/go-autorest/autorest/to v0.3.0"
	"github.com/Azure/go-autorest/autorest/to v0.3.0/go.mod"
	"github.com/Azure/go-autorest/autorest/validation v0.2.0"
	"github.com/Azure/go-autorest/autorest/validation v0.2.0/go.mod"
	"github.com/Azure/go-autorest/logger v0.1.0"
	"github.com/Azure/go-autorest/logger v0.1.0/go.mod"
	"github.com/Azure/go-autorest/tracing v0.5.0"
	"github.com/Azure/go-autorest/tracing v0.5.0/go.mod"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/DataDog/datadog-go v2.2.0+incompatible"
	"github.com/DataDog/datadog-go v2.2.0+incompatible/go.mod"
	"github.com/DataDog/datadog-go v3.2.0+incompatible"
	"github.com/DataDog/datadog-go v3.2.0+incompatible/go.mod"
	"github.com/Microsoft/go-winio v0.4.3"
	"github.com/Microsoft/go-winio v0.4.3/go.mod"
	"github.com/NYTimes/gziphandler v0.0.0-20170623195520-56545f4a5d46/go.mod"
	"github.com/NYTimes/gziphandler v1.0.1"
	"github.com/NYTimes/gziphandler v1.0.1/go.mod"
	"github.com/OneOfOne/xxhash v1.2.2/go.mod"
	"github.com/PuerkitoBio/purell v1.0.0/go.mod"
	"github.com/PuerkitoBio/urlesc v0.0.0-20160726150825-5bd2802263f2/go.mod"
	"github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6"
	"github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6/go.mod"
	"github.com/abdullin/seq v0.0.0-20160510034733-d5467c17e7af"
	"github.com/abdullin/seq v0.0.0-20160510034733-d5467c17e7af/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/alecthomas/units v0.0.0-20190717042225-c3de453c63f4/go.mod"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e/go.mod"
	"github.com/armon/consul-api v0.0.0-20180202201655-eb2c6b5be1b6/go.mod"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
	"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878"
	"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878/go.mod"
	"github.com/armon/go-metrics v0.3.3"
	"github.com/armon/go-metrics v0.3.3/go.mod"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
	"github.com/armon/go-radix v1.0.0"
	"github.com/armon/go-radix v1.0.0/go.mod"
	"github.com/aws/aws-sdk-go v1.25.41"
	"github.com/aws/aws-sdk-go v1.25.41/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/beorn7/perks v1.0.0"
	"github.com/beorn7/perks v1.0.0/go.mod"
	"github.com/beorn7/perks v1.0.1"
	"github.com/beorn7/perks v1.0.1/go.mod"
	"github.com/bgentry/speakeasy v0.1.0"
	"github.com/bgentry/speakeasy v0.1.0/go.mod"
	"github.com/boltdb/bolt v1.3.1"
	"github.com/boltdb/bolt v1.3.1/go.mod"
	"github.com/census-instrumentation/opencensus-proto v0.2.1"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/cespare/xxhash v1.1.0"
	"github.com/cespare/xxhash v1.1.0/go.mod"
	"github.com/cespare/xxhash/v2 v2.1.1"
	"github.com/cespare/xxhash/v2 v2.1.1/go.mod"
	"github.com/circonus-labs/circonus-gometrics v2.3.1+incompatible"
	"github.com/circonus-labs/circonus-gometrics v2.3.1+incompatible/go.mod"
	"github.com/circonus-labs/circonusllhist v0.1.3"
	"github.com/circonus-labs/circonusllhist v0.1.3/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20200313221541-5f7e5dd04533"
	"github.com/cncf/udpa/go v0.0.0-20200313221541-5f7e5dd04533/go.mod"
	"github.com/cockroachdb/apd v1.1.0/go.mod"
	"github.com/coredns/coredns v1.1.2"
	"github.com/coredns/coredns v1.1.2/go.mod"
	"github.com/coreos/bbolt v1.3.2/go.mod"
	"github.com/coreos/etcd v3.3.10+incompatible/go.mod"
	"github.com/coreos/go-etcd v2.0.0+incompatible/go.mod"
	"github.com/coreos/go-oidc v2.1.0+incompatible"
	"github.com/coreos/go-oidc v2.1.0+incompatible/go.mod"
	"github.com/coreos/go-semver v0.2.0/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod"
	"github.com/cpuguy83/go-md2man v1.0.10/go.mod"
	"github.com/davecgh/go-spew v0.0.0-20151105211317-5215b55f46b2/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/denverdino/aliyungo v0.0.0-20170926055100-d3308649c661"
	"github.com/denverdino/aliyungo v0.0.0-20170926055100-d3308649c661/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954/go.mod"
	"github.com/digitalocean/godo v1.1.1/go.mod"
	"github.com/digitalocean/godo v1.10.0"
	"github.com/digitalocean/godo v1.10.0/go.mod"
	"github.com/dimchansky/utfbom v1.1.0"
	"github.com/dimchansky/utfbom v1.1.0/go.mod"
	"github.com/dnaeon/go-vcr v1.0.1"
	"github.com/dnaeon/go-vcr v1.0.1/go.mod"
	"github.com/docker/go-connections v0.3.0"
	"github.com/docker/go-connections v0.3.0/go.mod"
	"github.com/docker/spdystream v0.0.0-20160310174837-449fdfce4d96/go.mod"
	"github.com/dustin/go-humanize v1.0.0/go.mod"
	"github.com/elazarl/go-bindata-assetfs v0.0.0-20160803192304-e1a2a7ec64b0"
	"github.com/elazarl/go-bindata-assetfs v0.0.0-20160803192304-e1a2a7ec64b0/go.mod"
	"github.com/elazarl/goproxy v0.0.0-20170405201442-c4fc26588b6e/go.mod"
	"github.com/emicklei/go-restful v0.0.0-20170410110728-ff4f55a20633/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.5"
	"github.com/envoyproxy/go-control-plane v0.9.5/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/evanphx/json-patch v4.2.0+incompatible/go.mod"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/fatih/color v1.9.0"
	"github.com/fatih/color v1.9.0/go.mod"
	"github.com/fatih/structs v1.1.0/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/ghodss/yaml v0.0.0-20150909031657-73d445a93680/go.mod"
	"github.com/ghodss/yaml v1.0.0"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/go-check/check v0.0.0-20140225173054-eb6ee6f84d0a/go.mod"
	"github.com/go-kit/kit v0.8.0/go.mod"
	"github.com/go-kit/kit v0.9.0/go.mod"
	"github.com/go-ldap/ldap v3.0.2+incompatible/go.mod"
	"github.com/go-logfmt/logfmt v0.3.0/go.mod"
	"github.com/go-logfmt/logfmt v0.4.0/go.mod"
	"github.com/go-logr/logr v0.1.0/go.mod"
	"github.com/go-ole/go-ole v1.2.1"
	"github.com/go-ole/go-ole v1.2.1/go.mod"
	"github.com/go-openapi/jsonpointer v0.0.0-20160704185906-46af16f9f7b1/go.mod"
	"github.com/go-openapi/jsonreference v0.0.0-20160704190145-13c6e3589ad9/go.mod"
	"github.com/go-openapi/spec v0.0.0-20160808142527-6aced65f8501/go.mod"
	"github.com/go-openapi/swag v0.0.0-20160704191624-1d0bd113de87/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/go-test/deep v1.0.2-0.20181118220953-042da051cf31/go.mod"
	"github.com/go-test/deep v1.0.2"
	"github.com/go-test/deep v1.0.2/go.mod"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.1/go.mod"
	"github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d"
	"github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20160516000752-02826c3e7903/go.mod"
	"github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/protobuf v0.0.0-20161109072736-4bd1920723d7/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/snappy v0.0.1"
	"github.com/golang/snappy v0.0.1/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/go-querystring v0.0.0-20170111101155-53e6ce116135/go.mod"
	"github.com/google/go-querystring v1.0.0"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/google/gofuzz v0.0.0-20161122191042-44d81051d367/go.mod"
	"github.com/google/gofuzz v1.0.0"
	"github.com/google/gofuzz v1.0.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/tcpproxy v0.0.0-20180808230851-dfa16c61dad2"
	"github.com/google/tcpproxy v0.0.0-20180808230851-dfa16c61dad2/go.mod"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gnostic v0.0.0-20170729233727-0c5108395e2d/go.mod"
	"github.com/googleapis/gnostic v0.2.0"
	"github.com/googleapis/gnostic v0.2.0/go.mod"
	"github.com/gophercloud/gophercloud v0.1.0"
	"github.com/gophercloud/gophercloud v0.1.0/go.mod"
	"github.com/gorilla/websocket v1.4.0/go.mod"
	"github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7"
	"github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7/go.mod"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0/go.mod"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.9.0/go.mod"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-bexpr v0.1.2"
	"github.com/hashicorp/go-bexpr v0.1.2/go.mod"
	"github.com/hashicorp/go-checkpoint v0.0.0-20171009173528-1545e56e46de"
	"github.com/hashicorp/go-checkpoint v0.0.0-20171009173528-1545e56e46de/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.1"
	"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
	"github.com/hashicorp/go-connlimit v0.2.0"
	"github.com/hashicorp/go-connlimit v0.2.0/go.mod"
	"github.com/hashicorp/go-discover v0.0.0-20200501174627-ad1e96bde088"
	"github.com/hashicorp/go-discover v0.0.0-20200501174627-ad1e96bde088/go.mod"
	"github.com/hashicorp/go-hclog v0.0.0-20180709165350-ff2cf002a8dd/go.mod"
	"github.com/hashicorp/go-hclog v0.8.0/go.mod"
	"github.com/hashicorp/go-hclog v0.9.1/go.mod"
	"github.com/hashicorp/go-hclog v0.12.0"
	"github.com/hashicorp/go-hclog v0.12.0/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.1.0"
	"github.com/hashicorp/go-immutable-radix v1.1.0/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.2.0"
	"github.com/hashicorp/go-immutable-radix v1.2.0/go.mod"
	"github.com/hashicorp/go-memdb v1.0.3"
	"github.com/hashicorp/go-memdb v1.0.3/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.3/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.5"
	"github.com/hashicorp/go-msgpack v0.5.5/go.mod"
	"github.com/hashicorp/go-multierror v1.0.0"
	"github.com/hashicorp/go-multierror v1.0.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.0"
	"github.com/hashicorp/go-multierror v1.1.0/go.mod"
	"github.com/hashicorp/go-plugin v1.0.1/go.mod"
	"github.com/hashicorp/go-raftchunking v0.6.1"
	"github.com/hashicorp/go-raftchunking v0.6.1/go.mod"
	"github.com/hashicorp/go-retryablehttp v0.5.3/go.mod"
	"github.com/hashicorp/go-retryablehttp v0.5.4"
	"github.com/hashicorp/go-retryablehttp v0.5.4/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.1/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.2"
	"github.com/hashicorp/go-rootcerts v1.0.2/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.0/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.2"
	"github.com/hashicorp/go-sockaddr v1.0.2/go.mod"
	"github.com/hashicorp/go-syslog v1.0.0"
	"github.com/hashicorp/go-syslog v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.1"
	"github.com/hashicorp/go-uuid v1.0.1/go.mod"
	"github.com/hashicorp/go-uuid v1.0.2"
	"github.com/hashicorp/go-uuid v1.0.2/go.mod"
	"github.com/hashicorp/go-version v1.1.0/go.mod"
	"github.com/hashicorp/go-version v1.2.0"
	"github.com/hashicorp/go-version v1.2.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.4"
	"github.com/hashicorp/golang-lru v0.5.4/go.mod"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/hashicorp/hcl v1.0.0/go.mod"
	"github.com/hashicorp/hil v0.0.0-20160711231837-1e86c6b523c5"
	"github.com/hashicorp/hil v0.0.0-20160711231837-1e86c6b523c5/go.mod"
	"github.com/hashicorp/logutils v1.0.0/go.mod"
	"github.com/hashicorp/mdns v1.0.1"
	"github.com/hashicorp/mdns v1.0.1/go.mod"
	"github.com/hashicorp/memberlist v0.2.2"
	"github.com/hashicorp/memberlist v0.2.2/go.mod"
	"github.com/hashicorp/net-rpc-msgpackrpc v0.0.0-20151116020338-a14192a58a69"
	"github.com/hashicorp/net-rpc-msgpackrpc v0.0.0-20151116020338-a14192a58a69/go.mod"
	"github.com/hashicorp/raft v1.1.1/go.mod"
	"github.com/hashicorp/raft v1.1.2"
	"github.com/hashicorp/raft v1.1.2/go.mod"
	"github.com/hashicorp/raft-boltdb v0.0.0-20171010151810-6e5ba93211ea"
	"github.com/hashicorp/raft-boltdb v0.0.0-20171010151810-6e5ba93211ea/go.mod"
	"github.com/hashicorp/serf v0.9.3"
	"github.com/hashicorp/serf v0.9.3/go.mod"
	"github.com/hashicorp/vault/api v1.0.4"
	"github.com/hashicorp/vault/api v1.0.4/go.mod"
	"github.com/hashicorp/vault/sdk v0.1.13"
	"github.com/hashicorp/vault/sdk v0.1.13/go.mod"
	"github.com/hashicorp/vic v1.5.1-0.20190403131502-bbfe86ec9443"
	"github.com/hashicorp/vic v1.5.1-0.20190403131502-bbfe86ec9443/go.mod"
	"github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb/go.mod"
	"github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d"
	"github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d/go.mod"
	"github.com/hpcloud/tail v1.0.0/go.mod"
	"github.com/imdario/mergo v0.3.5/go.mod"
	"github.com/imdario/mergo v0.3.6"
	"github.com/imdario/mergo v0.3.6/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/jackc/fake v0.0.0-20150926172116-812a484cc733/go.mod"
	"github.com/jackc/pgx v3.3.0+incompatible/go.mod"
	"github.com/jarcoal/httpmock v0.0.0-20180424175123-9c70cfe4a1da"
	"github.com/jarcoal/httpmock v0.0.0-20180424175123-9c70cfe4a1da/go.mod"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af/go.mod"
	"github.com/jonboulle/clockwork v0.1.0/go.mod"
	"github.com/joyent/triton-go v0.0.0-20180628001255-830d2b111e62/go.mod"
	"github.com/joyent/triton-go v1.7.1-0.20200416154420-6801d15b779f"
	"github.com/joyent/triton-go v1.7.1-0.20200416154420-6801d15b779f/go.mod"
	"github.com/json-iterator/go v0.0.0-20180612202835-f2b4162afba3/go.mod"
	"github.com/json-iterator/go v1.1.6/go.mod"
	"github.com/json-iterator/go v1.1.7"
	"github.com/json-iterator/go v1.1.7/go.mod"
	"github.com/json-iterator/go v1.1.9"
	"github.com/json-iterator/go v1.1.9/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/julienschmidt/httprouter v1.2.0/go.mod"
	"github.com/kisielk/errcheck v1.1.0/go.mod"
	"github.com/kisielk/errcheck v1.2.0/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.2"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.2/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.0"
	"github.com/kr/pretty v0.2.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/lib/pq v1.1.1/go.mod"
	"github.com/linode/linodego v0.7.1"
	"github.com/linode/linodego v0.7.1/go.mod"
	"github.com/magiconair/properties v1.8.0/go.mod"
	"github.com/mailru/easyjson v0.0.0-20160728113105-d5b7844b561a/go.mod"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-colorable v0.1.4"
	"github.com/mattn/go-colorable v0.1.4/go.mod"
	"github.com/mattn/go-colorable v0.1.6"
	"github.com/mattn/go-colorable v0.1.6/go.mod"
	"github.com/mattn/go-isatty v0.0.3/go.mod"
	"github.com/mattn/go-isatty v0.0.8/go.mod"
	"github.com/mattn/go-isatty v0.0.10/go.mod"
	"github.com/mattn/go-isatty v0.0.11/go.mod"
	"github.com/mattn/go-isatty v0.0.12"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-runewidth v0.0.3/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/miekg/dns v1.0.14/go.mod"
	"github.com/miekg/dns v1.1.26"
	"github.com/miekg/dns v1.1.26/go.mod"
	"github.com/mitchellh/cli v1.0.0/go.mod"
	"github.com/mitchellh/cli v1.1.0"
	"github.com/mitchellh/cli v1.1.0/go.mod"
	"github.com/mitchellh/copystructure v1.0.0"
	"github.com/mitchellh/copystructure v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-testing-interface v0.0.0-20171004221916-a61a99592b77/go.mod"
	"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
	"github.com/mitchellh/go-testing-interface v1.14.0"
	"github.com/mitchellh/go-testing-interface v1.14.0/go.mod"
	"github.com/mitchellh/go-wordwrap v1.0.0/go.mod"
	"github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452"
	"github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452/go.mod"
	"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee/go.mod"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/mitchellh/mapstructure v1.1.2/go.mod"
	"github.com/mitchellh/mapstructure v1.3.3"
	"github.com/mitchellh/mapstructure v1.3.3/go.mod"
	"github.com/mitchellh/pointerstructure v1.0.0"
	"github.com/mitchellh/pointerstructure v1.0.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.1"
	"github.com/mitchellh/reflectwalk v1.0.1/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v0.0.0-20180320133207-05fbef0ca5da/go.mod"
	"github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742/go.mod"
	"github.com/modern-go/reflect2 v1.0.1"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/munnerz/goautoneg v0.0.0-20120707110453-a547fc61f48d/go.mod"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
	"github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f/go.mod"
	"github.com/nicolai86/scaleway-sdk v1.10.2-0.20180628010248-798f60e20bb2"
	"github.com/nicolai86/scaleway-sdk v1.10.2-0.20180628010248-798f60e20bb2/go.mod"
	"github.com/oklog/run v1.0.0/go.mod"
	"github.com/oklog/ulid v1.3.1/go.mod"
	"github.com/olekukonko/tablewriter v0.0.0-20180130162743-b8a9be070da4/go.mod"
	"github.com/onsi/ginkgo v0.0.0-20170829012221-11459a886d9c/go.mod"
	"github.com/onsi/ginkgo v1.6.0/go.mod"
	"github.com/onsi/ginkgo v1.8.0/go.mod"
	"github.com/onsi/gomega v0.0.0-20170829124025-dcabb60a477c/go.mod"
	"github.com/onsi/gomega v1.5.0/go.mod"
	"github.com/packethost/packngo v0.1.1-0.20180711074735-b9cb5096f54c"
	"github.com/packethost/packngo v0.1.1-0.20180711074735-b9cb5096f54c/go.mod"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
	"github.com/pascaldekloe/goe v0.1.0"
	"github.com/pascaldekloe/goe v0.1.0/go.mod"
	"github.com/patrickmn/go-cache v2.1.0+incompatible"
	"github.com/patrickmn/go-cache v2.1.0+incompatible/go.mod"
	"github.com/pelletier/go-toml v1.2.0/go.mod"
	"github.com/peterbourgon/diskv v2.0.1+incompatible"
	"github.com/peterbourgon/diskv v2.0.1+incompatible/go.mod"
	"github.com/pierrec/lz4 v2.0.5+incompatible"
	"github.com/pierrec/lz4 v2.0.5+incompatible/go.mod"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v0.0.0-20151028094244-d8ed2627bdf0/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/posener/complete v1.1.1"
	"github.com/posener/complete v1.1.1/go.mod"
	"github.com/posener/complete v1.2.3"
	"github.com/posener/complete v1.2.3/go.mod"
	"github.com/pquerna/cachecontrol v0.0.0-20180517163645-1555304b9b35"
	"github.com/pquerna/cachecontrol v0.0.0-20180517163645-1555304b9b35/go.mod"
	"github.com/prometheus/client_golang v0.9.1/go.mod"
	"github.com/prometheus/client_golang v0.9.2/go.mod"
	"github.com/prometheus/client_golang v0.9.3/go.mod"
	"github.com/prometheus/client_golang v1.0.0"
	"github.com/prometheus/client_golang v1.0.0/go.mod"
	"github.com/prometheus/client_golang v1.4.0"
	"github.com/prometheus/client_golang v1.4.0/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/prometheus/client_model v0.2.0"
	"github.com/prometheus/client_model v0.2.0/go.mod"
	"github.com/prometheus/common v0.0.0-20181113130724-41aa239b4cce/go.mod"
	"github.com/prometheus/common v0.0.0-20181126121408-4724e9255275/go.mod"
	"github.com/prometheus/common v0.4.0/go.mod"
	"github.com/prometheus/common v0.4.1"
	"github.com/prometheus/common v0.4.1/go.mod"
	"github.com/prometheus/common v0.9.1"
	"github.com/prometheus/common v0.9.1/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181204211112-1dc9a6cbc91a/go.mod"
	"github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084/go.mod"
	"github.com/prometheus/procfs v0.0.2"
	"github.com/prometheus/procfs v0.0.2/go.mod"
	"github.com/prometheus/procfs v0.0.8"
	"github.com/prometheus/procfs v0.0.8/go.mod"
	"github.com/prometheus/tsdb v0.7.1/go.mod"
	"github.com/rboyer/safeio v0.2.1"
	"github.com/rboyer/safeio v0.2.1/go.mod"
	"github.com/renier/xmlrpc v0.0.0-20170708154548-ce4a1a486c03"
	"github.com/renier/xmlrpc v0.0.0-20170708154548-ce4a1a486c03/go.mod"
	"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af/go.mod"
	"github.com/rs/zerolog v1.4.0/go.mod"
	"github.com/russross/blackfriday v1.5.2/go.mod"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f/go.mod"
	"github.com/ryanuber/columnize v2.1.0+incompatible"
	"github.com/ryanuber/columnize v2.1.0+incompatible/go.mod"
	"github.com/ryanuber/go-glob v1.0.0"
	"github.com/ryanuber/go-glob v1.0.0/go.mod"
	"github.com/satori/go.uuid v1.2.0/go.mod"
	"github.com/sean-/conswriter v0.0.0-20180208195008-f5ae3917a627/go.mod"
	"github.com/sean-/pager v0.0.0-20180208200047-666be9bf53b5/go.mod"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
	"github.com/shirou/gopsutil v0.0.0-20181107111621-48177ef5f880"
	"github.com/shirou/gopsutil v0.0.0-20181107111621-48177ef5f880/go.mod"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4/go.mod"
	"github.com/shopspring/decimal v0.0.0-20180709203117-cd690d0c9e24/go.mod"
	"github.com/sirupsen/logrus v1.0.6/go.mod"
	"github.com/sirupsen/logrus v1.2.0/go.mod"
	"github.com/sirupsen/logrus v1.4.2"
	"github.com/sirupsen/logrus v1.4.2/go.mod"
	"github.com/softlayer/softlayer-go v0.0.0-20180806151055-260589d94c7d"
	"github.com/softlayer/softlayer-go v0.0.0-20180806151055-260589d94c7d/go.mod"
	"github.com/soheilhy/cmux v0.1.4/go.mod"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod"
	"github.com/spf13/afero v1.1.2/go.mod"
	"github.com/spf13/afero v1.2.1/go.mod"
	"github.com/spf13/afero v1.2.2/go.mod"
	"github.com/spf13/cast v1.3.0/go.mod"
	"github.com/spf13/cobra v0.0.5/go.mod"
	"github.com/spf13/jwalterweatherman v1.0.0/go.mod"
	"github.com/spf13/pflag v0.0.0-20170130214245-9ff6c6923cff/go.mod"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/spf13/viper v1.3.2/go.mod"
	"github.com/spf13/viper v1.4.0/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v0.0.0-20151208002404-e3a8ff8ce365/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.5.1"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/tencentcloud/tencentcloud-sdk-go v3.0.83+incompatible"
	"github.com/tencentcloud/tencentcloud-sdk-go v3.0.83+incompatible/go.mod"
	"github.com/tent/http-link-go v0.0.0-20130702225549-ac974c61c2f9/go.mod"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5/go.mod"
	"github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926"
	"github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926/go.mod"
	"github.com/ugorji/go v1.1.4/go.mod"
	"github.com/ugorji/go/codec v0.0.0-20181204163529-d75b2dcb6bc8/go.mod"
	"github.com/vmware/govmomi v0.18.0"
	"github.com/vmware/govmomi v0.18.0/go.mod"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2/go.mod"
	"github.com/xordataexchange/crypt v0.0.3-0.20170626215501-b2862e3d0a77/go.mod"
	"go.etcd.io/bbolt v1.3.2/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0"
	"go.opencensus.io v0.22.0/go.mod"
	"go.uber.org/atomic v1.4.0/go.mod"
	"go.uber.org/goleak v1.0.0"
	"go.uber.org/goleak v1.0.0/go.mod"
	"go.uber.org/multierr v1.1.0/go.mod"
	"go.uber.org/zap v1.10.0/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
	"golang.org/x/crypto v0.0.0-20181203042331-505ab145d0a9/go.mod"
	"golang.org/x/crypto v0.0.0-20190211182817-74369b46fc67/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190611184440-5c40567a22f8/go.mod"
	"golang.org/x/crypto v0.0.0-20190923035154-9ee001bba392/go.mod"
	"golang.org/x/crypto v0.0.0-20191206172530-e9b2fee46413/go.mod"
	"golang.org/x/crypto v0.0.0-20200220183623-bac4c82f6975"
	"golang.org/x/crypto v0.0.0-20200220183623-bac4c82f6975/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
	"golang.org/x/net v0.0.0-20170114055629-f2499483f923/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
	"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
	"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190522155817-f3200d17e092/go.mod"
	"golang.org/x/net v0.0.0-20190613194153-d28f0bde5980/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190923162816-aa69164e4478/go.mod"
	"golang.org/x/net v0.0.0-20191004110552-13f9640d40b9"
	"golang.org/x/net v0.0.0-20191004110552-13f9640d40b9/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sys v0.0.0-20170830134202-bb24a47a89ea/go.mod"
	"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
	"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
	"golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8/go.mod"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
	"golang.org/x/sys v0.0.0-20181205085412-a5c9d58dba9a/go.mod"
	"golang.org/x/sys v0.0.0-20190129075346-302c3dd5f1cc/go.mod"
	"golang.org/x/sys v0.0.0-20190209173611-3b5209105503/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190403152447-81d4e9dc473e/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190515120540-06a5c4944438/go.mod"
	"golang.org/x/sys v0.0.0-20190523142557-0e01d883c5c5/go.mod"
	"golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a/go.mod"
	"golang.org/x/sys v0.0.0-20190922100055-0a153f010e69/go.mod"
	"golang.org/x/sys v0.0.0-20190924154521-2837fb4f24fe/go.mod"
	"golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200122134326-e047566fdf82/go.mod"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/text v0.0.0-20160726164857-2910a502d2bf/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.1-0.20181227161524-e6919f6577db/go.mod"
	"golang.org/x/text v0.3.2"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20181011042414-1f849cf54d09/go.mod"
	"golang.org/x/tools v0.0.0-20181030221726-6c7e314b6563/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190907020128-2ca718005c18/go.mod"
	"golang.org/x/tools v0.0.0-20191108193012-7d206e10da11"
	"golang.org/x/tools v0.0.0-20191108193012-7d206e10da11/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.0"
	"google.golang.org/appengine v1.6.0/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190404172233-64821d5d2107/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/grpc v1.14.0/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.0/go.mod"
	"google.golang.org/grpc v1.22.0/go.mod"
	"google.golang.org/grpc v1.23.0"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.25.1"
	"google.golang.org/grpc v1.25.1/go.mod"
	"gopkg.in/airbrake/gobrake.v2 v2.0.9/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
	"gopkg.in/gemnasium/logrus-airbrake-hook.v2 v2.1.2/go.mod"
	"gopkg.in/inf.v0 v0.9.1"
	"gopkg.in/inf.v0 v0.9.1/go.mod"
	"gopkg.in/resty.v1 v1.12.0"
	"gopkg.in/resty.v1 v1.12.0/go.mod"
	"gopkg.in/square/go-jose.v2 v2.3.1"
	"gopkg.in/square/go-jose.v2 v2.3.1/go.mod"
	"gopkg.in/square/go-jose.v2 v2.4.1"
	"gopkg.in/square/go-jose.v2 v2.4.1/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.2.5/go.mod"
	"gopkg.in/yaml.v2 v2.2.8"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"k8s.io/api v0.16.9"
	"k8s.io/api v0.16.9/go.mod"
	"k8s.io/apimachinery v0.16.9"
	"k8s.io/apimachinery v0.16.9/go.mod"
	"k8s.io/client-go v0.16.9"
	"k8s.io/client-go v0.16.9/go.mod"
	"k8s.io/gengo v0.0.0-20190128074634-0689ccc1d7d6/go.mod"
	"k8s.io/klog v0.0.0-20181102134211-b9b56d5dfc92/go.mod"
	"k8s.io/klog v0.3.0/go.mod"
	"k8s.io/klog v1.0.0"
	"k8s.io/klog v1.0.0/go.mod"
	"k8s.io/kube-openapi v0.0.0-20190816220812-743ec37842bf/go.mod"
	"k8s.io/utils v0.0.0-20190801114015-581e00157fb1"
	"k8s.io/utils v0.0.0-20190801114015-581e00157fb1/go.mod"
	"sigs.k8s.io/structured-merge-diff v0.0.0-20190525122527-15d366b2352e/go.mod"
	"sigs.k8s.io/yaml v1.1.0"
	"sigs.k8s.io/yaml v1.1.0/go.mod"
	)
go-module_set_globals
SRC_URI="https://github.com/hashicorp/consul/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MPL-2.0 Apache-2.0 BSD BSD-2 CC0-1.0 ISC MIT"
RESTRICT+=" test"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="dev-go/gox"
COMMON_DEPEND="
	acct-group/consul
	acct-user/consul"
	DEPEND="${COMMON_DEPEND}"
	RDEPEND="${COMMON_DEPEND}"

src_compile() {
	# The dev target sets causes build.sh to set appropriate XC_OS
	# and XC_ARCH, and skips generation of an unused zip file,
	# avoiding a dependency on app-arch/zip.
	GIT_DESCRIBE="v${PV}" \
	GIT_DIRTY="" \
	GIT_COMMIT="${GIT_COMMIT}" \
	emake dev-build
}

src_install() {
	dobin bin/consul

	keepdir /etc/consul.d
	insinto /etc/consul.d
	doins "${FILESDIR}/"*.json.example

	keepdir /var/log/consul
	fowners consul:consul /var/log/consul

	newinitd "${FILESDIR}/consul.initd" "${PN}"
	newconfd "${FILESDIR}/consul.confd" "${PN}"
	insinto /etc/logrotate.d
	newins "${FILESDIR}/${PN}.logrotated" "${PN}"
	systemd_dounit "${FILESDIR}/consul.service"
}
