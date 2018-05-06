#!/bin/bash

sudo apt-get update

# This line is useless for 16 and +
sudo apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get -y install docker-ce

sudo docker volume create portainer_data
sudo docker run --name portainer --restart=always -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

sudo docker volume create jenkins_home
sudo docker run --name jenkins --restart=always -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
# Backing up data
# docker cp $ID:/var/jenkins_home

