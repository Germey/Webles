<?php
session_start();
require("config.php");
require("check_admin.php");
?>
<?
$name=$_POST['name'];
$phone=$_POST['phone'];
$ip=$_POST['ip'];
$address=$_POST['address'];
$title=$_POST['title'];
$adddate=$_POST['adddate'];
$content=$_POST['content'];
$reply=$_POST['reply'];
$pass=$_POST['pass'];
$Query = "
    INSERT INTO 
      gbook
    (
      name
      ,title
      ,phone
      ,content
      ,adddate
      ,ip
      ,address
      ,reply
      ,pass
     )
    VALUES
    (
      '$name'
      ,'$title'
      ,'$phone'
      ,'$content'
      ,'$adddate'
      ,'$ip'
      ,'$address'
      ,'$reply'
      ,'$pass'
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

echo "<script language=javascript>alert('��ӳɹ�!');window.location='gbook.php';</script>"; 

mysql_close($mysql_link);
?>