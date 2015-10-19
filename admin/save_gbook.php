<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_POST['id'];
$name=$_POST['name'];
$phone=$_POST['phone'];
$ip=$_POST['ip'];
$address=$_POST['address'];
$title=$_POST['title'];
$adddate=$_POST['adddate'];
$content=$_POST['content'];
$reply=$_POST['reply'];
$pass=$_POST['pass'];
$Query = "update gbook set name='$name',phone='$phone',ip='$ip',address='$address',adddate='$adddate',title='$title',content='$content',reply='$reply',pass='$pass' where id='$id' ";
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

echo "<script language=javascript>alert('保存成功');window.location='gbook.php';</script>"; 

//关闭数据库连结
mysql_close($mysql_link);
?>