#!/bin/bash

if [ ! -z "$REDIS_PASS" ]
then
  REDIS_CMD_OPTS=$(echo "$REDIS_CMD_OPTS --requirepass $REDIS_PASS")
fi

exec honcho start -f Procfile
