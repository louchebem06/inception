#!/bin/bash

service mysql start

echo "CREATE DATABASE $DB_WP;" | mysql
echo "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" | mysql
echo "GRANT ALL PRIVILEGES ON $DB_WP . * TO '${MYSQL_USER}'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
mysql -u root $DB_WP --force < /wordpress.sql
rm -rf /wordpress.sql
