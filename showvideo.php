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

��ǰλ�ã�<a style="color:black" href=index.php>��ҳ</a> > ��Ƶ����
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
//È¡µÃ¼ÇÂ¼×ÜÊý£¬¼ÆËã×ÜÒ³ÊýÓÃ

$res=mysql_query("select * from video where ctype='$ctype' ");


$myrow = mysql_fetch_array($res);
$numrows=$myrow[0];
//¼ÆËã×ÜÒ³Êý
$pages=intval($numrows/$pagesize);
if ($numrows%$pagesize)
$pages++;
//ÅÐ¶ÏÒ³ÊýÉèÖÃÓë·ñ£¬ÈçÎÞÔò¶¨ÒåÎªÊ×Ò³
if (!isset($page))
$page=1;
//ÅÐ¶Ï×ªµ½Ò³Êý
$ys=$_GET['page'];
if (isset($ys))
if ($ys>$pages)
$page=$pages;
else
$page=$ys;
//¼ÆËã¼ÇÂ¼Æ«ÒÆÁ¿
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
<td align=center style="font-weight:800">±êÌâ
</td>
<td align=center style="font-weight:800">ÊõÕß
</td>
<td align=center style="font-weight:800">ÈÕÆÚ
</td>
<td align=center style="font-weight:800">ä¯ÀÀ´ÎÊý
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

<?
}
?>

<?
}
?>
<?php
require("config.php");
?>
<?
$id=$_GET['id'];

$Query2 = "update video set hits=hits+1 where id='$id' ";
$result2 = mysql_query($Query2, $mysql_link); 

$Query = "select * from video where id='$id' ";
$result = mysql_query($Query, $mysql_link); 
?>

<?if ($r = mysql_fetch_array($result))
{

$title=$r['title'];
$linkurl=$r['linkurl'];
$text=$r['content'];
$ctype=$r['ctype'];
$writer=$r['writer'];
}
?>
<?
$Query1 = "select * from articleclass where classid='$ctype' ";
$result1 = mysql_query($Query1, $mysql_link); 

?>
<?if ($r1 = mysql_fetch_array($result1))
{
$classname=$r1['name'];
}
?>
<!-- Load player theme -->
<link rel="stylesheet" href="theme/style.css" type="text/css" media="screen" />

<!-- Load jquery -->
<script type="text/javascript" src="jquery.js"></script>

<!-- load projekktor -->
<script type="text/javascript" src="projekktor.js"></script>
<div class="content">
	<div id="mainvideo">
		
		<div id="video-content">
			<video id="player_a" class="projekktor" width="640" height="385" controls>
				<source src="<?echo $linkurl;?>" type="video/flv" />
			</video>


			<script type="text/javascript">
			$(document).ready(function() {
				projekktor('#player_a'); // instantiation
			});
			</script>
		</div>

	</div>
	<div class="details">
		<div><span>��������</span><?echo $title;?></div>
		<div><span>���ࣺ</span><?echo $classname;?></div>
		<div><span>���ߣ�</span><?echo $writer;?></div>
		<div><span>ժҪ��</span><br>
		����<?echo $text;?>
		</div>
	</div>
</div>
<style type="text/css">
#a9 {
	min-height: inherit;
}
a { color: #360; }
h3 { padding-top: 20px; }
.details div {
	font-size: 14px;
	margin: 5px 0;
	line-height: 20px;
}
.details span {
	font-weight: bold;
}
.content {
	overflow: hidden;
}
#mainvideo {
	float: left;
}
.details {
	float: left;
	width: 290px;
	padding: 10px;
}
</style>





<?
mysql_close($mysql_link);
?>
<br>




</div>
</div>
<?php
require("copy.php");
?>
