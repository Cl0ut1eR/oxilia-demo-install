# Github Action Setup

## Étapes
0. Assurez-vous d'avoir un domaine et de rediriger <sub>(forward)</sub> un domaine générique <sub>(wildcard)</sub>vers votre serveur. EX: **\*.dev.domaine.com**
1. Se connecter au serveur (SSH ou avec la méthode souhaité.).
2. Importer les fichiers avec la commande suivante.<br>
`git clone https://github.com/Cl0ut1eR/oxilia-demo-install`
3. Allez dans le répertoire oxilia-demo-install<br>
`cd oxilia-demo-install`
4. Éxecuter la commande <br>`bash setup.sh`
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
        3. Labels, à utiliser pour avoir plusieurs serveurs pour prod/dev/preprod...
        4. Nom du répértoire de travail (Laisser par défaut)
    8. Reculez de deux répertoires<br>
    `cd ../..`
    9. Exécuter la suite de l'installation avec la commande suivante :<br>
    `bash ./partie2.sh`
    10. Vérifier sur Github que le runner est en mode Idle.

## Erreurs
* ### Github Action Self-Runner
1. Executez la commande suivante à partir du répertoire `actions-runner`<br>
    `sudo ./svc.sh uninstall`
2. Supprimer le runner. Aller sur github dans la section des runners, puis cliquer sur le runner. Cliquez sur supprimer, copiez collez la ligne sur le serveur a partir du répertoire `actions-runner`
3. Supprimer les anciennes version du Runner qui sont en conflis, elles sont situé dans ce cépertoire /etc/systemd/system/ <br>
    `sudo rm /etc/systemd/system/actions.runner.User-Repo.RunnerName.service`
4. Sur github créez un nouveau runner puis copiez la meme ligne qu'a la section précédente.
5. Relancer le fichier **partie2.sh** situé dans le répertoire principal <br>
    `bash partie2.sh`
