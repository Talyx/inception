FROM debian:buster

RUN apt-get update

RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client wget
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
RUN mkdir -p /var/www/wordpress

COPY ./tools/up.sh /tmp

ENTRYPOINT [ "sh", "/tmp/up.sh" ]
