#!/bin/bash
docker run -it --name mqtt1 --link broker:broker --rm -v $(pwd)/../qemu-arm-static:/usr/bin/qemu-arm-static philipz/rpi-mqtt bash
