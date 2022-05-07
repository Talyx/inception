
all: create
	@docker-compose -f ./srcs/docker-compose.yml up

create:
	@if [ ! -e "/home/talyx/data" ]; then mkdir /home/talyx/data; echo "data dirctory created!"; fi;
	@if [ ! -e /home/talyx/data/mariadb ]; then mkdir /home/talyx/data/mariadb; echo "mariadb dirctory created!"; fi;
	@if [ ! -e /home/talyx/data/wordpress ]; then mkdir /home/talyx/data/wordpress; echo "wordpress dirctory created!"; fi;

clean:
	@docker-compose -f srcs/docker-compose.yml down

fclean: clean
	@sudo docker rmi -f  $(sudo docker images -qa); [ $$? -eq 1 ]
	@sudo docker volume rm $(sudo docker volume ls -q); [ $$? -eq 1 ]
	@sudo docker system prune -a --force;
	@if [ -e "/home/talyx/data" ]; then sudo rm -rf /home/talyx/data; echo "data dirctory removed!"; fi;

re:
	@docker-compose -f ./srcs/docker-compose.yml up --build
.PHONY: all create clean fclean re
