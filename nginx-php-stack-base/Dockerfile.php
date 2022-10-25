
FROM php:7.4-fpm-alpine3.16

RUN docker-php-ext-install pdo_mysql

CMD ["php-fpm"]

EXPOSE 9000