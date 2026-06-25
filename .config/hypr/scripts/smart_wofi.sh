#!/usr/bin/env bash

read -r _ monitor_id <<< $(hyprctl activeworkspace | grep monitorID)

if [[ "$monitor_id" == 0 ]]; then
	color="@yellow_bright"
elif [[ "$monitor_id" == 1 ]]; then
	color="@green_bright"
elif [[ "$monitor_id" == 2 ]]; then
	color="@cyan_bright"
else
	color="@white"
fi

cat ~/.config/wofi/style.css \
	<(echo "#entry:selected { background-color: alpha($color, 0.7) }") \
	> /tmp/wofi-tmp.css

wofi --style /tmp/wofi-tmp.css "$@"
