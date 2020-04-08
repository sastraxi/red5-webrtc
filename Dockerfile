FROM anapsix/alpine-java:latest
MAINTAINER Cameron Gorrie <sastraxi@gmail.com>

ENV RED5_FILE red5pro-server-us.zip

RUN mkdir -p /opt/red5
COPY ./${RED5_FILE} /opt/red5
WORKDIR /opt/red5

RUN set -xe \
    && apk add --no-cache bash unzip zlib zlib-dev openssl \
    && unzip ${RED5_FILE} \
    && apk del unzip

EXPOSE 843 1935 5080 5443 8081 8443

ENTRYPOINT ["./red5.sh"]
