#!/bin/bash

# Run Docker Compose
docker compose pull
docker compose down -v
docker compose build
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker compose up -d%