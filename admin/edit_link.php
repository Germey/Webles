<?php
session_start();
require("check_admin.php");
require("config.php");
?>


<script language = "JavaScript">
function CheckForm()
{
    if (document.myform.linkname.value=="")
	{
        alert("链接名称不能为空!")
        document.myform.linkname.focus();
        return false;
    }

  if (document.myform.linkurl.value=="")
  {
    alert("链接地址不能为空!");
        document.myform.linkurl.focus();
        return false;
  }

  return true;  
}
</script>
<script language="javascript">
function pic()
{


  var arr = showModalDialog("getpic.html", "", "dialogWidth:500px; dialogHeight:200px; help: no; scroll: no; status: no");  
   myform.imgurl.value=arr;
}
</script>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 编辑链接</td></tr>
</table>
<?
$id=$_GET['id'];
$Query1 = "select * from link  where linkid='$id'";
$result1 = mysql_query($Query1, $mysql_link); 
?>
<?if($r1=mysql_fetch_array($result1))
{
?>
<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="save_link.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right><strong>链接栏目：</strong></td>
<td>
<select   name="classid" >   
                    
    <?

        $sql   =   "select   *   from   linkclass order by classorder asc,classid asc"; 


        $result   =   mysql_query(   $sql   );   
        while($res   =   mysql_fetch_array($result)){   
    ?>   
    
          <option   value="<?   echo   $res["classid"];   ?>" <?if($r1['classid']==$res["classid"]){?>selected<?}?>><?   echo   $res["name"];   ?></option>   
      <?   }   ?>   
                    
                </select>     

</td>
</tr>
<tr bgcolor=f0f0f0><td align=right><strong>链接名称：</strong></td><td><input name="linkname" style="width:200" value="<?echo $r1["linkname"];?>"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>链接地址：</strong></td><td><input name="linkurl" style="width:200" value="<?echo $r1["linkurl"];?>"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>图片地址：</strong></td><td><input name="imgurl" style="width:200" value="<?echo $r1["imgurl"];?>">&nbsp;<input type="button" value="上传图片" onclick="pic()"></td></tr>

</tr>
    <tr bgcolor=f0f0f0>
<td></td>
     <td align=left height=50>
<input type="hidden" name="id" value="<?echo $r1["linkid"];?>">
      <input
  name="Add" type="submit"  id="Add" value=" 保&nbsp;&nbsp;存" style="cursor: hand;background-color: #cccccc;">

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