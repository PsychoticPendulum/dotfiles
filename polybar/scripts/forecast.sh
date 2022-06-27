#! /bin/bash

FULL=$(curl --silent wttr.in | head -n 4 | tail -n 2)
ATTR=$(echo $FULL | tail -n 2 | head -n 1 | awk '{print $1}')
TEMP=$(echo $FULL | tail -n 1 | awk '{print $4$5$6}')

echo $TEMP $ATTR | sed -r "s/\x1B\[(([0-9]{1,2})?(;)?([0-9]{1,2})?)?[m,K,H,f,J]//g"
