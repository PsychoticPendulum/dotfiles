#! /bin/bash

TOTAL=$(pacman -Q | wc -l)
PENDING=$(pacman -Qu | wc -l)
echo $TOTAL \($PENDING\)
