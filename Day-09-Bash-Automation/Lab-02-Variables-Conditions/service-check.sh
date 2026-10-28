#!/usr/bin/env bash

read -r -p "Enter a service name (nginx or ssh): " SERVICE

if [[ "$SERVICE" != "nginx" && "$SERVICE" != "ssh" ]]; then
    echo "Unsupported service. Choose nginx or ssh."
    exit 1
fi

if systemctl is-active --quiet "$SERVICE"; then
    echo "SUCCESS: $SERVICE is running."
else
    echo "WARNING: $SERVICE is not running."
fi
