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

printf "Suivre le reste des instructions dans le fichier README.md\n"