FROM debian:buster

RUN apt-get update

RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client wget
COPY ./www.conf /etc/php/7.3/fpm/pool.d
RUN mkdir -p /var/www/wordpress

COPY ./wp-config.php ./var/www
COPY ./up.sh /tmp

ENTRYPOINT [ "sh", "/tmp/up.sh" ]
