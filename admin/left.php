<?php
session_start();
require("check_admin.php");
?>
<LINK href="style.css" type=text/css rel=stylesheet>
<body bgcolor=ffffff>

<table width=100% cellpadding=0 cellspacing=0>
<tr><td>用户：<?echo $_SESSION["admin_user"];?></td></tr>
</table>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td><a href=edit_passwd.php target="editor">修改密码</a></a></td>
<td><a href=exit.php>退出系统</a></td>
</tr>
</table>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>用户管理</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"添加用户")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_user.php target="editor">添加用户</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑用户")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=user_edit.php target="editor">编辑用户</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
</table>


<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>文章管理</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"添加栏目")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_articleclass.php target="editor">添加栏目</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑栏目")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=articleclass_edit.php target="editor">编辑栏目</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"添加文章")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_art.php target="editor">添加文章</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑文章")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=art_edit.php target="editor">编辑文章</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"查看回收站")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=recycle.php target="editor">查看回收站</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>

</table>


<br>

<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>链接管理</td>
</tr>

<?if(strchr($_SESSION["admin_item"],"添加类别")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_linkclass.php target="editor">添加类别</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑类别")!=null)
{
?>

<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=linkclass_edit.php target="editor">编辑类别</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"添加链接")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_link.php target="editor">添加链接</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑链接")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=link_edit.php target="editor">编辑链接</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>

</table>

<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>视频管理</td>
</tr>

<?if(strchr($_SESSION["admin_item"],"添加视频")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_video.php target="editor">添加视频</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑视频")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=video_edit.php target="editor">编辑视频</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
</table>
<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>滚动图片</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"添加滚动图片")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_focus.php target="editor">添加滚动图片</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑滚动图片")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=focus_edit.php target="editor">编辑滚动图片</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
</table>

<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>浮动图标</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"添加浮动图标")!=null)
{
?>

<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_floatimg.php target="editor">添加浮动图标</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"编辑浮动图标")!=null)
{
?>

<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=floatimg_edit.php target="editor">编辑浮动图标</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>

<?
}
?>
</table>



<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>数据库管理</td>
</tr>

<?if(strchr($_SESSION["admin_item"],"备份数据库")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=../upload/backup.php target="editor">备份数据库</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"查看备份")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=show_sql.php target="editor">查看备份</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>

</table>

<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>后台操作说明</td>
</tr>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=welcome.php target="editor">查看操作说明</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<br>