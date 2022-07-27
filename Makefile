.PHONY : all docker clean re

all :
	bash ./srcs/requirements/tools/first_set.sh
	bash ./srcs/requirements/tools/install_docker.sh
	cd srcs/
	docker-compose up -d

clean:
	docker-compose down

re : clean
	docker-compose up -d