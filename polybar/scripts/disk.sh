#! /bin/bash

TOTAL=$(df / -h | awk '{print $4}' | tail -n 1)
FREE=$(df / -h | awk '{print $3}' | tail -n 1)
PERC=$(df / -h | awk '{print $5}' | tail -n 1)
PERC=${PERC::-1}

COLOR="%{F#00ff00}"
if [[ $PERC -gt 90 ]]; then
	COLOR="%{F#ff0000}"
elif [[ $PERC -gt 50 ]]; then
	COLOR="%{F#ffff00}"
fi
echo $FREE $TOTAL $COLOR$PERC\%
