cd /home/selfrunner/actions-runner
sudo ./svc.sh uninstall
sudo userdel selfrunner
sudo rm -fr
echo "/etc/systemd/system/actions.runner"
