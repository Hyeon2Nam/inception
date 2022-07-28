FROM debian:buster

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    apt-utils mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/sqlfile.sql /

RUN service mysql start && mysql < sqlfile.sql
RUN rm -rf sqlfile.sql

CMD /usr/bin/mysqld_safe