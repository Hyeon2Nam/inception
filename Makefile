.PHONY : all set build up down clean fclean re

all : set build

set:
	bash ./srcs/requirements/tools/first_set.sh
	bash ./srcs/requirements/tools/install_docker.sh

build:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune -y

fclean: clean
	rm -rf /home/hyenam/data/wordpress
	rm -rf /home/hyenam/data/mariadb

re : fclean all