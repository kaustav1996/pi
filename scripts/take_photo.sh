#!/usr/bin/env bash
set -e

# Enable formatting modifiers
. scripts/formatters.sh

image_number="$(cat camera/.image_number 2>/dev/null)"

printf "Current Image Number: ${_GREEN_}${_BOLD_}$image_number${_UNBOLD_}${_RESETALL_}\n"

raspistill -o static/img/image_${image_number}.jpg

echo $(( image_number + 1 )) > camera/.image_number

printf "\n"
