# Day 3 - Lab 2: SSH Key Authentication

## Objective

Understand public/private SSH key authentication.

## Key Files

Private key:

~/.ssh/devops_lab_key

Public key:

~/.ssh/devops_lab_key.pub

Server authorized keys:

~/.ssh/authorized_keys

## Commands

ssh-keygen
ssh -i
chmod
chown

## Important Security Rule

Never share or commit a private SSH key.

## Key Permissions

~/.ssh = 700

authorized_keys = 600
