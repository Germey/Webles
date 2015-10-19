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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑浮动图标</td></tr>
</table>



<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<tr><td>

<?

$Query = "select * from floatimg order by id desc";

$result = mysql_query($Query, $mysql_link); 
?>
<table width=100% cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif>ID</td>
<td background=images/topbar_bg.gif>图片</td>
<td background=images/topbar_bg.gif>链接</td>
<td background=images/topbar_bg.gif>位置</td>
<td background=images/topbar_bg.gif>排序</td>
<td background=images/topbar_bg.gif>状态</td>
<td background=images/topbar_bg.gif>操作</td>
</tr>
<?
while($r=mysql_fetch_array($result))
{
?>
<tr bgcolor=f0f0f0>
<td><?echo $r["id"];?></td>
<td><img src="../<?echo $r["imgurl"];?>"  width=100 height=100></td>
<td><?echo $r["linkurl"];?></td>
<td>

<?
if($r["position"]=='0')
{
echo "满屏跑";
}
if($r["position"]=='1')
{
echo "左侧";
}
if($r["position"]=='2')
{
echo "右侧";
}

?>

</td>
<td>
<?echo $r["paixu"];?>


</td>
<td>

<?
if($r["pass"]=='0')
{
echo "关闭";
}
if($r["pass"]=='1')
{
echo "开通";
}
?>
</td>
<td>

<a href="edit_floatimg.php?id=<?echo $r["id"];?>">修改</a>&nbsp;&nbsp;

<a href="del_floatimg.php?id=<?echo $r["id"];?>" onclick='{if(confirm("您确定删除吗?此操作将不能恢复!")){return true;}return false;}'>删除</a>

</td>
</tr>

<?
}
?>

</table>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>

<?
mysql_close($mysql_link);
?>