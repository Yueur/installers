#!/bin/bash

docker pull phpmyadmin/phpmyadmin
docker tag phpmyadmin/phpmyadmin 127.0.0.1:5000/phpmyadmin
docker push 127.0.0.1:5000/phpmyadmin

host=192.168.1.3 # Database's host IP
sudo docker run -d -e PMA_HOST=$host 127.0.0.1:5000/phpmyadmin
