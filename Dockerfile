# Liquidsoap container
FROM debian:buster-slim

MAINTAINER Mark van Dijk <operator+dockerfile@noagendastream.com>

RUN set -ex; \
	apt-get update && apt-get install -y apt-utils eatmydata && \
	eatmydata apt-get upgrade -y && \
	eatmydata apt-get install -y liquidsoap && \
	eatmydata apt-get -y clean

USER liquidsoap

CMD ["/usr/bin/liquidsoap", "/etc/liquidsoap/noagenda.liq"]

