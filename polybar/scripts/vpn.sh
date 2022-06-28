#! /bin/bash

if ip addr | grep tun > /dev/null; then
	echo '%{F#00ff00}online'
	exit
fi
echo '%{F#ff0000}offline'
