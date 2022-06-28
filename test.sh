echo before
#exec sg docker newgrp `id -gn`
exec newgrp docker
docker ps
echo after