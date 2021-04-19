FROM php:7.2-apache


RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app \
 && mkdir /app/bharath-php-mysql\
 && mkdir /app/bharath-php-mysql/www

COPY www/ /app/bharath-php-mysql/www/


RUN cp -r /app/bharath-php-mysql/www/* /var/www/html/.
