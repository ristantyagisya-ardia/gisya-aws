# Base image
FROM php:8.1-fpm

# Update package manager and install dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    git \
    unzip \
    && docker-php-ext-configure pdo_pgsql \
    && docker-php-ext-install pdo_pgsql

# Copy application files
COPY index.php /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Permissions
RUN chown -R www-data:www-data /var/www/html/

# Expose PHP port
EXPOSE 9000