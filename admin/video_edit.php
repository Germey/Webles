<?php
session_start();
require("check_admin.php");
require("config.php");
$admin_classid=$_SESSION['admin_classid'];
?>

<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">

<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �༭��Ƶ<font color=#cc0000>��������±�������޸ģ�</font></td></tr>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<form action=? method=get name="form1">
<tr><td height=30>
������Ƶ��<input name="keyword">


���  

  <select   name="ctype">   
  <option   selected   value="">ȫ�����</option>   
                    
    <?   

        $sql   =   "select   *   from   articleclass   where   parentid=65 and classid IN ($admin_classid) order by classorder asc";   

        $result   =   mysql_query(   $sql   );   
        while($res   =   mysql_fetch_array($result)){   
    ?>   
    
          <option   value="<?   echo   $res["classid"];   ?>"><?   echo   $res["name"];   ?></option>   
      <?   }   ?>   
                    
                </select>  


<?
mysql_close($mysql_link);
?>

<input type="submit" value="����">

</td>
</tr>
</form>
</table>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<tr><td>
<?
require("config.php");

$keyword=$_GET['keyword'];

$ctype=$_GET['ctype'];

$pagesize=20;
//ȡ�ü�¼������������ҳ����
if($ctype==null)
{
$res=mysql_query("select count(*) from video where title like '%$keyword%' ");
}
else
{
$res=mysql_query("select count(*) from video where title like '%$keyword%' and ctype='$ctype' ");
}
$myrow = mysql_fetch_array($res);
$numrows=$myrow[0];
//������ҳ��
$pages=intval($numrows/$pagesize);
if ($numrows%$pagesize)
$pages++;
//�ж�ҳ�����������������Ϊ��ҳ
if (!isset($page))
$page=1;
//�ж�ת��ҳ��
$ys=$_GET['page'];
if (isset($ys))
if ($ys>$pages)
$page=$pages;
else
$page=$ys;
//�����¼ƫ����
$offset=$pagesize*($page-1);
?>
<?
if($ctype==null)
{
$res=mysql_query("select * from video where title like '%$keyword%' order by adddate desc,id desc limit $offset,$pagesize");
}
else
{
$res=mysql_query("select * from video where title like '%$keyword%' and ctype='$ctype' order by adddate desc,id desc limit $offset,$pagesize");
}
if ($r = mysql_fetch_array($res))
{
$i=0;
?> 
<table width=100% cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<form name="myform" method=get action="">
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif width=20></td>
<td background=images/topbar_bg.gif width=40 align=center>ID</td>
<td background=images/topbar_bg.gif align=center>����</td>
<td background=images/topbar_bg.gif align=center width=120>���</td>
<td background=images/topbar_bg.gif align=center>����</td>
<td background=images/topbar_bg.gif align=center width=120>¼��ʱ��</td>
<td background=images/topbar_bg.gif width=60 align=center>�Ƿ��Ƽ�</td>
</tr>
<?
do 
{
$i++;
?>
<tr bgcolor=f0f0f0>
<td align=center>
<input type=checkbox name="articleid[]" value="<?echo $r["id"];?>"> 
</td>
<td align=center><?echo $r["id"];?></td>
<td>
<a href="edit_video.php?id=<?echo $r["id"];?>"><?echo $r["title"];?></a></td>
<td align=center>
<?
$ctype1=$r["ctype"];
$Query1 = "select * from articleclass where classid='$ctype1' order by classorder asc,classid asc";
$result1 = mysql_query($Query1, $mysql_link);
if($r1=mysql_fetch_array($result1))
{
?> 
<a href=?ctype=<?echo $r1["classid"];?>><?echo $r1["name"];?></a>

<?
}
?>


</td>

<td><?echo $r["writer"];?></td>
<td align=center><?echo $r["adddate"];?></td>
<td align=center>


<?
if($r["isrec"]==1)
{
?>
<b>��</b>
<?
}
?>

</td>

</tr>

<?

}
while($r=mysql_fetch_array($res))
?>

</table>
<?
}
?>
<script language="javascript">
var check=0
function checkall(form) { //v2.0
  if(check==0){
  for(var i=0;i<form.elements.length;i++)
  {
  var e=form.elements[i];
  e.checked=true;
  }
  check=1;
  }else{
  for(var i=0;i<form.elements.length;i++)
  {
  var e=form.elements[i];
  e.checked=false;
  }
  check=0;
  }
}

