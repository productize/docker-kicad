
FROM ubuntu:bionic
MAINTAINER Seppe Stas <seppe@productize.be>
LABEL Description="Minimal KiCad image based on Ubuntu"

ADD kicad-ppa.pgp .
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
	apt-get -y update && \
	apt-get -y install gnupg2 && \
	echo 'deb http://ppa.launchpad.net/js-reynaud/kicad-5.1/ubuntu bionic main' >> /etc/apt/sources.list && \
	apt-key add kicad-ppa.pgp && \
	apt-get -y update && apt-get -y install --no-install-recommends kicad=5.1.0-stable-201903082041+060a0da~80~ubuntu18.04.1 && \
	apt-get -y purge gnupg2 && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/* && \
	rm kicad-ppa.pgp
