FROM 	debian:buster

RUN		apt-get update -y \
			&& apt-get upgrade -y

RUN 	apt-get install -y \
			nginx \
			openssl

RUN		openssl \
			req -x509 -nodes -days 365 -newkey rsa:2048 \
			-keyout /etc/nginx/conf.d/local.key \
			-out /etc/nginx/conf.d/local.crt \
			-subj \
			'/C=FR/ST=PACA/L=Nice/O=42 Nice/CN=bledda.42.fr'

COPY	conf/default.conf /etc/nginx/conf.d/default.conf

CMD 	["nginx", "-g", "daemon off;"]