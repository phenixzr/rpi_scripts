#!/bin/sh

set -e

serviceName=dckupd
composeFile=/mnt/data1/docker-compose.yml
logFile=/tmp/$serviceName.log

echo "[$serviceName] starting `date`" >> $logFile
/usr/local/bin/docker-compose -f $composeFile pull --no-parallel >> $logFile 2>&1
/usr/local/bin/docker-compose -f $composeFile up -d --remove-orphans >> $logFile 2>&1
echo "[$serviceName] ending `date`" >> $logFile 
logger -f $logFile
