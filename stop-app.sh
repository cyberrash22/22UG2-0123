#!/bin/bash
set -e
echo "Stopping app ..."

if command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  DC="docker compose"
fi

if [ -f docker-compose.yml ]; then
  $DC stop
else
  docker stop web_app 2>/dev/null || true
fi

