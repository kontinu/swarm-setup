#!/bin/bash


docker stack deploy -c <(docker-compose  -f traefik-stack.yml config ) traefik


docker stack deploy -c <(docker-compose  -f visualizer-stack.yml config ) viz


# monitoring
#docker stack deploy -c docker-elk/docker-stack.yml -c elk.override.yml elk

# TODO: set vars
docker stack deploy -c swarmprom/docker-compose.yml prom
# docker stack deploy -c stack-portainer.yml portainer