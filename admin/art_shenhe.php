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
<tr><td width=30><img src=images/admin_top_close.gif></td><td style="font-weight:800;color:white"> 审核文章</td></tr>
</table>
<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<form action=search2.php method=get name="form1">
<tr><td height=30>
搜索文章：<input name="keyword">





审核情况：<select name="shenhe">
<option value="">全部
<option value=1>已审核
<option value=0>未审核

</select>








<input type="submit" value="搜索">


</td>
</tr>
</form>
</table>


<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%>
<tr><td>
<?
$pagesize=20;
//取得记录总数，计算总页数用


$res=mysql_query("select count(*) from article where classid IN ($admin_classid) and deleted=0 ");

$myrow = mysql_fetch_array($res);
$numrows=$myrow[0];
//计算总页数
$pages=intval($numrows/$pagesize);
if ($numrows%$pagesize)
$pages++;
//判断页数设置与否，如无则定义为首页
if (!isset($page))
$page=1;
//判断转到页数
$ys=$_GET['page'];
if (isset($ys))
if ($ys>$pages)
$page=$pages;
else
$page=$ys;
//计算记录偏移量
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
<td background=images/topbar_bg.gif width=300 align=center>标题</td>
<td background=images/topbar_bg.gif align=center width=120>一级栏目</td>
<td background=images/topbar_bg.gif align=center width=120>二级栏目</td>
<td background=images/topbar_bg.gif align=center width='6%'>录入人</td>
<td background=images/topbar_bg.gif align=center width='10%'>录入时间</td>
<td background=images/topbar_bg.gif width='10%' align=center>文章属性</td>
<td background=images/topbar_bg.gif align=center width='6%'>是否审核</td>
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
?><font color=red>[图]</font><?}?><?echo $r["title"];?></font></td>
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
?>顶<?}?></td>
<td width=25 style="color:red" align=center>
<?
if($r["ishot"]==1)
{
?>热<?}?></td>
<td width=25 style="color:green" align=center>
<?
if($r["isrec"]==1)
{
?>荐<?}?></td>
<td width=25 style="color:blue" align=center>
<?
if($r["ispic"]==1)
{
?>图<?}?></td>
</tr>
</table>


</td>
<td align=center style="font-weight:800">
<?
if($r["shenhe"]==1)
{
?>
√
<?
}
else
{
?>
<font color=red>×</font>
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
            varMsg = '确定要审核通过所有的未审核记录吗？';
        }
        else if(sAction == 'rebackall')
        {
            varMsg = '确定要还原所有删除的记录吗？';
        }
        else if(sAction == 'delall')
        {
            varMsg = '确定要把所有文章都放入回收站吗？';
        }
        else
        {
            varMsg = '确定要清空所有删除的记录吗？';
        }        //全部通过
        if(confirm(varMsg))
        {
        changeurl(sAction)
        }
    }
    else
    {
        if(boolFind)
        {
            varMsg = '提示：您确定要进行操作吗？';
            boolFind = confirm(varMsg);
        }
        else
        {
            alert('请选择至少一条记录再操作！');
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

<!--显示数字分页-->
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



<!--显示数字分页-->

<?if($page<$pages){echo "<a href='art_edit.php?page=".$next."'>"?><font face="Webdings">8</font></a>&nbsp;<?echo "<a href='art_edit.php?page=".$last."'>"?><font face="Webdings">:</font></a><?}else{?><font face="Webdings">8</font>&nbsp;<font face="Webdings">:</font><?}?>&nbsp;&nbsp;共<b><?echo $numrows;?></b>个&nbsp;&nbsp;页次:<b><?echo $page."/".$pages;?></b>&nbsp;&nbsp;<b><?echo $pagesize;?></b>个/页&nbsp;&nbsp;共<b><?echo $pages;?></b>页&nbsp;&nbsp;

</td>
</tr>

</table>
<?
mysql_close($mysql_link);
?>


</td>


<td align=right>

<input type="checkbox" name="chk" onClick="checkall(myform)">全选/全否

 操作：<select size=1 name='selection'>
<option value='check'>通过审核</option><option value='uncheck'>取消通过</option><option value='checkall'>全部通过</option></select> <input type=button value='执行' onclick="checkAction(document.myform.selection.options[document.myform.selection.selectedIndex].value)">


</td>
</tr>


</form>
</table>




<table bgcolor=f0f0f0 cellpadding=0 cellspacing=0 width=100%  background="images/admin_bg_bottom.gif" height=56>
<tr><td></td></tr>
</table>