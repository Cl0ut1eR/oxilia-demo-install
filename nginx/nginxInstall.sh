# Create docker network for nginx
docker network create nginx
# Create containers
docker-compose --env-file .env up -d
# add more nginx config
docker cp ./more_conf.conf reverse-proxy:/etc/nginx/conf.d/more_conf.conf
docker restart reverse-proxy 
