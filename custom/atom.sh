#!/bin/bash

# Please note that docker NEEDS to be run as root (user or group)
path=$(dirname $0)
$path/external-source.sh

# Add Atom repo to the know repo
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

sudo apt-get update

sudo apt-get -y install atom


