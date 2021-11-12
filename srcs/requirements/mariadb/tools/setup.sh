#!/bin/bash

service mysql start

echo "CREATE DATABASE wordpress;" | mysql
echo "CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';" | mysql
echo "GRANT ALL PRIVILEGES ON wordpress . * TO 'wordpress'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
mysql -u root wordpress --force < /wordpress.sql
rm -rf /wordpress.sql
