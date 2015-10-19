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
        alert("请输入栏目名称!")
        document.myform.name.focus();
        return false;
    }
    if (document.myform.classorder.value=="")
	{
        alert("请输入栏目顺序!")
        document.myform.classorder.focus();
        return false;
    }
if(result==false)
{
        alert("栏目顺序必须为正整数!")
        document.myform.classorder.focus();
        return false;
}
}
</SCRIPT>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑栏目</td></tr>
</table>
	
<?
$admin_classid=$_SESSION['admin_classid'];
$id=$_GET['id'];
$Query1 = "select * from articleclass where classid='$id'";

$result1 = mysql_query($Query1, $mysql_link); 
?>
<?if($r1=mysql_fetch_array($result1))
{
?>



<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="save_articleclass.php" method=post onsubmit="return checkform()">
<tr bgcolor=f0f0f0><td width=80>
<strong>所属栏目：</strong>
</td>
<td>
<select name="parentid">
<option value="0">作为一级栏目</option>
<?
$sql="select * from articleclass where parentid=0 order by classid asc";
$result=mysql_query($sql);
while($r=mysql_fetch_array($result))
{
?>
<option value="<?echo $r["classid"];?>" <?if($r1['parentid']==$r["classid"]){?>selected<?}?>><?echo $r["name"];?></option>
<?}?>
</select>


</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>栏目名称：</strong></td><td><input name="name" style="width:120" value="<?echo $r1['name']?>"> 必填
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>栏目顺序：</strong></td><td><input name="classorder" style="width:120" value="<?echo $r1['classorder']?>"> 必填且必须为大于0的整数 
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>外部链接：</strong></td><td><input name="url" style="width:120" value="<?echo $r1['url']?>"> 当文章为外部链接时填写
</td></tr>

<tr bgcolor=f0f0f0><td>
<strong>显示位置：</strong></td><td><input type="radio" name="position" value=1 <?if($r1['position']==1){?>checked<?}?>> 顶部&nbsp;&nbsp;<input type="radio" name="position" value=2 <?if($r1['position']==2){?>checked<?}?>> 左侧&nbsp;&nbsp;<input type="radio" name="position" value=3 <?if($r1['position']==3){?>checked<?}?>> 右侧&nbsp;&nbsp;<input type="radio" name="position" value=4 <?if($r1['position']==4){?>checked<?}?>> 底部&nbsp;&nbsp;
<input type="radio" name="position" value=0 <?if($r1['position']==0){?>checked<?}?>> 中部
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>显示方式：</strong></td><td><input type="radio" name="ctype" value=1  <?if($r1['ctype']==1){?>checked<?}?>> 文字列表<img src="webimg/1.jpg">&nbsp;&nbsp;<input type="radio" name="ctype" value=2  <?if($r1['ctype']==2){?>checked<?}?>> 图文列表一<img src="webimg/2.jpg">&nbsp;&nbsp;<input type="radio" name="ctype" value=3  <?if($r1['ctype']==3){?>checked<?}?>> 图文列表二<img src="webimg/3.jpg">&nbsp;&nbsp;<input type="radio" name="ctype" value=4  <?if($r1['ctype']==4){?>checked<?}?>> 图文列表三<img src="webimg/4.jpg">
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



