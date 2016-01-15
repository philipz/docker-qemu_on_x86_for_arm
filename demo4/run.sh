#!/bin/bash
docker run -it --name mate --rm -v $(pwd)/../qemu-arm-static:/usr/bin/qemu-arm-static philipz/rpi-mate bash
