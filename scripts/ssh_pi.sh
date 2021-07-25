#!/usr/bin/env bash
set -e

pi_local_ip=$(echo "pi@$1")

ssh "${pi_local_ip}" -A
