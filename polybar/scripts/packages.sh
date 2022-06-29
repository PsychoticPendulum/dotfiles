#! /bin/bash

TOTAL=$(pacman -Q | wc -l)
PENDING=$(checkupdates 2> /dev/null | wc -l)
COLOR="%{F#ff0000}"
if [[ "$PENDING" -eq "0" ]]; then
	COLOR="%{F#00ff00}"
fi
echo $TOTAL $COLOR\($PENDING\)
