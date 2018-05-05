#!/bin/bash

path=$(dirname $0)
pathCustom=$path/custom
user_path=/home/$USER

# Install GIT
sudo apt-get -y install git gitg

# Install SSH
sudo apt-get -y install openssh-server

# Generate keys
ssh-keygen
chmod 755 $user_path/.ssh/
chmod 644 $user_path/.ssh/id_rsa.pub


# Create a git user with no direct loging
echo "Creating a git deamon ; user-name is git"
sudo adduser git
sudo passwd -l git

# Configure server
echo "Logging as the git deamon user"
su git -c "$pathCustom/git-ssh-server-param.sh $user_path"



