<?php
session_start();
require("config.php");
require("check_admin.php");
$admin_classid=$_SESSION['admin_classid'];
?>


<html>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link rel="STYLESHEET" type="text/css" href="style.css">
    <script type="text/javascript" charset="gbk" src="/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="gbk" src="/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="gbk" src="/ueditor/lang/zh-cn/zh-cn.js"></script>

    <style type="text/css">
        div{
            width:100%;
        }
    </style>

<script language = "JavaScript">
function getfile1()
{
  var arr = showModalDialog("getfile.html", "", "dialogWidth:500px; dialogHeight:200px; help: no; scroll: no; status: no");  
   document.myform.urllink.value=arr;
}
function getpic()
{
  var arr = showModalDialog("getpic.html", "", "dialogWidth:500px; dialogHeight:200px; help: no; scroll: no; status: no");  
   document.myform.DefaultPicUrl.value=arr;
}
function CheckForm()
{
getContent();
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
  return true;  
}
</script>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    function getContent() {
        var arr = [];
        arr.push(UE.getEditor('editor').getContent());
        mytext=arr.join("\n");
        document.getElementById('content').value=mytext.replace(/img/g,'iimmgg')
    }
</script>
</HEAD>

<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 添加文章</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_art.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right><strong>文章栏目：</strong></td>
<td>
<script   language   =   "JavaScript">   
  var   onecount;   
  onecount=0;   
  subcat   =   new   Array();   
 
  <?   

  $sql   =   "select   *   from   articleclass   where   parentid!=0 and classid IN ($admin_classid) order by classorder asc";  
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

        $sql   =   "select   *   from   articleclass   where   parentid=0 and classid IN ($admin_classid) order by position asc,classorder asc";   

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










<tr bgcolor=f0f0f0><td align=right><strong>文章标题：</strong></td><td><input name="title" style="width:400px">
 必填

</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>文章作者：</strong></td><td><input name="writer" style="width:200px"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>文章来源：</strong></td><td><input name="source" style="width:200px"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>添加时间：</strong></td><td><input name="adddate" value="<?echo date("Y-m-d H:i:s");?>" style="width:200px"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>外部链接：</strong></td><td><input name="urllink" style="width:400px"> <input type="button" onclick="getfile1()" value="上传文件"> 当文章为外部链接时填写</td></tr>

<tr bgcolor=f0f0f0>
<td width=100 align=right>
<strong>文章内容：</strong>
</td>
<td>

<script id="editor" type="text/plain" style="width:900px;height:300px;"></script>

<textarea name="content" id="content" style="width:800px;height:200px;display:none"></textarea>
</td>
</tr>
<tr bgcolor=f0f0f0><td align=right><strong>文章排序：</strong></td><td><input name="paixu" style="width:60px" value="0"></td></tr>
          <tr bgcolor=f0f0f0> 
            <td width="100" align="right"><strong>包含图片：</strong></td>
            <td colspan="2"><input name="IncludePic" type="checkbox" id="IncludePic" value="1" style="border: 0px;background-color: #eeeeee;">
              是<font color="#0066cc">（如果选中的话会在标题前面显示[图文]）</font></td>
          </tr>
          <tr bgcolor=f0f0f0> 
            <td width="100" align="right"><strong>文章属性：</strong></td>
            <td colspan="2"><input name="istop" type="checkbox" id="istop" value="1" style="border: 0px;background-color: #eeeeee;">
              固顶&nbsp;&nbsp;<input name="ishot" type="checkbox" id="ishot" value="1" style="border: 0px;background-color: #eeeeee;">
              热点&nbsp;&nbsp;<input name="isrec" type="checkbox" id="isrec" value="1" style="border: 0px;background-color: #eeeeee;">
              推荐</td>
          </tr>
<tr bgcolor=f0f0f0> 
            <td width="100" align="right"><strong>首页图片：</strong></td>
            <td colspan="2"><input name="DefaultPicUrl" type="text" id="DefaultPicUrl" size="56" maxlength="200">  <input type="button" onclick="getpic()" value="上传图片">
            </td>
          </tr>
    <tr bgcolor=f0f0f0>
<td></td>
     <td align=left height=50>
      <input
  name="Add" type="submit"  id="Add" value=" 保&nbsp;&nbsp;存" style="cursor: hand;background-color: #cccccc;">
 </td></tr>

</form>

</table>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>

</body>
</html>

