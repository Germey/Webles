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

        alert("请先点编辑器下方的“编辑”按钮,再保存！");
        return false;
}
    if (document.myform.type.value=="")
	{
        alert("请选择一级栏目!")
        document.myform.type.focus();
        return false;
    }
    if (document.myform.title.value=="")
	{
        alert("文章标题不能为空!")
        document.myform.title.focus();
        return false;
    }

  if (document.myform.Content.value=="")
  {
    alert("文章内容不能为空!");
	editor.HtmlEdit.focus();
	return false;
  }
 if (document.myform.Content.value.length>2048000)
  {
    alert("文章内容太长，建议将文章分成几部分录入。");
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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 在线投稿</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_tougao.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right><strong>文章栏目：</strong></td>
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
  <option   selected   value="">请选择一级栏目</option>   
                    
    <?   

        $sql   =   "select   *   from   articleclass   where   parentid=0 and web=1 order by classid asc";   

        $result   =   mysql_query(   $sql   );   
        while($res   =   mysql_fetch_array($result)){   
    ?>   
    
          <option   value="<?   echo   $res["classid"];   ?>"><?   echo   $res["name"];   ?></option>   
      <?   }   ?>   
                    
                </select>     
            
          <select   name="ctype">                                       
                  <option   selected   value="">请选择二级栏目</option>   
          </select>   


    


<?
mysql_close($mysql_link);
?>
</td>
</tr>










<tr bgcolor=f0f0f0><td align=right><strong>文章标题：</strong></td><td><input name="title" style="width:300"> <input name="titlefontcolor" style="width:100;border:1 solid black;height:20;color:;background:;" onfocus="this.blur()" type="hidden"> <input type="button" onclick="getcolor()" value="颜色">

<select name="titlefonttype" onchange="gettype()">
           <option value="0" selected>字形</option>
           <option value="1">粗体</option>
           <option value="2">斜体</option>
           <option value="3">粗+斜</option>
           <option value="0">规则</option>
          </select> 
 必填

</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>文章作者：</strong></td><td><input name="writer" style="width:200"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>文章来源：</strong></td><td><input name="source" style="width:200"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>添加时间：</strong></td><td><input name="adddate" value="<?echo date("Y-m-d h:i:s");?>" style="width:200"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>外部链接：</strong></td><td><input name="urllink" style="width:200"> 当文章为外部链接时填写</td></tr>
<tr bgcolor=f0f0f0>
<td width=100 align=right>
<strong>文章内容：</strong>
<p align="left"><font color="#0066cc">
                &middot;　换行请按</font><font color="#FF6600">Shift+Enter</font><br>
                <font color="#0066cc">&middot;　另起一段请按</font><font color="#FF6600">Enter</font><br>
              </p>
</td>
<td>

<iframe ID="editor" src="editor1.html" frameborder=1 scrolling=no width="800" height="400"></iframe>

</td>
</tr>
          <tr bgcolor=f0f0f0 style="display:none"> 
            <td width="100" align="right"><strong>包含图片：</strong></td>
            <td colspan="2"><input name="IncludePic" type="checkbox" id="IncludePic" value="1" style="border: 0px;background-color: #eeeeee;">
              是<font color="#0066cc">（如果选中的话会在标题前面显示[图文]）</font></td>
          </tr>
          <tr bgcolor=f0f0f0 style="display:none"> 
            <td width="100" align="right"><strong>文章属性：</strong></td>
            <td colspan="2"><input name="istop" type="checkbox" id="istop" value="1" style="border: 0px;background-color: #eeeeee;">
              固顶&nbsp;&nbsp;<input name="ishot" type="checkbox" id="ishot" value="1" style="border: 0px;background-color: #eeeeee;">
              热点&nbsp;&nbsp;<input name="isrec" type="checkbox" id="isrec" value="1" style="border: 0px;background-color: #eeeeee;">
              推荐</td>
          </tr>
<tr bgcolor=f0f0f0 style="display:none"> 
            <td width="100" align="right"><strong>首页图片：</strong></td>
            <td colspan="2"><input name="DefaultPicUrl" type="text" id="DefaultPicUrl" size="56" maxlength="200">
              用于在首页的图片文章处显示 <br>
              直接从上传图片中选择： 
              <select name="DefaultPicList" id="DefaultPicList" onChange="DefaultPicUrl.value=this.value;">
                <option selected>不指定首页图片</option>
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
  name="Add" type="submit"  id="Add" value=" 提&nbsp;&nbsp;交" style="cursor: hand;background-color: #cccccc;">
      &nbsp;&nbsp; 
      <input name="Cancel" type="button" id="Cancel" value=" 返&nbsp;&nbsp;回 " onclick="javascript:window.location='../master/index.php'" style="cursor: hand;background-color: #cccccc;">
 </td></tr>


</form>
</table>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>



<object id="dlgColHelperTbl" classid="clsid:3050f819-98b5-11cf-bb82-00aa00bdce0b" width="0px" height="0px"></object>

