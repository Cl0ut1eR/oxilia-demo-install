printf "\n\n\n"
read -p "Voulez vous importer des données? y/n " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YyOo]$ ]]
then
    printf "\n\n"
    echo "Pushez une première fois la branche principale (main). "
    echo "Assurez vous d'avoir le fichier all_db.sql et le dossier filestore dans le répertoire importdb."
    echo "Appuyez sur entrer une fois ces étapes éffectué."

    read -p "Entrez le nom que vous avez donné dans le fichier docker-compose : " CONTAINER_NAME
    read -p "Entrez le nom d'utilisateur postgres que vous avez donné dans le fichier docker-compose : " POSTGRES_NAME

    echo "Importing Data ..."
    docker cp ./filestore odoo_$CONTAINER_NAME:/var/lib/odoo/filestore
    docker cp ./all_db.sql postgres_$CONTAINER_NAME:/tmp/
    docker exec -u root odoo_$CONTAINER_NAME chown -R $POSTGRES_NAME /var/lib/odoo/filestore
    docker exec postgres_$CONTAINER_NAME psql -q -U $POSTGRES_NAME -f /tmp/all_db.sql template1
fi

echo "Terminé!"