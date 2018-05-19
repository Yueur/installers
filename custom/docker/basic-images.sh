
# Registry
sudo docker run -d -p 5000:5000 --restart always --name registry registry

sudo docker pull registry
sudo docker tag registry localhost:5000/registry
sudo docker push localhost:5000/registry

# ----------------------
# Alpine
sudo docker pull alpine

# CentOS
sudo docker pull centos
sudo docker pull centos:6
sudo docker pull centos:7

# Fedora
sudo docker pull fedora
sudo docker pull fedora:26
sudo docker pull fedora:27
sudo docker pull fedora:28

# Debian
sudo docker pull debian
sudo docker pull debian:7
sudo docker pull debian:8
sudo docker pull debian:9

# Ubuntu
sudo docker pull ubuntu
sudo docker pull ubuntu:14.04
sudo docker pull ubuntu:16.04
sudo docker pull ubuntu:18.04

# Server
sudo docker pull httpd
sudo docker pull httpd:alpine

sudo docker pull nginx
sudo docker pull nginx:alpine
sudo docker pull nginx:perl
sudo docker pull nginx:alpine-perl

# PHP
sudo docker pull php
sudo docker pull php:5.6
sudo docker pull php:7

sudo docker pull php:alpine
sudo docker pull php:5.6-alpine
sudo docker pull php:7-alpine

sudo docker pull php:apache
sudo docker pull php:5.6-apache
sudo docker pull php:7-apache

# Database
sudo docker pull mongo

sudo docker pull mariadb
sudo docker pull mysql

sudo docker pull postgres
sudo docker pull postgres:alpine

# Other
sudo docker pull jenkins/jenkins
sudo docker pull owncloud


# Persistent data
# All data beyond what lives in the database (file uploads, etc) is stored within the default volume /var/www/html. With this volume, ownCloud will only be updated when the file version.php is not present.
#   -v /<mydatalocation>:/var/www/html
# For fine grained data persistence, you can use 3 volumes, as shown below.
#   -v /<mydatalocation>/apps:/var/www/html/apps installed / modified apps
#   -v /<mydatalocation>/config:/var/www/html/config local configuration
#   -v /<mydatalocation>/data:/var/www/html/data the actual data of your ownCloud

