# Makefile to manage Docker Compose commands

.PHONY: up build down restart logs

# Build the Docker images and start the containers in detached mode
up:
	cd srcs && docker-compose up --build -d

# Build the Docker images without starting the containers
build:
	cd srcs && docker-compose build

# Stop and remove the containers, but keep the images
down:
	cd srcs && docker-compose down

# Restart the containers
restart:
	cd srcs && docker-compose restart

# Tail the logs of all containers
logs:
	cd srcs && docker-compose logs -f
