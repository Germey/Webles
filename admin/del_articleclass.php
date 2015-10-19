<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_GET['id'];
$Query = "select * from articleclass where parentid='$id'";
$result = mysql_query($Query, $mysql_link); 
if($r=mysql_fetch_array($result))
{
echo "<script language=javascript>alert('不能删除带有子栏目的栏目');history.back();</script>"; 
}
else
{

$Query3 = "select * from articleclass where classid='$id'";
$result3 = mysql_query($Query3, $mysql_link); 
if($r3=mysql_fetch_array($result3))
{
$parentid=$r3['parentid'];
}

$Query2 = "update articleclass set child=child-1 where classid=\"$parentid\" ";
$result2 = mysql_query($Query2, $mysql_link); 

$Query = "DELETE FROM articleclass WHERE classid='$id'";
$result = mysql_query($Query, $mysql_link); 
$Query1 = "DELETE FROM article WHERE classid='$id'";
$result1 = mysql_query($Query1, $mysql_link);  


echo "<script language=javascript>alert('操作成功');history.back();</script>"; 
}
//关闭数据库连结
mysql_close($mysql_link);
?>