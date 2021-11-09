all:
		docker build -t nginx srcs/requirements/nginx
		docker build -t wordpress srcs/requirements/nginx
		docker-compose -f srcs/docker-compose.yml up -d

clean:
		docker stop wordpress
		docker stop nginx

fclean: clean
		docker system prune -a
		docker network prune
