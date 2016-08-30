#!/bin/bash

PATH_DIRECTORY_LETS_ENCRYPT=/opt/letsencrypt/
PATH_FILE_LOG_SCRIPT=/var/log/le-renew.log
NOW=$(date +"%Y-%m-%d %T")

echo "***************************************************************************" >> $PATH_FILE_LOG_SCRIPT
echo "Start Script - $NOW" >> $PATH_FILE_LOG_SCRIPT
cd $PATH_DIRECTORY_LETS_ENCRYPT
git pull origin master >>  $PATH_FILE_LOG_SCRIPT 2>&1
$PATH_DIRECTORY_LETS_ENCRYPT/letsencrypt-auto renew >> $PATH_FILE_LOG_SCRIPT
echo "End Script - $NOW" >> $PATH_FILE_LOG_SCRIPT
