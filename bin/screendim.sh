#!/usr/bin/env bash

usage () {
	echo "Usage: $0 -d <num> [-b <num>] [-c <num>]"
	exit 1
}

[ $# -eq 0 ] && usage

while getopts ":d:b:c:" option; do
	case $option in
		d)
			display="$OPTARG"
			;;
		b)
			brightness_value="$OPTARG"
			;;
		c)
			contrast_value="$OPTARG"
			;;
		\?)
			echo "Invalid option: $OPTARG"
			usage
			;;
		:)
			echo "Option $OPTARG requires an argument."
			usage
			;;
	esac
done

if [[ -z "$display" ]]; then
	echo 'Error: No display option specified'
	usage
fi
if [[ ! "$display" =~ ^[0-9]+$ ]]; then
	echo 'Error: -d argument must be a number'
	usage
fi
if [[ -z "$brightness_value" && -z "$contrast_value" ]]; then
	echo 'Error: Must specify either -b or -c option.'
	usage
fi

if [[ "$brightness_value" =~ ^[0-9]+$ ]]; then
	ddcutil -d "$display" setvcp 10 "$brightness_value"
fi
if [[ "$contrast_value" =~ ^[0-9]+$ ]]; then
	ddcutil -d "$display" setvcp 12 "$contrast_value"
fi

exit 0
