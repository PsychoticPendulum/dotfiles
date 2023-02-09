#! /usr/bin/bash

inside=$(mosquitto_sub -W 1 -C 1 -h 192.168.4.37 -t temp/inside --quiet | awk '{print $1}')
outside=$(mosquitto_sub -W 1 -C 1 -h 192.168.4.37 -t temp/outside --quiet | awk '{print $1}')
echo "$inside $outside"
