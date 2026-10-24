# Day 7 - Lab 11: AWS Troubleshooting

## Scenario 1: SSH connection times out

Check:
- EC2 instance state
- Public IP
- Security-group inbound rule for TCP 22
- Source IP restriction
- Subnet route table
- Network ACL
- Local network restrictions

## Scenario 2: Nginx website is unreachable

Check:
- Nginx service status
- TCP port 80
- EC2 security group
- Public IP and route
- Host firewall
- Nginx error logs

## Scenario 3: AWS CLI access denied

Check:
- Current identity
- IAM permissions policy
- Role trust policy
- Resource ARN
- Explicit denies
- Bucket policy where relevant

## Scenario 4: S3 object is inaccessible

Check:
- Bucket name
- Object key
- IAM permissions
- Bucket policy
- Public-access block
- Encryption permissions if applicable

## Scenario 5: Unexpected charges

Check:
- Running EC2 instances
- EBS volumes and snapshots
- Elastic IP/public IPv4 resources
- S3 storage
- CloudWatch logs and metrics
- Other regional resources

## Troubleshooting Principle

Collect evidence first, identify the failure layer,
make the smallest safe change, and verify the result.
