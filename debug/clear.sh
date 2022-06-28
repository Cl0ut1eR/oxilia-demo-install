clear -x
read -p "Vous allez supprimmer docker ainsi que toutes les informations présentes\n confirmer? oui/non" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YyOo]$ ]]
then
    bash ResetDocker.sh
    bash DockerRemove.sh
    cd ../self-runner/actions-runner
    sudo ./svc.sh uninstall
    clear -x
    echo "cd ../self-runner/actions-runner"
    echo coller la ligne de suppression du runner
fi

