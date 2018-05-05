#!/bin/bash

# Use the path
path=$(dirname $0)
pathCustom=$path/custom

# Start instalation - sudo are called inside
sudo apt-get update

$pathCustom/atom.sh
$pathCustom/docker.sh
$pathCustom/git-ssh-server.sh

touch $path/.step2.done


