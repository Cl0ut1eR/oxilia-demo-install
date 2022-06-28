# Create docker network for nginx
sudo docker network create nginx
# Create containers
sudo docker-compose --env-file .env up -d
# add more nginx config
sudo docker cp ./more_conf.conf reverse-proxy:/etc/nginx/conf.d/more_conf.conf
sudo docker restart reverse-proxy 
