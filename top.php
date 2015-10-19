<?
function getTimeDifference($time_one,$time_two)
{
  $stamp_one=strtotime($time_one);
  $stamp_two=strtotime($time_two);
  $time_diff=abs($stamp_one-$stamp_two);
  $diff_time=getdate($time_diff);
  $days=intval($time_diff/3600/24);
  $hours=intval( ($time_diff - (3600*24*$days)) / 3600);
  $minutes=intval(($time_diff- (3600*24)*$days - 3600*$hours )/60);
  $seconds=$time_diff%60;
  return $days;
}
?>
<?
function cut_str($string, $sublen, $start = 0, $code = 'UTF-8') 
{ 
    if($code == 'UTF-8') 
    {
  $start = $start*2; 
        $sublen = $sublen*2;  
        $pa = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|\xe0[\xa0-\xbf][\x80-\xbf]|[\xe1-\xef][\x80-\xbf][\x80-\xbf]|\xf0[\x90-\xbf][\x80-\xbf][\x80-\xbf]|[\xf1-\xf7][\x80-\xbf][\x80-\xbf][\x80-\xbf]/"; 
        preg_match_all($pa, $string, $t_string); 
   $num=0;
   $yu='';
  for($i=0;$i<count($t_string[0]);$i++,$subend=$i){
   if($num<=$start){
    $substart = $num;
   }
   if(eregi("^([\x80-\xff])+$",$t_string[0][$i])){
    $num += 2;
   }else{
    $num += 1;
   }
   if($num >$sublen){
    $subend = $i;
    if((count($t_string[0])) > $i){
     $yu = '';
    }
    break;
   } 
  }
  return join('',array_slice($t_string[0],$substart,$subend)) . $yu ;
    } 
    else 
    { 
        $start = $start*2; 
        $sublen = $sublen*2; 
        $strlen = strlen($string); 
        $tmpstr = ''; 
 
        for($i=0; $i< $strlen; $i++) 
        { 
            if($i>=$start && $i< ($start+$sublen)) 
            { 
                if(ord(substr($string, $i, 1))>129) 
                { 
                    $tmpstr.= substr($string, $i, 2); 
                } 
                else 
                { 
                    $tmpstr.= substr($string, $i, 1); 
                } 
            } 
            if(ord(substr($string, $i, 1))>129) $i++; 
        } 
        if(strlen($tmpstr)< $strlen ) $tmpstr.= ""; 
        return $tmpstr; 
    } 
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>¸¹Ç»¾µÍâ¿ÆÍø</title>
<link rel="stylesheet" type="text/css" href="css/css.css">
<link href="css/foucs.css" rel="stylesheet" />
<script src="js/foucs.js" type="text/javascript"></script>
<script type="text/javascript" src="js/riqi.js"></script>
<SCRIPT src="ckplayer/ckplayer.js" type=text/javascript charset=utf-8></SCRIPT>
<SCRIPT src="js/tangram-1.3.1.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/mod.js" type=text/javascript></SCRIPT>

<style type="text/css">
#wrap1{
	text-align:left;
	width:740px;
        height:280px;
	}
#biaoti1{
	float:left; 
	width:370px; 
}
#biaoti1 ul{
}
#biaoti1 li{
	height:70px; 
	line-height:70px; 
        text-align:left;
}
#biaoti1 a{color:#333;
font-size:14px;
text-decoration:none; 
display:block;
width:330px;
height:70px;
line-height:70px;
padding-left:40px;
}
#biaoti1 a:hover,#biaoti1 .on a{
display:block;
width:330px;
height:70px;
line-height:70px;
color:#fff;
padding-left:40px;
	background-image: url(img/bt_bg.jpg);
	_background-image: url(img/bt_bg.jpg);
	background-repeat: no-repeat;
	background-position: right top;
	font-weight: bold;
}
#tupian1{
	float:left;
	width:370px;
        height:280px;
	}

#wrap2{
	text-align:left;
	width:740px;
        height:280px;
	}
#biaoti2{
	float:left; 
	width:370px; 
	background:url(images/shuxian.jpg) no-repeat right center;
	background-color:#E0EFF6;}
#biaoti2 ul{
}
#biaoti2 li{
	height:70px; 
	line-height:70px; 
        text-align:left;
}
#biaoti2 a{color:#333;
font-size:14px;
text-decoration:none; 
display:block;
width:330px;
height:70px;
line-height:70px;
padding-left:40px;
}
#biaoti2 a:hover,#biaoti2 .on a{
display:block;
width:330px;
height:70px;
line-height:70px;
color:#fff;
padding-left:40px;
	background-image: url(img/bt_bg1.jpg);
	_background-image: url(img/bt_bg1.jpg);
	background-repeat: no-repeat;
	background-position: right top;
	font-weight: bold;
}
#tupian2{
	float:right;
	width:370px;
        height:280px;
	}


</style>

<script src="style/jquery-1.2.2.pack.js" type="text/javascript"></script>
<link href="style/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="style/facebox.js" type="text/javascript"></script>

<script type="text/javascript">
    jQuery(document).ready(function($) {
      $('a[rel*=facebox]').facebox() 
    })
</script>
</head>

<body>

<div id="lanrenzhijia">
<div id="float">
<div id="top_bg">
<div id="top">
<div id="pDate"></div>

</div>
</div>
<div id="menu">
<div id="navMenu">

<ul>
    <li class="onelink"><a href="index.php">Ê×Ò³</a></li>

<?php
require("config.php");
?>
<?
$Query = "select * from articleclass where position=1 and parentid=0 order by classorder asc,classid asc";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$classid=$r['classid'];
?>
<li><a href=<?if($r['url']==null){?>"article.php?classid=<?echo $r["classid"];?>"<?}else{?>"<?echo $r["url"];?>"  target=_blank<?}?> <?if($r['child']>0){?>rel='dropmenu<?echo $classid;?>'<?}?>><?echo $r["name"];?></a></li>


<?}?>
<?
mysql_close($mysql_link);
?>
    </ul>
</div>
</div>

</div>

</div>


<script type='text/javascript' src='js/dropdown.js'></script>

<?php
require("config.php");
?>
<?
$Query = "select * from articleclass where position=1 and parentid=0 and child>0 order by classorder asc,classid asc";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$classid=$r['classid'];
?>

<ul id="dropmenu<?echo $classid;?>" class="dropMenu">
<?
$Query1 = "select * from articleclass where parentid='$classid' order by classorder asc,classid asc";
$result1 = mysql_query($Query1, $mysql_link); 
?>
<?
while($r1=mysql_fetch_array($result1))
{
?>

<li><a href=<?if($r1['url']==null){?>"article.php?classid=<?echo $r1["classid"];?>"<?}else{?>"<?echo $r1["url"];?>" target=_blank<?}?>"><?echo $r1["name"];?></a></li>
<?}?>
</ul>
<?}?>
<?
mysql_close($mysql_link);
?>

<script type="text/javascript">cssdropdown.startchrome("navMenu")</script> 

<!--//nav-->
