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
?>
<?
$Query = "
    INSERT INTO 
      admin
    (
      user
      ,passwd
      ,class
      ,expire
 
     )
    VALUES
    (
      '$user'
      ,'$passwd'
      ,'$class'
      ,'$expire'
    )
   ";
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