#!/bin/bash
set -e

# prefer docker-compose command if available
if command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  DC="docker compose"
fi

if [ -f docker-compose.yml ]; then
  $DC down -v --rmi all
else
  docker rm -f web_app 2>/dev/null || true
  docker rmi 22UG2-0123_app 2>/dev/null || true
  docker network rm app_net 2>/dev/null || true
  docker volume rm app_data 2>/dev/null || true
fi

echo "Removed app."

