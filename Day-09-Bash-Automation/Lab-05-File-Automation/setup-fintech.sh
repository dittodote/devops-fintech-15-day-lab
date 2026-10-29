#!/usr/bin/env bash

set -euo pipefail

APP_DIR="${HOME}/fintech-demo-app"

mkdir -p "$APP_DIR"/{config,logs,backups,scripts}

if [[ ! -f "$APP_DIR/config/app.conf" ]]; then
    cat > "$APP_DIR/config/app.conf" <<'EOF'
APP_NAME=FinTechDemo
APP_ENV=development
LOG_LEVEL=info
EOF
fi

touch "$APP_DIR/logs/application.log"

echo "FinTech directory structure created:"
find "$APP_DIR" -maxdepth 2 -print
