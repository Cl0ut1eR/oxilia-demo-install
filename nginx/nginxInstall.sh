docker network create nginx
docker-compose up -d

# add more nginx config
docker cp ./more_conf.conf reverse-proxy:/etc/nginx/conf.d/more_conf.conf
docker restart reverse-proxy 
