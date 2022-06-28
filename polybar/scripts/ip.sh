#! /bin/bash

IP=$(ip -4 -o addr show | grep tun || ip -4 -o addr show | grep eth || ip -4 -o addr show | grep wlan)  
echo $IP | awk '{print $2,$4}'
