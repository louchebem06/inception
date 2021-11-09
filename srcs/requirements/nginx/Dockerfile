FROM 	debian:buster

RUN 	apt-get update -y \
			&& apt-get upgrade -y \
			&& apt-get install -y nginx openssl\
			&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/conf.d/cert.key -out /etc/nginx/conf.d/cert.crt -subj '/C=FR/ST=PACA/L=Nice/O=42 Nice/CN=localhost'

CMD 	["nginx", "-g", "daemon off;"]