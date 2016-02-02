FROM alpine

RUN apk --no-cache --repository http://nl.alpinelinux.org/alpine/edge/testing \
        add powerdns bash

ENV XIP_DOMAIN xip.test
ENV XIP_ROOT_ADDRESSES 127.0.0.1
ENV XIP_NS_ADDRESSES 127.0.0.1
ENV XIP_TIMESTAMP 0
ENV XIP_TTL 300

ADD bin/xip-pdns /usr/bin/
ADD etc/pdns.conf /etc/powerdns/

EXPOSE 53/tcp 53/udp

ENTRYPOINT /usr/bin/pdns_server
