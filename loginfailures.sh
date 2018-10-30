#!/bin/bash
MONTHNAME=`date +%b`
DAY=`date +%d`

FAILS=`cat /var/log/secure | grep "Failed password" | grep "$MONTHNAME $DAY" -c`

mysql -u DB_USER -pDB_PASSWORD DB_NAME -e "INSERT INTO TABLE_NAME VALUES('0', NOW(), '$FAILS' );"

