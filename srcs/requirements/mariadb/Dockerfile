FROM debian:buster

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y install mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./sqlfile.sql /

RUN service mysql start
RUN mysql < sqlfile.sql
RUN rm -rf ./sqlfile.sql

CMD ["mysqld_safe"]