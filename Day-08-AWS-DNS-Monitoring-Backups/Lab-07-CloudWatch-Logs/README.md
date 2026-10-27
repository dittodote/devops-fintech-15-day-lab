# Day 08 - Lab 07: CloudWatch Logs

## Objective
Understand centralized application logging.

## Source Logs
- /var/log/nginx/access.log
- /var/log/nginx/error.log

## Architecture
EC2 -> CloudWatch Agent -> CloudWatch Logs

## Requirements
- CloudWatch Agent configuration
- Appropriate IAM permissions
- Network connectivity
- Correct log file paths

## Security
Avoid sending passwords, tokens, payment data, or other secrets
to centralized logs.
Review log retention and ingestion costs.
