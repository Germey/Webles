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
</HEAD>

<link rel="STYLESHEET" type="text/css" href="style.css">

<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0 bgcolor=555555>

<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_top_bg.gif" height=36>
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �������</td></tr>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<form action=search2.php method=get name="form1">
<tr><td height=30>
�������£�<input name="keyword">





��������<select name="shenhe">
<option value="">ȫ��
<option value=1>�����
<option value=0>δ���

</select>








<input type="submit" value="����">


</td>
</tr>
</form>
</table>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<tr><td>
<?
$pagesize=20;
//ȡ�ü�¼������������ҳ����


$res=mysql_query("select count(*) from article where classid IN ($admin_classid) and deleted=0 ");

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


$res=mysql_query("select * from article as a inner join articleclass as c on a.classid=c.classid where a.classid IN ($admin_classid) and a.deleted=0 order by a.istop desc,a.adddate desc,a.articleid desc limit $offset,$pagesize");

if ($r = mysql_fetch_array($res))
{
$i=0;
?> 
<table width=100% cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<form name="myform" method=get action="">
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif width=20></td>
<td background=images/topbar_bg.gif width=50 align=center>ID</td>
<td background=images/topbar_bg.gif width=300 align=center>����</td>
<td background=images/topbar_bg.gif align=center width=120>һ����Ŀ</td>
<td background=images/topbar_bg.gif align=center width=120>������Ŀ</td>
<td background=images/topbar_bg.gif align=center width='6%'>¼����</td>
<td background=images/topbar_bg.gif align=center width='10%'>¼��ʱ��</td>
<td background=images/topbar_bg.gif width='10%' align=center>��������</td>
<td background=images/topbar_bg.gif align=center width='6%'>�Ƿ����</td>
</tr>
<?
do 
{
$i++;
?>
<tr bgcolor=f0f0f0>
<td align=center>
<input type=checkbox name="articleid[]" value="<?echo $r["articleid"];?>"> 
</td>
<td align=center><?echo $r["articleid"];?></td>
<td>
<font style="color:<?echo $r["titlefontcolor"];?>"  <?if($r["titlefonttype"]==1){?>style="font-weight:800"<?}?><?if($r["titlefonttype"]==2){?>style="font-style:italic"<?}?><?if($r["titlefonttype"]==3){?>style="font-weight:800;font-style:italic"<?}?>>
<?
if($r["ispic"]==1)
{
?><font color=red>[ͼ]</font><?}?><?echo $r["title"];?></font></td>
<?if($r["parentid"]==0)
{
?>
<td align=center><a href=search2.php?classid=<?echo $r["classid"];?>><?echo $r["name"];?></a></td>
<td></td>
<?}
else
{
$parentid=$r["parentid"];
?>
<td align=center>
<?
$Query1 = "select * from articleclass where classid='$parentid' order by classorder asc,classid asc";
$result1 = mysql_query($Query1, $mysql_link);
if($r1=mysql_fetch_array($result1))
{
?> 
<a href=search2.php?classid=<?echo $r1["classid"];?>><?echo $r1["name"];?></a>

<?
}
?>
</td>
<td>
<a href=search2.php?classid=<?echo $r["classid"];?>><?echo $r["name"];?></a>

</td>
<?
}
?>






<td><?echo $r["editor"];?></td>
<td align=center><?echo $r["adddate"];?></td>
<td align=center>
<table width=100 cellpadding=0 cellspacing=0>
<tr>
<td width=25 style="color:blue" align=center>
<?
if($r["istop"]==1)
{
?>��<?}?></td>
<td width=25 style="color:red" align=center>
<?
if($r["ishot"]==1)
{
?>��<?}?></td>
<td width=25 style="color:green" align=center>
<?
if($r["isrec"]==1)
{
?>��<?}?></td>
<td width=25 style="color:blue" align=center>
<?
if($r["ispic"]==1)
{
?>ͼ<?}?></td>
</tr>
</table>


</td>
<td align=center style="font-weight:800">
<?
if($r["shenhe"]==1)
{
?>
��
<?
}
else
{
?>
<font color=red>��</font>
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
document.myform.action="del_article.php"
document.myform.submit()
}
if(s=="delall")
{
document.myform.action="delall_article.php"
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
if(s=="settop")
{
document.myform.action="settop_article.php"
document.myform.submit()
}
if(s=="unsettop")
{
document.myform.action="unsettop_article.php"
document.myform.submit()
}
if(s=="sethot")
{
document.myform.action="sethot_article.php"
document.myform.submit()
}
if(s=="unsethot")
{
document.myform.action="unsethot_article.php"
document.myform.submit()
}
if(s=="setrec")
{
document.myform.action="setrec_article.php"
document.myform.submit()
}
if(s=="unsetrec")
{
document.myform.action="unsetrec_article.php"
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

<?if($page>1){echo "<a href='art_edit.php?page=".$first."'>"?><font face="Webdings">9</font></a>&nbsp;<?echo "<a href='art_edit.php?page=".$prev."'>"?><font face="Webdings">7</font></a><?}else{?><font face="Webdings">9</font>&nbsp;<font face="Webdings">7</font><?}?>

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
$pagetitle=$pagetitle." "."["."<a href=art_edit.php?page=".$j.">".$j."</a>"."]" ;
}
}
if(($page1+5) < $pagecount)
{

$pagetitle=$pagetitle." "."...." ;
}
?>


<?echo $pagetitle;?>



<!--��ʾ���ַ�ҳ-->

<?if($page<$pages){echo "<a href='art_edit.php?page=".$next."'>"?><font face="Webdings">8</font></a>&nbsp;<?echo "<a href='art_edit.php?page=".$last."'>"?><font face="Webdings">:</font></a><?}else{?><font face="Webdings">8</font>&nbsp;<font face="Webdings">:</font><?}?>&nbsp;&nbsp;��<b><?echo $numrows;?></b>��&nbsp;&nbsp;ҳ��:<b><?echo $page."/".$pages;?></b>&nbsp;&nbsp;<b><?echo $pagesize;?></b>��/ҳ&nbsp;&nbsp;��<b><?echo $pages;?></b>ҳ&nbsp;&nbsp;

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
<option value='check'>ͨ�����</option><option value='uncheck'>ȡ��ͨ��</option><option value='checkall'>ȫ��ͨ��</option></select> <input type=button value='ִ��' onclick="checkAction(document.myform.selection.options[document.myform.selection.selectedIndex].value)">


</td>
</tr>


</form>
</table>




<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>