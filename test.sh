echo "Before newgrp"
newgrp docker << echo "After newgrp" && \
echo "test"