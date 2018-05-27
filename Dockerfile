FROM composer:latest

RUN apk --no-cache add \
        autoconf g++ make  \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN composer global require hirak/prestissimo \
    && rm -rf /tmp/*
