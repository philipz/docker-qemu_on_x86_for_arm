FROM philipz/rpi-raspbian:latest
MAINTAINER Philpz <philipzheng@gmail.com>

ENV QEMU_EXECVE 1
COPY qemu/cross-build-end qemu/cross-build-start qemu/qemu-arm-static qemu/sh-shim /usr/bin/
RUN [ "cross-build-start" ]
RUN echo "deb http://archive.raspbian.org/mate wheezy main" >> /etc/apt/sources.list
RUN apt-get update && apt-get -y install mate-core mate-desktop-environment
RUN [ "cross-build-end" ]
