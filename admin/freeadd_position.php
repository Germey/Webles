<?php
session_start();
require("check_admin.php");
require("config.php");
?>






<script language = "JavaScript">
function getcolor()
{
col = websn_getTblCol();
document.all["classcolor"].value="#"+col
document.all["classcolor"].style.background=document.all["classcolor"].value
document.all["classcolor"].style.color=document.all["classcolor"].value
document.all["title"].style.color=document.all["classcolor"].value
}
function gettype()
{
    if (document.myform.classtype.value==1)
	{
document.all["title"].style.fontWeight=800
document.all["title"].style.fontStyle=""
    }
    if (document.myform.classtype.value==2)
	{
document.all["title"].style.fontWeight=""
document.all["title"].style.fontStyle="italic"
    }
    if (document.myform.classtype.value==3)
	{
document.all["title"].style.fontWeight=800
document.all["title"].style.fontStyle="italic"
    }
    if (document.myform.classtype.value==0)
	{
document.all["title"].style.fontWeight=""
document.all["title"].style.fontStyle=""
    }
}


function CheckForm()
{

    if (document.myform.type.value=="")
	{
        alert("��ѡ��һ����Ŀ!")
        document.myform.type.focus();
        return false;
    }
  return true;  
}

</SCRIPT>



<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">
<SCRIPT src="editor.js"></SCRIPT>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �����Ŀλ��</td></tr>
</table>
	




<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_position.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right><strong>������Ŀ��</strong></td>
<td>
<script   language   =   "JavaScript">   
  var   onecount;   
  onecount=0;   
  subcat   =   new   Array();   
 
  <?   
$admin_classid=$_SESSION['admin_classid'];

  $sql   =   "select   *   from   articleclass   where   parentid!=0 and classid IN ($admin_classid) order by classid asc";  

  $result   =   mysql_query(   $sql   );   
  $count   =   0;   
  while($res   =   mysql_fetch_array($result)){   
  ?>   
  subcat[<?   echo   $count;   ?>]   =   new   Array("<?   echo   $res["name"];   ?>","<?   echo   $res["parentid"];   ?>","<?   echo   $res["classid"];   ?>");   
  <?   
  $count++;   
  }   
  echo   "onecount=$count";   
  ?>   
    
    
    
  function   changelocation(locationid)   
          {   
          document.myform.ctype.length   =   0;     
    
          var   locationid=locationid;   
          var   i;   
          for   (i=0;i   <   onecount;   i++)   
                  {   
                          if   (subcat[i][1]   ==   locationid)   
                          {     
                                  document.myform.ctype.options[document.myform.ctype.length]   =   new   Option(subcat[i][0],   subcat[i][2]);   
                          }                   
                  }   
                    
          }           
  </script>   
    

  <select   name="type"   onChange="changelocation(document.myform.type.options[document.myform.type.selectedIndex].value)"   size="1">   
  <option   selected   value="">��ѡ��һ����Ŀ</option>   
       <?   

        $sql   =   "select   *   from   articleclass   where   parentid=0 and classid IN ($admin_classid) order by classid asc";   

        $result   =   mysql_query(   $sql   );   
        while($res   =   mysql_fetch_array($result)){   
    ?>   
    
          <option   value="<?   echo   $res["classid"];   ?>"><?   echo   $res["name"];   ?></option>   
      <?   }   ?>   
                    
                </select>     
                            
    
    
��ѡ���ʾ���޸���Ŀ


</td>
</tr>
<tr bgcolor=f0f0f0><td align=right><strong>λ�ñ�ʶ��</strong></td><td><input name="p_id" style="width:100"> ����������ʶλ��</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>��ɫ���Σ�</strong></td><td><input  onfocus="this.blur()" name="title" style="width:200;border:0" value="��ʾ��Ŀ����ɫ������" > <input name="classcolor" style="width:100;border:1 solid black;height:20"> <input type="button" onclick="getcolor()" value="��ɫ">

<select name="classtype" onchange="gettype()">
           <option value="1">����</option>
           <option value="2">б��</option>
           <option value="3">��+б</option>
           <option value="0">����</option>
          </select> 
 ����

</td></tr>

<tr bgcolor=f0f0f0><td align=right><strong>��ʾ������</strong></td><td><input name="shownum"> ����ָ����ʾ�ļ�¼��</td></tr>

    <tr bgcolor=f0f0f0>
<td></td>
    <td align=left height=50>


      <input
  name="Add" type="submit"  id="Add" value=" ��&nbsp;&nbsp;��" style="cursor: hand;background-color: #cccccc;">
      &nbsp;&nbsp; 
      <input name="Cancel" type="button" id="Cancel" value=" ȡ&nbsp;&nbsp;�� " onclick="javascript:window.location='position_edit.php'" style="cursor: hand;background-color: #cccccc;">
 </td></tr>


</form>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>
<object id="dlgColHelperTbl" classid="clsid:3050f819-98b5-11cf-bb82-00aa00bdce0b" width="0px" height="0px"></object>

<?
mysql_close($mysql_link);
?>
