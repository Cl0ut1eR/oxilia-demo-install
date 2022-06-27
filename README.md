# Github Action Setup

## Étapes

1. Se connecter au serveur (SSH ou avec la méthode souhaité.).
2. Importer les fichiers avec la commande suivante.<br>
`git clone https://github.com/Cl0ut1eR/oxilia-demo-install`
3. Allez dans le répertoire oxilia-demo-install<br>
`cd oxilia-demo-install`
4. Éxecuter la commande <br>``bash setup.sh``
5. Entrez le courriel sur lequel vous voulez recevoir l'information de validité des certificats.
6. Suivre les instruction affiché a l'écran.
    1. Allez dans le répertoire self-runner/ations-runner.<br> 
    `cd self-runner/actions-runner`
    2. Allez sur le repo github
    3. Allez dans les réglages
    4. Cliquez sur Action puis Runners
    5. Cliquez sur ajouter un Self Runner
    6. Exécutez la première commande de la section configure, elle devrais ressembler à ceci :
    <br><b>Exemple :</b> 
    `./config.sh --url https://github.com/USER/REPO --token XXXXXXXXX` 
    7. Répondez aux question du Self-Runner
        1. Nom du group de Runners (en ca de doute laisser par défaut)
        2. Nom du Runner (Nom qui apparaitera sur Github)
        3. Labels, à utiliser pour avoir plusieurs serverus pour prod/dev/preprod...
        4. Nom du répértoire de travail (Laisser par défaut)
    8. Reculez de deux répertoires<br>
    `cd ../..`
    9. Exécuter la suite de l'installation avec la commande suivante :<br>
    `bash ./partie2.sh`

## Erreurs
* ### Github Action Self-Runner
    1. Supprimer les anciennes version du Runner qui sont en conflis, elles sont situé dans ce cépertoire /etc/systemd/system/ <br>
    `sudo rm /etc/systemd/system/actions.runner.User-Repo.RunnerName.service`
    2. Relancer le fichier partie2.sh<br>
    `bash ./partie2.sh`
