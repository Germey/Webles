<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$Query = "update article set deleted='1' ";
$result = mysql_query($Query, $mysql_link); 
echo "<script language=javascript>alert('�����ɹ�');history.back();</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>