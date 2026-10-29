#!/usr/bin/env bash

show_heading() {
    echo
    echo "========== $1 =========="
}

show_heading "SYSTEM INFORMATION"
hostname
whoami

show_heading "DISK USAGE"
df -h /

show_heading "MEMORY USAGE"
free -h

show_heading "SSH SERVICE"
if systemctl is-active --quiet ssh; then
    echo "SSH is running"
else
    echo "SSH is not running"
fi

show_heading "REPORT COMPLETE"
