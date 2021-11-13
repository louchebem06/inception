all:
		mkdir -p /home/bledda/data/wp-data/
		mkdir -p /home/bledda/data/db-data/
		docker-compose -f srcs/docker-compose.yml up -d

rebuild:
		docker-compose -f srcs/docker-compose.yml up --build -d

stop:
		docker stop wordpress
		docker stop nginx
		docker stop mariadb
		docker stop redis

rm:
		sudo rm -rf ~/data
		docker rm wordpress
		docker rm nginx
		docker rm mariadb
		docker rm redis
		docker rmi wordpress
		docker rmi nginx
		docker rmi mariadb
		docker rmi redis
		docker volume rm wordpress
		docker volume rm mariadb

fclean:
		sudo rm -rf ~/data
		docker system prune -a
		docker network prune
		docker volume prune

cli-nginx:
		docker exec -it nginx /bin/bash

cli-wordpress:
		docker exec -it wordpress /bin/bash

cli-mariadb:
		docker exec -it mariadb /bin/bash

cli-redis:
		docker exec -it redis /bin/bash

re:		fclean all

reset:	stop rm all
