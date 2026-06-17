#!/usr/bin/env bash

choice=$(printf "Shutdown\nReboot\nReset" | \
	wofi --dmenu --hide-search --lines 3 --width 180 --xoffset 12 --yoffset 5 --cache-file=/dev/null)

case "$choice" in
	Shutdown)
		hyprshutdown -t 'Shutting down...' --post-cmd 'systemctl poweroff'
		;;
	Reboot)
		hyprshutdown -t 'Restarting...' --post-cmd 'systemctl reboot'
		;;
	Reset)
		hyprshutdown -t 'Resetting...' --post-cmd 'systemctl soft-reboot'
		;;
esac
