docker network create nginx
docker-compose up -d


#docker run --rm -it --name test-et-allo -d -e VIRTUAL_HOST="allo.etienne.javmc.net" -e LETSENCRYPT_HOST="allo.etienne.javmc.net" -e VIRTUAL_PORT=80 --network nginx yeasy/simple-web:latest
#docker run --rm -it --name test-et -d -e VIRTUAL_HOST="etienne.javmc.net" -e LETSENCRYPT_HOST="etienne.javmc.net" -e VIRTUAL_PORT=80 --network nginx yeasy/simple-web:latest
