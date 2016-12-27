# docker-drupal-phpcs
Docker Container with PHPCS setup for Drupal development

This Docker Container can be used to setup your environment for Drupal development. It combines...

1. PHP
2. Composer
3. PHP CodeSniffer
4. Drupal Coding Standards (Coder module)

... into a simple to use docker container.

So, as an example, here is the whole process of running the custom Drupal PHPCS/PHPCBF container:

```
➜ echo "<?php $hello_world ='';" >> test.php
➜ docker run -it -v $(pwd):/app willhallonline/ phpcs test.php

FILE: /app/test.php
----------------------------------------------------------------------
FOUND 1 ERROR AFFECTING 1 LINE
----------------------------------------------------------------------
 1 | ERROR | Missing file doc comment
----------------------------------------------------------------------

Time: 160ms; Memory: 4Mb
```
