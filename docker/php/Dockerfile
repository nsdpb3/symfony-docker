FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    libpq-dev \
    --no-install-recommends \
    && docker-php-ext-install pdo_pgsql pgsql \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY ./docker/php/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

ENV COMPOSER_CACHE_DIR=/tmp/composer-cache
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

