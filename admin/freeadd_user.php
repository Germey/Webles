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
        alert("请输入用户名称!")
        document.myform.user.focus();
        return false;
    }
    if (document.myform.passwd.value=="")
	{
        alert("请输入用户密码!")
        document.myform.passwd.focus();
        return false;
    }
    if (document.myform.expire.value=="")
	{
        alert("请输入有效期限!")
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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 添加用户</td></tr>
</table>
	




<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="add_user.php" method=post onsubmit="return checkform()">
<tr bgcolor=f0f0f0><td width=80>
<strong>用户名称：</strong></td><td><input name="user" style="width:120"> 必填
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>用户密码：</strong></td><td><input name="passwd" style="width:120"> 必填
</td></tr>
<tr bgcolor=f0f0f0 style="display:none"><td width=80>
<strong>管理级别：</strong></td><td><input type="radio" name="admin_class" value=1 onclick=checkall()> 超级管理员&nbsp;&nbsp;<input type="radio" name="admin_class" value=0 checked> 普通管理员
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>有效期限：</strong></td><td><input name="expire" style="width:120" value="<?
echo date('Y-m-d',time()+3600*24*90);?>"> 必填，默认为90天
</td></tr>


<tr bgcolor=f0f0f0>
<td></td>
<td>
<input
  name="Add" type="submit"  id="Add" value=" 保&nbsp;&nbsp;存" style="cursor: hand;background-color: #cccccc;">

</td></tr>
</form>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>


<?
mysql_close($mysql_link);
?>

