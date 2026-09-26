# Day 3 - Lab 6: Security Troubleshooting

## Scenario

SSH connection to a Linux server is failing.

## Troubleshooting Steps

1. Check SSH service
2. Check port 22
3. Check firewall
4. Test connectivity
5. Check user
6. Check SSH keys
7. Check SSH permissions
8. Check authentication logs

## Commands

systemctl status ssh
ss -ltnp
ufw status
nc -zv
id
ls -la ~/.ssh
journalctl -u ssh
grep ssh /var/log/auth.log

## Key Learning

Troubleshooting should proceed from network connectivity
to port availability, service status, authentication,
permissions, and logs.
