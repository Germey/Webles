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
function TestRgexp(re, s){   
     return re.test(s)
}

function checkform()
{ 
    if (document.myform.name.value=="")
	{
        alert("��������վ����!")
        document.myform.name.focus();
        return false;
    }
    
}
</SCRIPT>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �����վ����</td></tr>
</table>
	




<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="add_title.php" method=post onsubmit="return checkform()">
<tr bgcolor=f0f0f0><td width=80>
<strong>��վ���⣺</strong></td><td><textarea name="name" style="width:300;height:100"></textarea> ����
</td></tr>

<tr bgcolor=f0f0f0>
<td></td>
<td>
<input
  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">
      &nbsp;&nbsp; 
      <input name="Cancel" type="button" id="Cancel" value=" ȡ&nbsp;&nbsp;�� " onclick="javascript:window.location='title_edit.php'" style="cursor: hand;background-color: #cccccc;">


</td></tr>
</form>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>




