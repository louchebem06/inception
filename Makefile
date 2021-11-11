all:
		docker-compose -f srcs/docker-compose.yml up -d

stop:
		docker stop wordpress
		docker stop nginx

rm:
		sudo rm -rf ~/data
		docker rm wordpress
		docker rm nginx
		docker rmi wordpress
		docker rmi nginx

fclean: stop
		sudo rm -rf ~/data
		docker system prune -a

cli-nginx:
		docker exec -it nginx /bin/bash

cli-wordpress:
		docker exec -it wordpress /bin/bash

re:		fclean all

reset:	stop rm all
