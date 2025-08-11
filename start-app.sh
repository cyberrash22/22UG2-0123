#!/bin/bash
set -e
echo "Running app ..."

if command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  DC="docker compose"
fi

if [ -f docker-compose.yml ]; then
  $DC up -d
else
  docker run -d --name web_app --network app_net --restart unless-stopped -v app_data:/data -p 5000:5000 20180001_app
fi

echo "The app is available at http://localhost:5000"

