#!/usr/bin/env bash

read -r _ pid <<< $(hyprctl activewindow | grep pid)
ppid=$(pgrep --newest --parent "$pid")
dir=$(readlink /proc/"$ppid"/cwd || printf "%s" "$HOME")
printf "%s" "$dir"
