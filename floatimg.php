<?php
require("config.php");
?>
<?
$a=0;
$b=0;
$c=0;
$Query = "select * from floatimg where position=0 and pass=1";
$result = mysql_query($Query, $mysql_link); 
if($r=mysql_fetch_array($result))
{
$a=$a+1;
}
$Query = "select * from floatimg where position=1 and pass=1";
$result = mysql_query($Query, $mysql_link); 
if($r=mysql_fetch_array($result))
{
$b=$b+1;
}
$Query = "select * from floatimg where position=2 and pass=1";
$result = mysql_query($Query, $mysql_link); 
if($r=mysql_fetch_array($result))
{
$c=$c+1;
}
mysql_close($mysql_link);
?>
<?
if($a==1)
{
?>
<SCRIPT type=text/javascript> 
function addEvent(obj,evtType,func,cap){ 
cap=cap||false; 
if(obj.addEventListener){ 
obj.addEventListener(evtType,func,cap); 
return true; 
}else if(obj.attachEvent){ 
if(cap){ 
obj.setCapture(); 
return true; 
}else{ 
return obj.attachEvent("on" + evtType,func); 
} 
}else{ 
return false; 
} 
} 
function getPageScroll(){ 
var xScroll,yScroll; 
if (self.pageXOffset) { 
xScroll = self.pageXOffset; 
} else if (document.documentElement && document.documentElement.scrollLeft){ 
xScroll = document.documentElement.scrollLeft; 
} else if (document.body) { 
xScroll = document.body.scrollLeft; 
} 
if (self.pageYOffset) { 
yScroll = self.pageYOffset; 
} else if (document.documentElement && document.documentElement.scrollTop){ 
yScroll = document.documentElement.scrollTop; 
} else if (document.body) { 
yScroll = document.body.scrollTop; 
} 
arrayPageScroll = new Array(xScroll,yScroll); 
return arrayPageScroll; 
} 
function GetPageSize(){ 
var xScroll, yScroll; 
if (window.innerHeight && window.scrollMaxY) { 
xScroll = document.body.scrollWidth; 
yScroll = window.innerHeight + window.scrollMaxY; 
} else if (document.body.scrollHeight > document.body.offsetHeight){ 
xScroll = document.body.scrollWidth; 
yScroll = document.body.scrollHeight; 
} else { 
xScroll = document.body.offsetWidth; 
yScroll = document.body.offsetHeight; 
} 
var windowWidth, windowHeight; 
if (self.innerHeight) { 
windowWidth = self.innerWidth; 
windowHeight = self.innerHeight; 
} else if (document.documentElement && document.documentElement.clientHeight) { 
windowWidth = document.documentElement.clientWidth; 
windowHeight = document.documentElement.clientHeight; 
} else if (document.body) { 
windowWidth = document.body.clientWidth; 
windowHeight = document.body.clientHeight; 
} 
if(yScroll < windowHeight){ 
pageHeight = windowHeight; 
} else { 
pageHeight = yScroll; 
} 
if(xScroll < windowWidth){ 
pageWidth = windowWidth; 
} else { 
pageWidth = xScroll; 
} 
arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight) 
return arrayPageSize; 
} 

var AdMoveConfig=new Object(); 
AdMoveConfig.IsInitialized=false; 
AdMoveConfig.ScrollX=0; 
AdMoveConfig.ScrollY=0; 
AdMoveConfig.MoveWidth=0; 
AdMoveConfig.MoveHeight=0; 
AdMoveConfig.Resize=function(){ 
var winsize=GetPageSize(); 
AdMoveConfig.MoveWidth=winsize[2]; 
AdMoveConfig.MoveHeight=winsize[3]; 
AdMoveConfig.Scroll(); 
} 
AdMoveConfig.Scroll=function(){ 
var winscroll=getPageScroll(); 
AdMoveConfig.ScrollX=winscroll[0]; 
AdMoveConfig.ScrollY=winscroll[1]; 
} 
addEvent(window,"resize",AdMoveConfig.Resize); 
addEvent(window,"scroll",AdMoveConfig.Scroll); 
function AdMove(id){ 
if(!AdMoveConfig.IsInitialized){ 
AdMoveConfig.Resize(); 
AdMoveConfig.IsInitialized=true; 
} 
var obj=document.getElementById(id); 
obj.style.position="absolute"; 
var W=AdMoveConfig.MoveWidth-obj.offsetWidth; 
var H=AdMoveConfig.MoveHeight-obj.offsetHeight; 
var x = W*Math.random(),y = H*Math.random(); 
var rad=(Math.random()+1)*Math.PI/6; 
var kx=Math.sin(rad),ky=Math.cos(rad); 
var dirx = (Math.random()<0.5?1:-1), diry = (Math.random()<0.5?1:-1); 
var step = 1; 
var interval; 
this.SetLocation=function(vx,vy){x=vx;y=vy;} 
this.SetDirection=function(vx,vy){dirx=vx;diry=vy;} 
obj.CustomMethod=function(){ 
obj.style.left = (x + AdMoveConfig.ScrollX) + "px"; 
obj.style.top = (y + AdMoveConfig.ScrollY) + "px"; 
rad=(Math.random()+1)*Math.PI/6; 
W=AdMoveConfig.MoveWidth-obj.offsetWidth; 
H=AdMoveConfig.MoveHeight-obj.offsetHeight; 
x = x + step*kx*dirx; 
if (x < 0){dirx = 1;x = 0;kx=Math.sin(rad);ky=Math.cos(rad);} 
if (x > W){dirx = -1;x = W;kx=Math.sin(rad);ky=Math.cos(rad);} 
y = y + step*ky*diry; 
if (y < 0){diry = 1;y = 0;kx=Math.sin(rad);ky=Math.cos(rad);} 
if (y > H){diry = -1;y = H;kx=Math.sin(rad);ky=Math.cos(rad);} 
} 
this.Run=function(){ 
var delay = 10; 
interval=setInterval(obj.CustomMethod,delay); 
obj.onmouseover=function(){clearInterval(interval);} 
obj.onmouseout=function(){interval=setInterval(obj.CustomMethod, delay);} 
} 
} 
function Closedivfloat()
{
document.getElementById("ad1").style.visibility="hidden";
}
</SCRIPT>
<DIV id=ad1 style="Z-INDEX: 5;text-align:left"> 
<!--漂浮开始--> 

