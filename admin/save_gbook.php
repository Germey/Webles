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

echo "<script language=javascript>alert('����ɹ�');window.location='gbook.php';</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>