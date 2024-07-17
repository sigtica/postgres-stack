#!/bin/sh
docker swarm init
docker pull dpage/pgadmin4:8.9
docker pull postgres:11.5
mkdir -p pgadmin
mkdir -p postgresdb
rm -rf pgadmin/.placeholder
rm -rf postgresdb/.placeholder
docker stack deploy --detach=false -c docker-compose.yml postgres_stack 
