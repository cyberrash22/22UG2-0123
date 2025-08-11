#!/bin/bash
set -e
echo "Preparing app ..."

# create network and volume (ignore errors if already exist)
docker network create app_net 2>/dev/null || true
docker volume create app_data 2>/dev/null || true

# prefer docker-compose command if available, fall back to 'docker compose'
if command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  DC="docker compose"
fi

if [ -f docker-compose.yml ]; then
  $DC build
elif [ -f Dockerfile ]; then
  docker build -t 22UG2-0123_app .
fi

