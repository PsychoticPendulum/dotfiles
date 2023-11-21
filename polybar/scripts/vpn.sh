#! /bin/bash
echo -n 'VPN: '

if ip addr | grep -E "(nord|tun)" > /dev/null; then
	echo '%{F#00ff00}Up'
elif ip addr | grep tunr > /dev/null; then
	echo '%{F#00ff00}Home'
else
	echo '%{F#ff0000}Down'
fi
