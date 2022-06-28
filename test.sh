echo "Before newgrp"
/usr/bin/newgrp users <<EONG
docker ps
echo "hello from within newgrp"
id
EONG
echo "After newgrp"