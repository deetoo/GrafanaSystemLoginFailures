#!/bin/bash
MONTHNAME=`date +%b`
DAY=`date +%d`

# parse the number of failed logins for the current day.
FAILS=`cat /var/log/secure | grep "Failed password" | grep "$MONTHNAME $DAY" -c`

# push current number of failed logins, on the current day, into the DB
mysql -u DB_USER -pDB_PASSWORD DB_NAME -e "INSERT INTO TABLE_NAME VALUES('0', NOW(), '$FAILS' );"

