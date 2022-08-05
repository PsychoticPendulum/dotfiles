#! /bin/bash

TOTAL=$(pacman -Q | wc -l)
PENDING=$(checkupdates 2> /dev/null | wc -l)
COLOR=""

PENDING=3

if [[ "$PENDING" -gt "25" ]]; then
	COLOR=" %{F#ff0000}$PENDING"
elif [[ "$PENDING" -gt "10" ]]; then
	COLOR=" %{F#ffff00}$PENDING"
elif [[ "$PENDING" -gt "0" ]]; then
	COLOR=" %{F#88ff00}$PENDING"
fi
echo $TOTAL$COLOR
