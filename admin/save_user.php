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
 
/*�ж�SQL����ִ���Ƿ���������������ʾ����ʧ�ܣ� 
��������Ӧ�Ĵ���š���ִ�гɹ�����ʾ���Է��ͳɹ�*/ 
if (! $result) { 
  $errno = mysql_errno(); 
  $error = mysql_error(); 
  echo '<html><head><title>Error</title></head><body>'; 
  echo 'SQL����ʧ��.'; 
  echo "<br>Error: ($errno) $error<br>"; 
  echo '</body></html>'; 
  exit(); 
} 

echo "<script language=javascript>alert('����ɹ�');window.location='user_edit.php';</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>