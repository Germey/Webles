<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_GET['id'];
$Query = "DELETE FROM linkclass WHERE classid='$id'";
$result = mysql_query($Query, $mysql_link); 
$Query1 = "DELETE FROM link WHERE classid='$id'";
$result1 = mysql_query($Query1, $mysql_link);   
echo "<script language=javascript>alert('�����ɹ�');history.back();</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>