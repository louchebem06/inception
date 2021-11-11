all:
		docker-compose -f srcs/docker-compose.yml up -d

stop:
		docker stop wordpress
		docker stop nginx
		docker stop mariadb

rm:
		sudo rm -rf ~/data
		docker rm wordpress
		docker rm nginx
		docker rm mariadb
		docker rmi wordpress
		docker rmi nginx
		docker rmi mariadb

fclean:
		sudo rm -rf ~/data
		docker system prune -a

cli-nginx:
		docker exec -it nginx /bin/bash

cli-wordpress:
		docker exec -it wordpress /bin/bash

cli-mariadb:
		docker exec -it mariadb /bin/bash

re:		fclean all

reset:	stop rm all
