# Day 7 - Lab 12: FinTech AWS Mini-Project

## Objective
Deploy a simple FinTech test page to AWS.

## Architecture
- EC2: Compute
- Ubuntu: Operating system
- Nginx: Web server
- Security Group: Network access
- S3: Object storage
- IAM Role: Secure AWS access
- CloudWatch: Monitoring

## Validation
- Verify the EC2 instance is running.
- Verify Nginx is active.
- Verify the website responds.
- Verify IAM identity and permissions.
- Review CloudWatch metrics.

## Security
- Restrict SSH access.
- Allow only required web ports.
- Keep database services private.
- Never commit secrets.
- Do not use real payment or customer data.

## Cleanup
Terminate the EC2 instance when finished.
Delete unused storage and release unused Elastic IPs.
Delete the lab S3 bucket and objects when no longer needed.
Check for other billable resources.
