#!/bin/bash
DATE=$(date +%F)
FILE=/backups/nginx_backup_$DATE.tar.gz

tar -czf $FILE /etc/nginx /var/www/html
tar -tzf $FILE >> /backups/nginx_verify.log
