FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install apt-utils
RUN apt-get -y install mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./sqlfile.sql /

RUN service mysql start
RUN mysql < sqlfile.sql
RUN rm -rf ./sqlfile.sql

CMD ["mysqld_safe"]