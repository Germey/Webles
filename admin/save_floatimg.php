<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$position=$_POST['position'];
$pass=$_POST['pass'];
$linkurl=$_POST['linkurl'];
$imgurl=$_POST['imgurl'];
$paixu=$_POST['paixu'];
$id=$_POST['id'];
$Query = "update floatimg set position=\"$position\",pass=\"$pass\",linkurl=\"$linkurl\",imgurl=\"$imgurl\",paixu=\"$paixu\" where id=\"$id\" ";
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

echo "<script language=javascript>alert('����ɹ�');window.location='floatimg_edit.php';</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>