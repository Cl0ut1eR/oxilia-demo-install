cd ./docker
bash ResetDocker.sh
bash DockerRemove.sh
cd ..
sudo rm -rf self-runner/actions-runner
printf "\n\n\n\n\n\nSupprimer les anciens runners : \n /etc/systemd/system/\n\n"
ls /etc/systemd/system/