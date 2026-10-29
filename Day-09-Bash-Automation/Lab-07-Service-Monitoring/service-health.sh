#!/usr/bin/env bash

set -uo pipefail

SERVICES=("ssh" "nginx")
FAILED=0

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "OK: $SERVICE is active"
    else
        echo "ALERT: $SERVICE is not active"
        FAILED=1
    fi
done

if (( FAILED != 0 )); then
    echo "One or more services require investigation."
    exit 1
fi

echo "All configured services are active." 
