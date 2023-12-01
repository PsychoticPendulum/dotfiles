#! /bin/bash

language=$(setxkbmap -query | grep "layout" | awk '{print $2}')
xrate=$(xset -q | head -n 9 | tail -n 1 | awk '{print $4,$7}')
echo $language $xrate
