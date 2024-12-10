# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gduranti <gduranti@student.42firenze.it>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/09 10:11:24 by gduranti          #+#    #+#              #
#    Updated: 2024/12/10 11:23:46 by gduranti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: vol
	docker compose -f srcs/docker-compose.yml up --build

vol:
	mkdir -p $(HOME)/data/wordpress $(HOME)/data/mariadb

status:
	docker ps

stop:
	docker stop $$(docker ps -qa)

down:
	docker compose -f srcs/docker-compose.yml down

clean: down
	docker system prune -a -f
	docker volume prune -a -f
	docker builder prune -f
	docker image prune -f
	docker network prune -f

fclean: clean
	sudo rm -rf $(HOME)/data

re: fclean all

PHONY: all vol status stop down clean fclean re

	

