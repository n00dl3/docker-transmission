FROM phusion/baseimage:latest

MAINTAINER n00dl3

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get upgrade -y && apt-get install -y transmission-daemon

ADD files/transmission-daemon /etc/transmission-daemon
ADD files/run_transmission.sh /run_transmission.sh

RUN mkdir -p /var/lib/transmission-daemon/incomplete && \
    mkdir -p /var/lib/transmission-daemon/downloads && \
    chown -R debian-transmission: /var/lib/transmission-daemon && \
    chown -R debian-transmission: /etc/transmission-daemon

VOLUME ["/var/lib/transmission-daemon/downloads"]
VOLUME ["/var/lib/transmission-daemon/incomplete"]

EXPOSE 9091
EXPOSE 12345

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
