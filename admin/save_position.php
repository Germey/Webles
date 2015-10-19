<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$type=$_POST['type'];
$ctype=$_POST['ctype'];
if($ctype==null)
{
$classid=$type;
}
if($ctype!="")
{
$classid=$ctype;
}
$id=$_POST['id'];
$p_id=$_POST['p_id'];
$classcolor=$_POST['classcolor'];
$classtype=$_POST['classtype'];
$shownum=$_POST['shownum'];
if($type==null)
{
$Query = "update position set
classcolor=\"$classcolor\",p_id=\"$p_id\",classtype=\"$classtype\",shownum=\"$shownum\" where id=\"$id\" ";
}
else
{
$Query = "update position set
classid=\"$classid\",p_id=\"$p_id\",classcolor=\"$classcolor\",classtype=\"$classtype\",shownum=\"$shownum\" where id=\"$id\" ";
}
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

echo "<script language=javascript>alert('保存成功');window.location='position_edit.php';</script>"; 

mysql_close($mysql_link);
?>