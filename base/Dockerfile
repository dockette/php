FROM dockette/debian:jessie

MAINTAINER Milan Sulc <sulcmil@gmail.com>

RUN apt-get update && apt-get update -y && \
    apt-get install -y wget curl && \
	curl -o /usr/local/bin/phpmailer https://gist.githubusercontent.com/f3l1x/d6f02fc3b498e33059e8876a73e9ae13/raw/e3011357d082f3810c3d8d1f57427e36525dc30f/phpmailer && \
    mkdir -p /var/log/mail && \
    chmod 755 /usr/local/bin/phpmailer && \
    chmod 777 /var/log/mail && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

VOLUME /srv
WORKDIR /srv
