#! /bin/bash

distro=$(lsb_release -d | awk '{print $2}')

if [[ $distro =~ "Void" ]]; then
	TOTAL=$(xbps-query -l | wc -l)
	PENDING=$(xbps-install --memory-sync --dry-run --update | grep -Fe update -e install | wc -l)
	COLOR=""
else
	TOTAL=$(pacman -Q | wc -l)
	PENDING=$(checkupdates | wc -l)
	COLOR=""
fi

if [[ "$PENDING" -gt "25" ]]; then
	COLOR=" %{F#ff0000}$PENDING"
elif [[ "$PENDING" -gt "10" ]]; then
	COLOR=" %{F#ffff00}$PENDING"
elif [[ "$PENDING" -gt "0" ]]; then
	COLOR=" %{F#88ff00}$PENDING"
fi
echo $TOTAL$COLOR
