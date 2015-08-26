# Backup-to-Amazon-Glacier</br>
Store your Web Files and Database files to Amazon Glacier through this Shell and PHP Scripts.</br>
Steps:</br>
1. Create your backup folder</br>
  mkdir <b>/var/awsbackup</b></br>
2. Download latest <b>aws.zip</b> from here https://github.com/aws/aws-sdk-php/releases</br>
3. create <b>/var/awsbackup/amazonaws</b> folder.</br>
mkdir <b>/var/awsbackup/amazonaws</b></br>
4. Extrace above aws.zip into <b>/var/awsbackup/amazonaws</b> folder.</br>
5. Download <b>backupmysqlwww.sh</b> and <b>backuptoamazonglacier.php</b> files from here to <b>/var/awsbackup</b> folder.</br>
6. Change above files according to your system and database details. Replace every word start with <b>your</b> to your Settings.</br>
7. Change backupmysqlwww.sh permission and run</br>
chmod +x backupmysqlwww.sh</br>
if not installed then install php-cli (apt-get install php-cli) before running backupmysqlwww.sh file</br></br>

<a href="http://wphost9.com">WP Host 9</a> is one of VPS Provides stores Web Data and Databases to Amazon Glacier.
