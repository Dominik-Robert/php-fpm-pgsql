FROM php:8-fpm

RUN apt-get update && apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libmcrypt-dev \
  libpng-dev \
  postgresql-client* \ 
  libpq-dev \
  && docker-php-ext-install -j$(nproc) iconv pgsql pdo pdo_pgsql \
  && docker-php-ext-configure gd --with-freetype=/usr/include/ \
  && docker-php-ext-install -j$(nproc) gd