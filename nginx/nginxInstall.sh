docker network create nginx
docker-compose up -d

#   docker run --rm --name nginx-dummy -e VIRTUAL_HOST=oxiliatest.ddns.net -e LETSENCRYPT_HOST=oxiliatest.ddns.net -e VIRTUAL_PORT=80 --network nginx -d nginx:latest
#   docker run --name nextcloud --network nginx -e VIRTUAL_HOST="oxiliatest.ddns.net" -e LETSENCRYPT_HOST="oxiliatest.ddns.net" -d nextcloud:19.0.2
#   docker run --rm --name test -it -d -e VIRTUAL_HOST="oxiliatest.ddns.net" -e LETSENCRYPT_HOST="oxiliatest.ddns.net" -e VIRTUAL_PORT=80 --network nginx yeasy/simple-web:latest
#   docker run --rm --name mytest -it -d -e VIRTUAL_HOST="oxiliatest.ddns.net" -e LETSENCRYPT_HOST="oxiliatest.ddns.net" -e VIRTUAL_PORT=8088 -p 8088:8088 --network nginx mytest
