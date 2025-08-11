#!/bin/bash
set -e
echo "Preparing app ..."

docker network create app_net 2>/dev/null || true
docker volume create app_data 2>/dev/null || true

if command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  DC="docker compose"
fi

if [ -f docker-compose.yml ]; then
  $DC build
else
  docker build -t 20180001_app .  # replace with your registration number
fi

