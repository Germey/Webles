<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">

<script language="javascript">
function pic()
{


  var arr = showModalDialog("getpic.html", "", "dialogWidth:500px; dialogHeight:200px; help: no; scroll: no; status: no");  
   document.myform.imgurl.value=arr;
}
</script>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �༭����ͼ��</td></tr>
</table>
	


<?
$id=$_GET['id'];
$Query1 = "select * from floatimg  where id='$id'";
$result1 = mysql_query($Query1, $mysql_link); 
?>
<?if($r1=mysql_fetch_array($result1))
{
?>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="save_floatimg.php" method=post>

<tr bgcolor=f0f0f0><td align=right><strong>ͼƬ��ַ��</strong></td><td><input name="imgurl" style="width:300" value="<?echo $r1["imgurl"];?>">
<input type="button" value="�ϴ�ͼƬ" onclick="javascript:pic()">
</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>���ӵ�ַ��</strong></td><td><input name="linkurl" style="width:300" value="<?echo $r1["linkurl"];?>">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>��ʾλ�ã�</strong></td><td>
<input type="radio" name="position" value=0  <?if($r1['position']==0){?>checked<?}?>> ������&nbsp;&nbsp;<input type="radio" name="position" value=1  <?if($r1['position']==1){?>checked<?}?>> ���&nbsp;&nbsp;<input type="radio" name="position" value=2  <?if($r1['position']==2){?>checked<?}?>> �Ҳ�
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>��ʾ״̬��</strong></td><td>
<input type="radio" name="pass" value=1   <?if($r1['pass']==1){?>checked<?}?>> ��ͨ&nbsp;&nbsp;<input type="radio" name="pass" value=0  <?if($r1['pass']==0){?>checked<?}?>> �ر�

</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>��ʾ˳��</strong></td><td><input name="paixu" style="width:60" value="<?echo $r1["paixu"];?>">
</td></tr>
<tr bgcolor=f0f0f0>
<td></td>
<td>
<input type="hidden" name="id" value="<?echo $r1["id"];?>">
<input
  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">

</td></tr>
</form>
</table>
<?}?>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>
<?
mysql_close($mysql_link);
?>


