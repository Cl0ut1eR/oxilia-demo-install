
sudo useradd -m selfrunner
sudo usermod -a -G docker selfrunner

# Github Self-Runner installation
cd ../self-runner
sudo -u selfrunner bash setupPart1.sh