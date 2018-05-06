
sudo docker build -f "Dockerfile.lts" . -t jenkins-docker:lts
# sudo docker build -f "Dockerfile.latest" . -t jenkins-docker

sudo docker volume create jenkins_home
sudo docker run --name jenkins --restart=always -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins-docker:lts
# Backing up data
# docker cp $ID:/var/jenkins_home

