# Day 10 - Lab 05: Dockerfile

## Objective
Build a custom Docker image for a FinTech application.

## Files
- app.py
- Dockerfile

## Build
docker build -t fintech-payment-app:v1 .

## Run
docker run -d --name fintech-app -p 8086:8080 fintech-payment-app:v1

## Test
curl http://localhost:8086

## Concepts
- Base images
- Dockerfile
- Build process
- Image tags
- Port mapping
- Container logs
