#!/bin/bash

user_path=$1

# This file shouldn't be executed directly
# Only the git user should execute it (the git-deamon)

cd
mkdir .ssh && chmod 700 .ssh
touch .ssh/authorized_keys && chmod 600 .ssh/authorized_keys

# Generate keys
ssh-keygen

# Add one public key to the known keys
cat .ssh/id_rsa.pub >> ~/.ssh/authorized_keys
cat $user_path/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys


