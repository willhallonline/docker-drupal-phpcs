FROM willhallonline/phpcs:php-7.2-alpine
MAINTAINER Will Hall "will@willhallonline.co.uk"

# Install Drupal Coding Standards
RUN composer global require drupal/coder

# Set Drupal as default CodeSniffer Standard
RUN phpcs --config-set installed_paths /root/.composer/vendor/drupal/coder/coder_sniffer/ \
    && phpcs --config-set default_standard Drupal

WORKDIR /app

CMD ["phpcs"]
CMD ["phpcbf"]