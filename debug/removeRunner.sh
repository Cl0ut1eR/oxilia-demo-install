printf "Tapez la commande de suppression : \n"
read COMMAND

cd /home/selfrunner/actions-runner
sudo -u selfrunner $COMMAND

sudo ./svc.sh uninstall
sudo userdel selfrunner
sudo rm -fr /home/selfrunner
echo "old runner services : /etc/systemd/system/"
