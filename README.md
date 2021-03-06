# Github Action Setup

## Étapes
0. Assurez-vous d'avoir un domaine et de rediriger <sub>(forward)</sub> un domaine générique <sub>(wildcard)</sub>vers votre serveur. EX: **\*.dev.domaine.com**
1. Se connecter au serveur (SSH ou avec la méthode souhaité.).
2. Importer les fichiers sur le serveur avec la commande suivante.<br>
`git clone https://github.com/Cl0ut1eR/oxilia-demo-install`
3. Allez dans le répertoire oxilia-demo-install<br>
`cd oxilia-demo-install`
4. Éxecuter la commande sur le serveur<br>`bash setup.sh`
5. Entrez le courriel sur lequel vous voulez recevoir l'information de validité des certificats.
6. Suivre les instruction affiché a l'écran. **Sur un autre appareil**
    1. Allez sur le repo github
    2. Allez dans les réglages
    3. Cliquez sur Action puis Runners
    4. Cliquez sur ajouter un Self Runner
    5. Collez la commande de la section configure **sur le serveur**, elle ressemble à ceci :
    <br><b>Exemple :</b> 
    `./config.sh --url https://github.com/USER/REPO --token XXXXXXXXX` 
    6. Répondez aux question du Self-Runner
        1. Nom du group de Runners (en ca de doute laisser par défaut)
        2. Nom du Runner (Nom qui apparaitera sur Github)
        3. Labels, à utiliser pour avoir plusieurs serveurs pour prod/dev/preprod...
        4. Nom du répértoire de travail
    7. **Sur votre autre appareil**, vérifiez sur Github que le runner est en mode Idle.

## Changer les port de Odoo
Ne pas changer les ports Odoo, car cela n'est pas nécessaire. <br>
Si vous souhaitez tout de même changer le port principale **8069** ou le port de longpolling **8072** <br>
&emsp; Changez entre autre les fichiers `odoo.conf`, `Dockerfile`, `docker-compose.yml` se situant dans les fichier avec Github. Ainsi que le fichier `nginx.tmpl` se situant dans le répertoire nginx.

## Sources
* Nginx et les certificats. (letsencrypt-helper et reverse-proxy)<br>
    source : https://github.com/nginx-proxy/nginx-proxy#readme
* Installation docker.<br>
    source : https://computingforgeeks.com/how-to-install-docker-on-ubuntu/
* Github Self-Hosted Runner.
    source : Github

<sub>*Adaptations et modifications par Cl0ut1eR*</sub>

## Erreurs
* ### Github Action Self-Runner
1. Executez la commande suivante à partir du répertoire **oxilia-demo-install/debug/**<br>
Attention à bien exécuter la commande en mode sudo<br>
    `sudo bash resetRunner.sh`
2. Lorque demandé, collez la commande de **suppression** du Runner. 
    * Github -> Repo -> Réglages -> Actions -> Runners -> Votre Runner -> Supprimer
3. Lorsque demandé, collez la command d'**ajout** du nouveau Runner.
    * Github -> Repo -> Réglages -> Actions -> Runners -> Nouveau Runner -> Première commande de **Configure**
4. Si vous avez des problèmes, vérifier qu'il n'y a plus d'anciens service de runner encore actif.<br> 
Vous les trouvez à cet endroit :  /etc/systemd/system/
