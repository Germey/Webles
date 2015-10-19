<?php
session_start();
require("check_admin.php");
?>


<html>
<head>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>显示下载文件</title>
<base target="_self"></base>
<LINK href="style.css" type=text/css rel=stylesheet>
</head>
<script language="javascript">
lastDiv = null;
function change_color(theDiv,filename) {
	if (lastDiv) {
		document.all[lastDiv].style.border = "1 solid #CCCCCC";
	}
	lastDiv = theDiv;
	document.all[theDiv].style.border = "1 solid #316AC5";
}
function returnfile(filename) {
	window.parent.returnValue =filename;
	window.parent.close();	
}
</script>
<body topmargin=20>


<?php
$page=$_GET['page'];
if($page==null)
{
$page=1;
}
$page_num=32;
//存放图片文件
$upload_path="../upload";
$num=0;
//打开photo文件夹
if ($handle = opendir($upload_path)) {
//读取文件夹里的文件
while (false !== ($file = readdir($handle)))
{
   //正则表达式筛选文件并读取文件名的信息
   if ( preg_match( "/[.]sql$/", $file ) ) {
    preg_match( "/_(\d+)_(\d+)[.]/", $file, $found );
    //打印读取的文件信息
$num=$num+1;



?>
<?
if($num>($page-1)*$page_num&&$num<($page*$page_num)+1)
{
?>
<div style="float:left;width:120;height:140;margin-left:30;margin-bottom:0;font-size:9pt;color:888888" align=center valign=top>
<div id="file<?echo $num;?>" style="width:100;height:100;border:1 solid #cccccc;text-align:center" onclick="change_color('file<?echo $num;?>','<?echo $file;?>')">

<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='jpg'||$extent=='gif'||$extent=='png'||$extent=='jpeg')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>
<img src="../upload/<?echo $file;?>" onload="javascript:if(this.width>=this.height&&this.width>100)this.width=100;if(this.width<this.height&&this.height>100)this.height=100;"></td>
</tr>
</table>

<?
}
?>

<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='rar'||$extent=='zip')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=rar.jpg></td>
</tr>
</table>

<?
}
?>

<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='swf')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=swf.jpg></td>
</tr>
</table>

<?
}
?>
<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='sql')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=txt.jpg></td>
</tr>
</table>

<?
}
?>
<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='rm'||$extent=='ram'||$extent=='rmvb')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=rm.jpg></td>
</tr>
</table>

<?
}
?>

<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='avi'||$extent=='wmv'||$extent=='mpg'||$extent=='mpeg'||$extent=='asf')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=wmv.jpg></td>
</tr>
</table>

<?
}
?>
<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='doc'||$extent=='docx')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=doc.jpg></td>
</tr>
</table>

<?
}
?>
<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='xls')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=xls.jpg></td>
</tr>
</table>

<?
}
?>
<!--判断扩展名-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='ppt')
{
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>

<img src=ppt.jpg></td>
</tr>
</table>

<?
}
?>
</div>

<div style="text-align:center;padding-top:10"><?echo $file;?></div>
<div style="height:30;text-align:center;padding:10">

<div style="border:solid 1 #d1d1d1;padding:5;background:f0f0f0;margin-bottom:5">
<a href="unlink1.php?file=../upload/<?echo $file;?>">
删除文件
</a>
</div>
<div style="border:solid 1 #d1d1d1;padding:5;background:f0f0f0">
<a href="../downloadfile.php?path=<?echo $file;?>">
下载文件
</a>
</div>



</div>

</div>


<?

}

   }
}
//关闭文件夹
closedir($handle);
}
?>
<div style="clear:both;font-size:9pt" align=center>
共<font color=red><?echo $num;?></font>个文件&nbsp;<?echo $page_num?>个/页&nbsp;
<?

$n=ceil($num/$page_num);
for($i=1;$i<=$n;$i++)
{
?>

<a href=?page=<?echo $i;?> <?if($i==$page){?>
style="color:red;font-weight:800;font-size:12pt"<?}?>><?echo $i;?></a>
<?
}
?>
</div>

<?
exit;
?>
