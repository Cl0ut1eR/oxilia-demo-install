clear -x
read -p "Vous allez supprimmer docker ainsi que toutes les informations présentes\n confirmer? oui/non" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YyOo]$ ]]
then
    bash ResetDocker.sh
    bash DockerRemove.sh
    bash removeRunner.sh
fi

