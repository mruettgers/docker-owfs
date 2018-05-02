FROM arm32v7/debian:stretch-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV DEBIAN_FRONTEND noninteractive

ENV PACKAGES \
  owserver

RUN set -xe && \
  apt-get -y update && \
  apt-get install -y ${PACKAGES} && \
  apt-get clean

CMD ["/usr/bin/owserver"]