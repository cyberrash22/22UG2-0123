#22UG2-0123
# Deployment Requirements

Docker (version 20.10 or later recommended)  
Docker Compose (version 1.29 or later recommended) 
Linux or Windows/Mac OS with Docker Desktop installed 
Bash shell to run the provided scripts (`prepare-app.sh`, etc.)

# Application Description

This application is a Dockerized project that demonstrates a simple web application that tracks visits.  
It uses Docker containers on a custom network with persistent volumes.

# Network and Volume Details

Docker Network: `app_net` (custom bridge network)  
Docker Volume: `app_data` (named volume for data persistence)

# Container Configuration

Containers communicate over `app_net` network.  
Data is stored in `app_data` volume.  
Containers are built and run via `docker-compose.yml`.  
Ports and environment variables are configured there.


# Container List and Roles
                
 `app_web`      -Main web server         
 `app_db`       -Database service        
 `app_cache`    -Cache service  

 # Instructions

## How to prepare, run, pause, and delete the application

# Prepare the application -Creates necessary Docker network, volumes, and builds Docker images.
 ./prepare-app.sh
 
Output:
Preparing app ...

# Run the application-Starts the application containers.
./start-app.sh

Output:
Running app ...
The app is available at http://localhost:5000

# Pause the application-Stops the running containers without removing them.
./stop-app.sh

Output:
Stopping app ...

# Delete all application resources-Stops containers and removes networks, volumes, and other resources.
./remove-app.sh

Output:
Removed app.

# How to access the application via a web browser
Open your web browser and visit:

http://localhost:5000

Example Workflow
# Create application resources
./prepare-app.sh
# Output: Preparing app ...

# Run the application
./start-app.sh
# Output: Running app ...
# The app is available at http://localhost:5000

# Open a web browser and interact with the application

# Pause the application when done
./stop-app.sh
# Output: Stopping app ...

# Delete all application resources
./remove-app.sh
# Output: Removed app.




