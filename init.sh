#!/bin/bash
if [ ! -f .env ]; then
  cp ./files/.env.example .env
fi
if [ ! -f files/mosquitto.log ]; then
  touch ./files/mosquitto.log
fi
if [ ! -f files/mosquitto.passwd ]; then
  touch ./files/mosquitto.passwd
fi
