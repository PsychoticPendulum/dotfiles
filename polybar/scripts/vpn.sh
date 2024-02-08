#! /bin/bash
echo -n 'VPN: '

CITY=$(nordvpn status | grep "City" | awk '{print $2}')
DATA=$(nordvpn status | grep "Transfer" | awk '{print $2$3, $5$6}')

if ip addr | grep -E "(nord|tun)" > /dev/null; then
	echo "%{F#00ff00}$CITY ($DATA)"
elif ip addr | grep tunr > /dev/null; then
	echo '%{F#00ff00}Home'
else
	echo '%{F#ff0000}Down'
fi
