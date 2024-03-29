#! /bin/bash

PING=$(ping -qc1 8.8.8.8 2>&1 | awk -F'/' 'END{ print (/^rtt/? ""$5"":"Down") }')

BASE=${PING::-4}
COLOR="%{F#00ff00}"
PING=${PING::-2}

if [[ $BASE -eq "DOWN" ]]; then
	COLOR="%{F#ff0000}"
elif [[ $BASE -gt 200 ]]; then
	COLOR="%{F#ff0000}"
elif [[ $BASE -gt 100 ]]; then
	COLOR="%{F#ff8800}"
elif [[ $BASE -gt 30 ]]; then
	COLOR="%{F#ffff00}"
elif [[ $BASE -gt 10 ]]; then
	COLOR="%{F#80ff00}"
fi

echo $COLOR ${PING}ms
