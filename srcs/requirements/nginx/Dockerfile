FROM debian:buster

RUN apt-get update && \
	apt-get -y install \
	nginx \ 
	openssl
	
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-out /etc/ssl/nginx.crt \
	-keyout /etc/ssl/nginx.key \
	-subj "/C=KR/L=Seoul/S=Songpa-gu/O=42/OU=42Seoul/CN=hyenam.42.fr"

COPY ./conf/default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]