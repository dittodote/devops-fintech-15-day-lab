# Day 4 - Lab 6: Nginx Reverse Proxy

## Architecture

Client
  ↓
Nginx :80
  ↓
Backend Application :8080

## Objective

Configure Nginx as a reverse proxy.

## Important Configuration

proxy_pass

proxy_set_header

## Why Reverse Proxy?

Nginx can handle:

- HTTP/HTTPS
- SSL termination
- Routing
- Load balancing
- Static files
- Backend proxying

## Test

curl http://fintech-nginx.local
