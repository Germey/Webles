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
var re=/^[0-9]*[1-9][0-9]*$/ ; 
var s = document.myform.classorder.value;
var result = TestRgexp(re , s); 


    if (document.myform.name.value=="")
	{
        alert("请输入类别名称!")
        document.myform.name.focus();
        return false;
    }
    if (document.myform.classorder.value=="")
	{
        alert("请输入类别顺序!")
        document.myform.classorder.focus();
        return false;
    }
if(result==false)
{
        alert("类别顺序必须为正整数!")
        document.myform.classorder.focus();
        return false;
}
}
</SCRIPT>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑链接类别</td></tr>
</table>
	
<?
$id=$_GET['id'];
$Query1 = "select * from linkclass where classid='$id'";
$result1 = mysql_query($Query1, $mysql_link); 
?>
<?if($r1=mysql_fetch_array($result1))
{
?>



<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="save_linkclass.php" method=post onsubmit="return checkform()">
<tr bgcolor=f0f0f0><td width=80>
<strong>类别名称：</strong></td><td><input name="name" style="width:120" value="<?echo $r1['name']?>"> 必填
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>类别顺序：</strong></td><td><input name="classorder" style="width:120" value="<?echo $r1['classorder']?>"> 必填且必须为大于0的整数 
</td></tr>
<tr bgcolor=f0f0f0>
<td></td>
<td>
<input type="hidden" name="id" value="<?echo $r1['classid']?>">
<input
  name="Add" type="submit"  id="Add" value=" 保&nbsp;&nbsp;存" style="cursor: hand;background-color: #cccccc;">



</td></tr>
<tr><td height=10></td></tr>
</form>
</table>

<?
}
?>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>
<?
mysql_close($mysql_link);
?>



