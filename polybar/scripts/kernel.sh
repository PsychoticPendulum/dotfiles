#! /bin/bash

uname -r | sed -E s/"-arch[0-9]+-[0-9]+"//g | sed -E s/"-artix[0-9]+-[0-9]+"//g
