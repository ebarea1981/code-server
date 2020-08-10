FROM linuxserver/code-server:latest
MAINTAINER Odoo S.A. <ebarea1981@gmail.com>

RUN apt-get update && \
 apt-get install -y \
	python3 \
	python3-pip && \
 echo "**** clean up ****" && \
 apt-get purge --auto-remove -y \
	build-essential \
	libx11-dev \
	libxkbfile-dev \
	libsecret-1-dev \
	pkg-config && \
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*
