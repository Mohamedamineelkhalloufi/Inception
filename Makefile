all: up

up:
	mkdir -p /home/mohel-kh/data/mariadb
	mkdir -p /home/mohel-kh/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

start:
	docker-compose -f ./srcs/docker-compose.yml start

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v --rmi all
	sudo rm -rf /home/mohel-kh/data/mariadb/*
	sudo rm -rf /home/mohel-kh/data/wordpress/*

logs:
	docker-compose -f ./srcs/docker-compose.yml logs

re:
	make down
	make up