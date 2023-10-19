#!usr/bin/env bash

# ps -aux | grep polybar | awk '{print $2}' | xargs kill

# if type "xrandr"; then
# 	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
# 		MONITOR=$m polybar --reload bar1 &
# 	done
# else
# 	polybar --reload bar1 &
# fi

##  echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bar1 >> /tmp/polybar1.log 2>&1 &
# polybar bar2 >> /tmp/polybar2.log 2>&1 &
polybar bar1

echo "Bars launched ..."
