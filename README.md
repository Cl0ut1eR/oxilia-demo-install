# Github Action Setup

## Étapes

1. Éxecuter la commande ``bash setup.sh``
2. Suivre les instruction affiché a l'écran.
    1. Allez sur le repo github
    2. Allez dans les réglages
    3. Cliquez sur Action puis Runners
    4. Cliquez sur ajouter un Self Runner
    5. Allez dans le répertoire self-runner/ations-runner.
    <br> ``cd self-runner/actions-runner``
    6. Exécuter la première commande de la section configure, elle devrais ressembler à ceci : 
	<br> <b>Exécutez la votre.</b> ``./config.sh --url https://github.com/USER/REPO --token XXXXXXXXX``
    7. Exécuter la suite de l'installation avec la commande suivante : 
    <br> ``bash ../setupPart2.sh``

## Importer des données 

1. Ajouter le fichier `all_db.sql` et le répertoire `filestore` dans le répertoire d'installation importdb.
    * Pour générer ce fichier de la base de donnée, exécuter la commande suivante à l'endroit ou postgres est situé. <br>
    `pg_dumpall > ./all_db.sql`
    * Le répertoire `filestore` se situe à l'endroit suivant : `/var/lib/odoo/filestore`
