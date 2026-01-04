#!/bin/bash
DATE=$(date +%F)
FILE=/backups/apache_backup_$DATE.tar.gz

tar -czf $FILE /etc/apache2 /var/www/html
tar -tzf $FILE >> /backups/apache_verify.log
