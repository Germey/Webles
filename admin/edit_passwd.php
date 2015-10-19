<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<link rel="stylesheet" type="text/css" href="site.css">
<link rel="STYLESHEET" type="text/css" href="editor.css">
<SCRIPT LANGUAGE="JavaScript">
function checkform()
{ 
    if (document.myform.old_passwd.value=="")
	{
        alert("请输入旧密码!")
        document.myform.old_passwd.focus();
        return false;
    }
    if (document.myform.new_passwd.value=="")
	{
        alert("请输入新密码!")
        document.myform.new_passwd.focus();
        return false;
    }

}

</SCRIPT>

<table bgcolor=f0f0f0 cellpadding=10 cellspacing=0 width=100%>
<tr><td style="font-weight:800;color:white" bgcolor=555555>修改用户密码</td></tr>
<form name="myform" method=post action="save_passwd.php" onsubmit="return checkform()">
<tr><td>用户名：<font color=red><?echo $_SESSION["admin_user"]?></font></td></tr>
<tr><td>旧密码：<input name="old_passwd" type="password" style="width:200"></td></tr>
<tr><td>新密码：<input name="new_passwd" type="password" style="width:200"></td></tr>

</td>
</tr>
<tr><td><input type="submit" value="修改"></td></tr>
</table>


</td>
</tr>




</form>
</table>



