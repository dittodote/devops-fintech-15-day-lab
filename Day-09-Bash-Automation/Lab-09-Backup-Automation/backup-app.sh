#!/usr/bin/env bash

set -Eeuo pipefail

SOURCE_DIR="${1:-$HOME/fintech-demo-app}"
BACKUP_DIR="${2:-$HOME/fintech-backups}"

if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "ERROR: Source directory does not exist: $SOURCE_DIR" >&2
    exit 1
fi

mkdir -p "$BACKUP_DIR"

TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
ARCHIVE="${BACKUP_DIR}/fintech-${TIMESTAMP}.tar.gz"

tar -czf "$ARCHIVE" -C "$SOURCE_DIR" .

if tar -tzf "$ARCHIVE" >/dev/null; then
    echo "Backup created and verified: $ARCHIVE"
else
    echo "ERROR: Archive verification failed." >&2
    exit 1
fi
