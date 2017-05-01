FROM php:7.0-apache

# Get required extensions for Magento development - mcrypt, intl, xsl, zip and gd
# Get required mysql drivers
RUN apt-get update && apt-get install -y \
		libmcrypt-dev \
		mcrypt \
		libicu-dev \
		libxslt-dev \
		libzip-dev \
		libfreetype6-dev libjpeg62-turbo-dev libpng12-dev \
	--no-install-recommends && rm -r /var/lib/apt/lists/*

# Install mcrypt
RUN docker-php-ext-install mcrypt

# Install intl
RUN pecl install intl && docker-php-ext-install intl

# Install XSL
RUN docker-php-ext-install xsl

# Install zip
RUN docker-php-ext-install zip

# Install GD
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Install mysql drivers
RUN docker-php-ext-install pdo_mysql