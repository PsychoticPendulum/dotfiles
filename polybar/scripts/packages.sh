#! /bin/bash

TOTAL=$(pacman -Q | wc -l)
PENDING=$(checkupdates 2> /dev/null | wc -l)
echo $TOTAL \($PENDING\)
