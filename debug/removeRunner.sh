cd /home/selfrunner/actions-runner
sudo ./svc.sh uninstall
sudo userdel selfrunner
sudo rm -fr /home/selfrunner
echo "/etc/systemd/system/actions.runner"
