#! /bin/bash

DIR='/'

echo $(df / -h | awk '{print $3,$5}' | tail -n 1)
