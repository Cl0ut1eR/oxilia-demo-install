sudo useradd selfrunner
sudo chown -R selfrunner:selfrunner ./actions-runner
#sudo chmod -R 755 ./actions-runner
sudo usermod -a -G docker selfrunner
cd ./actions-runner
# Start self runner as a service
sudo ./svc.sh install selfrunner
sudo ./svc.sh start

cd ..