# Liquidsoap container
FROM noagenda/lqs:buster-latest

USER root

RUN set -ex ;\
	eatmydata apt-get update \
	&& eatmydata apt-get -y upgrade \
	&& eatmydata apt-get -y dist-upgrade \
	&& eatmydata apt-get -y autoremove \
	&& eatmydata apt-get -y clean

USER liquidsoap

CMD ["/usr/bin/liquidsoap", "/etc/liquidsoap/noagenda.liq"]

