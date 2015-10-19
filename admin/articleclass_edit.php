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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑文章栏目</td></tr>
</table>



<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<tr><td>

<?
$admin_classid=$_SESSION['admin_classid'];

$Query = "select * from articleclass where parentid=0 order by position asc, classorder asc,classid asc";

$result = mysql_query($Query, $mysql_link); 
?>
<table width=100% cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif width=50>栏目ID</td>
<td background=images/topbar_bg.gif width=120>一级栏目</td>
<td background=images/topbar_bg.gif width=120>二级栏目</td>
<td background=images/topbar_bg.gif>栏目顺序</td>
<td background=images/topbar_bg.gif>栏目位置</td>
<td background=images/topbar_bg.gif>显示方式</td>
<td background=images/topbar_bg.gif>外部链接</td>
<td background=images/topbar_bg.gif>操作</td>
</tr>
<?
while($r=mysql_fetch_array($result))
{
$parentid=$r["classid"];
?>
<tr bgcolor=f0f0f0>
<td><?echo $r["classid"];?></td>
<td><?echo $r["name"];?></td>
<td></td>
<td><?echo $r["classorder"];?></td>
<td><?
if($r["position"]=='0')
{
echo "中部";
}
if($r["position"]=='1')
{
echo "顶部";
}
if($r["position"]=='2')
{
echo "左侧";
}
if($r["position"]=='3')
{
echo "右侧";
}
if($r["position"]=='4')
{
echo "底部";
}
?>



</td>
<td><?

if($r["ctype"]=='1')
{
echo "文字列表";
}
if($r["ctype"]=='2')
{
echo "图文列表一";
}
if($r["ctype"]=='3')
{
echo "图文列表二";
}
if($r["ctype"]=='4')
{
echo "图文列表三";
}
?>



</td>
<td><?echo $r["url"];?></td>

<td>
<a href="freeadd_articleclass.php?classid=<?echo $r["classid"];?>">添加子栏目</a>&nbsp;&nbsp;
<a href="edit_articleclass.php?id=<?echo $r["classid"];?>">修改</a>&nbsp;&nbsp;

<a href="del_articleclass.php?id=<?echo $r["classid"];?>" onclick='{if(confirm("您确定删除吗?此操作将不能恢复!")){return true;}return false;}'>删除</a>

</td>
</tr>
<?

$Query1 = "select * from articleclass where parentid='$parentid' order by position asc,classorder asc,classid asc";

$result1 = mysql_query($Query1, $mysql_link); 
while($r1=mysql_fetch_array($result1))
{
?>
<tr bgcolor=f0f0f0>
<td style="color:red"><?echo $r1["classid"];?></td>
<td></td>
<td style="color:red"><?echo $r1["name"];?></td>
<td style="color:red"><?echo $r1["classorder"];?></td>
<td style="color:red"><?
if($r1["position"]=='0')
{
echo "中部";
}
if($r1["position"]=='1')
{
echo "顶部";
}
if($r1["position"]=='2')
{
echo "左侧";
}
if($r1["position"]=='3')
{
echo "右侧";
}
if($r1["position"]=='4')
{
echo "底部";
}
?>



</td>
<td><?

if($r1["ctype"]=='1')
{
echo "文字列表";
}
if($r1["ctype"]=='2')
{
echo "图文列表一";
}
if($r1["ctype"]=='3')
{
echo "图文列表二";
}
if($r1["ctype"]=='4')
{
echo "图文列表三";
}
?>



</td>
<td style="color:red"><?echo $r1["url"];?></td>

<td style="color:red">

<a href="edit_articleclass.php?id=<?echo $r1["classid"];?>" style="color:red">修改</a>&nbsp;&nbsp;

<a href="del_articleclass.php?id=<?echo $r1["classid"];?>" onclick='{if(confirm("您确定删除吗?此操作将不能恢复!")){return true;}return false;}' style="color:red">删除</a>

</td>
</tr>









<?
}
?>

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