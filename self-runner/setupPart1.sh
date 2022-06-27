# source github > repo > settings > action > runner > add self runner
# Create a folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.293.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.293.0/actions-runner-linux-x64-2.293.0.tar.gz
# Optional: Validate the hash
echo "06d62d551b686239a47d73e99a557d87e0e4fa62bdddcf1d74d4e6b2521f8c10  actions-runner-linux-x64-2.293.0.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.293.0.tar.gz
printf "\n\n\n"
echo    "1) Allez dans le répertoire self-runner/ations-runner."
printf  "\tcd self-runner/actions-runner\n"
echo    "2) Allez sur le repo github"
echo    "3) Allez dans les réglages"
echo    "4) Cliquez sur Action puis Runners"
echo    "5) Cliquez sur ajouter un Self Runner"
echo    "6) Exécuter la première commande de la section configure, elle devrais ressembler à ceci :"
printf  "\tExécutez la votre. ./config.sh --url https://github.com/USER/REPO --token XXXXXXXXX\n"
echo    "7) Exécuter la suite de l'installation avec la commande suivante :"
printf  "\tbash ../setupPart2.sh\n"
echo    "Appuyez sur entrer pour continuer"
read
