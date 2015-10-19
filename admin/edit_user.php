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
}


</script>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑用户</td></tr>
</table>
	

<?
$id=$_GET['id'];
$Query2 = "select * from admin where id='$id'";
$result2 = mysql_query($Query2, $mysql_link); 
?>
<?if($r2=mysql_fetch_array($result2))
{
?>


<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<form name="myform" action="save_user.php" method=post onsubmit="return checkform()">
<tr bgcolor=f0f0f0><td width=80>
<strong>用户名称：</strong></td><td><input name="user" style="width:120" value="<?echo $r2['user'];?>"> 必填
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>用户密码：</strong></td><td><input name="passwd" style="width:120" value="<?echo $r2['passwd'];?>"> 必填
</td></tr>
<tr bgcolor=f0f0f0><td width=80>
<strong>管理级别：</strong></td><td><input type="radio" name="admin_class" value=1 onclick=checkall() <?if($r2['class']==1){?>checked<?}?>> 超级管理员&nbsp;&nbsp;<input type="radio" name="admin_class" value=0 <?if($r2['class']==0){?>checked<?}?>> 普通管理员
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>有效期限：</strong></td><td><input name="expire" style="width:120"  value="<?echo $r2['expire'];?>"> 必填，默认为90天
</td></tr>
<tr bgcolor=f0f0f0><td width=80>
<strong>管理项目：</strong>
<br>

<font color=red>
请至少选择一项
</font>


</td>
<td>
<b>用户管理：</b><input type="checkbox" name="admin_item[]" value=添加用户 <?if(strchr($r2["item"],"添加用户")!=null){?>checked<?}?>>添加用户&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑用户 <?if(strchr($r2["item"],"编辑用户")!=null){?>checked<?}?>>编辑用户<br><br>

<b>文章管理：</b><input type="checkbox" name="admin_item[]" value=添加栏目 <?if(strchr($r2["item"],"添加栏目")!=null){?>checked<?}?>>添加栏目&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑栏目 <?if(strchr($r2["item"],"编辑栏目")!=null){?>checked<?}?>>编辑栏目&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=添加文章 <?if(strchr($r2["item"],"添加文章")!=null){?>checked<?}?>>添加文章&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑文章 <?if(strchr($r2["item"],"编辑文章")!=null){?>checked<?}?>>编辑文章&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=查看回收站 <?if(strchr($r2["item"],"查看回收站")!=null){?>checked<?}?>>查看回收站<br><br>

<b>链接管理：</b><input type="checkbox" name="admin_item[]" value=添加类别 <?if(strchr($r2["item"],"添加类别")!=null){?>checked<?}?>>添加类别&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑类别 <?if(strchr($r2["item"],"编辑类别")!=null){?>checked<?}?>>编辑类别&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=添加链接 <?if(strchr($r2["item"],"添加链接")!=null){?>checked<?}?>>添加链接&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑链接 <?if(strchr($r2["item"],"编辑链接")!=null){?>checked<?}?>>编辑链接<br><br>


<b>视频管理：</b><input type="checkbox" name="admin_item[]" value=添加视频 <?if(strchr($r2["item"],"添加视频")!=null){?>checked<?}?>>添加视频&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑视频 <?if(strchr($r2["item"],"编辑视频")!=null){?>checked<?}?>>编辑视频<br><br>

<b>滚动图片：</b><input type="checkbox" name="admin_item[]" value=添加滚动图片 <?if(strchr($r2["item"],"添加滚动图片")!=null){?>checked<?}?>>添加滚动图片&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑滚动图片 <?if(strchr($r2["item"],"编辑滚动图片")!=null){?>checked<?}?>>编辑滚动图片<br><br>


<b>浮动图标：</b><input type="checkbox" name="admin_item[]" value=添加浮动图标 <?if(strchr($r2["item"],"添加浮动图标")!=null){?>checked<?}?>>添加浮动图标&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=编辑浮动图标 <?if(strchr($r2["item"],"编辑浮动图标")!=null){?>checked<?}?>>编辑浮动图标<br><br>



<b>数据库管理：</b><input type="checkbox" name="admin_item[]" value=备份数据库 <?if(strchr($r2["item"],"备份数据库")!=null){?>checked<?}?>>备份数据库&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=查看备份 <?if(strchr($r2["item"],"查看备份")!=null){?>checked<?}?>>查看备份<br><br>








</td></tr>
<tr bgcolor=f0f0f0><td width=80>
<strong>文章栏目：</strong><br>
<font color=red>
请至少选择一项
</font>
<br><br>

选择时先选择一级栏目，再选择二级栏目


</td>
<td>


<?
$Query = "select * from articleclass where parentid=0 order by position asc, classorder asc,classid asc";
$result = mysql_query($Query, $mysql_link); 
?>
<table width=400 cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif width=20></td>
<td background=images/topbar_bg.gif width=50>栏目ID</td>
<td background=images/topbar_bg.gif width=120>一级栏目</td>
<td background=images/topbar_bg.gif width=120>二级栏目</td>
</tr>
<?
while($r=mysql_fetch_array($result))
{
$parentid=$r["classid"];
?>
<tr bgcolor=f0f0f0>
<td><input type="checkbox" name="admin_classid[]" value=<?echo $r["classid"];?> <?if(strchr($r2["classid"],"'".$r["classid"]."'")!=null){?>checked<?}?>></td>
<td><?echo $r["classid"];?></td>
<td><?echo $r["name"];?></td>
<td></td>

</tr>
<?
$Query1 = "select * from articleclass where parentid='$parentid' order by position asc,classorder asc,classid asc";
$result1 = mysql_query($Query1, $mysql_link); 
while($r1=mysql_fetch_array($result1))
{
?>
<tr bgcolor=f0f0f0>
<td><input type="checkbox" name="admin_classid[]" value=<?echo $r1["classid"];?> <?if(strchr($r2["classid"],"'".$r1["classid"]."'")!=null){?>checked<?}?>></td>
<td style="color:red"><?echo $r1["classid"];?></td>
<td></td>
<td style="color:red"><?echo $r1["name"];?></td>
</tr>









<?
}
?>

<?
}
?>

</table>




</td>
</tr>
<tr bgcolor=f0f0f0>
<td></td>
<td>
<input type="hidden" name="id" value="<?echo $r2['id']?>">
<input
  name="Add" type="submit"  id="Add" value=" 保&nbsp;&nbsp;存" style="cursor: hand;background-color: #cccccc;">



</td></tr>
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

