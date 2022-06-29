clear -x
printf "*******************************************************************************
*  Vous trouverez les instructions dans le fichier README.md disponible ici : *
*           https://github.com/Cl0ut1eR/oxilia-demo-install#readme            *
*******************************************************************************\n"
# Set email for certificates
read -p 'Email: ' Email
echo "EMAIL="$Email > nginx/.env
# Docker CE installation
cd ./docker
bash DockerInstallation.sh
# Execute l'installation de nginx a partir du group docker sans etre administrateur
newgrp docker << DOCKER
# Nginx and Lets Encrypt installation
cd ../nginx
bash nginxInstall.sh
DOCKER

useradd -m selfrunner
usermod -a -G docker selfrunner

# Github Self-Runner installation
cd ../self-runner
sudo -u selfrunner bash setupPart1.sh

