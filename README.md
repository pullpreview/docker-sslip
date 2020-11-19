# docker-sslip

[sslip.io](https://sslip.io), in a container.

## Improvements

Supports dasherized IP addresses, either at the beginning or the end of the subdomain:

* 1-2-3-4-whatever.domain.com #=> 1.2.3.4
* whatever-1-2-3-4.domain.com #=> 1.2.3.4

## Build

```console
$ docker build -t sslip .
```

## Run

```console
$ docker run -d --restart=unless-stopped -p IP:53:53/tcp -p IP:53:53/udp --name=sslip sslip
```

Additional configuration may be specified with the following environment variables:

| Variable | Default | Description |
| --- | --- | --- |
| XIP_DOMAIN | xip.test | The root domain of the service |
| XIP_ROOT_ADDRESSES | 127.0.0.1 | The IP addresses returned by an A-record lookup for the root domain |
| XIP_NS_ADDRESSES | 127.0.0.1 | The IP addresses of the nameservers running the sslip container |
| XIP_TIMESTAMP | 0 | SOA serial number |
| XIP_TTL | 300 | TTL of all responses |
