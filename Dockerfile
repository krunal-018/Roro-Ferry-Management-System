FROM php:8.3-apache
RUN apt-get update && apt-get install -y --no-install-recommends libpng-dev libonig-dev libxml2-dev unzip \
    && docker-php-ext-install -j"$(nproc)" mysqli gd mbstring dom \
    && rm -rf /var/lib/apt/lists/*
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer
WORKDIR /var/www/html
COPY composer.json composer.lock ./
RUN composer install --no-dev --no-interaction --prefer-dist --optimize-autoloader
COPY . .
RUN a2enmod headers \
    && printf '%s\n' 'ServerName localhost' \
      '<DirectoryMatch "^/var/www/html/(inc|admin/inc|vendor|docs)(/|$)">' 'Require all denied' '</DirectoryMatch>' \
      '<FilesMatch "(^\.|\.(sql|lock|md|yaml)$|^composer\.json$|^Dockerfile$)">' 'Require all denied' '</FilesMatch>' \
      '<DirectoryMatch "/uploads(/|$)">' 'AllowOverride None' 'Options -ExecCGI -Indexes' 'php_admin_flag engine Off' \
      '<FilesMatch "(?i)\.(php[0-9]*|phtml|phar)(\.|$)">' 'Require all denied' '</FilesMatch>' '</DirectoryMatch>' \
      'Header always set X-Content-Type-Options nosniff' > /etc/apache2/conf-available/ferry.conf \
    && a2enconf ferry \
    && mkdir -p uploads downloads \
    && chown www-data:www-data uploads downloads
EXPOSE 80
