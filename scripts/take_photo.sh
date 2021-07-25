#!/usr/bin/env bash

# Enable formatting modifiers
. scripts/formatters.sh

image_number="$(cat camera/.image_number 2>/dev/null)"

printf "Curren Image Number: ${_GREEN_}${_BOLD_}$image_number${_UNBOLD_}${_RESETALL_}\n"

raspistill -o ~/pi/static/img/image_${image_number}.jpg

printf "\n"

raspistill -o ~/pi/static/img/image.jpg