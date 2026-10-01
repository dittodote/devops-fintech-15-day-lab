# Day 4 Mini Project - FinTech Web Server

## Architecture

Client
  |
  v
Nginx :80
  |
  v
Backend Application :8080

## Components

- Linux
- Nginx
- Python backend
- HTTP
- Reverse proxy

## Nginx Responsibilities

- Receive HTTP requests
- Route requests to backend
- Provide access/error logging
- Hide backend port from direct client access

## Verification

Check Nginx:

systemctl status nginx

Check port:

ss -ltnp | grep ':80'

Check backend:

curl http://127.0.0.1:8080

Check complete application:

curl http://fintech-nginx.local

Check logs:

tail /var/log/nginx/fintech_access.log
tail /var/log/nginx/fintech_error.log
