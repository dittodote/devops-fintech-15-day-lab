# Day 3 Mini Project - Secure FinTech Linux Server

## Objective

Build a basic secured Linux server environment for a
FinTech application.

## Implemented

- SSH administration
- SSH key authentication
- Linux users
- Linux groups
- Sudo access
- File ownership
- File permissions
- UFW firewall
- SSH troubleshooting
- Security verification

## Firewall

Allowed:

- TCP 22 - SSH
- TCP 80 - HTTP
- TCP 443 - HTTPS

## Application

Application directory:

/opt/fintech-app

Configuration:

/opt/fintech-app/app.conf

Permissions:

640

## Security Principles

- Use SSH keys
- Protect private keys
- Use groups for access management
- Limit sudo privileges
- Protect application configuration
- Allow only required network ports
- Check authentication logs
- Verify permissions
