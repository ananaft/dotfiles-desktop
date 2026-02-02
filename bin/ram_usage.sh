#!/usr/bin/env bash

total="$(free -h | awk 'NR == 2 {print $2}')"
used="$(free -h | awk 'NR == 2 {print $3}')"

printf "$used"'B / '"$total"'B'
