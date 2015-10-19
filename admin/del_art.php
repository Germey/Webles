<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_GET['articleid'];
$Query = "DELETE FROM article WHERE articleid='$id'";
$result = mysql_query($Query, $mysql_link); 
 
echo "<script language=javascript>alert('删除成功');history.back();</script>"; 

//关闭数据库连结
mysql_close($mysql_link);
?>