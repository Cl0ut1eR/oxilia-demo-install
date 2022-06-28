echo before
exec sg docker newgrp `id -gn`
docker ps
echo after