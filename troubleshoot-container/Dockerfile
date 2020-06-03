FROM php:7.3-apache
ENV PORT 8080
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
COPY index.php /var/www/html/
COPY apache2.conf /etc/apache2/
#RUN sed -i "s/80/$PORT/g" /etc/apache2/sites-available/*.conf /etc/apache2/ports.conf
#EXPOSE 8080
EXPOSE 80

