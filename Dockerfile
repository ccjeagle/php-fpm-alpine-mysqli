# Official php-fpm on Alpine + mysqli, with the production php.ini
# Pin the minor only: a rebuild with --pull picks up the latest patch (8.5.12 or later)
FROM php:8.5-fpm-alpine

RUN docker-php-ext-install mysqli \
    && mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
