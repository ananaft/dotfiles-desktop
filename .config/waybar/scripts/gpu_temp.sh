#!/usr/bin/env bash

gpu_temp=($(sensors | grep 'junction'))
gpu_temp="${gpu_temp[1]:1:${#gpu_temp[1]}-3}"

printf '%.1f°C' "$gpu_temp"
