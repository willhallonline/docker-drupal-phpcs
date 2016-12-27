# docker-drupal-phpcs
Docker Container with PHPCS setup for Drupal development

So, as an example, here is the whole process of running the custom Drupal PHPCS/PHPCBF container:

```
➜ echo "<?php $hello_world ='';" >> test.php
➜ docker run -it -v $(pwd):/app edd2b1339bb4 phpcs test.php

FILE: /app/test.php
----------------------------------------------------------------------
FOUND 1 ERROR AFFECTING 1 LINE
----------------------------------------------------------------------
 1 | ERROR | Missing file doc comment
----------------------------------------------------------------------

Time: 160ms; Memory: 4Mb
```
