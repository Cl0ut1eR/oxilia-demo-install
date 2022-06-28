clear -x
read -p "Vous allez supprimmer toutes les certifications\n confirmer? y/n" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YyOo]$ ]]
then
sudo rm -fr /var/lib/docker/nginx-volumes
fi