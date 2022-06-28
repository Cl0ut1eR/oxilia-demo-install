bash ResetDocker.sh
bash DockerRemove.sh
sudo ./self-runner/actions-runner/svc.sh uninstall
#sudo rm -rf self-runner/actions-runner
#printf "\n\n\n\n\n\nSupprimer les anciens runners : \n /etc/systemd/system/\n\n"
#ls /etc/systemd/system/
echo ligne de suppression du runner