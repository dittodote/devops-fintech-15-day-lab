#!/usr/bin/env bash


#!/usr/bin/env bash

SERVICES=("ssh" "nginx")

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "RUNNING: $SERVICE"
    else
        echo "NOT RUNNING: $SERVICE"
    fi
done
