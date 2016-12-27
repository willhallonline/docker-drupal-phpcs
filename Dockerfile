FROM php:7
MAINTAINER Will Hall "will@willhallonline.co.uk"

# Update image
RUN apt-get update -y

# Install Dependencies
RUN apt-get install -y \
    zip \
    unzip

# Remove memory limit for PHP-CLI
RUN echo "memory_limit = -1" > /usr/local/etc/php/conf.d/php.ini
RUN echo "date.timezone = UTC" >> /usr/local/etc/php/conf.d/php.ini

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/bin/composer
RUN chmod +x /usr/bin/composer

ENV PATH "$PATH:/root/.composer/vendor/bin"

# Install PHPCS and Drupal Coding Standards
RUN composer global require squizlabs/php_codesniffer
RUN composer global require drupal/coder

WORKDIR /app

CMD ["phpcs", "--standard=~/.composer/vendor/drupal/coder/coder_sniffer/Drupal", "--extensions=php,inc,install,module,theme"]
CMD ["phpcbf", "--standard=~/.composer/vendor/drupal/coder/coder_sniffer/Drupal", "--extensions=php,inc,install,module,theme"]
