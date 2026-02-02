#!/usr/bin/env bash

set -e

i3lock --nofork --blur=10 --ignore-empty-password \
	--clock --date-str="%d %m %Y" \
	--time-color="#ff94cb" --date-color="#ff94cb" \
	--inside-color="#896cd9" --ring-color="#d9b100" \
	--insidever-color="#bea7ff" --ringver-color="#bea7ff" \
	--keyhl-color="#ffd000" --bshl-color="#9a2b60"	
