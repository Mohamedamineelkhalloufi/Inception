# DEVELOPER DOCUMENTATION

## Environment Setup

Prerequisites:

- Linux environment (or VM)
- Docker
- Docker Compose
- Make

The domain name must be added to `/etc/hosts`: 127.0.0.1 mohel-kh.42.fr

Persistent data directories must exist inside: /home/mohel-kh/data/

## Start and Stop the Project

To build and start the infrastructure:
make

To stop the containers:
make stop

To down the containers:
make down

To start the containers:
make start

To remove containers and volumes:
make clean

Managing Containers and Volumes

Useful commands:

docker ps
docker volume ls
docker network ls
docker exec -it <container_name> bash