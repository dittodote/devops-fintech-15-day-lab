# Day 4 - Lab 5: Web Server Troubleshooting

## Troubleshooting Flow

1. Check service
2. Check listening port
3. Test configuration
4. Test HTTP response
5. Check hostname/DNS
6. Check document root
7. Check logs
8. Fix configuration
9. Reload service
10. Test again

## Commands

systemctl status nginx
ss -ltnp
nginx -t
curl
tail
journalctl

## Important Principle

Always validate configuration before reloading or restarting
a production web server.
