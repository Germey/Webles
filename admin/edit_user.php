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
        alert("�������û�����!")
        document.myform.user.focus();
        return false;
    }
    if (document.myform.passwd.value=="")
	{
        alert("�������û�����!")
        document.myform.passwd.focus();
        return false;
    }
    if (document.myform.expire.value=="")
	{
        alert("��������Ч����!")
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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �༭�û�</td></tr>
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
<strong>�û����ƣ�</strong></td><td><input name="user" style="width:120" value="<?echo $r2['user'];?>"> ����
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>�û����룺</strong></td><td><input name="passwd" style="width:120" value="<?echo $r2['passwd'];?>"> ����
</td></tr>
<tr bgcolor=f0f0f0><td width=80>
<strong>������</strong></td><td><input type="radio" name="admin_class" value=1 onclick=checkall() <?if($r2['class']==1){?>checked<?}?>> ��������Ա&nbsp;&nbsp;<input type="radio" name="admin_class" value=0 <?if($r2['class']==0){?>checked<?}?>> ��ͨ����Ա
</td></tr>
<tr bgcolor=f0f0f0><td>
<strong>��Ч���ޣ�</strong></td><td><input name="expire" style="width:120"  value="<?echo $r2['expire'];?>"> ���Ĭ��Ϊ90��
</td></tr>
<tr bgcolor=f0f0f0><td width=80>
<strong>������Ŀ��</strong>
<br>

<font color=red>
������ѡ��һ��
</font>


</td>
<td>
<b>�û�����</b><input type="checkbox" name="admin_item[]" value=����û� <?if(strchr($r2["item"],"����û�")!=null){?>checked<?}?>>����û�&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭�û� <?if(strchr($r2["item"],"�༭�û�")!=null){?>checked<?}?>>�༭�û�<br><br>

<b>���¹���</b><input type="checkbox" name="admin_item[]" value=�����Ŀ <?if(strchr($r2["item"],"�����Ŀ")!=null){?>checked<?}?>>�����Ŀ&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭��Ŀ <?if(strchr($r2["item"],"�༭��Ŀ")!=null){?>checked<?}?>>�༭��Ŀ&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=������� <?if(strchr($r2["item"],"�������")!=null){?>checked<?}?>>�������&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭���� <?if(strchr($r2["item"],"�༭����")!=null){?>checked<?}?>>�༭����&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�鿴����վ <?if(strchr($r2["item"],"�鿴����վ")!=null){?>checked<?}?>>�鿴����վ<br><br>

<b>���ӹ���</b><input type="checkbox" name="admin_item[]" value=������ <?if(strchr($r2["item"],"������")!=null){?>checked<?}?>>������&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭��� <?if(strchr($r2["item"],"�༭���")!=null){?>checked<?}?>>�༭���&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=������� <?if(strchr($r2["item"],"�������")!=null){?>checked<?}?>>�������&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭���� <?if(strchr($r2["item"],"�༭����")!=null){?>checked<?}?>>�༭����<br><br>


<b>��Ƶ����</b><input type="checkbox" name="admin_item[]" value=�����Ƶ <?if(strchr($r2["item"],"�����Ƶ")!=null){?>checked<?}?>>�����Ƶ&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭��Ƶ <?if(strchr($r2["item"],"�༭��Ƶ")!=null){?>checked<?}?>>�༭��Ƶ<br><br>

<b>����ͼƬ��</b><input type="checkbox" name="admin_item[]" value=��ӹ���ͼƬ <?if(strchr($r2["item"],"��ӹ���ͼƬ")!=null){?>checked<?}?>>��ӹ���ͼƬ&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭����ͼƬ <?if(strchr($r2["item"],"�༭����ͼƬ")!=null){?>checked<?}?>>�༭����ͼƬ<br><br>


<b>����ͼ�꣺</b><input type="checkbox" name="admin_item[]" value=��Ӹ���ͼ�� <?if(strchr($r2["item"],"��Ӹ���ͼ��")!=null){?>checked<?}?>>��Ӹ���ͼ��&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�༭����ͼ�� <?if(strchr($r2["item"],"�༭����ͼ��")!=null){?>checked<?}?>>�༭����ͼ��<br><br>



<b>���ݿ����</b><input type="checkbox" name="admin_item[]" value=�������ݿ� <?if(strchr($r2["item"],"�������ݿ�")!=null){?>checked<?}?>>�������ݿ�&nbsp;&nbsp;<input type="checkbox" name="admin_item[]" value=�鿴���� <?if(strchr($r2["item"],"�鿴����")!=null){?>checked<?}?>>�鿴����<br><br>








</td></tr>
<tr bgcolor=f0f0f0><td width=80>
<strong>������Ŀ��</strong><br>
<font color=red>
������ѡ��һ��
</font>
<br><br>

ѡ��ʱ��ѡ��һ����Ŀ����ѡ�������Ŀ


</td>
<td>


<?
$Query = "select * from articleclass where parentid=0 order by position asc, classorder asc,classid asc";
$result = mysql_query($Query, $mysql_link); 
?>
<table width=400 cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif width=20></td>
<td background=images/topbar_bg.gif width=50>��ĿID</td>
<td background=images/topbar_bg.gif width=120>һ����Ŀ</td>
<td background=images/topbar_bg.gif width=120>������Ŀ</td>
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
  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">



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

