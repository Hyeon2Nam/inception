FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install \
	mariadb-client \
	php7.3 \
	php-fpm \
	php-cli \
	wget \
	curl \
	php-mysql \
	php-mbstring \
	php-xml \
	sendmail

RUN wget https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz \
	&& mkdir /var/www \
	&& mv /wordpress /var/www/ \
	&& chown -R www-data:www-data /var/www/wordpress
RUN rm -r latest.tar.gz
RUN rm /var/www/html/wp-config.php
RUN rm /wordpress

COPY ./wp-config.php /var/www/html/
COPY ./www.conf /etc/php/7.3/fpm/pool.d/

EXPOSE 9000

CMD ["php-fpm7.3", "--nodaemonize"]
