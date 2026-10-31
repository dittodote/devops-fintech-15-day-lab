#!/usr/bin/env bash

set -uo pipefail

REPORT_DIR="${HOME}/fintech-health-reports"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
REPORT_FILE="${REPORT_DIR}/health-${TIMESTAMP}.txt"

mkdir -p "$REPORT_DIR"

{
    echo "FinTech Server Health Report"
    echo "Generated: $(date)"
    echo "Hostname: $(hostname)"
    echo "User: $(whoami)"

    echo
    echo "===== DISK USAGE ====="
    df -h /

    echo
    echo "===== MEMORY ====="
    free -h

    echo
    echo "===== SSH SERVICE ====="
    if systemctl is-active --quiet ssh; then
        echo "SSH: ACTIVE"
    else
        echo "SSH: NOT ACTIVE"
    fi

    echo
    echo "===== NGINX SERVICE ====="
    if systemctl is-active --quiet nginx; then
        echo "Nginx: ACTIVE"
    else
        echo "Nginx: NOT ACTIVE"
    fi

} > "$REPORT_FILE"

echo "Health report created: $REPORT_FILE"
