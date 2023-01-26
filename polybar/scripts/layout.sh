#! /bin/bash

~/Developer/.scripts/keymod.sh > /dev/null
setxkbmap -query | tail -n 1 | awk '{print $2}'
