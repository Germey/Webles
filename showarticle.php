<?php
require("top.php");
?>
<div id="content1">
<div id="a9">

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>

<td style="padding-bottom:5">

<?php
require("config.php");
?>
<?
$articleid=$_GET['articleid'];
$Query = "update article set hits=hits+1 where articleid='$articleid' ";
$result = mysql_query($Query, $mysql_link); 
?>


<?

$Query = "select * from article as a inner join articleclass as c on a.classid=c.classid where a.articleid='$articleid' ";
$result = mysql_query($Query, $mysql_link); 
?>

<table width=100% align=center cellpadding=0 cellspacing=0>

<tr><td height=30><?if ($r = mysql_fetch_array($result))
{
?>
<?
if($r['parentid']==0)
{
?>
当前位置：<a href=index.php>首页</a> > <a href=article.php?classid=<?echo $r["classid"];?>><?echo $r["name"];?></a> > 正文
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






 > <a href=article.php?classid=<?echo $r["classid"];?>><?echo $r["name"];?></a> > 正文

<?
}
?>


<?
}
?></td>
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
<tr><td height=1 bgcolor=dfd7ca colspan=1></td></tr>
</table>

<br>







<?php
require("config.php");
?>
<?

$Query = "select * from article as a inner join articleclass as c on a.classid=c.classid where a.articleid='$articleid' ";
$result = mysql_query($Query, $mysql_link); 
?>

<?if ($r = mysql_fetch_array($result))
{
$classid=$r['classid'];
?>
<table width=100% cellpadding=5 cellspacing=0 align=center>
<tr>
<td align=center style="font-size:14pt;font-weight:800;line-height:24pt;color:875302">
<?echo $r["title"];?>
</td>
</tr>
<tr><td align=center height=30 style="border-top:1px solid #dfd7ca">
作者：<?echo $r["writer"];?>&nbsp;&nbsp;来源：<?echo $r["source"];?>&nbsp;&nbsp;上传：<?echo $r["editor"];?>&nbsp;&nbsp;发布时间：<?echo $r["adddate"];?>&nbsp;&nbsp;浏览次数：<?echo $r["hits"];?>
</td></tr>
<tr>
<td style="padding:20;font-size:14px;line-height:30px;word-break:break-all" width=900 height=400 valign=top>

<?echo $r["content"];?>
</td>
</tr>
</table>
<?
}
?>
<table width=100% cellpadding=0 align=center>
<tr><td height=20  style="border-top:1px solid #dfd7ca">&nbsp;</td></tr>

<?

$Query = "select * from article as a inner join articleclass as c on a.classid=c.classid where a.deleted=0 and a.shenhe=1 and a.classid='$classid' and a.articleid>'$articleid' order by a.articleid asc";
$result = mysql_query($Query, $mysql_link); 
?>
<?if ($r = mysql_fetch_array($result))
{
?>
<tr><td height=25>
上一篇：<a target=_blank href=<?if($r['urllink']==null){?>"showarticle.php?articleid=<?echo $r["articleid"];?>"<?}else{?><?echo $r["urllink"];?><?}?> title=<?echo $r["title"];?>><?echo $r["title"];?></a>
</td></tr>

<?
}
?>



<?

$Query = "select * from article as a inner join articleclass as c on a.classid=c.classid where a.deleted=0 and a.shenhe=1 and a.classid='$classid' and a.articleid<'$articleid'  order by a.articleid desc";
$result = mysql_query($Query, $mysql_link); 
?>
<?if ($r = mysql_fetch_array($result))
{
?>
<tr><td height=25>
下一篇：<a target=_blank href=<?if($r['urllink']==null){?>"showarticle.php?articleid=<?echo $r["articleid"];?>"<?}else{?><?echo $r["urllink"];?><?}?> title=<?echo $r["title"];?>><?echo $r["title"];?></a>
</td></tr>
<?
}
?>


</table>


<?
mysql_close($mysql_link);
?>
<br>



</div>
</div>
<?php
require("copy.php");
?>
