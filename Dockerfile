FROM php:7.1-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install PHP extensions (optional, common ones)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy project files to Apache web root
COPY . /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html

