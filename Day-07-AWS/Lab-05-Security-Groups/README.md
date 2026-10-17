# Day 7 - Lab 05: EC2 Security Groups

## Objective
Understand AWS network access controls.

## Ports
- 22: SSH
- 80: HTTP
- 443: HTTPS
- 3306: MySQL

## Security Rules
- Restrict SSH to trusted source IPs.
- Permit HTTP only when needed.
- Permit HTTPS only when needed.
- Do not expose MySQL publicly.

## Troubleshooting
Check:
1. Instance state.
2. Public IP.
3. Security-group inbound rules.
4. Subnet routing.
5. Network ACLs if applicable.
6. Server firewall.
7. Application service status.
