#!/bin/bash
# Database credentials

 user="root"
 password="mahesh@12"
 host=""
 db_name="blog"

# Other options /home/ec2-user/_backup/mysql
 backup_path="/home/ec2-user/_backup/mysql"
 date=$(date +"%d-%b-%Y")

# Set default file permissions
 umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password $db_name > $backup_path/$db_name-$date.sql


# Delete files older than 5 days

find $backup_path/* -mtime +5 -exec rm -rf {} \;



