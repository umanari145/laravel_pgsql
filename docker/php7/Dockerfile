FROM php:7.3-apache

RUN apt-get update \
  && apt-get install -y zlib1g-dev libpq-dev unzip re2c  \
  && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

RUN docker-php-ext-install \
    pdo \
    pdo_pgsql

WORKDIR /var/www/html
