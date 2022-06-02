
all: create
	@docker-compose -f ./srcs/docker-compose.yml up --build

create:
	@mkdir -p $(HOME)/data/mariadb
	@mkdir -p $(HOME)/data/wordpress

clean:
	@docker-compose -f srcs/docker-compose.yml down

stop:
	@docker-compose -f srcs/docker-compose.yml stop

fclean: clean
	@sudo docker rmi -f  $(sudo docker images -qa); [ $$? -eq 1 ]
	@sudo docker volume rm $(sudo docker volume ls -q); [ $$? -eq 1 ]
	@sudo docker system prune -a --force;
	@sudo rm -rf $(HOME)/data/*

re: fclean all
.PHONY: all create clean stop fclean re
