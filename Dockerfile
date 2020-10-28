FROM debian:stretch-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV DEBIAN_FRONTEND noninteractive

ENV PACKAGES \
  owserver \
  owhttpd \
  ow-shell

RUN set -xe \
  && apt-get -y update \
  && apt-get install -y ${PACKAGES} \
  && apt-get clean

COPY files/ /

ENTRYPOINT ["/docker/docker-entrypoint.sh"]

CMD ["owserver", "--foreground"]
