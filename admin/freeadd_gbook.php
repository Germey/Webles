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

<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �������</td></tr>
</table>
	

<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_gbook.php" method=post>
<tr bgcolor=f0f0f0><td align=right width=80><strong>������</strong></td><td><input name="name" style="width:400;">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>�绰��</strong></td><td><input name="phone" style="width:400;">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>ʱ�䣺</strong></td><td><input name="adddate" style="width:400;"  value="<?echo date("Y-m-d H:i:s");?>">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>IP��</strong></td><td><input name="ip" style="width:400;">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>��ַ��</strong></td><td><input name="address" style="width:400;">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>���⣺</strong></td><td style="color:red;font-weight:800"><input name="title" style="width:400;">
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>���ݣ�</strong></td><td><textarea name="content" style="width:400;height:120"></textarea>
</td></tr>
<tr bgcolor=f0f0f0><td align=right width=80><strong>�ظ���</strong></td><td><textarea name="reply" style="width:400;height:120"></textarea>
</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>��ˣ�</strong></td><td><input type="radio" name="pass" value=1 checked> ͨ�� <input type="radio" name="pass" value=0> ��ͨ��
</td></tr>



    <tr bgcolor=f0f0f0>
<td></td>
    <td align=left height=50>

      <input  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">
 </td></tr>


</form>
</table>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>
