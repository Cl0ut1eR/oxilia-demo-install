echo "Before newgrp"
newgrp docker << TEST
echo "After newgrp"
bash test2.sh
echo "test"
echo "end"
TEST
echo after end
bash test2.sh