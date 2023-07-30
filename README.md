# docker-mqtt
MQTT server using mosquitto.

External connections are secured with TLS and arrives at port 8883 where it is forwarded to port 1883 of the container (SSL termination)

## Requirements
1. Router port forward of port 8883 for TCP traffic
1. A Traefik entrypoint called `mqtt` bound to address `:8883` (static config)

## Setup
1. Run init.sh: `./init.sh` (only required at first setup, initializes some files that are to be mounted into the container)
1. Input your domain name and PUID/GUID into `.env` (get PUID/GUID with `id`). This serves to map container file ownership to the host user for easier access
1. Make sure that Docker network `traefik` exists, `docker network ls`
1. Run `docker-compose up` and check logs

## Usage
* Adding new user/pass: ` docker exec mqtt mosquitto_passwd -b /mosquitto/config/mosquitto.passwd <user> <pass> && docker exec mqtt kill -SIGHUP 1` (note the leading space to avoid it showing up in shell history)