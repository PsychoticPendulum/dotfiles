#! /bin/bash

ping -qc1 google.com 2>&1 | awk -F'/' 'END{ print (/^rtt/? ""$5"":"DOWN") }'
