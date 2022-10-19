#! /bin/bash
echo -n 'VPN: '
if ip addr | grep tun > /dev/null; then
	echo '%{F#00ff00}Active'
	exit
else
	echo '%{F#ff0000}Inactive'
	ps -aux | grep 'torrent' | awk '{print $2}' | xargs kill
fi
