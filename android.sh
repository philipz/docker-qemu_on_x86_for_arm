#!/bin/bash
docker run -it --net host --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -v $HOME/Downloads:/root/Downloads --device /dev/snd --name arcwelder thshaw/arc-welder
