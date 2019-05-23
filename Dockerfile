# Liquidsoap container
FROM debian:buster-slim

MAINTAINER Mark van Dijk <operator+dockerfile@noagendastream.com>

RUN set -ex; \
	apt-get update && apt-get install -y apt-utils eatmydata && \
	eatmydata apt-get upgrade -y && \
	eatmydata apt-get install -y liquidsoap && \
	eatmydata apt-get -y clean

RUN set -ex; \
	usermod -u 106 liquidsoap \
	&& groupmod -g 110 liquidsoap \
	&& chown 106:110 /var/log/liquidsoap

USER liquidsoap

CMD ["/usr/bin/liquidsoap", "/etc/liquidsoap/noagenda.liq"]

