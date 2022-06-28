# source github > repo > settings > action > runner > add self runner
# Create a folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.293.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.293.0/actions-runner-linux-x64-2.293.0.tar.gz
# Optional: Validate the hash
echo "06d62d551b686239a47d73e99a557d87e0e4fa62bdddcf1d74d4e6b2521f8c10  actions-runner-linux-x64-2.293.0.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.293.0.tar.gz
clear -x
printf "
1) Allez dans le répertoire self-runner/ations-runner.
    cd self-runner/actions-runner
2) Allez sur le repo github
3) Allez dans les réglages
4) Cliquez sur Action puis Runners
5) Cliquez sur ajouter un Self Runner
6) Exécutez la première commande de la section configure, elle devrais ressembler à ceci :
    Exécutez la votre. ./config.sh --url https://github.com/USER/REPO --token XXXXXXXXX
7) Répondez aux question du Self-Runner
    a) Nom du group de Runners (en ca de doute laisser par défaut)
    b) Nom du Runner (Nom qui apparaitera sur Github)
    c) Labels, à utiliser pour avoir plusieurs serveurs pour prod/dev/preprod...
    d) Nom du répértoire de travail (Laisser par défaut)
8) Reculez de deux répertoires
    cd ../..
9) Exécutez la suite de l'installation avec la commande suivante :
    bash ./partie2.sh
10) Vérifier sur Github que le runner est en mode Idle.\n"