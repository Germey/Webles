<?php session_start(); ?>
<title>后台管理系统登录</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<LINK href="style.css" type=text/css rel=stylesheet>
<body bgcolor=F3EDDC>
<table width=100% height=100%>
<tr>
<td align=center>

<TABLE WIDTH=580 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD COLSPAN=3>
			<IMG SRC="images/login_1.jpg" WIDTH=580 HEIGHT=33 ALT=""></TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/login_2.jpg" WIDTH=123 HEIGHT=133 ALT=""></TD>
		<TD background="images/login_3.jpg" WIDTH=273 HEIGHT=133 align=center valign=top style="padding-top:10">
<SCRIPT LANGUAGE="JavaScript">
function checkform()
{ 
    if (document.myform.admin_user.value=="")
	{
        alert("请输入用户名!")
        document.myform.admin_user.focus();
        return false;
    }
    if (document.myform.admin_passwd.value=="")
	{
        alert("请输入密码!")
        document.myform.admin_passwd.focus();
        return false;
    }

}

</SCRIPT>			
<table>
<form name="myform" action="login.php" method=post onsubmit="return checkform()">
<tr>
<td style="color:5D4501" style="padding-left:25">
用户名：<input name="admin_user" style="width:100;border:1;background:DBCFAE;color:5D4501"></td>
</tr>
<tr>
<td style="color:5D4501" style="padding-left:25">密&nbsp;&nbsp;码：<input type="password" name="admin_passwd" style="width:100;border:1;background:DBCFAE;color:5D4501">
</td>
</tr>
<tr>
<td align=center height=40>

<input type="image" src=login.gif align=absbottom>
&nbsp;&nbsp;

<input type="button" style="border:0;background:url('return_home.gif');width:82;height:25" onclick="javascript:window.location='../index.php'" align=absbottom>
</td>
</tr>
<tr>
<td>

</td>
</tr>

</form>
</table>







</TD>
		<TD>
			<IMG SRC="images/login_4.jpg" WIDTH=184 HEIGHT=133 ALT=""></TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/login_5.jpg" WIDTH=123 HEIGHT=122 ALT=""></TD>
		<TD>
			<IMG SRC="images/login_6.jpg" WIDTH=273 HEIGHT=122 ALT=""></TD>
		<TD>
			<IMG SRC="images/login_7.jpg" WIDTH=184 HEIGHT=122 ALT=""></TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/login_8.jpg" WIDTH=123 HEIGHT=131 ALT=""></TD>
		<TD>
			<IMG SRC="images/login_9.jpg" WIDTH=273 HEIGHT=131 ALT=""></TD>
		<TD>
			<IMG SRC="images/login_10.jpg" WIDTH=184 HEIGHT=131 ALT=""></TD>
	</TR>
</TABLE>









</td>
</tr>
</table>

