<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$type=$_POST['type'];
$ctype=$_POST['ctype'];
if($ctype==null)
{
$classid=$type;
}
if($ctype!="")
{
$classid=$ctype;
}
$id=$_POST['id'];
$p_id=$_POST['p_id'];
$classcolor=$_POST['classcolor'];
$classtype=$_POST['classtype'];
$shownum=$_POST['shownum'];
$Query = "
    INSERT INTO 
      position
    (
      p_id
      ,classid
      ,classcolor
      ,classtype
      ,shownum
     )
    VALUES
    (
      '$p_id'
      ,'$classid'
      ,'$classcolor'
      ,'$classtype'
      ,'$shownum'
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

echo "<script language=javascript>alert('����ɹ�');window.location='position_edit.php';</script>"; 

mysql_close($mysql_link);
?>