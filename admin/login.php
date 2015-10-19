<?php
session_start();
?>
<?
require("config.php");
?>
<?
$now=date("Y-m-d");
$user=$_POST['admin_user'];
$passwd=$_POST['admin_passwd'];
if ($user && $passwd){
$sql = "SELECT * FROM admin WHERE user = '$user' and passwd='$passwd' and expire>='$now'";
$res = mysql_query($sql);
$rows=mysql_num_rows($res);
 $r=mysql_fetch_array($res);
if($rows){
$_SESSION['admin_user']=$r["user"];
$_SESSION['admin_passwd']=$r["passwd"];
$_SESSION['admin_class']=$r["class"];
$_SESSION['admin_expire']=$r["expire"];
$_SESSION['admin_item']=$r["item"];
$_SESSION['admin_classid']=$r["classid"];
$_SESSION['admin_login']="sadfks3424sgxy";
echo "<script language=javascript>window.location='admin_index.php'</script>"; 
exit;
 } 
echo "<script language=javascript>alert('”√ªß√˚√‹¬Î¥ÌŒÛ');history.back();</script>"; }
mysql_close($mysql_link);
?>