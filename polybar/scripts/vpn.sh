#! /bin/bash
echo -n 'VPN: '
if ip addr | grep tun > /dev/null; then
	echo '%{F#00ff00}Active'
	exit
fi
echo '%{F#ff0000}Inactive'
