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
<!--�Ҳ�����-->

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
��ǰλ�ã�<a href=index.php>��ҳ</a> > <?echo $r["name"];?>
<?
}
else
{
$parentid=$r['parentid'];
?>
��ǰλ�ã�<a href=index.php>��ҳ</a> > 

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
������:
<script language=JavaScript>
today=new Date();
var day;
var date,month,year
year = today.getFullYear(); 
month=today.getMonth()+1
date=today.getDate()
year=year+"��"
month=month+"��"
date=date+"��"

if(today.getDay()==0)  day="��"
if(today.getDay()==1)  day="һ"
if(today.getDay()==2)  day="��"
if(today.getDay()==3)  day="��"
if(today.getDay()==4)  day="��"
if(today.getDay()==5)  day="��"
if(today.getDay()==6)  day="��"
day="����"+day
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
//ȡ�ü�¼������������ҳ����

$res=mysql_query("select count(*) from article as a inner join articleclass as c on a.classid=c.classid where a.deleted=0 and a.shenhe=1 and (a.classid='$classid' or c.parentid='$classid') ");


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
<td align=center style="font-size:14pt;line-height:24pt;font-weight:800;color:#000000;font-family:΢���ź�,����">
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
<td align=center background=bg_case_top.gif width=400 style="color:bba98e">����</td>
<td align=center background=bg_case_top.gif style="color:bba98e">����ʱ��</td>
<td align=center background=bg_case_top.gif style="color:bba98e">�������</td>
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



<!--��ʾ���ַ�ҳ-->

<?if($page<$pages){echo "<a href='article.php?page=".$next."&classid=".$classid."'>"?><font face="Webdings">8</font></a>&nbsp;<?echo "<a href='article.php?page=".$last."&classid=".$classid."'>"?><font face="Webdings">:</font></a><?}else{?><font face="Webdings">8</font>&nbsp;<font face="Webdings">:</font><?}?>&nbsp;&nbsp;��<b><?echo $numrows;?></b>��&nbsp;&nbsp;ҳ��:<b><?echo $page."/".$pages;?></b>&nbsp;&nbsp;<b><?echo $pagesize;?></b>��/ҳ&nbsp;&nbsp;��<b><?echo $pages;?></b>ҳ&nbsp;&nbsp;

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




<!--�ұ߽���-->


</div>



</div>

</div>
<?php
require("copy.php");
?>
