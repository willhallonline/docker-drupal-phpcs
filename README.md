# docker-drupal-phpcs
Docker Container with PHPCS setup for Drupal development

This Docker Container can be used to setup your environment for Drupal development. It combines...

1. PHP
2. Composer
3. PHP CodeSniffer
4. Drupal Coding Standards (Coder module)

... into a simple to use docker container.

So, as an example, here is the whole process of running the custom Drupal PHPCS/PHPCBF container:

## PHPCS

```
➜ docker run -it -v $(pwd):/app willhallonline/drupal-phpcs phpcs test.php

FILE: /app/test.php
----------------------------------------------------------------------
FOUND 3 ERRORS AFFECTING 1 LINE
----------------------------------------------------------------------
1 | ERROR | [x] The PHP open tag must be followed by exactly one
| | blank line
1 | ERROR | [x] Missing file doc comment
----------------------------------------------------------------------
PHPCBF CAN FIX THE 2 MARKED SNIFF VIOLATIONS AUTOMATICALLY
----------------------------------------------------------------------

Time: 240ms; Memory: 6Mb
```
## PHPCBF

```
➜ docker run -it -v $(pwd):/app willhallonline/drupal-phpcs phpcbf test.php

Changing into directory /app
Processing test.php [PHP => 2 tokens in 1 lines]... DONE in 16ms (2 fixable violations)
=> Fixing file: 0/2 violations remaining [made 4 passes]... DONE in 15ms
Patched 1 file
Time: 225ms; Memory: 6Mb
```
