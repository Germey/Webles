<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?

$classid=$_POST['classid'];
$linkname=$_POST['linkname'];
$linkurl=$_POST['linkurl'];
$imgurl=$_POST['imgurl'];
$Query = "
    INSERT INTO 
      link
    (
      classid
      ,linkname
      ,linkurl
      ,imgurl
       )
    VALUES
    (
      '$classid'
      ,'$linkname'
      ,'$linkurl'
      ,'$imgurl'
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

echo "<script language=javascript>alert('����ɹ�');window.location='link_edit.php';</script>"; 

mysql_close($mysql_link);
?>