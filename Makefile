# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gduranti <gduranti@student.42firenze.it>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/09 10:11:24 by gduranti          #+#    #+#              #
#    Updated: 2024/12/09 15:39:18 by gduranti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: vol
	docker compose -f srcs/docker-compose.yml up --build

vol:
	mkdir -p $(HOME)/data/wordpress $(HOME)/data/mariadb

status:
	docker ps

down:
	docker compose -f srcs/docker-compose.yml down

clean: down
	docker system prune -f
	docker volume prune -f
	docker builder prune -f
	docker image prune -f

fclean: clean
	sudo rm -rf $(HOME)/data

re: fclean all

PHONY: all vol status down clean fclean re

	

