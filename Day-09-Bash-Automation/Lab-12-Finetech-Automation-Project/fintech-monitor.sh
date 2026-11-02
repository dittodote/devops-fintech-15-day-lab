#!/usr/bin/env bash

set -uo pipefail

DISK_THRESHOLD=80
LOG_FILE="${1:-application.log}"
FAILED=0

echo "===================================="
echo " FinTech Server Monitoring"
echo "===================================="
echo "Date: $(date)"
echo "Host: $(hostname)"

echo
echo "===== DISK CHECK ====="

DISK_USAGE="$(df -P / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')"

echo "Root filesystem usage: ${DISK_USAGE}%"

if (( DISK_USAGE >= DISK_THRESHOLD )); then
    echo "WARNING: Disk usage exceeds threshold."
    FAILED=1
else
    echo "OK: Disk usage is within threshold."
fi

echo
echo "===== SERVICE CHECK ====="

for SERVICE in ssh nginx; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "OK: $SERVICE is active"
    else
        echo "WARNING: $SERVICE is not active"
        FAILED=1
    fi
done

echo
echo "===== LOG CHECK ====="

if [[ ! -f "$LOG_FILE" ]]; then
    echo "WARNING: Log file not found: $LOG_FILE"
    FAILED=1
else
    ERROR_COUNT="$(grep -ci 'ERROR' "$LOG_FILE" || true)"

    echo "Error entries found: $ERROR_COUNT"

    if (( ERROR_COUNT > 0 )); then
        echo "WARNING: Application errors detected."
        FAILED=1
    else
        echo "OK: No application errors detected."
    fi
fi

echo
echo "===== FINAL RESULT ====="

if (( FAILED == 0 )); then
    echo "HEALTHY: All configured checks passed."
    exit 0
else
    echo "ATTENTION REQUIRED: One or more checks failed."
    exit 1
fi
