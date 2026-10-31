# Day 09 - Lab 10: Backup Retention

## Objective
Identify old backup archives using a retention period.

## Execution
./cleanup-backups.sh ~/fintech-backups-demo 7

## Concepts
- find
- -mtime
- Script arguments
- Input validation
- Safe dry runs

## Safety
This script only lists eligible files.
It does not delete anything.

## Production Considerations
Test retention policies before enabling deletion.
Account for backup requirements, recovery objectives,
and any applicable legal retention requirements.
