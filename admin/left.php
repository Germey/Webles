<?php
session_start();
require("check_admin.php");
?>
<LINK href="style.css" type=text/css rel=stylesheet>
<body bgcolor=ffffff>

<table width=100% cellpadding=0 cellspacing=0>
<tr><td>�û���<?echo $_SESSION["admin_user"];?></td></tr>
</table>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td><a href=edit_passwd.php target="editor">�޸�����</a></a></td>
<td><a href=exit.php>�˳�ϵͳ</a></td>
</tr>
</table>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>�û�����</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"����û�")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_user.php target="editor">����û�</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭�û�")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=user_edit.php target="editor">�༭�û�</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
</table>


<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>���¹���</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"�����Ŀ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_articleclass.php target="editor">�����Ŀ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭��Ŀ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=articleclass_edit.php target="editor">�༭��Ŀ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�������")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_art.php target="editor">�������</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭����")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=art_edit.php target="editor">�༭����</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�鿴����վ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=recycle.php target="editor">�鿴����վ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>

</table>


<br>

<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>���ӹ���</td>
</tr>

<?if(strchr($_SESSION["admin_item"],"������")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_linkclass.php target="editor">������</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭���")!=null)
{
?>

<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=linkclass_edit.php target="editor">�༭���</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�������")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_link.php target="editor">�������</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭����")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=link_edit.php target="editor">�༭����</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>

</table>

<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>��Ƶ����</td>
</tr>

<?if(strchr($_SESSION["admin_item"],"�����Ƶ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_video.php target="editor">�����Ƶ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭��Ƶ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=video_edit.php target="editor">�༭��Ƶ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
</table>
<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>����ͼƬ</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"��ӹ���ͼƬ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_focus.php target="editor">��ӹ���ͼƬ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭����ͼƬ")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=focus_edit.php target="editor">�༭����ͼƬ</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
</table>

<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>����ͼ��</td>
</tr>
<?if(strchr($_SESSION["admin_item"],"��Ӹ���ͼ��")!=null)
{
?>

<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=freeadd_floatimg.php target="editor">��Ӹ���ͼ��</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�༭����ͼ��")!=null)
{
?>

<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=floatimg_edit.php target="editor">�༭����ͼ��</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>

<?
}
?>
</table>



<br>
<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>���ݿ����</td>
</tr>

<?if(strchr($_SESSION["admin_item"],"�������ݿ�")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=../upload/backup.php target="editor">�������ݿ�</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>
<?if(strchr($_SESSION["admin_item"],"�鿴����")!=null)
{
?>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=show_sql.php target="editor">�鿴����</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<?
}
?>

</table>

<table width=100% cellpadding=0 cellspacing=0>
<tr>
<td height=30 background="images/l_back.jpg" style="font-weight:800"><img src=images/arrow1.gif><img src=images/spacer.gif width=5 height=1>��̨����˵��</td>
</tr>
<tr>
<td height=25><img src=images/arrow.gif><img src=images/spacer.gif width=5 height=1><a href=welcome.php target="editor">�鿴����˵��</a></td>
</tr>
<tr><td height=1 bgcolor=d1d1d1></td></tr>
<br>