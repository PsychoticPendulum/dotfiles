#! /bin/bash

IP=$(ip -4 -o addr show | grep tun || ip -4 -o addr show | grep eth || ip -4 -o addr show | grep enp || ip -4 -o addr show | grep wlan)  
DEV=$(echo $IP | awk '{print $2}')
IP=$(echo $IP | awk '{print $4}')

if [[ $DEV == "" ]]; then
	DEV="localhost"
fi

if [[ $IP == "" ]]; then
	IP="127.0.0.1"
fi

echo -n "$DEV: "
echo -n "%{F#00ff00}$IP"
