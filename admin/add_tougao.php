<?php
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


$title=$_POST['title'];
$titlefontcolor=$_POST['titlefontcolor'];
$titlefonttype=$_POST['titlefonttype'];
$writer=$_POST['writer'];
$source=$_POST['source'];
$adddate=$_POST['adddate'];
$urllink=$_POST['urllink'];
$content=$_POST['Content'];
$defaultpic=$_POST['DefaultPicUrl'];
$Query = "
    INSERT INTO 
      article
    (
      classid
      ,title
      ,titlefontcolor
      ,titlefonttype
      ,writer
      ,source
      ,adddate
      ,urllink
      ,shenhe
      ,content
      ,ispic
      ,istop
      ,ishot
      ,isrec
      ,defaultpic
     )
    VALUES
    (
      '$classid'
      ,'$title'
      ,'$titlefontcolor'
      ,'$titlefonttype'
      ,'$writer'
      ,'$source'
      ,'$adddate'
      ,'$urllink'
      ,'0'
      ,'$content'
      ,'$ispic'
      ,'$istop'
      ,'$ishot'
      ,'$isrec'
      ,'$defaultpic'
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

echo "<script language=javascript>alert('�ύ�ɹ�');window.location='tougao.php';</script>"; 

mysql_close($mysql_link);
?>