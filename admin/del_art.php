<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_GET['articleid'];
$Query = "DELETE FROM article WHERE articleid='$id'";
$result = mysql_query($Query, $mysql_link); 
 
echo "<script language=javascript>alert('ɾ���ɹ�');history.back();</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>