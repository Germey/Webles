<?php
require("config.php");
?>
<?
$classid=$_GET['classid'];
$myclassid=$_GET['classid'];
$Query = "select * from articleclass where classid='$classid' ";
$result = mysql_query($Query, $mysql_link); 
?>

<table width=100% align=center cellpadding=0 cellspacing=0 style="text-align:left">
<tr>
<td height=40 style="font-weight:800;color:white;background:url(img/lm_bg.jpg);font-size:14px;line-height:40px" align=center>

<?if ($r = mysql_fetch_array($result))
{
?>
<?
if($r['parentid']==0)
{
$classid1=$classid;
?>
<?echo $r["name"];?>
<?
}
else
{
$parentid=$r['parentid'];
$classid1=$parentid;
?>

<?
$Query1 = "select * from articleclass where classid='$parentid' order by classorder asc,classid asc";
$result1 = mysql_query($Query1, $mysql_link);
if($r1=mysql_fetch_array($result1))
{
?> 
<?echo $r1["name"];?>

<?
}
?>

<?
}
?>


<?
}
?>
</td>
</tr>
<tr><td height=10></td></tr>


<?
$Query = "select * from articleclass where parentid='$classid1' order by classorder asc,classid asc";
$res = mysql_query($Query, $mysql_link); 
while($r=mysql_fetch_array($res))
{
?>
<tr>
<td height=40 <?if($myclassid==$r['classid']){?>style="background:url(img/bt2.jpg);padding-left:30px;line-height:40px;font-size:14px"<?}else{?>style="background:url(img/bt1.jpg);padding-left:30px;line-height:40px;font-size:14px"<?}?>>
<a href=<?if($r['url']==null){?>"article.php?classid=<?echo $r["classid"];?>"<?}else{?>"<?echo $r["url"];?>"  target=_blank<?}?> <?if($myclassid==$r['classid']){?>style="color:#ffffff"<?}?>><?echo $r["name"];?></a>
</td>
</tr>
<tr><td height=10></td></tr>


<?
}
?>
<?
mysql_close($mysql_link);
?>


</table>