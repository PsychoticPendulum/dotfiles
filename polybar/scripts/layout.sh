#! /bin/bash

~/Developer/.scripts/keymod.sh
setxkbmap -query | tail -n 1 | awk '{print $2}'
