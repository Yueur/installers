#!/bin/bash

# Reverce proxy

config_path=/etc/nginx/conf.d/default.conf
proxy_path=/etc/nginx/proxy_param
server_root=/usr/share/nginx/html
path=$(pwd)

sudo docker run -d \
	-v $path/nginx-proxy.conf:$config_path \
	-v $path/proxy_param.conf:$proxy_path \
	nginx:alpine



