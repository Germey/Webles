<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$user=$_SESSION['admin_user'];
$passwd=$_SESSION['admin_passwd'];
$old_passwd=$_POST['old_passwd'];
$new_passwd=$_POST['new_passwd'];
if($old_passwd!=$passwd)
{
echo "<script language=javascript>alert('���������');history.back();</script>"; 
exit; 
}
$sql = "update admin set passwd='$new_passwd' WHERE user = '$user' and passwd='$old_passwd'";
$res = mysql_query($sql);
if(!res){
echo "<script language=javascript>alert('����ʧ��');history.back();</script>"; 
exit; 
}
echo "<script language=javascript>alert('���ס��������룺".$new_passwd."');window.location='exit.php';</script>"; 
?>
<?
mysql_close();
?>