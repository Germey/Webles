<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_GET['id'];
$Query = "DELETE FROM photo WHERE id='$id'";
$result = mysql_query($Query, $mysql_link); 
 
echo "<script language=javascript>alert('�����ɹ�');history.back();</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>