<?php

require_once("/var/awsbackups/amazonaws/aws-autoloader.php");

use Aws\Glacier\GlacierClient;
 
$client = GlacierClient::factory(array(
    'key'    => 'yourAmazonKey',
    'secret' => 'yourAmazonsecret',
    'region' => 'us-east-1', // (e.g., us-west-2)
));

$vaultName = 'yourVaultName';
$dir = "/var/awsbackups/";
$tdate = date('m_d_Y');
// Open a directory, and read its contents
if (is_dir($dir)){
  if ($dh = opendir($dir)){
    while (($file = readdir($dh)) !== false){
	if(sizeof(explode($tdate,$file))>1)
	{
      	echo $file . " Going to upload";
	$result = $client->uploadArchive(array(
	    'vaultName' => $vaultName,
	    'body'      => fopen($file, 'r'),
	));
	$archiveId = $result->get('archiveId');
	echo "\nFile Uploaded and ArchiveID:".$archiveId."\n\n";
	}
    }
    closedir($dh);
  }
}
?>
