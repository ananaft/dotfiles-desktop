#!/usr/bin/env bash

cpu_temp=($(sensors | grep 'CPU Temp'))
cpu_temp="${cpu_temp[2]:1:${#cpu_temp[2]}-3}"

printf '%.1f°C' "$cpu_temp"
