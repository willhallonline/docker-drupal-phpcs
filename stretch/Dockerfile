FROM willhallonline/phpcs:php-7.2-stretch

LABEL maintainer="will@willhallonline.co.uk" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name="willhallonline/drupal-phpcs" \
    org.label-schema.description="Drupal PHP Code Sniffer Standards inside Docker" \
    org.label-schema.url="https://github.com/willhallonline/docker-drupal-phpcs" \
    org.label-schema.vcs-url="https://github.com/willhallonline/docker-drupal-phpcs" \
    org.label-schema.vendor="Will Hall Online" \
    org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/app willhallonline/drupal-phpcs:stretch"

# Install Drupal Coding Standards and Set Drupal as default CodeSniffer Standard
RUN composer global require drupal/coder && \
    phpcs --config-set installed_paths /root/.composer/vendor/drupal/coder/coder_sniffer/ \
    && phpcs --config-set default_standard Drupal,DrupalPractice

WORKDIR /app

CMD ["phpcs"]
CMD ["phpcbf"]
