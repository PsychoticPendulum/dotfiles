#! /bin/bash

IP=$(ip -4 -o addr show | grep eth || grep wlan)  
echo $IP | awk '{print $2,$4}'
