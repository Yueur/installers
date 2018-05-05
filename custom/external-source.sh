#!/bin/bash

# Install from https
sudo apt-get -y install apt-transport-https ca-certificates

# Transfer data from web
sudo apt-get -y install curl

# Transfert securise
sudo apt-get -y install gnupg2

# Permet de gérer les sources
sudo apt-get -y install software-properties-common

