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
<script language="javascript">
function CheckForm()
{
  if (editor.EditMode==true)
{
	  document.myform.Content.value=editor.HtmlEdit.document.body.innerHTML; 
}
  else
{

        alert("���ȵ�༭���·��ġ��༭����ť,�ٱ��棡");
        return false;
}

  return true;  
}
</script>
<link rel="STYLESHEET" type="text/css" href="style.css">
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �����վ��Ȩ</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_copy.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right>
<strong>��վ��Ȩ���ݣ�</strong>
<p align="left"><font color="#0066cc">
                &middot;�������밴</font><font color="#FF6600">Shift+Enter</font><br>
                <font color="#0066cc">&middot;������һ���밴</font><font color="#FF6600">Enter</font><br>
              </p>
</td>
<td>

<iframe ID="editor" src="editor.html" frameborder=0 scrolling=no width="800" height="330"></iframe>

</td>
</tr>





<tr style="display:none">
<td></td>
<td>
<textarea name="Content"></textarea>
</td>
</tr>
    <tr bgcolor=f0f0f0>
<td></td>
     <td align=left height=50>
      <input
  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">
 </td></tr>


</form>
</table>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>
<?
mysql_close($mysql_link);
?>