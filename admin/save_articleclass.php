<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$name=$_POST['name'];
$parentid=$_POST['parentid'];
$classorder=$_POST['classorder'];
$position=$_POST['position'];
$url=$_POST['url'];
$ctype=$_POST['ctype'];
$id=$_POST['id'];

$Query1 = "select * from articleclass where classid='$id'";
$result1 = mysql_query($Query1, $mysql_link); 
if($r1=mysql_fetch_array($result1))
{
$parentid1=$r1['parentid'];
}
if($parentid!=$parentid1)
{
$Query2 = "update articleclass set child=child-1 where classid=\"$parentid1\" ";
$result2 = mysql_query($Query2, $mysql_link); 


$Query3 = "update articleclass set child=child+1 where classid=\"$parentid\" ";
$result3 = mysql_query($Query3, $mysql_link); 

}

$Query = "update articleclass set name=\"$name\",parentid=\"$parentid\",classorder=\"$classorder\",position=\"$position\",url=\"$url\",ctype=\"$ctype\" where classid=\"$id\" ";
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

echo "<script language=javascript>alert('保存成功');window.location='articleclass_edit.php';</script>"; 

//关闭数据库连结
mysql_close($mysql_link);
?>