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

<SCRIPT LANGUAGE="JavaScript">
function checkform()
{ 
    if (document.myform.user.value=="")
	{
        alert("�������û�����!")
        document.myform.user.focus();
        return false;
    }
    if (document.myform.passwd.value=="")
	{
        alert("�������û�����!")
        document.myform.passwd.focus();
        return false;
    }
    if (document.myform.expire.value=="")
	{
        alert("��������Ч����!")
        document.myform.expire.focus();
        return false;
    }
}

</SCRIPT>	
<script language="javascript">

function checkall() 
{
for(var i=0;i<myform.elements.length;i++)
  {
  var e=myform.elements[i];
  e.checked=true;
  }
myform.admin_class[0].checked=true
myform.web[0].checked=true
}


</script>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> ����û�</td></tr>
</table>
	




<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="add_user.php" method=post onsubmit="return checkform()">
<tr bgcolor=f0f0f0><td width=80>
<strong>�û����ƣ�</strong></td><td><input name="user" style="width:120"> ����
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>�û����룺</strong></td><td><input name="passwd" style="width:120"> ����
</td></tr>
<tr bgcolor=f0f0f0 style="display:none"><td width=80>
<strong>������</strong></td><td><input type="radio" name="admin_class" value=1 onclick=checkall()> ��������Ա&nbsp;&nbsp;<input type="radio" name="admin_class" value=0 checked> ��ͨ����Ա
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>��Ч���ޣ�</strong></td><td><input name="expire" style="width:120" value="<?
echo date('Y-m-d',time()+3600*24*90);?>"> ���Ĭ��Ϊ90��
</td></tr>


<tr bgcolor=f0f0f0>
<td></td>
<td>
<input
  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">

</td></tr>
</form>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>


<?
mysql_close($mysql_link);
?>

