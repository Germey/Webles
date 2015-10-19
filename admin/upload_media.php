<?php
session_start();
require("check_admin.php");
?>
<?php 
$uptypes=array('video/x-ms-wmv',
'video/mpg',
'video/x-ms-asf'); 
$max_file_size=5000000; //上传文件大小限制, 单位BYTE 
$destination_folder="../upload/"; //上传文件路径 
?> 
<html>
<link rel="stylesheet" type="text/css" href="editor_dialog.css">
<title>上传视频</title>
<script language="javascript">
function returnfile(m)
{
parent.document.form1.url.value=m;
}
</script>
<body bgColor=D4D0C8 topmargin=0 leftmargin=5> 
<form enctype="multipart/form-data" method="post" name="upform"> 
上传文件:<input name="upfile" type="file">&nbsp;&nbsp;<input type="submit" value="上传">
</form> 
<?php 
if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{ 
if (!is_uploaded_file($_FILES["upfile"][tmp_name])) 
{ 
echo "<script>window.location ='upload_error.php?f=media&err=文件不存在！';</script>";
exit; 
} 
$file = $_FILES["upfile"]; 
if($max_file_size < $file["size"]) 
{ 
echo "<script>window.location ='upload_error.php?f=media&err=文件太大！';</script>";
exit; 
} 


if(!in_array($file["type"], $uptypes)) 
{ 
echo "<script>window.location ='upload_error.php?f=media&err=不能上传该类型的文件！';</script>";
exit; 
} 
if(!file_exists($destination_folder)) 
mkdir($destination_folder); 
$filename=$file["tmp_name"]; 
$image_size = getimagesize($filename); 
$pinfo=pathinfo($file["name"]); 
$ftype=$pinfo[extension]; 
$destination = $destination_folder.time().".".$ftype; 
if (file_exists($destination) && $overwrite != true) 
{ 
echo "<script>window.location ='upload_error.php?f=media&err=同名文件已经存在了！';</script>";
exit; 
} 
if(!move_uploaded_file ($filename, $destination)) 
{
echo "<script>window.location ='upload_error.php?f=media&err=移动文件出错！';</script>";
exit; 
} 
$pinfo=pathinfo($destination); 
$fname=$pinfo[basename]; 
echo "<script>returnfile('upload/".$fname."')</script>";
echo "<script>window.location ='upload_success.php';</script>";
} 
?> 
</body> 
</html>