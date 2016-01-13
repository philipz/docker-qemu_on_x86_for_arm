#!/bin/bash
docker run -it --rm -v $(pwd)/qemu-arm-static:/usr/bin/qemu-arm-static -v $(pwd)/demo1:/app philipz/rpi-raspbian bash
