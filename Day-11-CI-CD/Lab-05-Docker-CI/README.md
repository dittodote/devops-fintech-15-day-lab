# Day 11 - Lab 05: Docker CI

## Objective
Build Docker images automatically using GitHub Actions.

## Files
- app.py
- Dockerfile

## Local Build
docker build -t fintech-payment-ci:v1 .

## Test
docker run -d -p 8089:8080 fintech-payment-ci:v1

## Pipeline
1. Checkout code
2. Build Docker image
3. Verify image

## Expected Result
GitHub Actions successfully builds the Docker image.
