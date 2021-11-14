all:	build start
.phony: all

init:
		@mkdir -p /home/bledda/data/wp-data/
		@mkdir -p /home/bledda/data/db-data/
		@mkdir -p /home/bledda/data/website-data/
		@mkdir -p /home/bledda/data/plex-data/config
		@mkdir -p /home/bledda/data/plex-data/media
		@export COMPOSE_DOCKER_CLI_BUILD=0
.phony: init

build:	init
		@docker-compose -f srcs/docker-compose.yml build --parallel
.phony: build		

start:
		@docker-compose -f srcs/docker-compose.yml up -d
.phony: start

stop:
		@docker-compose -f srcs/docker-compose.yml stop
.phony: stop

down:
		@docker-compose -f srcs/docker-compose.yml down
.phony: down

rmi:
		@docker rmi -f wordpress
		@docker rmi -f nginx
		@docker rmi -f mariadb
		@docker rmi -f redis
		@docker rmi -f ftp
		@docker rmi -f website
		@docker rmi -f adminer
		@docker rmi -f plex
.phony: rmi

rmv:
		@docker volume rm -f wordpress
		@docker volume rm -f mariadb
		@docker volume rm -f website
		@docker volume rm -f plex-config
		@docker volume rm -f plex-media
.phony: rmv

rmf:
		@sudo rm -rf ~/data
.phony: rmf

fclean:	down rmi rmv rmf
.phony: fclean

re:		fclean all
.phony: re

cli-nginx:
		@docker exec -it nginx /bin/bash
.phony: cli-nginx

cli-wordpress:
		@docker exec -it wordpress /bin/bash
.phony: cli-wordpress

cli-mariadb:
		@docker exec -it mariadb /bin/bash
.phony: cli-mariadb

cli-redis:
		@docker exec -it redis /bin/bash
.phony: cli-redis

cli-ftp:
		@docker exec -it ftp /bin/bash
.phony: cli-ftp

cli-website:
		@docker exec -it website /bin/bash
.phony: cli-website

cli-adminer:
		@docker exec -it adminer /bin/bash
.phony: cli-adminer

cli-plex:
		@docker exec -it plex /bin/bash
.phony: cli-plex

prune:	fclean
		@docker system prune -a
.phony: prune
