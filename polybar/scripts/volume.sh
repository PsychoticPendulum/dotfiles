#! /usr/bin/bash

pactl get-sink-volume @DEFAULT_SINK@ | grep 'Volume:' | awk '{print $5}'
