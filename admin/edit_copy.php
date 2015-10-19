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
function showhtml()
{
editor.HtmlEdit.document.body.innerHTML=document.all["Content"].value
}
window.onload=showhtml
function CheckForm()
{
  if (editor.EditMode==true)
{
	  document.myform.Content.value=editor.HtmlEdit.document.body.innerHTML; 
}
  else
{

        alert("请先点编辑器下方的“编辑”按钮,再保存！");
        return false;
}

  return true;  
}
</script>
<link rel="STYLESHEET" type="text/css" href="style.css">
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑网站版权</td></tr>
</table>
<?
$id=$_GET['id'];
$Query1 = "select * from copy  where id='$id'";
$result1 = mysql_query($Query1, $mysql_link); 
?>
<?if($r1=mysql_fetch_array($result1))
{
?>
<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="save_copy.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right>
<strong>网站版权内容：</strong>
<p align="left"><font color="#0066cc">
                &middot;　换行请按</font><font color="#FF6600">Shift+Enter</font><br>
                <font color="#0066cc">&middot;　另起一段请按</font><font color="#FF6600">Enter</font><br>
              </p>
</td>
<td>

<iframe ID="editor" src="editor.html" frameborder=0 scrolling=no width="800" height="330"></iframe>

</td>
</tr>





<tr style="display:none">
<td></td>
<td>
<textarea name="Content"><?echo $r1["content"];?></textarea>
<input type="hidden" name="id" value=<?echo $r1["id"];?>>
</td>
</tr>
    <tr bgcolor=f0f0f0>
<td></td>
     <td align=left height=50>
      <input  name="Add" type="submit"  id="Add" value=" 保&nbsp;&nbsp;存" style="cursor: hand;background-color: #cccccc;">
      &nbsp;&nbsp; 
      <input name="Cancel" type="button" id="Cancel" value=" 显示原内容 " onclick="showhtml()" style="cursor: hand;background-color: #cccccc;">
 </td></tr>


</form>
</table>
<?}?>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>
<?
mysql_close($mysql_link);
?>