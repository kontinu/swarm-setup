#!/bin/bash

for stack in $(docker stack ls  --format "{{.Name}}"|grep -v traefik);do
    docker stack rm $stack
done

docker stack rm traefik