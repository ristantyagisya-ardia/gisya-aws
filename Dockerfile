# Base image
FROM php:8.1-fpm

# Install required dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql \
    && apt-get clean

# Copy application files
COPY index.php /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Permissions
RUN chown -R www-data:www-data /var/www/html/

# Expose PHP port
EXPOSE 9000