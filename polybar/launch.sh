#!usr/bin/env bash

kill $(ps -aux | grep "polybar --reload bar1" | awk '{print $2}')

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload bar1 &
	done
else
	polybar --reload bar1 &
fi

##  echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bar1 >> /tmp/polybar1.log 2>&1 &
# polybar bar2 >> /tmp/polybar2.log 2>&1 &

echo "Bars launched ..."
