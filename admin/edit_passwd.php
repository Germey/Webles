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
        alert("�����������!")
        document.myform.old_passwd.focus();
        return false;
    }
    if (document.myform.new_passwd.value=="")
	{
        alert("������������!")
        document.myform.new_passwd.focus();
        return false;
    }

}

</SCRIPT>

<table bgcolor=f0f0f0 cellpadding=10 cellspacing=0 width=100%>
<tr><td style="font-weight:800;color:white" bgcolor=555555>�޸��û�����</td></tr>
<form name="myform" method=post action="save_passwd.php" onsubmit="return checkform()">
<tr><td>�û�����<font color=red><?echo $_SESSION["admin_user"]?></font></td></tr>
<tr><td>�����룺<input name="old_passwd" type="password" style="width:200"></td></tr>
<tr><td>�����룺<input name="new_passwd" type="password" style="width:200"></td></tr>

</td>
</tr>
<tr><td><input type="submit" value="�޸�"></td></tr>
</table>


</td>
</tr>




</form>
</table>



