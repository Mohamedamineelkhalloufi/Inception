# USER DOCUMENTATION

## Services Provided

This project provides a small web infrastructure composed of:

- NGINX (HTTPS web server with TLS)
- WordPress (website)
- MariaDB (database)

The services run inside Docker containers and communicate through a private Docker network.

## Start and Stop the Project

To build and start the infrastructure:
make

To stop the containers:
make stop

To start the containers:
make start

To remove containers and volumes:
make clean

Access the Website

Open your browser and go to:
https://mohel-kh.42.fr

To access the WordPress administration panel:
https://mohel-kh.42.fr/wp-admin

Make sure the domain is added to your /etc/hosts file if necessary.

Credentials Management

Credentials are defined in environment variables inside the project configuration.

They include:

Database name
Database user
Database password
WordPress admin username
WordPress admin password

They can be modified in the configuration files before building the project.

Check Services Status

To verify that services are running:
docker ps

If all containers are running and accessible, the infrastructure is working correctl