# Day 3 - Lab 1: SSH Administration

## Objective

Understand SSH service administration and basic SSH troubleshooting.

## Commands Practiced

systemctl status ssh
systemctl start ssh
systemctl enable ssh
systemctl is-active ssh
systemctl is-enabled ssh
ss -ltnp
ssh localhost
journalctl -u ssh

## Key Concepts

SSH normally uses TCP port 22.

sshd is the SSH server process.

Main server configuration:

/etc/ssh/sshd_config

## Troubleshooting Flow

1. Check SSH service
2. Check listening port
3. Check firewall
4. Check SSH configuration
5. Check logs
6. Test connection
