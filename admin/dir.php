<?php
//���ͼƬ�ļ�
$upload_path="../upload/";

//��photo�ļ���
if ($handle = opendir($upload_path)) {
//��ȡ�ļ�������ļ�
while (false !== ($file = readdir($handle)))
{
   //������ʽɸѡ�ļ�����ȡ�ļ�������Ϣ
   if ( preg_match( "/[.]jpg|gif|png|bmp|jpeg$/", $file ) ) {
    preg_match( "/_(\d+)_(\d+)[.]/", $file, $found );
    //��ӡ��ȡ���ļ���Ϣ
    echo "<img src=../upload/".$file." width=240>";
    echo "<br>";
    echo "<br>";
   }
}
//�ر��ļ���
closedir($handle);
}
exit;
?>
