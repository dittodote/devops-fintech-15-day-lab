# Lab 5 - SSH Networking

## Commands

systemctl status ssh
sudo ss -ltnp | grep ':22'
ssh localhost
nc -zv localhost 22
nc -zv localhost 9999

## Key Concepts

SSH normally uses TCP port 22.

Basic troubleshooting:

1. Is server reachable?
2. Is port 22 reachable?
3. Is SSH service running?
4. Is authentication working?
