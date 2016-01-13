# Docker+QEMU on X86 for ARM
[Raspberry.Taipei](https://www.facebook.com/groups/RaspberryTaipei/) Meetup on 2016-01-24

## Demo 1 - Run Raspbian by QEMU
Use docker volume the qemu-static file to run ARM docker image.
### Golang
`GOARCH=arm go build ./hello.go`

```
docker run -it --rm -v $(pwd)/qemu-arm-static:/usr/bin/qemu-arm-static -v $(pwd)/demo1:/app philipz/rpi-raspbian bash
```

## Demo 2 - Autobuild ARM docker image
Use [Resin blog](https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/) to build ARM docker image, then upload Github repo to [Docker Hub](https://hub.docker.com/r/philipz/rpi-hub-test/). Docker Hub to autobuild ARM images on itself X86 machine.

## Demo 3 - Use Docker to simulate MQTT IoT scenario
Use [mosquitto](http://mosquitto.org/) to send mqtt message on ARM device. MQTT broker also runs on ARM, all device are running on X86 platform by Docker and QEMU.

### Broker
`mosquitto`
### Sub client
`mosquitto_sub -h broker -t rpi/mqtt`
### Pub client
`mosquitto_pub -h broker -t rpi/mqtt`-m "Hello World, RPi"
