<?php
require("config.php");
?>
<script language = "JavaScript">
function getcolor()
{
col = websn_getTblCol();
document.all["titlefontcolor"].value="#"+col
document.all["titlefontcolor"].style.background=document.all["titlefontcolor"].value
document.all["titlefontcolor"].style.color=document.all["titlefontcolor"].value
document.all["title"].style.color=document.all["titlefontcolor"].value
}
function gettype()
{
    if (document.myform.titlefonttype.value==1)
	{
document.all["title"].style.fontWeight=800
document.all["title"].style.fontStyle=""
    }
    if (document.myform.titlefonttype.value==2)
	{
document.all["title"].style.fontWeight=""
document.all["title"].style.fontStyle="italic"
    }
    if (document.myform.titlefonttype.value==3)
	{
document.all["title"].style.fontWeight=800
document.all["title"].style.fontStyle="italic"
    }
    if (document.myform.titlefonttype.value==0)
	{
document.all["title"].style.fontWeight=""
document.all["title"].style.fontStyle=""
    }
}
</SCRIPT>

<script language = "JavaScript">
function AddItem(strFileName){
  document.myform.IncludePic.checked=true;
  document.myform.DefaultPicUrl.value=strFileName;
  document.myform.DefaultPicList.options[document.myform.DefaultPicList.length]=new Option(strFileName,strFileName);
  document.myform.DefaultPicList.selectedIndex+=1;
  if(document.myform.UploadFiles.value==''){
	document.myform.UploadFiles.value=strFileName;
  }
  else{
    document.myform.UploadFiles.value=document.myform.UploadFiles.value+"|"+strFileName;
  }
}
function selectPaginationType()
{
  document.myform.PaginationType.value=2;
}
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
    if (document.myform.type.value=="")
	{
        alert("��ѡ��һ����Ŀ!")
        document.myform.type.focus();
        return false;
    }
    if (document.myform.title.value=="")
	{
        alert("���±��ⲻ��Ϊ��!")
        document.myform.title.focus();
        return false;
    }

  if (document.myform.Content.value=="")
  {
    alert("�������ݲ���Ϊ��!");
	editor.HtmlEdit.focus();
	return false;
  }
 if (document.myform.Content.value.length>2048000)
  {
    alert("��������̫�������齫���·ֳɼ�����¼�롣");
	editor.HtmlEdit.focus();
	return false;
  }
  return true;  
}
</script>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">
<SCRIPT src="editor.js"></SCRIPT>
<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> ����Ͷ��</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_tougao.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right><strong>������Ŀ��</strong></td>
<td>
<script   language   =   "JavaScript">   
  var   onecount;   
  onecount=0;   
  subcat   =   new   Array();   
 
  <?   
  $sql   =   "select   *   from   articleclass   where   parentid!=0 and web=1 order by classid asc";  

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

        $sql   =   "select   *   from   articleclass   where   parentid=0 and web=1 order by classid asc";   

        $result   =   mysql_query(   $sql   );   
        while($res   =   mysql_fetch_array($result)){   
    ?>   
    
          <option   value="<?   echo   $res["classid"];   ?>"><?   echo   $res["name"];   ?></option>   
      <?   }   ?>   
                    
                </select>     
            
          <select   name="ctype">                                       
                  <option   selected   value="">��ѡ�������Ŀ</option>   
          </select>   


    


<?
mysql_close($mysql_link);
?>
</td>
</tr>










<tr bgcolor=f0f0f0><td align=right><strong>���±��⣺</strong></td><td><input name="title" style="width:300"> <input name="titlefontcolor" style="width:100;border:1 solid black;height:20;color:;background:;" onfocus="this.blur()" type="hidden"> <input type="button" onclick="getcolor()" value="��ɫ">

<select name="titlefonttype" onchange="gettype()">
           <option value="0" selected>����</option>
           <option value="1">����</option>
           <option value="2">б��</option>
           <option value="3">��+б</option>
           <option value="0">����</option>
          </select> 
 ����

</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>�������ߣ�</strong></td><td><input name="writer" style="width:200"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>������Դ��</strong></td><td><input name="source" style="width:200"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>���ʱ�䣺</strong></td><td><input name="adddate" value="<?echo date("Y-m-d h:i:s");?>" style="width:200"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>�ⲿ���ӣ�</strong></td><td><input name="urllink" style="width:200"> ������Ϊ�ⲿ����ʱ��д</td></tr>
<tr bgcolor=f0f0f0>
<td width=100 align=right>
<strong>�������ݣ�</strong>
<p align="left"><font color="#0066cc">
                &middot;�������밴</font><font color="#FF6600">Shift+Enter</font><br>
                <font color="#0066cc">&middot;������һ���밴</font><font color="#FF6600">Enter</font><br>
              </p>
</td>
<td>

<iframe ID="editor" src="editor1.html" frameborder=1 scrolling=no width="800" height="400"></iframe>

</td>
</tr>
          <tr bgcolor=f0f0f0 style="display:none"> 
            <td width="100" align="right"><strong>����ͼƬ��</strong></td>
            <td colspan="2"><input name="IncludePic" type="checkbox" id="IncludePic" value="1" style="border: 0px;background-color: #eeeeee;">
              ��<font color="#0066cc">�����ѡ�еĻ����ڱ���ǰ����ʾ[ͼ��]��</font></td>
          </tr>
          <tr bgcolor=f0f0f0 style="display:none"> 
            <td width="100" align="right"><strong>�������ԣ�</strong></td>
            <td colspan="2"><input name="istop" type="checkbox" id="istop" value="1" style="border: 0px;background-color: #eeeeee;">
              �̶�&nbsp;&nbsp;<input name="ishot" type="checkbox" id="ishot" value="1" style="border: 0px;background-color: #eeeeee;">
              �ȵ�&nbsp;&nbsp;<input name="isrec" type="checkbox" id="isrec" value="1" style="border: 0px;background-color: #eeeeee;">
              �Ƽ�</td>
          </tr>
<tr bgcolor=f0f0f0 style="display:none"> 
            <td width="100" align="right"><strong>��ҳͼƬ��</strong></td>
            <td colspan="2"><input name="DefaultPicUrl" type="text" id="DefaultPicUrl" size="56" maxlength="200">
              ��������ҳ��ͼƬ���´���ʾ <br>
              ֱ�Ӵ��ϴ�ͼƬ��ѡ�� 
              <select name="DefaultPicList" id="DefaultPicList" onChange="DefaultPicUrl.value=this.value;">
                <option selected>��ָ����ҳͼƬ</option>
              </select> <input name="UploadFiles" type="hidden" id="UploadFiles"> 
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
      &nbsp;&nbsp; 
      <input name="Cancel" type="button" id="Cancel" value=" ��&nbsp;&nbsp;�� " onclick="javascript:window.location='../master/index.php'" style="cursor: hand;background-color: #cccccc;">
 </td></tr>


</form>
</table>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>



<object id="dlgColHelperTbl" classid="clsid:3050f819-98b5-11cf-bb82-00aa00bdce0b" width="0px" height="0px"></object>

