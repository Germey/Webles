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
<?
mysql_close($mysql_link);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><?echo $title;?></title>
</head>
<body bgcolor="#333333" style="margin:0 auto">
<div style="width:100%;height:80px;background:url(img/top1.jpg) no-repeat;">

</div>

<table cellpadding=0 cellspacing=10 align=center>
<tr><td colspan=2 style="color:#ffffff;font-weight:800;font-family:微软雅黑,宋体">
<?echo $title;?>
</td></tr>
<tr>
<td width=500>
<DIV id=player style="WIDTH: 500px;margin:0 auto;z-index:1">正在加载播放器...</DIV>
<SCRIPT src="ckplayer/ckplayer.js" type=text/javascript charset=utf-8></SCRIPT>

<SCRIPT type=text/javascript>
  var s1=new swfupload();
  s1.ckplayer_url='ckplayer/ckplayer.swf';
  s1.ckplayer_flv='<?echo $linkurl;?>';
  s1.ckplayer_endstatus=2;
  s1.ckplayer_volume=30;
  s1.ckplayer_play=1;
  s1.ckplayer_width=500;
  s1.ckplayer_height=420;
  s1.ckplayer_bgcolor='#000000';
  s1.ckplayer_allowFullScreen=true;
  s1.swfwrite('player');
      </SCRIPT>
</td>
<td width=400>
<div style="width:400px;height:420px;overflow:auto;color:#ffffff;font-size:12px;line-height:20px;">
<font color=#1c8ac9><b>分类：</b></font><?echo $classname;?><br>
<font color=#1c8ac9><b>术者：</b></font><?echo $writer;?><br>
<font color=#1c8ac9><b>摘要：</b></font><br>
　　<?echo $text;?>
</div>
</td>
</tr>
</table>
