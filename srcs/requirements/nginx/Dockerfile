FROM debian:buster

RUN apt-get update
RUN apt-get -y install \
	nginx \ 
	openssl
	
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-out /etc/ssl/nginx.crt \
	-keyout /etc/ssl/nginx.key \
	-subj "/C=KR/ST=Seoul/L=Songpa-gu/O=42/OU=42Seoul/CN=hyenam.42.fr"

COPY ./default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]