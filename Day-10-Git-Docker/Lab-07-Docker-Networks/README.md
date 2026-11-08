# Day 10 - Lab 07: Docker Networks

## Objective
Connect multiple containers using a Docker network.

## Commands
- docker network create
- docker network ls
- docker run --network
- docker network inspect

## Expected Result
A BusyBox container successfully communicates with Nginx
using the backend container name.

Note:

>> Understnad the architecture

                  Docker Network
               fintech-network
                       |
             ---------------------
             |                   |
       fintech-backend       busybox
          Nginx              Test Client
             |                   |
             ---------------------
                 Communication
