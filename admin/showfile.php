<?php
session_start();
require("check_admin.php");
?>
<?

#�޶�ͼƬ��ʾ��С����ԭ������
function show_pic_scal($width,$height,$picpath){
 $imginfo=GetImageSize($picpath);
 $imgw=$imginfo[0];
 $imgh=$imginfo[1];

 $ra=number_format(($imgw/$imgh),1);//��߱�
 $ra2=number_format(($imgh/$imgw),1);//�߿��

 if ($imgw > $width OR $imgh > $height)
 {
  if ($imgw > $imgh)
  {
   $newWidth=$width;
   $newHeight=round($newWidth/$ra);
   
  }
  elseif ($imgw < $imgh)
  {
   $newHeight=$height;
   $newWidth=round($newHeight/$ra2);
  }
  else
  {
   $newWidth=$width;
   $newHeight=round($newWidth/$ra);
  }
 }
 else
 {
  $newHeight=$imgh;
  $newWidth=$imgw;
 }
 $newsize[0]=$newWidth;
 $newsize[1]=$newHeight;

 return $newsize;
}

?>
<html>
<head>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>��ʾ�����ļ�</title>
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
//���ͼƬ�ļ�
$upload_path="../upload/";
$num=0;
//��photo�ļ���
if ($handle = opendir($upload_path)) {
//��ȡ�ļ�������ļ�
while (false !== ($file = readdir($handle)))
{
   //������ʽɸѡ�ļ�����ȡ�ļ�������Ϣ
   if ( preg_match( "/[.]jpg|JPG|gif|png|bmp|jpeg|doc|docx|ppt|xls|rar|zip|rm|ram|rmvb|avi|wmv|mpg|mpeg|asf|swf$/", $file ) ) {
    preg_match( "/_(\d+)_(\d+)[.]/", $file, $found );
    //��ӡ��ȡ���ļ���Ϣ
$num=$num+1;



?>
<?
if($num>($page-1)*$page_num&&$num<($page*$page_num)+1)
{
?>
<div style="float:left;width:120;height:140;margin-left:30;margin-bottom:0;font-size:9pt;color:888888" align=center valign=top>
<div id="file<?echo $num;?>" style="width:100;height:100;border:1 solid #cccccc;text-align:center" onclick="change_color('file<?echo $num;?>','<?echo $file;?>')">

<!--�ж���չ��-->
<?
$str_array=explode('.',$file); 
$extent=$str_array[(count($str_array)-1)];
if($extent=='jpg'||$extent=='gif'||$extent=='png'||$extent=='jpeg'|$extent=='JPG')
{
$picpath="../upload/".$file;

$min_size=show_pic_scal(100,100,$picpath);
?>
<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>
<img src=<?echo $picpath;?> border=0 width="<?echo $min_size[0];?>" height="<?echo $min_size[1];?>"></td>
</tr>
</table>

<?
}
?>

<!--�ж���չ��-->
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

<!--�ж���չ��-->
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

<!--�ж���չ��-->
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

<!--�ж���չ��-->
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
<!--�ж���չ��-->
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
<!--�ж���չ��-->
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
<!--�ж���չ��-->
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

<div style="border:solid 1 #d1d1d1;padding:5;background:f0f0f0">
<a href="unlink.php?file=../upload/<?echo $file;?>">
ɾ���ļ�
</a>
</div>

</div>

</div>


<?

}

   }
}
//�ر��ļ���
closedir($handle);
}
?>
<div style="clear:both;font-size:9pt" align=center>
��<font color=red><?echo $num;?></font>���ļ�&nbsp;<?echo $page_num?>��/ҳ&nbsp;
<?

$n=ceil($num/$page_num);
for($i=1;$i<=$n;$i++)
{
?>

<a href=showfile.php?page=<?echo $i;?> <?if($i==$page){?>
style="color:red;font-weight:800;font-size:12pt"<?}?>><?echo $i;?></a>
<?
}
?>
</div>

<?
exit;
?>
