#!/usr/bin/env bash

set -euo pipefail

LOG_FILE="${1:-application.log}"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "ERROR: Log file not found: $LOG_FILE" >&2
    exit 1
fi

TOTAL_LINES="$(wc -l < "$LOG_FILE")"
ERROR_COUNT="$(grep -ci 'ERROR' "$LOG_FILE" || true)"

echo "Log file: $LOG_FILE"
echo "Total lines: $TOTAL_LINES"
echo "Errors found: $ERROR_COUNT"

if (( ERROR_COUNT > 0 )); then
    echo
    echo "Matching error entries:"
    grep -in 'ERROR' "$LOG_FILE" || true
fi
