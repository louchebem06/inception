#!/bin/bash

service mysql start

echo "CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';" | mysql
echo "GRANT ALL PRIVILEGES ON * . * TO 'wordpress'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql