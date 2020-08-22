


docker stack deploy -c <(docker-compose  -f traefik-stack.yml config ) traefik


docker stack deploy -c <(docker-compose  -f visualizer-stack.yml config ) viz