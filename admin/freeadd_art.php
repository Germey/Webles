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
    <!--�����ֶ��������ԣ�������ie����ʱ��Ϊ��������ʧ�ܵ��±༭������ʧ��-->
    <!--������ص������ļ��Ḳ������������Ŀ����ӵ��������ͣ���������������Ŀ�����õ���Ӣ�ģ�������ص����ģ�������������-->
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
  return true;  
}
</script>
<script type="text/javascript">

    //ʵ�����༭��
    //����ʹ�ù�������getEditor���������ñ༭��ʵ���������ĳ���հ������øñ༭����ֱ�ӵ���UE.getEditor('editor')�����õ���ص�ʵ��
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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �������</td></tr>
</table>

<table bgcolor=dddddd cellpadding=5 cellspacing=1 width=100%>
<form name="myform" action="add_art.php" method=post onSubmit="return CheckForm();">
<tr bgcolor=f0f0f0>
<td width=100 align=right><strong>������Ŀ��</strong></td>
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
  <option   selected   value="">��ѡ��һ����Ŀ</option>   
                    
    <?   

        $sql   =   "select   *   from   articleclass   where   parentid=0 and classid IN ($admin_classid) order by position asc,classorder asc";   

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










<tr bgcolor=f0f0f0><td align=right><strong>���±��⣺</strong></td><td><input name="title" style="width:400px">
 ����

</td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>�������ߣ�</strong></td><td><input name="writer" style="width:200px"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>������Դ��</strong></td><td><input name="source" style="width:200px"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>���ʱ�䣺</strong></td><td><input name="adddate" value="<?echo date("Y-m-d H:i:s");?>" style="width:200px"></td></tr>
<tr bgcolor=f0f0f0><td align=right><strong>�ⲿ���ӣ�</strong></td><td><input name="urllink" style="width:400px"> <input type="button" onclick="getfile1()" value="�ϴ��ļ�"> ������Ϊ�ⲿ����ʱ��д</td></tr>

<tr bgcolor=f0f0f0>
<td width=100 align=right>
<strong>�������ݣ�</strong>
</td>
<td>

<script id="editor" type="text/plain" style="width:900px;height:300px;"></script>

<textarea name="content" id="content" style="width:800px;height:200px;display:none"></textarea>
</td>
</tr>
<tr bgcolor=f0f0f0><td align=right><strong>��������</strong></td><td><input name="paixu" style="width:60px" value="0"></td></tr>
          <tr bgcolor=f0f0f0> 
            <td width="100" align="right"><strong>����ͼƬ��</strong></td>
            <td colspan="2"><input name="IncludePic" type="checkbox" id="IncludePic" value="1" style="border: 0px;background-color: #eeeeee;">
              ��<font color="#0066cc">�����ѡ�еĻ����ڱ���ǰ����ʾ[ͼ��]��</font></td>
          </tr>
          <tr bgcolor=f0f0f0> 
            <td width="100" align="right"><strong>�������ԣ�</strong></td>
            <td colspan="2"><input name="istop" type="checkbox" id="istop" value="1" style="border: 0px;background-color: #eeeeee;">
              �̶�&nbsp;&nbsp;<input name="ishot" type="checkbox" id="ishot" value="1" style="border: 0px;background-color: #eeeeee;">
              �ȵ�&nbsp;&nbsp;<input name="isrec" type="checkbox" id="isrec" value="1" style="border: 0px;background-color: #eeeeee;">
              �Ƽ�</td>
          </tr>
<tr bgcolor=f0f0f0> 
            <td width="100" align="right"><strong>��ҳͼƬ��</strong></td>
            <td colspan="2"><input name="DefaultPicUrl" type="text" id="DefaultPicUrl" size="56" maxlength="200">  <input type="button" onclick="getpic()" value="�ϴ�ͼƬ">
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

</body>
</html>

