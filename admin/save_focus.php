<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$id=$_POST['id'];
$imgurl=$_POST['imgurl'];
$linkurl=$_POST['linkurl'];
$title=$_POST['title'];
$text=$_POST['text'];
$Query = "update focus set title=\"$title\",imgurl=\"$imgurl\",linkurl=\"$linkurl\",text=\"$text\" where id='$id' ";
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

echo "<script language=javascript>alert('����ɹ�');window.location='focus_edit.php';</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>