<?php
session_start();
require("check_admin.php");
?>
<?php 
$uptypes=array('application/vnd.ms-excel', //�ϴ��ļ������б� 
'application/vnd.ms-powerpoint', 
'application/octet-stream', 
'application/msword',
'application/kswps',
'application/kset',
'application/x-shockwave-flash',
'video/x-ms-wmv',
'video/mpg',
'video/x-ms-asf',
'image/jpg',
'image/jpeg', 
'image/png', 
'image/pjpeg', 
'image/gif', 
'image/bmp', 
'image/x-png',
'application/vnd.rn-realmedia',
'audio/x-pn-realaudio',
'application/vnd.rn-realmedia-vbr'
); 
$max_file_size=500000000; //�ϴ��ļ���С����, ��λBYTE 
$destination_folder="../upload/"; //�ϴ��ļ�·�� 
?> 
<html>
<link rel="stylesheet" type="text/css" href="editor_dialog.css">
<title>�ϴ��ļ�</title>
<script language="javascript">
function returnfile(m)
{
parent.document.form1.url.value=m;
parent.document.form1.UpFileName.value=m;
}
</script>
<body bgColor=D4D0C8 topmargin=0 leftmargin=5> 
<form enctype="multipart/form-data" method="post" name="upform"> 
�ϴ��ļ�:<input name="upfile" type="file">&nbsp;&nbsp;<input type="submit" value="�ϴ�">
</form> 
<?php 
if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{ 
if (!is_uploaded_file($_FILES["upfile"][tmp_name])) 
{ 
echo "<script>window.location ='upload_error.php?f=file&err=�ļ������ڣ�';</script>";
exit; 
} 
$file = $_FILES["upfile"]; 
if($max_file_size < $file["size"]) 
{ 
echo "<script>window.location ='upload_error.php?f=file&err=�ļ�̫��';</script>";
exit; 
} 


if(!in_array($file["type"], $uptypes)) 
{ 
echo "<script>window.location ='upload_error.php?f=file&err=�����ϴ������͵��ļ���';</script>";
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
echo "<script>window.location ='upload_error.php?f=file&err=ͬ���ļ��Ѿ������ˣ�';</script>";
exit; 
} 
if(!move_uploaded_file ($filename, $destination)) 
{
echo "<script>window.location ='upload_error.php?f=file&err=�ƶ��ļ�����';</script>";
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