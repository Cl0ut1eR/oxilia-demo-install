echo "Before newgrp"
newgrp docker << TEST
echo "After newgrp"
echo "test"
echo "end"
TEST