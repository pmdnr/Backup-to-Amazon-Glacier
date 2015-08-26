#!/bin/bash
_now=$(date +"%m_%d_%Y")
_file="yourwebsitename_all_$_now.sql"
_file1="yourwebsitename_html_all_$_now.tar.bz2"
_file2="yourwebsitename_db_all_$_now.tar.bz2"
echo "Starting MySQL Database Backup to $_file..."
mysqldump -u mySQLUser -p'yourMySQLpassword' --all-databases > "$_file"
tar cvfj "$_file2" "$_file"
rm -rf "$_file"
echo "Starting HTML Files Backup to $_file..."
tar cvfj "$_file1" /usr/share/nginx/html
php backuptoamazonglacier.php >> ArchiveIDS.txt
