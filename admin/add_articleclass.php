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
$Query = "
    INSERT INTO 
      articleclass
    (
      name
      ,parentid
      ,classorder
      ,position
      ,url
      ,ctype
     )
    VALUES
    (
      '$name'
      ,'$parentid'
      ,'$classorder'
      ,'$position'
      ,'$url'
      ,'$ctype'
    )
   ";
$result = mysql_query($Query, $mysql_link); 

$Query1 = "update articleclass set child=child+1 where classid=\"$parentid\" ";
$result1 = mysql_query($Query1, $mysql_link); 

 
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

echo "<script language=javascript>alert('����ɹ�');window.location='articleclass_edit.php';</script>"; 

//�ر����ݿ�����
mysql_close($mysql_link);
?>