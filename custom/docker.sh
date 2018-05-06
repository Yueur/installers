# 

# https://docs.docker.com/install/linux/docker-ce/debian/#set-up-the-repository

# Tested on 
#	Debian GNU/Linux 9 (stretch) 64 bits
# WARNING : Installation is different on Debian 8


# Please note that docker NEEDS to be run as root (user or group)
path=$(dirname $0)
$path/external-source.sh


# Add the Docker repo to known source files
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint **, by searching for the last 8 characters of the fingerprint.
# Key : 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# -------------------
# Install
sudo apt-get update
sudo apt-get -y install docker-ce

# Test
docker -v
sudo docker run hello-world

# Install GUI
sudo docker volume create portainer_data

# Create the VM and make sure it launch at start
sudo docker run --restart=always -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

directory=$(dirname $0)
$directory/docker/jenkins/exec.sh

echo "Open browser and type localhost:9000 in bar"
echo "Then create the main account"
echo "Then select local after promted"

# Manage a Swarm cluster with Portainer
#docker service create \
#	--name portainer \
#	--publish 9000:9000 \
#	--replicas=1 \
#	--constraint 'node.role == manager' \
#	--mount type=bind,src=//var/run/docker.sock,dst=/var/run/docker.sock \
#	--mount type=bind,src=//opt/portainer,dst=/data \
#	portainer/portainer \
#	-H unix:///var/run/docker.sock


