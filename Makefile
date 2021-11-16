all:	build start
.PHONY: all

init:
		@mkdir -p /home/bledda/data/wp-data/
		@mkdir -p /home/bledda/data/db-data/
		@mkdir -p /home/bledda/data/website-data/
		@mkdir -p /home/bledda/data/git-data/
		@rm -rf /home/bledda/.ssh/known_hosts
.PHONY: init

build:	init
		@docker-compose -f srcs/docker-compose.yml build
.PHONY: build

start:
		@docker-compose -f srcs/docker-compose.yml up -d
.PHONY: start

stop:
		@docker-compose -f srcs/docker-compose.yml stop
.PHONY: stop

down:
		@docker-compose -f srcs/docker-compose.yml down
.PHONY: down

rmi:
		@docker rmi -f wordpress
		@docker rmi -f nginx
		@docker rmi -f mariadb
		@docker rmi -f redis
		@docker rmi -f ftp
		@docker rmi -f website
		@docker rmi -f adminer
		@docker rmi -f git
.PHONY: rmi

rmv:
		@docker volume rm -f wordpress
		@docker volume rm -f mariadb
		@docker volume rm -f website
		@docker volume rm -f git
.PHONY: rmv

rmf:
		@sudo rm -rf ~/data
.PHONY: rmf

fclean:	down rmi rmv rmf
.PHONY: fclean

re:		fclean all
.PHONY: re

cli-nginx:
		@docker exec -it nginx /bin/bash
.PHONY: cli-nginx

cli-wordpress:
		@docker exec -it wordpress /bin/bash
.PHONY: cli-wordpress

cli-mariadb:
		@docker exec -it mariadb /bin/bash
.PHONY: cli-mariadb

cli-redis:
		@docker exec -it redis /bin/bash
.PHONY: cli-redis

cli-ftp:
		@docker exec -it ftp /bin/bash
.PHONY: cli-ftp

cli-website:
		@docker exec -it website /bin/bash
.PHONY: cli-website

cli-adminer:
		@docker exec -it adminer /bin/bash
.PHONY: cli-adminer

cli-git:
		@docker exec -it git /bin/bash
.PHONY: cli-git

rm-git: stop
		@docker rm -f git
		@docker rmi -f git
.PHONY: rm-git

rm-ftp: stop
		@docker rm -f ftp
		@docker rmi -f ftp
.PHONY: rm-ftp

rm-nginx: stop
		@docker rm -f nginx
		@docker rmi -f nginx
.PHONY: rm-nginx

rm-adminer: stop
		@docker rm -f adminer
		@docker rmi -f adminer
.PHONY: rm-adminer

rm-website: stop
		@docker rm -f website
		@docker rmi -f website
.PHONY: rm-website

rm-redis: stop
		@docker rm -f redis
		@docker rmi -f redis
.PHONY: rm-redis

rm-mariadb: stop
		@docker rm -f mariadb
		@docker rmi -f mariadb
.PHONY: rm-mariadb

rm-wordpress: stop
		@docker rm -f wordpress
		@docker rmi -f wordpress
.PHONY: rm-wordpress

prune:	fclean
		@docker system prune -a
.PHONY: prune
