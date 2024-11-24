#!/bin/sh

docker compose down --rmi all
docker system prune -a