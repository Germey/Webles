<?php
session_start();
require("check_admin.php");
require("config.php");
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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> �鿴���ԣ�<a href="freeadd_gbook.php" style="color:#cc0000">�������</a>��</td></tr>
</table>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<tr><td>
<?
$pagesize=20;
//ȡ�ü�¼������������ҳ����

$res=mysql_query("select count(*) from gbook ");
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


$res=mysql_query("select * from gbook order by id desc limit $offset,$pagesize");

if ($r = mysql_fetch_array($res))
{
$i=0;
?> 
<table width=100% cellpadding=5 cellspacing=1 style="font-size:9pt" bgcolor=dddddd>
<form name="myform" method=get action="">
<tr bgcolor=f0f0f0 style="font-weight:800">
<td background=images/topbar_bg.gif width=20></td>
<td background=images/topbar_bg.gif width=50 align=center>ID</td>
<td background=images/topbar_bg.gif align=center>����</td>
<td background=images/topbar_bg.gif align=center>����</td>
<td background=images/topbar_bg.gif align=center>�绰</td>
<td background=images/topbar_bg.gif align=center>����ʱ��</td>
<td background=images/topbar_bg.gif align=center>IP</td>
<td background=images/topbar_bg.gif align=center>��ַ</td>
<td background=images/topbar_bg.gif align=center>���</td>
<td background=images/topbar_bg.gif align=center>�鿴���ظ�</td>
</tr>
<?
do 
{
$userid=$r["userid"];
$i++;
?>
<tr bgcolor=f0f0f0>
<td align=center>
<input type=checkbox name="gbookid[]" value="<?echo $r["id"];?>"> 
</td>
<td align=center><?echo $r["id"];?></td>
<td>
<?echo $r["name"];?></td>


<td>
<?echo $r["title"];?></td>
<td>
<?echo $r["phone"];?></td>
<td align=center><?echo $r["adddate"];?></td>
<td>
<?echo $r["ip"];?></td>
<td><?echo $r["address"];?></td>
<td align=center style="font-weight:800">
<?
if($r["pass"]==1)
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
<td>

<a href=edit_gbook.php?id=<?echo $r["id"];?>>�鿴���ظ�</a>
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
            varMsg = 'ȷ��Ҫɾ�����еĲ�Ʒ��';
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
document.myform.action="del_gbook.php"
document.myform.submit()
}
if(s=="delall")
{
document.myform.action="delall_product.php"
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
if(s=="seteshop")
{
document.myform.action="seteshop_p.php"
document.myform.submit()
}
if(s=="unseteshop")
{
document.myform.action="unseteshop_p.php"
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

<?if($page>1){echo "<a href='gbook.php?page=".$first."'>"?><font face="Webdings">9</font></a>&nbsp;<?echo "<a href='gbook.php?page=".$prev."'>"?><font face="Webdings">7</font></a><?}else{?><font face="Webdings">9</font>&nbsp;<font face="Webdings">7</font><?}?>

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
$pagetitle=$pagetitle." "."["."<a href=gbook.php?page=".$j.">".$j."</a>"."]" ;
}
}
if(($page1+5) < $pagecount)
{

$pagetitle=$pagetitle." "."...." ;
}
?>


<?echo $pagetitle;?>



<!--��ʾ���ַ�ҳ-->

<?if($page<$pages){echo "<a href='gbook.php?page=".$next."'>"?><font face="Webdings">8</font></a>&nbsp;<?echo "<a href='gbook.php?page=".$last."'>"?><font face="Webdings">:</font></a><?}else{?><font face="Webdings">8</font>&nbsp;<font face="Webdings">:</font><?}?>&nbsp;&nbsp;��<b><?echo $numrows;?></b>��&nbsp;&nbsp;ҳ��:<b><?echo $page."/".$pages;?></b>&nbsp;&nbsp;<b><?echo $pagesize;?></b>��/ҳ&nbsp;&nbsp;��<b><?echo $pages;?></b>ҳ&nbsp;&nbsp;

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
<option value='del'>ɾ��</option></select> <input type=button value='ִ��' onclick="checkAction(document.myform.selection.options[document.myform.selection.selectedIndex].value)">


</td>
</tr>


</form>
</table>




<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>