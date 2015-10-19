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
if($_POST['IncludePic']==1)
{
$ispic=1;
}
else
{
$ispic=0;
}
if($_POST['istop']==1)
{
$istop=1;
}
else
{
$istop=0;
}
if($_POST['ishot']==1)
{
$ishot=1;
}
else
{
$ishot=0;
}
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
$source=$_POST['source'];
$editor=$_SESSION['admin_user'];
$adddate=$_POST['adddate'];
$urllink=$_POST['urllink'];
$content=$_POST['content'];
$content=stripslashes($content);
$content=str_replace("iimmgg","img",$content);
$defaultpic=$_POST['DefaultPicUrl'];
$paixu=$_POST['paixu'];
if($type==null)
{
$Query = "update article set
title='$title',writer='$writer',source='$source',editor='$editor',adddate='$adddate',urllink='$urllink',content='$content',ispic='$ispic',istop='$istop',ishot='$ishot',isrec='$isrec',defaultpic='$defaultpic',paixu='$paixu' where articleid='$id' ";
}
else
{
$Query = "update article set
classid='$classid',title='$title',writer='$writer',source='$source',editor='$editor',adddate='$adddate',urllink='$urllink',content='$content',ispic='$ispic',istop='$istop',ishot='$ishot',isrec='$isrec',defaultpic='$defaultpic',paixu='$paixu' where articleid='$id' ";
}
$result = mysql_query($Query, $mysql_link); 
 
/*判断SQL语句的执行是否发生错误，若是则提示插入失败， 
并给出相应的错误号。若执行成功，提示留言发送成功*/ 
if (! $result) { 
  $errno = mysql_errno(); 
  $error = mysql_error(); 
  echo '<html><head><title>Error</title></head><body>'; 
  echo 'SQL插入失败.'; 
  echo "<br>Error: ($errno) $error<br>"; 
  echo '</body></html>'; 
  exit(); 
} 

echo "<script language=javascript>alert('保存成功');window.location='art_edit.php';</script>"; 

mysql_close($mysql_link);
?>