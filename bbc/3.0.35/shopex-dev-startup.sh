#!/usr/bin/env bash

/etc/init.d/php-fpm56 start
/etc/init.d/nginx restart
/etc/init.d/mysqld start
/etc/init.d/redis start

bash