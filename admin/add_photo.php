<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?

$title=$_POST['title'];
$imgurl=$_POST['imgurl'];
$linkurl=$_POST['linkurl'];
$Query = "
    INSERT INTO 
      photo
    (
      title
      ,imgurl
      ,linkurl
     )
    VALUES
    (
      '$title'
      ,'$imgurl'
      ,'$linkurl'
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

echo "<script language=javascript>alert('����ɹ�');window.location='photo_edit.php';</script>"; 

mysql_close($mysql_link);
?>