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
<title>腹腔镜外科网</title>
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
width:350px;
height:70px;
line-height:70px;
padding-left:20px;
}
#biaoti2 a:hover,#biaoti2 .on a{
display:block;
width:350px;
height:70px;
line-height:70px;
color:#fff;
padding-left:20px;
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
    <li class="onelink"><a href="index.php">首页</a></li>

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



<div id="content">



<div id="banner"></div>
<SCRIPT type=text/javascript>

// banner动画
baidu.dom.ready(function () {
    if (baidu.g('banner')) {
        Banner.init(baidu.g('banner'), [

{href: "http://fqjw.cbpt.cnki.net/WKB2/WebPublication/index.aspx?mid=FQJW", img: "img/banner1_1.jpg"},
{href: "http://www.gims.com.cn", img: "img/banner3_1.jpg"},
{href: "", img: "img/banner2_2.jpg"},
{href: "http://www.hernia.com.cn/", img: "img/banner4_1.jpg"},
{href: "", img: "img/banner5_1.jpg"}
  
        ], true);        
    }
});
</SCRIPT>

<div id="banner1"><a href="1/index.html" target=_blank><img src="img/zt1.jpg"></a></div>

<div id="huiyi">
<div id="hy1">
<!-- flash滚动焦点图 begin --> 
	<script type="text/javascript"> 
	<!-- 
	var focus_width=560;
	var focus_height=240;
	var text_height=0;
	var swf_height = focus_height+text_height;	
	var pics='img/13.jpg|img/13.jpg|img/huiyi.jpg' 
	var links='http://www.webles.cn/showarticle.php?articleid=1796|http://www.webles.cn/showarticle.php?articleid=1796|huiyi/index.html' 
	var texts='||'
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">'); 
	document.write('<param name="all</paramtAccess" value="sameDomain"><param name="movie" value="focus.swf"><param name="quality" value="high"><param name="bgcolor" value="#f0f0f0">'); 
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">'); 
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">'); 
	document.write('<embed src="focus.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#DADADA" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'); 
	document.write('</object>'); 
	--> 
	</script><noscript>你的浏览器不支持JS，无法正常显示图片新闻！</noscript>
<!-- flash滚动焦点图 end -->
</div>

<div id="hy2">
<a href="article.php?classid=89" target=_blank><img src="img/zsjz.jpg"></a></div>


</div>


<div id="layer1">

<div id="l1">
<!--开始-->
<TABLE cellSpacing=0 cellPadding=0 width=560 border=0 height=30>
<TR>
<TD style="width:120px;text-align:center;FONT-SIZE: 11pt; background: #048cd0; color:white;border-bottom:1px solid #048cd0"><B>最新资讯</b></td>
<td align=right style="border-bottom:1px solid #048cd0">
<a href="article.php?classid=64" target=_blank style="font-size:12px;COLOR: #048cd0">更多>></a>
</TD>
</TR>
</table>
<?php
require("config.php");
?>
<table cellpadding=0 cellspacing=0 width=100%>
<tr><td height=10></td></tr>
<?
$Query = "select * from article where classid=64 and deleted=0 and shenhe=1 order by istop desc,paixu desc,adddate desc,articleid desc limit 11 ";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$title=cut_str($r['title'],32,0,'gb2312');

$now=date("Y-m-d H:i:s");
$diff=getTimeDifference($now,$r['adddate']);
$strDateTime = explode(" ",$r['adddate']);
$strDate=explode("-",$strDateTime[0]);
?>

<tr>
<td height=24 style="text-align:left"><font color=#888888>·</font><a target=_blank href="showarticle.php?articleid=<?echo $r["articleid"];?>" title='<?echo $r["title"];?>'  style="font-size:14px"><?echo $title;?></a></td>
<td align=right style="color:#888888;">[<?echo $strDate[1];?>-<?echo $strDate[2];?>]</td>
</tr>
<?
}
?>

</table>

<?
mysql_close($mysql_link);
?>


<!--结束-->


</div>

<div id="r1">

<DIV id=player style="WIDTH: 400px;margin:0 auto;z-index:1">正在加载播放器...</DIV>
<SCRIPT src="ckplayer/ckplayer.js" type=text/javascript charset=utf-8></SCRIPT>

<SCRIPT type=text/javascript>
  var s1=new swfupload();
  s1.ckplayer_url='http://player.youku.com/player.php/sid/XMTI5NDk4MTg0MA==/v.swf';
  s1.ckplayer_endstatus=2;
  s1.ckplayer_volume=30;
  s1.ckplayer_play=0;
  s1.ckplayer_width=400;
  s1.ckplayer_height=300;
  s1.ckplayer_bgcolor='#000000';
  s1.ckplayer_allowFullScreen=true;
  s1.swfwrite('player');
      </SCRIPT></div>


