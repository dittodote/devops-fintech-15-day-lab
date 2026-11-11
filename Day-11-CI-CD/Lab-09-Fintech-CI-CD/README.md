# Day 11 - Final FinTech CI/CD Project

## Objective
Create an automated CI pipeline using GitHub Actions.

## Technology
- Git
- GitHub
- GitHub Actions
- Python
- Docker

## Application
FinTech Payment Validation

## Pipeline Stages
1. Checkout source code
2. Configure Python
3. Run unit tests
4. Build Docker image
5. Verify image

## Test Command
python3 -m unittest -v

## Docker Build
docker build -t fintech-final:v1 .

## Docker Run
docker run --rm fintech-final:v1

## Expected Result
All tests pass and Docker image builds successfully.

## Skills Practiced
- Git workflow
- GitHub Actions
- CI pipelines
- Automated testing
- Docker image building
- Pipeline dependencies
- Troubleshooting
