# Liquidsoap container
FROM noagenda/liquidsoap

USER root

RUN apt-get update && \
	apt-get -y upgrade && \
	apt-get -y dist-upgrade && \
	apt-get -y autoremove && \
	apt-get clean

USER liquidsoap

CMD ["/usr/bin/liquidsoap", "/etc/liquidsoap/noagenda.liq"]

