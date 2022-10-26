FROM php:7.4-fpm-alpine3.16

ARG PHP_INI

RUN docker-php-ext-install pdo_mysql

RUN set -ex \
  && if [ ! -z ${PHP_INI} ]; then cp /usr/local/etc/php/${PHP_INI} /usr/local/etc/php/php.ini; fi

CMD ["php-fpm"]

EXPOSE 9000