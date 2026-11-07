# Day 10 - Lab 10: FinTech Docker Project

## Objective
Build and deploy a FinTech Payment Service using Docker.

## Architecture
User -> Host Port 8088 -> Docker Container -> Python App Port 8080

## Files
- app.py
- Dockerfile
- compose.yaml
- .dockerignore

## Deployment
docker compose up -d --build

## Application Endpoints
/health
/payments

## Verification
curl http://localhost:8088/health
curl http://localhost:8088/payments

## Monitoring
docker compose ps
docker logs fintech-payment-service

## Cleanup
docker compose down

## Skills Practiced
- Docker installation
- Images
- Containers
- Dockerfile
- Port mapping
- Docker Compose
- Health checks
- Container logs
- Troubleshooting  
