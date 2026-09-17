# Lab 3 - Linux Processes and Services

## Objective

Learn how to inspect processes, manage services and
troubleshoot service failures.

## Commands

ps aux
top
systemctl status
systemctl start
systemctl stop
systemctl restart
systemctl enable
journalctl
pgrep
kill

## Important Concepts

Process:
A running program.

PID:
Process ID.

Service:
A background program managed by the operating system.

systemctl:
Used to manage system services.

journalctl:
Used to view system logs.

## Troubleshooting Flow

Application problem
        ↓
Check service
        ↓
Check process
        ↓
Check logs
        ↓
Check CPU/memory
        ↓
Restart if required
        ↓
Verify