<?php
require("config.php");
?>
<?
$Query = "select * from floatimg where position=0 and pass=1 order by paixu asc";
$result = mysql_query($Query, $mysql_link); 
while($r=mysql_fetch_array($result))
{
?>
<A href="<?echo $r["linkurl"];?>" target=_blank><IMG src="<?echo $r["imgurl"];?>" border=0></A><br>
<?
}
mysql_close($mysql_link);
?>
<a href='javascript:void(0)' onclick='javascript:Closedivfloat()'><img src='img/close.jpg' border=0></a>
<!--漂浮结束--> 
</DIV> 
<SCRIPT type=text/javascript><!-- 
var ad1=new AdMove("ad1"); 
ad1.Run(); 
        //多组漂浮 
        //var ad1=new AdMove("ad2"); 
//ad2.Run(); 
//--> 
</SCRIPT>
<?
}
?>

<script language="JavaScript" type="text/javascript">
lastScrollY=0;
function heartBeat(){
var diffY;
if (document.documentElement && document.documentElement.scrollTop)
diffY = document.documentElement.scrollTop;
else if (document.body)
diffY = document.body.scrollTop
else
{/*Netscape stuff*/}
//alert(diffY);
percent=.1*(diffY-lastScrollY);
if(percent>0)percent=Math.ceil(percent);
else percent=Math.floor(percent);
<?
if($b==1)
{
?>
document.getElementById("LeftAd").style.top=parseInt(document.getElementById("LeftAd").style.top)+percent+"px";
<?
}
?>
<?
if($c==1)
{
?>
document.getElementById("RightAd").style.top=parseInt(document.getElementById("RightAd").style.top)+percent+"px";
<?
}
?>
lastScrollY=lastScrollY+percent;
//alert(lastScrollY);
}
<?
if($b==1)
{
?>
suspendcode12="<DIV id=LeftAd style='left:5px;POSITION:absolute;TOP:80px;text-align:left'>";

<?php
require("config.php");
?>
<?
$Query = "select * from floatimg where position=1 and pass=1 order by paixu asc";
$result = mysql_query($Query, $mysql_link); 
while($r=mysql_fetch_array($result))
{
?>

suspendcode12=suspendcode12+"<A href='<?echo $r["linkurl"];?>' target=_blank><IMG src='<?echo $r["imgurl"];?>' border=0></A><br>";
<?
}
mysql_close($mysql_link);
?>
suspendcode12=suspendcode12+"<a href='javascript:void(0)' onclick='javascript:ClosedivLeft()' hidefocus='true'><img src='img/close.jpg' border=0></a></div>";
<?
}
?>
<?
if($c==1)
{
?>

suspendcode14="<DIV id=RightAd style='right:5px;POSITION:absolute;TOP:80px;text-align:left'>";
<?php
require("config.php");
?>
<?
$Query = "select * from floatimg where position=2 and pass=1 order by paixu asc";
$result = mysql_query($Query, $mysql_link); 
while($r=mysql_fetch_array($result))
{
?>
suspendcode14=suspendcode14+"<A href='<?echo $r["linkurl"];?>' target=_blank><IMG src='<?echo $r["imgurl"];?>' border=0></A><br>";
<?
}
mysql_close($mysql_link);
?>
suspendcode14=suspendcode14+"<a href='javascript:void(0)' onclick='javascript:ClosedivRight()' hidefocus='true'><img src='img/close.jpg' border=0></a></div>";
<?
}
?>
<?
if($b==1)
{
?>
document.write(suspendcode12);
<?
}
?>
<?
if($c==1)
{
?>
document.write(suspendcode14);
<?
}
?>
window.setInterval("heartBeat()",1);
<?
if($b==1)
{
?>
function ClosedivLeft()
{
LeftAd.style.visibility="hidden";
}
<?
}
?>
<?
if($c==1)
{
?>
function ClosedivRight()
{
RightAd.style.visibility="hidden";
}
<?
}
?>
</script>



 