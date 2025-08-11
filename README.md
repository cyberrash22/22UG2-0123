# Deployment Requirements
- Docker
- Docker Compose (optional if you use `docker compose`)

# Application Description
A minimal web application that returns a visit counter.

# Network and Volume Details
- Network: `app_net`
- Named volume: `app_data` (mounted at `/data` inside the container)

# Container Configuration
- Container name: `web_app`
- Restart policy: `unless-stopped`
- Exposes port: `5000`

# Container List
- `web` : Python Flask application

# Instructions
1. Replace `REPLACE_WITH_REG` in `docker-compose.yml`, `prepare-app.sh`, `start-app.sh`, and `remove-app.sh` with your registration number.
2. Make scripts executable:
   ```bash
   chmod +x prepare-app.sh start-app.sh stop-app.sh remove-app.sh

