#!/bin/bash

sed -i "/# requirepass foobared/c\requirepass $REDIS_PASSWORD" /etc/redis/redis.conf
