#!/usr/bin/env bash

set -Eeuo pipefail

BACKUP_DIR="${1:-$HOME/fintech-backups-demo}"
RETENTION_DAYS="${2:-7}"

if [[ ! -d "$BACKUP_DIR" ]]; then
    echo "ERROR: Backup directory does not exist: $BACKUP_DIR" >&2
    exit 1
fi

if [[ ! "$RETENTION_DAYS" =~ ^[0-9]+$ ]]; then
    echo "ERROR: Retention must be a non-negative integer." >&2
    exit 1
fi

echo "Backup directory: $BACKUP_DIR"
echo "Retention period: $RETENTION_DAYS days"
echo "Files that would be deleted:"

find "$BACKUP_DIR" \
    -maxdepth 1 \
    -type f \
    -name 'fintech-*.tar.gz' \
    -mtime "+${RETENTION_DAYS}" \
    -print

echo
echo "Dry run only: no files have been deleted."
