<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$ctype=$_POST['ctype'];
if($_POST['isrec']==1)
{
$isrec=1;
}
else
{
$isrec=0;
}

$id=$_POST['id'];
$title=$_POST['title'];
$writer=$_POST['writer'];
$adddate=$_POST['adddate'];
$linkurl=$_POST['linkurl'];
$content=$_POST['content'];
$imgurl=$_POST['imgurl'];
$Query = "update video set
ctype='$ctype',title='$title',writer='$writer',adddate='$adddate',linkurl='$linkurl',content='$content',isrec='$isrec',imgurl='$imgurl' where id='$id' ";
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

echo "<script language=javascript>alert('����ɹ�');window.location='video_edit.php';</script>"; 

mysql_close($mysql_link);
?>