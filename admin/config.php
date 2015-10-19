<?
$mysql_servername = "localhost";
$mysql_username = "root";
$mysql_password ="mimiz.cn";
$mysql_database ="webles";
$mysql_link=@mysql_connect($mysql_servername , $mysql_username , $mysql_password);
mysql_select_db($mysql_database);
mysql_query("SET NAMES gbk");
?>