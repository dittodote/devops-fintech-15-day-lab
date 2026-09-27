# Day 4 - Lab 1: Apache Basics

## Objective

Install and configure Apache as a basic web server.

## Commands

apt update
apt install apache2
systemctl status apache2
systemctl enable apache2
ss -ltnp
curl
tail

## Important Paths

Web root:

/var/www/html/

Access log:

/var/log/apache2/access.log

Error log:

/var/log/apache2/error.log

## Default Port

TCP 80 - HTTP
