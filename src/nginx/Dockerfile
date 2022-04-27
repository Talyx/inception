FROM debian:buster
RUN apt-get update

RUN apt-get installl nginx -y

RUN apt-get install openssl -y
RUN openssl req "openssll param put"

COPY ./default etc/nginx/sites-enabled/default

CMD [ "nginx", "-g", "deamon off;" ] 