</div>



<div id="layer2">

<div id="l2">
<!--开始-->

<TABLE cellSpacing=0 cellPadding=0 width=740 border=0 height=30>
<TR>
<TD style="width:120px;text-align:center;FONT-SIZE: 11pt; background: #048cd0; color:white;border-bottom:1px solid #048cd0"><B>最新视频</b></td>
<td align=right style="border-bottom:1px solid #048cd0">
<a href="article.php?classid=35" target=_blank style="font-size:12px;COLOR: #048cd0">更多>></a>
</TD>
</TR>
</table>

<TABLE cellSpacing=0 cellPadding=0 width=480 border=0>
<TR>
<td height=10></td>
</tr>
</table>

<script type="text/javascript">
<!--
//切换到相关页
function gopage(n) 
{
  var tag = document.getElementById("biaoti1").getElementsByTagName("li");
  var taglength = tag.length;

  for (i=1;i<=taglength;i++)
  {
    document.getElementById("m"+i).className="";
    document.getElementById("c"+i).style.display='none';
  }
    document.getElementById("m"+n).className="on";
    document.getElementById("c"+n).style.display='';
}
//-->
</script>

<div id="wrap1">

<div id="tupian1">
<?php
require("config.php");
?>
<?
$k=0;
$Query = "select * from video where isrec=1 order by id desc limit 4";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$k++;
$pic=$r['imgurl'];
?>
<div id="c<?echo $k;?>"  <?if($k>1){?>style="display:none"<?}?>><img src="<?echo $pic;?>" width=370 height=280></div>
<?
}
?>

<?
mysql_close($mysql_link);
?>


</div>


<div id="biaoti1">
<ul>

<?php
require("config.php");
?>
<?
$k=0;
$Query = "select * from video where isrec=1 order by id desc limit 4";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$k++;
$id=$r['id'];
$title=cut_str($r['title'],32,0,'gb2312');
?>
<li id="m<?echo $k?>" <?if($k==1){?>class="on"<?}?> <?if($k%2==0){?>style="background:#f0f0f0"<?}else{?>style="background:#ecf9ff"<?}?> onmouseover="javascript:gopage(<?echo $k?>)" onclick="javascript:window.open('show_video.php?id=<?echo $id;?>','video','width=930,height=560')"><a href=#><?echo $title;?></a></li>
<?
}
?>

<?
mysql_close($mysql_link);
?>



</ul>
</div>
</div>



<!--结束-->


</div>

<div id="r2">
<TABLE cellSpacing=0 cellPadding=0 width=220 border=0 height=30>
<TR>
<TD style="width:120px;text-align:center;FONT-SIZE: 11pt; background: #048cd0; color:white;border-bottom:1px solid #048cd0"><B>专家介绍</b></td>
<td align=right style="border-bottom:1px solid #048cd0">
<a href="article.php?classid=67" target=_blank style="font-size:12px;COLOR: #048cd0">更多>></a>&nbsp;
</TD>
</TR>
</table>
<table width=100% cellpadding=0 cellspacing=0>
<tr><td height=10></td></tr>
</table>



<table cellpadding=0 cellspacing=0 width=200 align="center">
<tr><td style="overflow:hidden">


<!--专家团队-->
<script type="text/javascript">

