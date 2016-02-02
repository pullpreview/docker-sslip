# docker-sslip

[sslip.io](https://sslip.io), in a container.

## Build

```console
$ docker build -t sslip .
```

## Run

```console
$ docker run -d -p 53:53/tcp -p 53:53/udp --name=sslip sslip
```

Additional configuration may be specified with the following environment variables:

| Variable | Default | Description |
| --- | --- | --- |
| XIP_DOMAIN | xip.test | The root domain of the service |
| XIP_ROOT_ADDRESSES | 127.0.0.1 | The IP addresses returned by an A-record lookup for the root domain |
| XIP_NS_ADDRESSES | 127.0.0.1 | The IP addresses of the nameservers running the sslip container |
| XIP_TIMESTAMP | 0 | SOA serial number |
| XIP_TTL | 300 | TTL of all responses |
