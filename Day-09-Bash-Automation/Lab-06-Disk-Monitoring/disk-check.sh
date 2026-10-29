#!/usr/bin/env bash

set -euo pipefail

THRESHOLD=80

USAGE="$(df -P / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')"

echo "Root filesystem usage: ${USAGE}%"
echo "Warning threshold: ${THRESHOLD}%"

if (( USAGE >= THRESHOLD )); then
    echo "WARNING: Root filesystem usage is high."
else
    echo "OK: Root filesystem usage is below threshold."
fi
