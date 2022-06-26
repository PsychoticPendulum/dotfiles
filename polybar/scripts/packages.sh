#! /bin/bash

TOTAL=$(pacman -Q | wc -l)
PENDING=$(checkupdates | wc -l)
echo $TOTAL \($PENDING\)
