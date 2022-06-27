# Remove every Docker container
docker rm -f $(docker ps -a -q)

# Remove every Docker volume
docker volume rm -f $(docker volume ls -q)

# Remove every Docker network
docker network rm $(docker network ls -q)