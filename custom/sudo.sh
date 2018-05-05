#!/bin/bash

if [ $USER != "root" ]
then
	su -c $0
	exit
fi

user_name=yueur
apt-get -y install sudo
adduser $user_name sudo







