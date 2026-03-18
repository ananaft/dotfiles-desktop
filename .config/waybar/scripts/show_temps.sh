#!/usr/bin/env bash

cpu_temp=($(sensors | grep 'CPU Temp'))
cpu_temp="${cpu_temp[2]:1:${#cpu_temp[2]}-3}"
gpu_temp=($(sensors | grep 'junction'))
gpu_temp="${gpu_temp[1]:1:${#gpu_temp[1]}-3}"

printf 'CPU: %.1f°C\rGPU: %.1f°C' "$cpu_temp" "$gpu_temp"
