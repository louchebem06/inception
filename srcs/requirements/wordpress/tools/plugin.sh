#!/bin/bash

service php8.0-fpm start

REDIS=$(wp plugin list --allow-root --path=/var/www/wordpress | grep redis-cache)
if [ -z "$REDIS" ]
then
    wp plugin delete akismet hello --allow-root
	wp plugin install redis-cache --activate --allow-root
	wp redis enable --allow-root
fi

service php8.0-fpm stop