function checkAction(sAction)
{
var frm = document.myform;
var boolFind = false ;
    for(i=0;i< frm.length;i++)  
    { 
        e = frm.elements[i]; 
        if ( e.type=='checkbox') 
        {
            if(e.checked)
            {
                boolFind = true;
                break;
            }
            else
            {
                boolFind = false ;
            }
        }
    } 
    var varMsg;
    if (sAction == 'checkall' || sAction == 'rebackall' || sAction == 'empty' || sAction=='delall')
    {
        if(sAction == 'checkall')
        {
            varMsg = 'ȷ��Ҫ���ͨ�����е�δ��˼�¼��';
        }
        else if(sAction == 'rebackall')
        {
            varMsg = 'ȷ��Ҫ��ԭ����ɾ���ļ�¼��';
        }
        else if(sAction == 'delall')
        {
            varMsg = 'ȷ��Ҫ���������¶��������վ��';
        }
        else
        {
            varMsg = 'ȷ��Ҫ�������ɾ���ļ�¼��';
        }        //ȫ��ͨ��
        if(confirm(varMsg))
        {
        changeurl(sAction)
        }
    }
    else
    {
        if(boolFind)
        {
            varMsg = '��ʾ����ȷ��Ҫ���в�����';
            boolFind = confirm(varMsg);
        }
        else
        {
            alert('��ѡ������һ����¼�ٲ�����');
            boolFind = false;
        }
        if (boolFind == true)
        {
        changeurl(sAction)
        }
    }
}
function changeurl(s)
{
if(s=="del")
{
document.myform.action="del_video.php"
document.myform.submit()
}
if(s=="check")
{
document.myform.action="check_article.php"
document.myform.submit()
}
if(s=="uncheck")
{
document.myform.action="uncheck_article.php"
document.myform.submit()
}
if(s=="checkall")
{
document.myform.action="checkall_article.php"
document.myform.submit()
}

if(s=="setrec")
{
document.myform.action="setrec_video.php"
document.myform.submit()
}
if(s=="unsetrec")
{
document.myform.action="unsetrec_video.php"
document.myform.submit()
}

}
</script>



</td>
</tr>

</table>
<table bgcolor=f0f0f0 cellpadding=5 cellspacing=0 width=100%>

<tr><td valign=bottom>
<table>
<tr>
<td>
<?
$first=1;
$prev=$page-1;
$next=$page+1;
$last=$pages;
?>

<?if($page>1){echo "<a href='?page=".$first."&keyword=".$keyword."&ctype=".$ctype."'>"?><font face="Webdings">9</font></a>&nbsp;<?echo "<a href='?page=".$prev."&keyword=".$keyword."&ctype=".$ctype."'>"?><font face="Webdings">7</font></a><?}else{?><font face="Webdings">9</font>&nbsp;<font face="Webdings">7</font><?}?>

<!--��ʾ���ַ�ҳ-->
<?
$pagecount=$pages;
$page1=$page;
if($page1>$pagecount) 
{
$page1=$pagecount;
} 
if($pagecount>($page1+5))
{
$endpage=$page1+5;
}
else
{ 
$endpage=$pagecount ;
}
if($page1>5)
{ 
$pagetitle=$pagetitle." "."...." ;
}

for($j=($page1-5);$j<=$endpage;$j++)
if(!($j<1))
{ 
if($j == $page1)
{ 
$pagetitle=$pagetitle." "."<B><font color=red>[".$j."]</font></B>" ;
}
else
{ 
$pagetitle=$pagetitle." "."["."<a href='?page=".$j."&keyword=".$keyword."&ctype=".$ctype."'>".$j."</a>"."]" ;
}
}
if(($page1+5) < $pagecount)
{

$pagetitle=$pagetitle." "."...." ;
}
?>


<?echo $pagetitle;?>



<!--��ʾ���ַ�ҳ-->

<?if($page<$pages){echo "<a href='?page=".$next."&keyword=".$keyword."&ctype=".$ctype."'>"?><font face="Webdings">8</font></a>&nbsp;<?echo "<a href='?page=".$last."&keyword=".$keyword."&ctype=".$ctype."'>"?><font face="Webdings">:</font></a><?}else{?><font face="Webdings">8</font>&nbsp;<font face="Webdings">:</font><?}?>&nbsp;&nbsp;��<b><?echo $numrows;?></b>��&nbsp;&nbsp;ҳ��:<b><?echo $page."/".$pages;?></b>&nbsp;&nbsp;<b><?echo $pagesize;?></b>��/ҳ&nbsp;&nbsp;��<b><?echo $pages;?></b>ҳ&nbsp;&nbsp;

</td>
</tr>

</table>
<?
mysql_close($mysql_link);
?>


</td>


<td align=right>

<input type="checkbox" name="chk" onClick="checkall(myform)">ȫѡ/ȫ��

 ������<select size=1 name='selection'>
<option value='del'>ɾ��</option><option value='setrec'>��Ϊ�Ƽ�</option><option value='unsetrec'>����Ƽ�</option></select> <input type=button value='ִ��' onclick="checkAction(document.myform.selection.options[document.myform.selection.selectedIndex].value)">


</td>
</tr>


</form>
</table>




<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>