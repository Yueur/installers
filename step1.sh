#!/bin/bash

if [ $USER != "root" ]
then
	echo "This needs to be run as a super/root user"
	echo "Please enter the root password"
	su -c $0
	exit
fi

echo "The computer will restart after installation. Please don't do anything !"
sleep 2

# Use the path
path=$(dirname $0)

# Start instalation
apt-get update
apt-get -y upgrade

$path/custom/sudo.sh

touch $path/.step1.done

reboot
