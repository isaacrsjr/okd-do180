FROM php:7.2-apache

COPY index.php /var/www/html/

WORKDIR /app
RUN apt-get update && \
    apt-get upgrade -y && \
    docker-php-ext-install pdo pdo_mysql mysqli && \
    a2enmod rewrite

EXPOSE 80
