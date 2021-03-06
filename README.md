# Drupal PHPCS

Drupal PHP Code Sniffer Coding Standards inside a container.

### Supported tags and respective ```Dockerfile``` links

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/drupal-phpcs.svg)][hub] [![MicroBadger Layers](https://img.shields.io/microbadger/layers/willhallonline/drupal-phpcs/alpine.svg)][microbadger] [![Docker Automated build](https://img.shields.io/docker/automated/willhallonline/drupal-phpcs.svg)][hub] [![Docker Build Status](https://img.shields.io/docker/build/willhallonline/drupal-phpcs.svg)][hub]

* ```alpine```, ```3.0-alpine```, ```latest``` [Dockerfile](https://github.com/willhallonline/docker-drupal-phpcs/blob/master/alpine/Dockerfile)
* ```stretch```, ```3.0-stretch``` [Dockerfile](https://github.com/willhallonline/docker-drupal-phpcs/blob/master/stretch/Dockerfile)

**This is a Dockerised Solution for running PHPCS with Drupal Standards**.

## What is PHPCS?

PHP_CodeSniffer is a set of two PHP scripts; the main ```phpcs``` script that tokenizes PHP, JavaScript and CSS files to detect violations of a defined coding standard, and a second ```phpcbf``` script to automatically correct coding standard violations. PHP_CodeSniffer is an essential development tool that ensures your code remains clean and consistent.

## What are Drupal Coding Standards?

The [Drupal Coding Standards](https://www.drupal.org/docs/develop/standards) apply to code within Drupal and its contributed modules. This is maintained by the ```drupal/coder``` composer package (https://packagist.org/packages/drupal/coder).

## Docker Commands

### Pull

```
docker pull willhallonline/drupal-phpcs
docker pull willhallonline/drupal-phpcs:stretch
```

### PHPCS (PHP CodeSniffer)

```
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs phpcs [YOUR-CODE]
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs:stretch phpcs [YOUR-CODE]
```

### PHPCBF (PHP CodeFixer)

```
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs phpcbf [YOUR-CODE]
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs:stretch phpcbf [YOUR-CODE]
```

## Maintainer

* Will Hall (https://www.willhallonline.co.uk)

[hub]: https://hub.docker.com/r/willhallonline/drupal-phpcs/
[microbadger]: https://microbadger.com/images/willhallonline/drupal-phpcs
