clear -x
printf "*******************************************************************************
Tapez la commande de suppression du runner github : 
*******************************************************************************\n"
read DELETE

cd /home/selfrunner/actions-runner

sudo ./svc.sh uninstall
sudo -u selfrunner $DELETE

clear -x
printf "*******************************************************************************
Tapez la commande d'ajout du nouveau runner github : 
*******************************************************************************\n"
read INSTALL

sudo -u selfrunner $INSTALL
sudo ./svc.sh install selfrunner
sudo ./svc.sh start

clear -x
printf "*******************************************************************************
Si vous avez des problèmes, vérifier qu'il n'y a plus d'anciens service de
runner encore actif. Vous les trouvez à cet endroit :  /etc/systemd/system/
*******************************************************************************\n"