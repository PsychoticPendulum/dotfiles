#! /bin/bash

setxkbmap -query | tail -n 1 | awk '{print $2}'
