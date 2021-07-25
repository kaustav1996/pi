#!/usr/bin/env bash
set -e

pi_local_ip=$(echo "pi@$1")

command=$(echo "$2")

echo "${command}"

ssh "${pi_local_ip}" "cd /home/pi/pi; ${command}"
