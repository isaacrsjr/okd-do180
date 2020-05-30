FROM php:7.3-apache
ENV PORT 8080
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
#Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=. --filename=composer
RUN mv composer /usr/local/bin/
COPY index.php /var/www/html/
RUN sed -i "s/80/$PORT/g" /etc/apache2/sites-available/*.conf /etc/apache2/ports.conf
EXPOSE 8080
