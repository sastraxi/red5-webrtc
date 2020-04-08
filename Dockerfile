FROM picoded/ubuntu-openjdk-8-jdk
MAINTAINER Cameron Gorrie <sastraxi@gmail.com>

RUN apt-get update
RUN apt-get install -y unzip libva1 libva-drm1 libva-x11-1 libvdpau1 jsvc ntp

ENV RED5_FILE red5pro-server-us.zip

RUN mkdir -p /opt/red5
COPY ./${RED5_FILE} /opt/red5
WORKDIR /opt/red5

RUN unzip ${RED5_FILE}

EXPOSE 843 1935 5080 5443 8081 8443

ENTRYPOINT ["./red5.sh"]
