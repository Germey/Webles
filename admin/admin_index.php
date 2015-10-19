<?php
session_start();
require("check_admin.php");
?>
<title>后台管理系统</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<frameset cols="150,*" frameborder="0">
<frame src=left.php  noresize scrolling=yes>
<frame src=welcome.php  noresize name="editor" scrolling=yes>
</frameset>