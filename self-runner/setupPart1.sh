# source github > repo > settings > action > runner > add self runner

# exécute les commandes suivantes en tant que selfrunner
#newgrp selfrunner << SELFRUNNER
# Create a folder
mkdir /home/selfrunner/actions-runner && cd /home/selfrunner/actions-runner

# Download the latest runner package
curl -o actions-runner-linux-x64-2.293.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.293.0/actions-runner-linux-x64-2.293.0.tar.gz

# Extract the installer
tar xzf ./actions-runner-linux-x64-2.293.0.tar.gz
#SELFRUNNER
clear -x
printf "*******************************************************************************
*  Vous trouverez les instructions dans le fichier README.md disponible ici : *
*           https://github.com/Cl0ut1eR/oxilia-demo-install#readme            *
*******************************************************************************
*   1) Allez sur le repo github                                               *
*   2) Allez dans les réglages                                                *
*   3) Cliquez sur Action puis Runners                                        *
*   4) Cliquez sur ajouter un Self Runner                                     *
*   5) Collez la commande de la section configure, elle ressemble à ceci :    *
*       ./config.sh --url https://github.com/USER/REPO --token XXXXXXXXX      *
*   6) Répondez aux question du Self-Runner                                   *
*       a) Nom du group de Runners (en ca de doute laisser par défaut)        *
*       b) Nom du Runner (Nom qui apparaitera sur Github)                     *
*       c) Labels, pour avoir plusieurs serveurs (modifiable sur github)      *
*       d) Nom du répértoire de travail (Laisser par défaut)                  *
*   7) Vérifier sur Github que le runner est en mode Idle.                    *
*******************************************************************************
Tapez la commande d'ajout du runner Github : \n"
read COMMAND
$COMMAND
