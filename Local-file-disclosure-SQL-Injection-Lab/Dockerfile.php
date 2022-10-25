FROM php:7.4-fpm-alpine3.16

ARG ZIPFILE=Local-file-disclosure-SQL-Injection-Lab-master

RUN docker-php-ext-install mysqli 

#COPY $ZIPFILE /var/www/html
   
CMD ["php-fpm"]

EXPOSE 9000