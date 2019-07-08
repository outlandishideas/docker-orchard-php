FROM php:7.2-fpm-alpine

RUN set -ex \
  && apk --no-cache add \
    postgresql postgresql-dev \
    zlib zlib-dev \
  && docker-php-ext-install pdo pdo_pgsql zip \
  && apk del \
    postgresql-dev \
    zlib-dev
