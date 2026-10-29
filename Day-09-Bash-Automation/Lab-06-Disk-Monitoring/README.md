# Day 09 - Lab 06: Disk Monitoring

## Objective
Monitor root filesystem usage.

## Execution
./disk-check.sh

## Concepts
- df
- awk
- Command substitution
- Arithmetic comparisons
- Threshold monitoring

## Production Improvement
A production script could write to a log, send an alert,
or report a non-zero exit code when the threshold is exceeded.
