FROM php:7.4-apache

RUN apt-get update \
    && apt-get upgrade -y \
    && docker-php-ext-install mysqli

COPY src /var/www/html/

ENV DB_HOST=localhost
ENV DB_USER=ecomuser
ENV DB_PASSWORD=ecompassword
ENV DB_NAME=ecomdb

WORKDIR /var/www/html/

EXPOSE 80
