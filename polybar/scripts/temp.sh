#! /usr/bin/bash

mosquitto_sub -C 1 -h 192.168.4.37 -t temp/inside --quiet 
