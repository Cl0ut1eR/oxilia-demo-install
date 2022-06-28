echo "Before newgrp"
newgrp docker << TEST
echo "After newgrp"
docker ps
echo "test"
echo "end"
TEST