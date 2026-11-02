# Day 09 - Lab 12: FinTech Automation Project

## Objective
Create a Bash monitoring script for a FinTech application.

## Checks
- Root filesystem usage
- SSH service
- Nginx service
- Application log errors

## Execution
chmod +x fintech-monitor.sh
./fintech-monitor.sh
./fintech-monitor.sh application.log

## Exit Codes
- 0: All configured checks passed
- 1: At least one check requires attention

## Skills Practiced
- Bash variables
- Conditions
- Loops
- Command substitution
- Service monitoring
- Disk monitoring
- Log analysis
- Exit codes

## Production Improvements
- Send alerts to an approved notification system.
- Integrate with CloudWatch or another monitoring platform.
- Run on a schedule.
- Add structured logging.
- Define thresholds based on service requirements.
- Avoid logging sensitive payment information.
