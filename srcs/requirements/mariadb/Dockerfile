FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/schema.sql /

RUN service mysql start && mysql < schema.sql
RUN rm -rf schema.sql

CMD /usr/bin/mysqld_safe