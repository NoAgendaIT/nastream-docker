# Liquidsoap container
FROM debian:jessie-slim

MAINTAINER Mark van Dijk <mark@noagendahosting.com>

RUN apt-get update && apt-get install -y eatmydata && \
	eatmydata apt-get upgrade -y && \
	eatmydata apt-get install -y liquidsoap \
		liquidsoap-plugin-camlimages \
		liquidsoap-plugin-ladspa \
		liquidsoap-plugin-opus \
		liquidsoap-plugin-samplerate \
		liquidsoap-plugin-schroedinger \
		liquidsoap-plugin-speex \
		liquidsoap-plugin-theora \
		liquidsoap-plugin-xmlplaylist && \
	eatmydata apt-get -y clean

USER liquidsoap

CMD ["/usr/bin/liquidsoap", "/etc/liquidsoap/noagenda.liq"]

