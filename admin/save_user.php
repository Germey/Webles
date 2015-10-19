<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$user=$_POST['user'];
$passwd=$_POST['passwd'];
$class=$_POST['admin_class'];
$expire=$_POST['expire'];
$admin_item=$_POST['admin_item'];
$admin_classid=$_POST['admin_classid'];
$classid="'a',"
?>
<?
foreach($admin_item as $v)
{
$item=$item."#".$v."#";
}
foreach($admin_classid as $v)
{
$classid=$classid."'".$v."',";
}
$classid=$classid."'b'";
$id=$_POST['id'];
$Query = "update admin set user=\"$user\",passwd=\"$passwd\",class=\"$class\",expire=\"$expire\",item=\"$item\",classid=\"$classid\" where id=\"$id\" ";
$result = mysql_query($Query, $mysql_link); 
 
/*判断SQL语句的执行是否发生错误，若是则提示插入失败， 
并给出相应的错误号。若执行成功，提示留言发送成功*/ 
if (! $result) { 
  $errno = mysql_errno(); 
  $error = mysql_error(); 
  echo '<html><head><title>Error</title></head><body>'; 
  echo 'SQL插入失败.'; 
  echo "<br>Error: ($errno) $error<br>"; 
  echo '</body></html>'; 
  exit(); 
} 

echo "<script language=javascript>alert('保存成功');window.location='user_edit.php';</script>"; 

//关闭数据库连结
mysql_close($mysql_link);
?>