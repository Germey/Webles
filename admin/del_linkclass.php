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
echo "<script language=javascript>alert('操作成功');history.back();</script>"; 

//关闭数据库连结
mysql_close($mysql_link);
?>