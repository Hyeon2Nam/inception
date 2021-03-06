.PHONY : all rmrm set dir build up down clean fclean re

all : set build

rmrm:
	docker stop $(docker ps -qa)
	docker rm $(docker ps -qa)
	docker rmi -f $(docker images -qa)
	docker volume rm $(docker volume ls -q)
	docker network rm $(docker network ls -q) 2>/dev/null

set:
	bash ./srcs/requirements/tools/first_set.sh
	bash ./srcs/requirements/tools/install_docker.sh
	mkdir /home/hyenam/data/data
	mkdir /home/hyenam/data/mariadb

dir:
	mkdir /home/hyenam/data/data
	mkdir /home/hyenam/data/mariadb

build:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune

fclean: clean
	rm -rf /home/hyenam/data/data
	rm -rf /home/hyenam/data/mariadb

re : fclean all