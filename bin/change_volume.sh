#!/usr/bin/env bash

usage () {
	message=$(cat <<EOF
Usage: change_volume -v VALUE -t NODE_TYPE

VALUE can be any integer between -100 and 100.
NODE_TYPE can be either sink or source.
EOF
)
	echo "$message"
	exit 1
}

MIN_VOLUME=0
MAX_VOLUME=100

while getopts "v:t:" option; do
	case $option in
		v) # change volume
			value="$OPTARG";;
		t) # choose node type
			node_type="$OPTARG";;
		\?)
			usage;;
	esac
done

# Check for passed options
if [[ -z "$value" ]]; then
	echo 'Error: Value option not defined'
	usage
elif [[ -z "$node_type" ]]; then
	echo 'Error: Node type option not defined'
	usage
fi
# Check for correct node type
if [[ ! "${node_type,,}" =~ ^(sink|source)$ ]]; then
	echo 'Error: Allowed node types are sink and source'
	usage
fi
# Check if passed value is a number
if [[ ! "$value" -eq "$value" ]] 2>/dev/null; then
	echo 'Error: Value option is not an integer'
	usage
fi

# Change node type according to wpctl syntax
if [[ "${node_type,,}" =~ ^sink$ ]]; then
	node_type='@DEFAULT_AUDIO_SINK@'
elif [[ "${node_type,,}" =~ ^source$ ]]; then
	node_type='@DEFAULT_AUDIO_SOURCE@'
fi
# Get current node volume
read -r _ current_volume <<< $(wpctl get-volume "$node_type")
current_volume=$(echo "($current_volume * 100) / 1" | bc)

# Change volume
echo "$value"
echo "$current_volume"
if [[ $(( value + current_volume )) -gt 100 ]]; then
	wpctl set-volume "$node_type" 100%
elif [[ "$value" -lt 0 ]]; then
	wpctl set-volume "$node_type" "${value:1}"%-
else
	wpctl set-volume "$node_type" "$value"%+
fi
