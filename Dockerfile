# Base image
FROM php:8.1-fpm

# Install PostgreSQL extension
RUN docker-php-ext-install pdo pdo_pgsql

# Copy application files
COPY index.php /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Permissions
RUN chown -R www-data:www-data /var/www/html/

# Expose PHP port
EXPOSE 9000