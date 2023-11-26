#! /bin/bash
echo -n 'VPN: '

COUNTRY=$(nordvpn status | head -n 4 | tail -n 1 | awk '{print $2}')

if ip addr | grep -E "(nord|tun)" > /dev/null; then
	echo "%{F#00ff00}$COUNTRY"
elif ip addr | grep tunr > /dev/null; then
	echo '%{F#00ff00}Home'
else
	echo '%{F#ff0000}Down'
fi
