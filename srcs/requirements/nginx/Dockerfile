FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install nginx openssl vim
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-out /etc/ssl/certs/nginx.crt \
	-keyout /etc/ssl/private/nginx.key \
	-subj "/C=KR/ST=Seoul/L=Songpa-gu/O=42/OU=42Seoul/CN=hyenam.42.fr"

COPY ./default /etc/nginx/sites-available/default

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]