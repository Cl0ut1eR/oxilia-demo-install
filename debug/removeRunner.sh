printf "Tapez la commande de suppression : \n"
read COMMAND

cd /home/selfrunner/actions-runner

sudo ./svc.sh uninstall
sudo -u selfrunner $COMMAND

sudo userdel selfrunner
sudo rm -fr /home/selfrunner
echo "old runner services : /etc/systemd/system/"
