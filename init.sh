#!/bin/bash
if [ ! -f .env ]; then
  cp -v ./files/.env.example .env
fi
if [ ! -f files/mosquitto.passwd ]; then
  touch ./files/mosquitto.passwd
fi
