# Day 3 - Lab 5: UFW Firewall

## Objective

Practice basic Linux firewall administration using UFW.

## Commands

sudo ufw status
sudo ufw status verbose
sudo ufw status numbered
sudo ufw allow
sudo ufw deny
sudo ufw delete
sudo ufw enable

## Important Ports

22  - SSH
80  - HTTP
443 - HTTPS

## Security Principle

Only expose the ports required by the application.

## Important Warning

Always allow SSH before enabling a firewall on a remote server.
