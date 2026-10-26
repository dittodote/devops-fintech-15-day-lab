# Day 08 - Lab 01: AWS CLI Verification

## Objective
Verify AWS CLI installation and identity.

## Commands
- aws --version
- aws sts get-caller-identity
- aws configure list

## What I Learned
- AWS CLI provides command-line access to AWS services.
- STS can return information about the current AWS identity.
- AWS CLI uses a configured credential source and region.

## Security
Never commit AWS credentials or secret configuration files.
Review command output before sharing it.
