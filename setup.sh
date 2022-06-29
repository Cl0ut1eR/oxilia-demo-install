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

# Nginx and Lets Encrypt installation
cd ../nginx
sudo -u $USER bash nginxInstall.sh


useradd -m selfrunner
usermod -a -G docker selfrunner

# Github Self-Runner installation
cd ../self-runner
sudo -u selfrunner bash setupPart1.sh && sudo -u root bash setupPart2.sh
