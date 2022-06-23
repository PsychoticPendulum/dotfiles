#! /bin/bash

ip -4 -o addr show wlan0 | awk '{print $4}'
