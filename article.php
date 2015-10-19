<?php
require("top.php");
?>
<div id="content1">
<div id="a8">
<div id="a8_1">

<?php
require("left.php");
?>


</div>

<div id="a8_2">
<!--右侧内容-->

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="border-bottom:1px solid #dfd7ca">
<?php
require("config.php");
?>
<table width=100% align=center cellpadding=0 cellspacing=0>
<tr><td height=30><?
$classid=$_GET['classid'];
$Query = "select * from articleclass where classid='$classid' ";
$result = mysql_query($Query, $mysql_link); 
?>
<?if ($r = mysql_fetch_array($result))
{
?>
<?
if($r['parentid']==0)
{
?>
当前位置：<a href=index.php>首页</a> > <?echo $r["name"];?>
<?
}
else
{
$parentid=$r['parentid'];
?>
当前位置：<a href=index.php>首页</a> > 

<?
$Query1 = "select * from articleclass where classid='$parentid' order by classorder asc,classid asc";
$result1 = mysql_query($Query1, $mysql_link);
if($r1=mysql_fetch_array($result1))
{
?> 
<a href=article.php?classid=<?echo $r1["classid"];?>><?echo $r1["name"];?></a>

<?
}
?>






 > <?echo $r["name"];?>

<?
}
?>


<?
}
?>



<?
mysql_close($mysql_link);
?>
</td>

<td align=right>
今天是:
<script language=JavaScript>
today=new Date();
var day;
var date,month,year
year = today.getFullYear(); 
month=today.getMonth()+1
date=today.getDate()
year=year+"年"
month=month+"月"
date=date+"日"

if(today.getDay()==0)  day="日"
if(today.getDay()==1)  day="一"
if(today.getDay()==2)  day="二"
if(today.getDay()==3)  day="三"
if(today.getDay()==4)  day="四"
if(today.getDay()==5)  day="五"
if(today.getDay()==6)  day="六"
day="星期"+day
document.write(year+month+date+"&nbsp;&nbsp;"+day+"&nbsp;&nbsp;")
</script>

</td>
</tr>

</table>


</td></tr>
</table>
<br>







<?php
require("config.php");
?>
<?

$pagesize=20;
//取得记录总数，计算总页数用

$res=mysql_query("select count(*) from article as a inner join articleclass as c on a.classid=c.classid where a.deleted=0 and a.shenhe=1 and (a.classid='$classid' or c.parentid='$classid') ");


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


$res=mysql_query("select * from article as a inner join articleclass as c on a.classid=c.classid where a.deleted=0 and a.shenhe=1 and (a.classid='$classid' or c.parentid='$classid')  order by a.istop desc,a.adddate desc,a.articleid desc limit $offset,$pagesize");

if ($r = mysql_fetch_array($res))
{
$i=0;
?>
<?if($numrows==1)
{
?>
<table width=95% cellpadding=5 cellspacing=0 bgcolor=white align=center>
<tr>
<td align=center style="font-size:14pt;line-height:24pt;font-weight:800;color:#000000;font-family:微软雅黑,宋体">
<?echo $r["title"];?>
</td>
</tr>
<tr><td height=20 style="border-top:1px solid #dfd7ca">&nbsp;</td></tr>
<tr><td style="font-size:14px;line-height:30px;padding:5;;word-break:break-all">

<?echo $r["content"];?>

</td>
</tr>

</table>

<?
}
else
{
?> 
<table width=100% cellpadding=5 cellspacing=1 bgcolor=white style="font-size:9pt">
<tr style="font-weight:800">
<td align=center width=40 height=32 background=bg_case_top.gif style="color:bba98e">ID</td>
<td align=center background=bg_case_top.gif width=400 style="color:bba98e">标题</td>
<td align=center background=bg_case_top.gif style="color:bba98e">日期时间</td>
<td align=center background=bg_case_top.gif style="color:bba98e">浏览次数</td>
</tr>
<?
do 
{
$i++;
$title=cut_str($r['title'],32,0,'gb2312');

$now=date("Y-m-d h:i:s");
$diff=getTimeDifference($now,$r['adddate']);
$strDateTime = explode(" ",$r['adddate']);
$strDate=explode("-",$strDateTime[0]);
?>
<tr bgcolor=ffffff  onmouseover="this.style.background='#fbf3e7'" onmouseout="this.style.background='#ffffff'">
<td align=center height=25 style="border-bottom:1px solid #dfd7ca"><?echo $r["articleid"];?></td>
<td style="border-bottom:1px solid #dfd7ca">
<a target=_blank href=<?if($r['urllink']==null){?>"showarticle.php?articleid=<?echo $r["articleid"];?>"<?}else{?><?echo $r["urllink"];?><?}?> title=<?echo $r["title"];?>><?echo $title;?></a></td>
<td align=center style="border-bottom:1px solid #dfd7ca"><?echo $r["adddate"];?></td>
<td align=center style="border-bottom:1px solid #dfd7ca">
<?echo $r["hits"];?>
</td>
</tr>
<?
}
while($r=mysql_fetch_array($res))
?>

</table>

<br>

<table width=100% cellpadding=0 cellspacing=0 style="font-size:9pt">
<tr>
<td>
<?
$first=1;
$prev=$page-1;
$next=$page+1;
$last=$pages;
?>

<?if($page>1){echo "<a href='article.php?page=".$first."&classid=".$classid."'>"?><font face="Webdings">9</font></a>&nbsp;<?echo "<a href='article.php?page=".$prev."&classid=".$classid."'>"?><font face="Webdings">7</font></a><?}else{?><font face="Webdings">9</font>&nbsp;<font face="Webdings">7</font><?}?>

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
$pagetitle=$pagetitle." "."<B><font color=#0ea3e0>[".$j."]</font></B>" ;
}
else
{ 
$pagetitle=$pagetitle." "."["."<a href='article.php?page=".$j."&classid=".$classid."'>".$j."</a>"."]" ;
}
}
if(($page1+5) < $pagecount)
{

$pagetitle=$pagetitle." "."...." ;
}
?>


<?echo $pagetitle;?>



<!--显示数字分页-->

<?if($page<$pages){echo "<a href='article.php?page=".$next."&classid=".$classid."'>"?><font face="Webdings">8</font></a>&nbsp;<?echo "<a href='article.php?page=".$last."&classid=".$classid."'>"?><font face="Webdings">:</font></a><?}else{?><font face="Webdings">8</font>&nbsp;<font face="Webdings">:</font><?}?>&nbsp;&nbsp;共<b><?echo $numrows;?></b>个&nbsp;&nbsp;页次:<b><?echo $page."/".$pages;?></b>&nbsp;&nbsp;<b><?echo $pagesize;?></b>个/页&nbsp;&nbsp;共<b><?echo $pages;?></b>页&nbsp;&nbsp;

</td>
</tr>

</table>



<?
}
}
?>



<?
mysql_close($mysql_link);
?>
<br>




<!--右边结束-->


</div>



</div>

</div>
<?php
require("copy.php");
?>
