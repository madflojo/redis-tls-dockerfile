#!/bin/bash

if [ -z "$REDIS_PASS" ]
then
    honcho start -f ProcfileWithoutPwd
else 
    honcho start -f ProcfileWithPwd
fi
