FROM ubuntu:20.04

RUN apt-get update && apt-get install --assume-yes systemd netcat-openbsd
RUN rm -rf /lib/systemd/system/* /etc/systemd/system/*

COPY files/* /lib/systemd/system

WORKDIR /lib/systemd/system
CMD ["/lib/systemd/systemd"]
