# Supported tags and respective ```Dockerfile``` links
* ```latest```
* ```alpine```

**This is a Dockerised Solution for running PHPCS with Drupal Standards**.

## What is PHPCS?

PHP_CodeSniffer is a set of two PHP scripts; the main ```phpcs``` script that tokenizes PHP, JavaScript and CSS files to detect violations of a defined coding standard, and a second ```phpcbf``` script to automatically correct coding standard violations. PHP_CodeSniffer is an essential development tool that ensures your code remains clean and consistent.

## What are Drupal Coding Standards?

The [Drupal Coding Standards](https://www.drupal.org/docs/develop/standards) apply to code within Drupal and its contributed modules. This is maintained by the ```drupal/coder``` composer package.

## Docker Commands

### Pull

```
docker pull willhallonline/drupal-phpcs
docker pull willhallonline/drupal-phpcs:alpine
```

### Run

#### PHPCS (PHP CodeSniffer)

```
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs phpcs [YOUR-CODE]
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs:alpine phpcs [YOUR-CODE]
```

#### PHPCBF (PHP CodeFixer)

```
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs phpcbf [YOUR-CODE]
docker run -it --rm -v $(pwd):/app willhallonline/drupal-phpcs:alpine phpcbf [YOUR-CODE]
```
