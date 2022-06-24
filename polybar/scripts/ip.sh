#! /bin/bash

IP=$(ip -4 -o addr show | grep eth0 || grep wlan0)  
echo $IP | awk '{print $2,$4}'
