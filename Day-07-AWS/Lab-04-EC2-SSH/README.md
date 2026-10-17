# Day 7 - Lab 04: EC2 SSH

## Objective
Launch an Ubuntu EC2 instance and connect using SSH.

## Steps
1. Launch an Ubuntu instance.
2. Create and download a key pair.
3. Restrict SSH access to My IP.
4. Set private-key permissions to 400.
5. Connect using SSH.
6. Verify the remote operating system.

## Commands

chmod 400 ~/Downloads/your-key.pem

ssh -i ~/Downloads/your-key.pem ubuntu@YOUR_EC2_PUBLIC_IP

whoami
cat /etc/os-release
df -h
free -h
exit

## Security
Never commit private keys to GitHub.
Never include actual credentials in documentation.
Restrict SSH to trusted IP addresses.

## Cleanup
Stop or terminate the instance when no longer needed.
Check for attached storage and other billable resources.
