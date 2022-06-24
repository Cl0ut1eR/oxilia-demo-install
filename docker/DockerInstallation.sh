# Installation of Docker CE and Compose
# Source : https://computingforgeeks.com/how-to-install-docker-on-ubuntu/
sudo apt -y update
# Install dependencies
sudo apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# Remove older versions of Docker
sudo apt remove \
    docker \
    docker-engine \
    docker.io \
    containerd \
    runc
# Import Docker repo GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --yes --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
# Add Docker CE repo to Ubuntu
sudo add-apt-repository --yes "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Install Docker CE and Compose
sudo apt update
sudo apt -y install \
    containerd.io \
    docker-ce-cli \
    docker-ce \
    docker-compose
# Add user to docker group (remove the need for sudo docker)
sudo usermod -aG docker $USER