var Speed_1 = 10; //速度(毫秒)
var Space_1 = 20; //每次移动(px)
var PageWidth_1 = 220 * 1; //翻页宽度
var interval_1 = 5000; //翻页间隔时间
var fill_1 = 0; //整体移位
var MoveLock_1 = false;
var MoveTimeObj_1;
var MoveWay_1="right";
var Comp_1 = 0;
var AutoPlayObj_1=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_1(){clearInterval(AutoPlayObj_1);AutoPlayObj_1=setInterval('ISL_GoDown_1();ISL_StopDown_1();',interval_1)}
function ISL_GoUp_1(){if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="left";MoveTimeObj_1=setInterval('ISL_ScrUp_1();',Speed_1);}
function ISL_StopUp_1(){if(MoveWay_1 == "right"){return};clearInterval(MoveTimeObj_1);if((GetObj('ISL_Cont_1').scrollLeft-fill_1)%PageWidth_1!=0){Comp_1=fill_1-(GetObj

('ISL_Cont_1').scrollLeft%PageWidth_1);CompScr_1()}else{MoveLock_1=false}
AutoPlay_1()}
function ISL_ScrUp_1(){if(GetObj('ISL_Cont_1').scrollLeft<=0){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft+GetObj('List1_1').offsetWidth}
GetObj('ISL_Cont_1').scrollLeft-=Space_1}
function ISL_GoDown_1(){clearInterval(MoveTimeObj_1);if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="right";ISL_ScrDown_1

();MoveTimeObj_1=setInterval('ISL_ScrDown_1()',Speed_1)}
function ISL_StopDown_1(){if(MoveWay_1 == "left"){return};clearInterval(MoveTimeObj_1);if(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1-(fill_1>=0?fill_1:fill_1+1)!=0)

{Comp_1=PageWidth_1-GetObj('ISL_Cont_1').scrollLeft%PageWidth_1+fill_1;CompScr_1()}else{MoveLock_1=false}
AutoPlay_1()}
function ISL_ScrDown_1(){if(GetObj('ISL_Cont_1').scrollLeft>=GetObj('List1_1').scrollWidth){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft-GetObj

('List1_1').scrollWidth}
GetObj('ISL_Cont_1').scrollLeft+=Space_1}
function CompScr_1(){if(Comp_1==0){MoveLock_1=false;return}
var num,TempSpeed=Speed_1,TempSpace=Space_1;if(Math.abs(Comp_1)<PageWidth_1/2){TempSpace=Math.round(Math.abs(Comp_1/Space_1));if(TempSpace<1){TempSpace=1}}
if(Comp_1<0){if(Comp_1<-TempSpace){Comp_1+=TempSpace;num=TempSpace}else{num=-Comp_1;Comp_1=0}
GetObj('ISL_Cont_1').scrollLeft-=num;setTimeout('CompScr_1()',TempSpeed)}else{if(Comp_1>TempSpace){Comp_1-=TempSpace;num=TempSpace}else{num=Comp_1;Comp_1=0}
GetObj('ISL_Cont_1').scrollLeft+=num;setTimeout('CompScr_1()',TempSpeed)}}
function picrun_ini(){
GetObj("List2_1").innerHTML=GetObj("List1_1").innerHTML;
GetObj('ISL_Cont_1').scrollLeft=fill_1>=0?fill_1:GetObj('List1_1').scrollWidth-Math.abs(fill_1);
GetObj("ISL_Cont_1").onmouseover=function(){clearInterval(AutoPlayObj_1)}
GetObj("ISL_Cont_1").onmouseout=function(){AutoPlay_1()}
AutoPlay_1();
}
</script>

<!-- picrotate_left start  -->
<div class="blk_18"> 
  <div class="pcont" id="ISL_Cont_1">
    <div class="ScrCont">
      <div id="List1_1">
        <!-- piclist begin -->
<?php
require("config.php");
?>
<?
$Query = "select * from focus order by id desc";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$title=$r['title'];
$text=$r['text'];
$imgurl=$r['imgurl'];
$linkurl=$r['linkurl'];

?>

<div class="pl">
<table cellpadding=0 cellspacing=0 width=200 align="center">
<tr><td align=center><a href="<?echo $linkurl;?>" target=_blank style="font-size:14px;font-weight:800;"><img src="<?echo $imgurl;?>" height="240"></a></td></tr>
</table>
<table cellpadding=0 cellspacing=0 width=200 align="center">
<tr><td height=10></td></tr>
<tr>
<td style="font-size:14px;font-weight:800;line-height:20px;text-align:center">
<a href="<?echo $linkurl;?>" target=_blank style="font-size:14px;font-weight:800;"><?echo $title;?></a>
</td></tr>
</table>

</div>
<?
}
?>

<?
mysql_close($mysql_link);
?>

        <!-- piclist end -->
      </div>
      <div id="List2_1"></div>
    </div>
  </div>
   </div>
<div class="c"></div>
<script type="text/javascript">
        <!--
        picrun_ini()
        //-->
        </script>


</td></tr>
</table>




</div>


</div>


<div id="layer2">

<div id="l2">
<!--开始-->

<TABLE cellSpacing=0 cellPadding=0 width=740 border=0 height=30>
<TR>
<TD style="width:120px;text-align:center;FONT-SIZE: 11pt; background: #048cd0; color:white;border-bottom:1px solid #048cd0"><B>课程中心</b></td>
<td align=right style="border-bottom:1px solid #048cd0">
<a href="article.php?classid=35" target=_blank style="font-size:12px;COLOR: #048cd0">更多>></a>
</TD>
</TR>
</table>

