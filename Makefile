all:
		docker-compose -f srcs/docker-compose.yml up -d

stop:
		docker stop wordpress
		docker stop nginx

rm:
		docker rm wordpress
		docker rm nginx
		docker rmi wordpress
		docker rmi nginx

fclean:
		docker system prune -a
		docker network prune

cli-nginx:
		docker exec -it nginx /bin/bash

cli-wordpress:
		docker exec -it wordpress /bin/bash

re:		stop rm all