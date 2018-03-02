
FROM ubuntu:latest
MAINTAINER Seppe Stas <seppe@productize.be>
LABEL Description="Minimal KiCad image based on Ubuntu"

ADD kicad-ppa.pgp .
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
	echo 'deb http://ppa.launchpad.net/js-reynaud/kicad-4/ubuntu xenial main' >> /etc/apt/sources.list && \
	apt-key add kicad-ppa.pgp && \
	apt-get -y update && apt-get -y install --no-install-recommends kicad && \
	rm -rf /var/lib/apt/lists/* && \
	rm kicad-ppa.pgp
