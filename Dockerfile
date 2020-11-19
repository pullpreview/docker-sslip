FROM alpine:3

RUN apk --no-cache \
        add pdns pdns-backend-pipe bash

ENV XIP_DOMAIN xip.test
ENV XIP_ROOT_ADDRESSES 127.0.0.1
ENV XIP_NS_ADDRESSES 127.0.0.1
ENV XIP_TIMESTAMP 0
ENV XIP_TTL 300

ADD bin/xip-pdns /usr/bin/
ADD etc/pdns.conf /etc/pdns/

EXPOSE 53/tcp 53/udp

ENTRYPOINT /usr/sbin/pdns_server
