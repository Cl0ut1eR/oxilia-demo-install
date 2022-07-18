clear -x
printf "*******************************************************************************
Tapez la commande de suppression du runner github : 
*******************************************************************************\n"
read DELETE

cd /home/selfrunner/actions-runner

sudo ./svc.sh uninstall
sudo -u selfrunner $DELETE

sudo userdel selfrunner
sudo rm -fr /home/selfrunner

printf "Si vous avez fait l'installation du Runner à plusieurs reprise,
de vieux service peuvent encore exister.
Vous les trouverez à cet endroit. /etc/systemd/system/"
