#create certificates volume 
#sudo mkdir -p /var/lib/docker/nginx-volumes/certs
#sudo mkdir -p /var/lib/docker/nginx-volumes/dhparam
#sudo mkdir -p /var/lib/docker/nginx-volumes/vhost.d

docker network create nginx
docker-compose up -d

#   docker run --rm --name nginx-dummy -e VIRTUAL_HOST=oxiliatest.ddns.net -e LETSENCRYPT_HOST=oxiliatest.ddns.net -e VIRTUAL_PORT=80 --network nginx -d nginx:latest
#   docker run --name nextcloud --network nginx -e VIRTUAL_HOST="oxiliatest.ddns.net" -e LETSENCRYPT_HOST="oxiliatest.ddns.net" -d nextcloud:19.0.2
#   docker run --rm --name test -it -d -p 80:80 yeasy/simple-web:latest
#docker run --rm -it --name test-et-allo -d -e VIRTUAL_HOST="allo.etienne.javmc.net" -e LETSENCRYPT_HOST="allo.etienne.javmc.net" -e VIRTUAL_PORT=80 --network nginx yeasy/simple-web:latest
#docker run --rm --name test-test -e VIRTUAL_HOST=test.oxiliatest.ydns.eu -e LETSENCRYPT_HOST=test.oxiliatest.ydns.eu -e VIRTUAL_PORT=80 --network nginx -d nginx:latest
#docker run --rm --name test-dev -e VIRTUAL_HOST=dev.oxiliatest.ydns.eu -e LETSENCRYPT_HOST=dev.oxiliatest.ydns.eu -e VIRTUAL_PORT=80 --network nginx -d nginx:latest
#docker run --rm --name test-ydns -e VIRTUAL_HOST=oxiliatest.ydns.eu -e LETSENCRYPT_HOST=oxiliatest.ydns.eu -e VIRTUAL_PORT=80 --network nginx -d nginx:latest

#docker run --rm --name test-ddns -e VIRTUAL_HOST=oxiliatest.ddns.net -e LETSENCRYPT_HOST=oxiliatest.ddns.net -e VIRTUAL_PORT=80 --network nginx -d nginx:latest