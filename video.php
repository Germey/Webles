<?php
require("top.php");
?>
<div id="content1">
<div id="a9">

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>

<td style="border-bottom:1px solid #dfd7ca">
<table width=100% align=center cellpadding=0 cellspacing=0>
<tr>
<td height=30>

��ǰλ�ã�<a href=index.php>��ҳ</a> > ��Ƶ����
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
<?
$classid=$_GET['classid'];
?>
<table width=100% cellspacing=1 cellpadding=10 align=center>
<tr>
<?php
require("config.php");
?>
<?
$Query1 = "select * from articleclass where parentid='65' order by classorder asc ";
$result1 = mysql_query($Query1, $mysql_link); 
?>
<?while($r1 = mysql_fetch_array($result1))
{
$ctype=$r1['classid'];
$classname=$r1['name'];
?>

<td align=center  <?if($classid==$ctype){?>style="background:#ee5104;color:white"<?}else{?>style="background:#048cd0;color:white"<?}?>><a href="video.php?classid=<?echo $ctype;?>" style="color:#ffffff"><?echo $classname;?></a></td>
<?
}
?>
<?
mysql_close($mysql_link);
?>
</tr>
</table>
<br>


<?php
require("config.php");
?>
<?
$ctype=$_GET['classid'];

if($ctype>0)
{

$pagesize=20;
//ȡ�ü�¼������������ҳ����

$res=mysql_query("select * from video where ctype='$ctype' ");


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


$res=mysql_query("select * from video where ctype='$ctype' order by id desc limit $offset,$pagesize");

if ($r = mysql_fetch_array($res))
{
$i=0;
?>
<table width=100% align=center cellpadding=5 cellspacing=1 bgcolor=white style="font-size:9pt">
<tr bgcolor=#dddddd>
<td height=25></td>
<td align=center style="font-weight:800">����
</td>
<td align=center style="font-weight:800">����
</td>
<td align=center style="font-weight:800">����
</td>
<td align=center style="font-weight:800">�������
</td>
</tr>
<?
do 
{
$i++;
$id=$r['id'];
$title=cut_str($r['title'],32,0,'gb2312');
$writer=$r['writer'];
$pic=$r['imgurl'];
$content=cut_str($r['content'],100,0,'gb2312');
$adddate=$r['adddate'];
$hits=$r['hits'];
?>
<tr <?if($i%2==0){?>style="background:#f0f0f0"<?}?>>
<td width=30><img src="img/<?echo $classid;?>.jpg"></td>
<td>
<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')" style="font-size:14px;"><?echo $title;?></a>
</td>
<td align=center>
<?echo $writer;?>
</td>
<td align=center>
<?echo $adddate;?>
</td>
<td align=center>
<?echo $hits;?>
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
?>


<?
}
else
{
$k=0;
$Query = "select * from video where isrec=1 order by id desc limit 4";
$result = mysql_query($Query, $mysql_link); 
?>

<table width=100% cellpadding=5 cellspacing=20 bgcolor=white style="font-size:9pt">
<?
while($r=mysql_fetch_array($result))
{
$k++;
$id=$r['id'];
$title=cut_str($r['title'],32,0,'gb2312');
$writer=$r['writer'];
$pic=$r['imgurl'];
$adddate=$r['adddate'];
$hits=$r['hits'];
$text=cut_str($r['content'],200,0,'gb2312');
?>
<?if($k%2==0){?>
<tr>
<td width=50% align=center>
<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')"><img src='<?echo $pic;?>'></a></td>
<td width=50%>
<div align=center style="margin-bottom:20px">
<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')" style="font-size:18px;font-weight:800;font-family:΢���ź�,����;color:#048cd0"><?echo $title;?></a>
</div>
<div>

<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')"  style="font-size:14px;line-height:24px;">����<?echo $text;?></a>
</div>
</td>
</tr>
<?
}
else
{
?>
<tr>

<td width=50%>
<div align=center style="margin-bottom:20px">
<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')" style="font-size:18px;font-weight:800;font-family:΢���ź�,����;color:#048cd0"><?echo $title;?></a>
</div>
<div>

<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')"  style="font-size:14px;line-height:24px;">����<?echo $text;?></a>
</div>
</td>
<td width=50% align=center>
<a href="#"  onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')"><img src='<?echo $pic;?>'></a></td>
</tr>
<?
}
?>



<?
}
?>

</table>



<?
}
?>


<?
mysql_close($mysql_link);
?>
<br>




</div>
</div>
<?php
require("copy.php");
?>
