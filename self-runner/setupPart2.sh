# exécute les commandes en tant que selfrunner
#newgrp docker << SELFRUNNER
cd ./actions-runner

# Start self runner as a service
sudo ./svc.sh install selfrunner
sudo ./svc.sh start
#SELFRUNNER
cd ..