<TABLE cellSpacing=0 cellPadding=0 width=740 border=0>
<TR>
<td height=10></td>
</tr>
</table>


<script type="text/javascript">
<!--
//切换到相关页
function gopage1(n) 
{
  var tag = document.getElementById("biaoti2").getElementsByTagName("li");
  var taglength = tag.length;

  for (i=1;i<=taglength;i++)
  {
    document.getElementById("mm"+i).className="";
    document.getElementById("cc"+i).style.display='none';
  }
    document.getElementById("mm"+n).className="on";
    document.getElementById("cc"+n).style.display='';
}
//-->
</script>

<div id="wrap2">

<div id="tupian2">

<?php
require("config.php");
?>
<?
$k=0;
$Query = "select * from article where classid=66 and deleted=0 and shenhe=1 and isrec=1 order by istop desc,paixu desc,adddate desc,articleid desc limit 4 ";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$k++;
$pic=$r['defaultpic'];
?>
<div id="cc<?echo $k;?>"  <?if($k>1){?>style="display:none"<?}?>><img src="<?echo $pic;?>" width=370 height=280></div>
<?
}
?>

<?
mysql_close($mysql_link);
?>


</div>


<div id="biaoti2">
<ul>
<?php
require("config.php");
?>
<?
$k=0;
$Query = "select * from article where classid=66 and deleted=0 and shenhe=1 and isrec=1 order by istop desc,paixu desc,adddate desc,articleid desc limit 4";
$result = mysql_query($Query, $mysql_link); 
?>
<?
while($r=mysql_fetch_array($result))
{
$k++;
$id=$r['id'];
$title=cut_str($r['title'],21,0,'gb2312');
?>
<li id="mm<?echo $k?>" <?if($k==1){?>class="on"<?}?> <?if($k%2==0){?>style="background:#f0f0f0"<?}else{?>style="background:#ecf9ff"<?}?> onmouseover="javascript:gopage1(<?echo $k?>)" onclick="javascript:window.open('showarticle.php?articleid=<?echo $r["articleid"];?>','kczx')"><a href="showarticle.php?articleid=<?echo $r["articleid"];?>" target=_blank><?echo $title;?></a></li>
<?
}
?>

<?
mysql_close($mysql_link);
?>



</ul>
</div>
</div>




<!--结束-->


</div>

<div id="r2">

</div>


</div>

<div id="layer3">

<div id="l3">


<TABLE cellSpacing=0 cellPadding=0 width=740 border=0 height=30>
<TR>
<TD style="width:120px;text-align:center;FONT-SIZE: 11pt; background: #048cd0; color:white;border-bottom:1px solid #048cd0"><B>技术支持</b></td>
<td align=right style="border-bottom:1px solid #048cd0">
<a href="article.php?classid=35" target=_blank style="font-size:12px;COLOR: #048cd0">更多>></a>
</TD>
</TR>
</table>
<TABLE cellSpacing=0 cellPadding=0 width=740 border=0>
<tr><td height=10></td></tr>
<tr>
<td>
<img src="img/jszc1.jpg" style="border:1px solid #dddddd"> <img src="img/jszc2.jpg" style="border:1px solid #dddddd">  <img src="img/jszc3.jpg" style="border:1px solid #dddddd">
</td>
</tr>
<tr><td height=10></td></tr>
</table>

</div>
<div id="r3">
<TABLE cellSpacing=0 cellPadding=0 width=220 border=0 height=30>
<TR>
<TD style="width:120px;text-align:center;FONT-SIZE: 11pt; background: #048cd0; color:white;border-bottom:1px solid #048cd0"><B>联系我们</b></td>
<td align=right style="border-bottom:1px solid #048cd0">
&nbsp;
</TD>
</TR>
</table>
<table width=100% cellpadding=0 cellspacing=0>
<tr><td height=10></td></tr>
</table>

<table width=200 cellpadding=0 cellspacing=0 align=center>
<tr><td style="font-size:12px;line-height:22px">

地址：济南市文化西路107号<br>
电话：0531-86920598<br>
E-mail：fqjbjb@163.com<br>
网址：www.webles.cn<br>
</td></tr>
</table>

</div>


</div>

<div id="layer4">
Copyright (c) 2010   腹腔镜外科杂志版权所有   E-mail：fqjbjb@163.com  联系电话：0531-86920598  鲁ICP备10022060号

</div>


</div>
<?php
require("floatimg.php");
?>

</body>
</html>

</body>