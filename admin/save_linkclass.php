<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$name=$_POST['name'];
$classorder=$_POST['classorder'];
$id=$_POST['id'];
$Query = "update linkclass set name=\"$name\",classorder=\"$classorder\" where classid=\"$id\" ";
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

echo "<script language=javascript>alert('����ɹ�');window.location='linkclass_edit.php';</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>