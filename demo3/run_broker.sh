#!/bin/bash
docker run -it --name broker --rm -v $(pwd)/../qemu-arm-static:/usr/bin/qemu-arm-static philipz/rpi-mqtt bash
