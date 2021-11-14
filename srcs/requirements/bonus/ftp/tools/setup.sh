#!/bin/bash

echo "/bin/false" >> /etc/shells

useradd --shell /bin/sh -d /var/wordpress --password password wordpress
usermod -g www-data wordpress
