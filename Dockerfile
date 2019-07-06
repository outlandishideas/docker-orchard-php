FROM php:7.2-fpm-alpine

RUN set -ex \
  && apk --no-cache add \
    postgresql postgresql-dev \
  && docker-php-ext-install pdo pdo_pgsql \
  && apk del postgresql-dev
