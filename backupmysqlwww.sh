#!/bin/bash
_now=$(date +"%m_%d_%Y")
_file="wphost9_all_$_now.sql"
_file1="wphost9_html_all_$_now.tar.bz2"
_file2="wphost9_db_all_$_now.tar.bz2"
echo "Starting MySQL Database Backup to $_file..."
mysqldump -u root -p'16/nj1gt@&27DB' --all-databases > "$_file"
tar cvfj "$_file2" "$_file"
rm -rf "$_file"
echo "Starting WPHost9 HTML Files Backup to $_file..."
tar cvfj "$_file1" /usr/share/nginx/html
php backuptoamazonglacier.php >> ArchiveIDS.txt
