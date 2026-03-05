all: up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

start:
	docker-compose -f ./srcs/docker-compose.yml start

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v --rmi all

logs:
	docker-compose -f ./srcs/docker-compose.yml logs

re:
	make down
	make up