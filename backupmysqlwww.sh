#!/bin/bash
_now=$(date +"%m_%d_%Y")
_file="yourWebsitename_all_$_now.sql"
_file1="yourWebsitename_html_all_$_now.tar.bz2"
_file2="yourWebsitename_db_all_$_now.tar.bz2"
echo "Starting MySQL Database Backup to $_file..."
mysqldump -u yourMySQLUser -p'yourMySQLpassword' --all-databases > "$_file"
tar cvfj "$_file2" "$_file"
rm -rf "$_file"
echo "Starting HTML Files Backup to $_file..."
tar cvfj "$_file1" yourFolderPathToBackup
php backuptoamazonglacier.php >> ArchiveIDS.txt
