#! /bin/bash

PING=$(ping -qc1 google.com 2>&1 | awk -F'/' 'END{ print (/^rtt/? ""$5"":"DOWN") }')

BASE=${PING::-4}
COLOR="%{F#00ff00}"

if [[ $BASE -gt 100 ]]; then
	COLOR="%{F#ff0000}"
elif [[ $BASE -gt 30 ]]; then
	COLOR="%{F#ffff00}"
fi

echo $COLOR $PING
