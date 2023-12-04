#! /bin/bash
echo -n 'VPN: '

CITY=$(nordvpn status | grep "City" | awk '{print $2}')

if ip addr | grep -E "(nord|tun)" > /dev/null; then
	echo "%{F#00ff00}$CITY"
elif ip addr | grep tunr > /dev/null; then
	echo '%{F#00ff00}Home'
else
	echo '%{F#ff0000}Down'
fi
