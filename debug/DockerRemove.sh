# Remove every Docker images
docker image rm -f $(docker image ls -q)

sudo systemctl stop docker.socket # Thanks to nik098 on github for this line 
sudo apt -y remove \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose
sudo add-apt-repository --remove --yes "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo rm -fr /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
sudo groupdel docker
sudo apt update && sudo apt autoclean