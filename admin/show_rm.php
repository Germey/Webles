<?php
session_start();
require("check_admin.php");
?>
<html>
<head>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>��ʾrealplay�ļ�</title>
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
	document.all[theDiv].style.border = "2 solid #316AC5";
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
$page_num=20;
//���ͼƬ�ļ�
$upload_path="../upload/";
$num=0;
//��photo�ļ���
if ($handle = opendir($upload_path)) {
//��ȡ�ļ�������ļ�
while (false !== ($file = readdir($handle)))
{
   //������ʽɸѡ�ļ�����ȡ�ļ�������Ϣ
   if ( preg_match( "/[.]rm|ram|rmvb$/", $file ) ) {
    preg_match( "/_(\d+)_(\d+)[.]/", $file, $found );
    //��ӡ��ȡ���ļ���Ϣ
$num=$num+1;



?>
<?
if($num>($page-1)*$page_num&&$num<($page*$page_num)+1)
{
?>
<div style="float:left;width:120;height:140;margin-left:30;margin-bottom:0;font-size:9pt;color:888888" align=center valign=top>
<div id="file<?echo $num;?>" style="width:100;height:100;border:1 solid #cccccc;text-align:center" onclick="change_color('file<?echo $num;?>','<?echo $file;?>')" ondblclick="returnfile('<?echo "upload/".$file;?>')">

<table width=100 height=100 cellpadding=0 cellspacing=0 bgcolor=white>
<tr>
<td  align=center>
<img src=rm.jpg></td>
</tr>
</table>

</div>

<div style="height:30;text-align:center;padding-top:10"><?echo $file;?></div>
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

<a href=show_pic.php?page=<?echo $i;?> <?if($i==$page){?>
style="color:red;font-weight:800;font-size:12pt"<?}?>><?echo $i;?></a>
<?
}
?>
</div>

<?
exit;
?>
