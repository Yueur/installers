# Don't forget to add SSH keys to server...

imageName=local-custom/git-server

sudo docker build . -t $imageName

sudo docker volume create git_server
sudo sudo docker run --name git-server --restart=always -d -p 2222:22 -v git_server:/srv/git/ $imageName


