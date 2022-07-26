RM := rm -rf

.PHONY : all docker clean fclean re

all : docker

docker:
	bash ./srcs/tools/first_set.sh
	bash ./srcs/tools/install_docker.sh
	docker-compose up -d

clean:
	docker-compose down

fclean : clean

re : fclean all