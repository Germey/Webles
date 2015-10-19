<?php
session_start();
require("check_admin.php");
?>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">

<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 网站后台操作说明</td></tr>
</table>
	




<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>一、如何添加管理员</strong>
</td>
</tr>
<tr><td>
点击左侧用户管理下的添加用户，进入添加用户的页面，按照提示输入信息，注：有效期限为管理员的管理期限，管理期限一到，该管理员即不可再登录后台。


</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>二、如何为管理员分配权限</strong>
</td>
</tr>
<tr><td>
点击左侧用户管理下的编辑用户，进入编辑用户的页面，这个页面显示了所有管理员。点击修改即可修改该管理员的用户名和密码，以及其所有管理权限。
如果你想赋予管理员某种权限，请在该权限前面打勾，反之不选。

</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>三、如何为网站新增栏目</strong>
</td>
</tr>
<tr><td>
点击左侧文章管理下的添加栏目，进入添加文章栏目页面，按照提示输入各项信息。如果栏目不是外部链接，则该项可以不填。如果栏目要在网站顶部出现，则显示位置应为顶部。

</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>四、如何添加新文章</strong>
</td>
</tr>
<tr><td>
点击左侧文章管理下的添加文章，进入添加文章页面，按照提示输入各项信息。如果文章标题要改颜色或字形，可以点击右边的颜色按钮为标题添加颜色。也可选择右的字形为标题设置字形。修改添加时间可以重新排列文章顺序。如果该文章为外部链接，则需输入外部链接地址。

</td></tr>
</table>
<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>五、如何在文章中插入图片</strong>
</td>
</tr>
<tr><td>
进入添加文章页面后，在文章内容编辑区域，点击下图红线框住的按钮。<br>

<img src=webimg/pic.jpg><br>

弹出如下图显示的插入图片文件的对话框。如果插入的是网络图片，则直接在图片地址框里输入网络图片地址。如果插入图片为已经上传的图片，则点击绿线框住的按钮，选择已经上传的图片。如果插入图片为本地电脑里的图片，则点击蓝线框住的浏览按钮，浏览本地图片，然后点击上传按钮。当图片地址里生成图片路径后，点击红线框住的确定按钮。即完成图片的插入。还可以根据对话框里的其它参数设置图片的其它属性。<br>
<img src=webimg/dialogue1.jpg><br>
</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>六、如何在文章中插入下载文件</strong>
</td>
</tr>
<tr><td>
进入添加文章页面后，在文章内容编辑区域，点击下图红线框住的按钮。<br>

<img src=webimg/pic1.jpg><br>

弹出如下图显示的插入下载文件的对话框。此处不能插入网络远程文件。如果插入文件为已经上传的文件，则点击绿线框住的按钮，选择已经上传的文件。如果插入文件为本地电脑里的文件，则点击蓝线框住的浏览按钮，浏览本地文件，然后点击上传按钮。当图片地址里生成文件路径后，输入下载标题，点击红线框住的确定按钮。即完成下载文件的插入。<br>
<img src=webimg/dialogue2.jpg><br>
</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>七、如何备份数据库</strong>
</td>
</tr>
<tr><td>
点击左侧数据库管理下的备份数据库，即可生成当日数据库的备份文件。<br>
</td></tr>
</table>
<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>八、如何将备份文件下载到本地电脑</strong>
</td>
</tr>
<tr><td>
点击左侧数据库管理下的查看备份，里边显示了所有备份文件，点击其下的下载文件按钮即可下载该备份文件。<br>
</td></tr>
</table>
<table bgcolor=dddddd cellpadding=5 cellspacing=1 cellspacing=0 width=100%>

<tr bgcolor=f0f0f0><td style="color:red">
<strong>九、遇到其它解决不了的问题怎么办</strong>
</td>
</tr>
<tr><td>
如果还有其它解决不了的问题，请联系：<br>
手机：13153148199<br>
QQ：18634657<br>
E-mail：clazy1981@163.com<br>
联系人：吴润根
<br>
</td></tr>
</table>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>



