#!/bin/bash

FILE=/wordpress-5.8.2-fr_FR.tar.gz

if [ -f $FILE ]; then
    tar -xf $FILE --directory /var/www/
	rm -rf $FILE
	mv /wp-config.php /var/www/wordpress
	chmod 644 /var/www/wordpress/wp-config.php
	service php8.0-fpm start
	service php8.0-fpm stop
fi
