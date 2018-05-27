FROM composer:latest

RUN apk --update add --no-cache --virtual .php-ize \
        $PHPIZE_DEPS \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && apk del .php-ize \
    && composer global require hirak/prestissimo \
    && rm -rf /tmp/*
