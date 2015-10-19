<?php
//存放图片文件
$upload_path="../upload/";

//打开photo文件夹
if ($handle = opendir($upload_path)) {
//读取文件夹里的文件
while (false !== ($file = readdir($handle)))
{
   //正则表达式筛选文件并读取文件名的信息
   if ( preg_match( "/[.]jpg|gif|png|bmp|jpeg$/", $file ) ) {
    preg_match( "/_(\d+)_(\d+)[.]/", $file, $found );
    //打印读取的文件信息
    echo "<img src=../upload/".$file." width=240>";
    echo "<br>";
    echo "<br>";
   }
}
//关闭文件夹
closedir($handle);
}
exit;
?>
