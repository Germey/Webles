<?php
session_start();
require("check_admin.php");
require("config.php");
?>
<?
$file=$_GET['file'];
unlink($file);
echo "<script language=javascript>alert('�����ɹ�');window.location='showfile.php';</script>";
?>