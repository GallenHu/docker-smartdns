#
# Dockerfile for smartdns
#

FROM alpine:3.8

ENV DL_URL https://github.com/pymumu/smartdns/releases/download/Release30/smartdns.1.2020.02.25-2212.x86_64-linux-all.tar.gz

RUN set -ex \
    && wget $DL_URL \
    && tar zxvf smartdns.*.tar.gz \
    && mv smartdns/src/smartdns /bin/smartdns \
    && rm -rf smartdns*

COPY config.conf /config.conf
COPY docker-entrypoint.sh /entrypoint.sh

WORKDIR /

VOLUME ["/smartdns"]

EXPOSE 53/udp

ENTRYPOINT ["/entrypoint.sh"]