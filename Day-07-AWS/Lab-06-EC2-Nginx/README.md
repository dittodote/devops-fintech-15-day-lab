# Day 7 - Lab 06: Nginx on EC2

## Objective
Deploy a simple website on an Ubuntu EC2 instance.

## Commands

sudo apt update
sudo apt install nginx -y
sudo systemctl enable --now nginx
sudo systemctl status nginx
sudo ss -ltnp | grep ':80'
curl http://localhost

## Verification
Test the public IPv4 address from the local laptop.

## Troubleshooting
- Check Nginx service status.
- Check port 80.
- Check EC2 security-group rules.
- Check the public IPv4 address.
- Check network routing.

## Security
Use HTTPS for production applications.
Restrict inbound traffic to required sources and ports.
