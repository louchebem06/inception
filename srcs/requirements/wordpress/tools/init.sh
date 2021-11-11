#!/bin/bash

FILE=/wordpress-5.8.2-fr_FR.tar.gz

if [ -f $FILE ]; then
    tar -xf $FILE --directory /var/www/
	rm -rf $FILE
fi

service php8.0-fpm start && tail -f /dev/null
