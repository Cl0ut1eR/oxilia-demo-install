
useradd -m selfrunner
usermod -a -G docker selfrunner

# Github Self-Runner installation
cd ../self-runner
sudo -u selfrunner bash setupPart1.sh