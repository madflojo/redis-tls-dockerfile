#!/bin/bash

if [ -z "$REDIS_PASS" ]
then
    honcho start -f ProcfileWithPwd
else 
    honcho start -f ProcfileWithoutPwd
fi
