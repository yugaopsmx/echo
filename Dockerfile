FROM ubuntu:bionic
MAINTAINER sig-platform@spinnaker.io

RUN apt-get update && apt-get -y install openjdk-8-jre-headless wget
RUN adduser --disabled-login --system spinnaker
RUN mkdir -p /opt/echo/plugins && chown -R spinnaker:nogroup /opt/echo/plugins
USER spinnaker

CMD ["/opt/echo/bin/echo"]
