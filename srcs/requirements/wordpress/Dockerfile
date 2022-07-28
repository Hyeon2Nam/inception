FROM debian:buster

RUN apt-get update
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

RUN rm -rf /var/lib/apt/lists/*
RUN mkdir /run/php

RUN wget https://wordpress.org/wordpress-5.8.3.tar.gz && tar -xvzf wordpress-5.8.3.tar.gz
RUN rm -rf wordpress-5.8.3.tar.gz

RUN mkdir /var/www \
	&& mv /wordpress /var/www/ \
	&& chmod 777 /var/www/wordpress \
	&& chown -R www-data:www-data /var/www/wordpress/*
RUN rm /var/www/wordpress/wp-config-sample.php

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/wp-config.php /var/www/wordpress/

EXPOSE 9000

CMD ./usr/sbin/php-fpm7.3 -F
