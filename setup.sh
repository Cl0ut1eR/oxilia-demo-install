clear -x
printf "
*******************************************************************************
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
bash nginxInstall.sh
# Github Self-Runner installation
cd ../self-runner
bash setupPart1.sh
printf "
*******************************************************************************
*  Vous trouverez les instructions dans le fichier README.md disponible ici : *
*           https://github.com/Cl0ut1eR/oxilia-demo-install#readme            *
*******************************************************************************\n"