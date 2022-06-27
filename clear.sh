cd ./docker
bash ResetDocker.sh
bash DockerRemove.sh
cd ..
sudo rm -rf self-runner/actions-runner
printf "\n\nSupprimer les anciens runners : \n /etc/systemd/system/"
ls /etc/systemd/system/