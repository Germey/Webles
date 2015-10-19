CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user` varchar(25) NOT NULL DEFAULT '',
  `passwd` varchar(25) NOT NULL DEFAULT '',
  `class` int(4) NOT NULL DEFAULT '0',
  `expire` date NOT NULL DEFAULT '0000-00-00',
  `item` mediumtext NOT NULL,
  `classid` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','admin123','1','3008-08-27','#����û�##�༭�û�##�����Ŀ##�༭��Ŀ##�������##�༭����##�鿴����վ##������##�༭���##�������##�༭����##�����Ƶ##�༭��Ƶ##��ӹ���ͼƬ##�༭����ͼƬ##��Ӹ���ͼ��##�༭����ͼ��##�������ݿ�##�鿴����#','\'a\',\'64\',\'65\',\'73\',\'74\',\'75\',\'76\',\'77\',\'78\',\'79\',\'80\',\'66\',\'67\',\'81\',\'82\',\'83\',\'84\',\'85\',\'86\',\'87\',\'88\',\'68\',\'69\',\'89\',\'b\'');

CREATE TABLE `article` (
  `articleid` int(4) NOT NULL AUTO_INCREMENT,
  `classid` int(4) NOT NULL DEFAULT '0',
  `title` mediumtext NOT NULL,
  `writer` varchar(25) NOT NULL DEFAULT '',
  `source` varchar(25) NOT NULL DEFAULT '',
  `editor` varchar(25) NOT NULL DEFAULT '',
  `adddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `urllink` mediumtext NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `shenhe` int(4) NOT NULL DEFAULT '0',
  `istop` int(4) NOT NULL DEFAULT '0',
  `ishot` int(4) NOT NULL DEFAULT '0',
  `isrec` int(4) NOT NULL DEFAULT '0',
  `ispic` int(4) NOT NULL DEFAULT '0',
  `defaultpic` mediumtext NOT NULL,
  `deleted` int(4) NOT NULL DEFAULT '0',
  `hits` int(4) NOT NULL DEFAULT '0',
  `paixu` int(11) NOT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=MyISAM AUTO_INCREMENT=1747 DEFAULT CHARSET=gbk;

insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1710','69','��������','','','admin','2014-11-08 06:51:37','','&nbsp; &nbsp; ��ǻ��������1992���ڹ��ڿ�չ���������䴴��С���ָ�����ŵ�õ�ҽ����Աϲ������һ�¼���Ѹ��Ӧ�õ����⡢�����ơ����⡢�����⡢����Ƶȿ��ң�Ϊ�ٽ�ѧ����������߼���ˮƽ�����Ǵ����ˡ���ǻ�������־����<br />
&nbsp; &nbsp; ����ǻ�������־��������1996��11�£�ɽ��ʡ��ʱ���ţ�³�ڿ���398�ţ���ΪС16������64��ҳ�룬������ɽ��ҽ�ƴ�ѧ����ҽԺ����ɽ����ѧ��³ҽԺ�����졣���ࣺ��ϣ�ꡢ��骺����༭�����κ���Ԫ����������˵�һ���ί�ᣬ��ί24�ˡ������������Կ�������־�ܵ��˹�����֪��ר�Һ͹��ǻ��ҽ�����ߵĺ�����2000��9�»�������ų�����ͿƼ�����׼����׼�ĺ�[2000]��310�ţ�������ֵ��У����־ע��Ϊ���������ܣ�ɽ����ѧ����Ĺ����⹫�����е�ѧ���ڿ�������CN 37-1361/R��ISSN 1009-6612����16����64ҳ�룬�������ÿ���ȫ��Ψһ�ĸ�ǻ�����רҵ���Ҳ���л�ҽѧ����Ʒֻḹǻ��-�ھ����ѧ���רҵ���ڿ�����־���ʣ���־ǿԺʿ��������Ժʿ�������Ժʿ������̪Ժʿ��֣��ɭԺʿ�����ϳ�Ժʿ�ȣ����ࣺ֣�񻪡�����Ԫ������֣��Ϊ�л�ҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤�������ࣺ���ܹ⡢��������󻪡������ȣ����Σ����ı������ڡ�2000��12�±����ڼ����ٿ��˵ڶ����ί�ᣬ��ί����70���ˣ����Թ�����30��Ҵ�ҽԺ����Լ��ί25�ˣ�������������Ա40���ˣ�������30�ˡ���Ϊ����������ǻ�����ר�ҡ�2005��12�±����༭�����Ϻ��ٿ��˵������ί�ᣬ��ί���Թ�����50��Ҵ�ҽԺ��110���ˣ���Լ��ί43�ˣ�������������Ա90���ˣ�������20���ˣ�˶ʿ����ʦ80���ˡ��ҹ���۵�����ί3�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ���Ϊ������������ǻ�����ר�ҡ�2010��9���ڼ����ٿ����Ľ��ί�ᣬ��ί���Թ�����90��Ҵ�ҽԺ��250���ˡ�������200���ˣ��ҹ���۵�����ί4�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ������1�ˣ���Ϊ������������ǻ�����ר�ҡ�<br />
&nbsp; &nbsp; 2001��ȱ��������й��ڿ�ȫ�����ݿ⣨CJFD�������й��Ƽ������ڿ��������й��Ƽ��ڿ����ݿ⡷�����й��Ƽ�����ѧ�������ݿ�棨CSTPCD����������������ҽѧ�ڿ��������ݿ⣨CMCC���������й�����ҽѧ���׼�������ϵͳ�������ݿ⣨CBMdisc���������й�ѧ���ڿ��ۺ��������ݿ⡷����¼��ͨ��Inter�����������̼������ɲ��ġ�2002�걻��Ϊ�����컪�����������ڿ���2004��5��������־��������վ��http://www.fqjwkzz.cn����2006�걾�������й��Ƽ���Ϣ�о����ۺ�����������¼Ϊ�й��Ƽ������ڿ����й�ͳ��Դ�ڿ����������ҹ���ǻ�����רҵ�Ĳ��Ϸ�չ�������Ѳ�����������ߵ�����2004�꾭ɽ��ʡ���ų������׼��Ϊ˫�¿���2006��ҳ������90ҳ��2009����Ϊ�¿���80ҳ�롣<br />
&nbsp; &nbsp; ��־������2011��4�µף�������75�ڣ���Լ1120���֣����ո��5443ƪ������2431ƪ����������33ƪ��ר�ұ�̸52ƪ��ר���о�340ƪ������1308ƪ������116ƪ�������о���չ1ƪ���ٴ�����197ƪ������146ƪ����������197ƪ����������6ƪ��Ӣ�ĸ�1ƪ������7ƪ��<br />
&nbsp; &nbsp; ������֡�˫�١����룬�����ٴ����᳹������ʵ�����ٴ�����У��ռ���������ϵķ��룬ʵ�����ǣ���ʱ������ǻ����Ƶ��¼������¾��飬�ƹ㸹ǻ����Ƶ��о��ɹ���������Ҫ��Ŀ��������ר�ұ�̸��ר���о���������������Ӣ�ĸ塢�ٴ����顢��������ȣ�ÿ�ھ�����ȫ��֪����ǻ��ר�ҵ�������ר�ұ�̸��ר�⽲����������԰���������ڵ�31��ʡ����������ֱϽ�У��������ҽԺ��ҽѧԺ�����ҽʦ����ǻ��ҽ�����ߺ�ͼ��ݷ��У��ʷ�����24-171��<br />
&nbsp; &nbsp; Ϊ������־�����ѧ���Ӱ�죬��߱���֪���ȣ�1998����2010����ױ����ɹ�������15��ȫ����10��ɽ��ʡ��ǻ������ѧϰ�༰���ֻᣬ2�ι��ʸ�ǻ���ھ����ѧ�����ֻᣬ�����Ա5400���ˣ��ձ���Yugo Nagai���ڣ�������Park���ڼ�Frezza���ڱ�ƸΪ������������ί��ר�̲ι��ˡ���ǻ�������־���༭������������ר��ѧ�����棬��ϸ�����˹��⸹ǻ����Ƶķ�չ�������������Ӧ֤������֤��ѡ���벢��֢�Ĵ�����Щ��ܺõ��ƶ�����ʡ��ǻ���������ʵĽ�������ϵ����Ϊ�ҹ���ǻ�����ҽ�����߽���ѧ��̽�֡������ܽ��ṩ�����õĻ��ᣬ���ҹ���ǻ����Ƶķ�չ��������˾޴���ƶ����á�<br />
&nbsp; &nbsp; 2009����й��Ƽ��ڿ���֤���棨���İ棩�У�����Ӱ������Ϊ0.381���ܱ���Ƶ��485��������0.78,ƽ��������6.83��<br />
&nbsp; &nbsp; ������������һֱ�ܵ������ߵĺ��������߷�Χ��������������Ӱ������������������󣬱����������Լ��Ĳ��㣬�������ƺͷ�չ���ң��߾�ȫ����������ɹ���һ����ѧ�����Ϊȫ������ҹ���ǻ�����ҽ����Ա������ˮƽ�ͼ���ˮƽ���ٽ�ѧ����������չ�ҹ���ǻ����Ʒ���<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1711','89','��������','','','admin','2014-11-08 06:58:01','','&nbsp; &nbsp; ɽ����ѧ��³ҽԺ���������ھ����Ƽ�����ѵ���ء���ɽ��ʡ��ͨ���רҵΨһ�ľ���������֤�ĸ�ǻ���ھ�ҽʦ��ѵ���أ�ʦ������ǿ�󣬾��ж���ĸ�ǻ����ѵ���飬�Լ���ǻ��ҽʦѧ������ƽ̨�������й��Ƽ������ڿ�������ǻ�������־����������ѵ���400��ƽ���ף��䱸����յ������缰���ߵ��ӣ���ѵ�豸�Ƚ��������걸�������������������и�ǻ��ģ��ѵ���ҡ����ʵ�飩�����ҡ������������ʵѵ���ҡ���ý����ң�������³ҽԺ��ǻ��������ͬ��ֱ����������ͼ���ҡ���Ъ�Ҽ�ԡ�ҵȳ�����<br />
<br />
&nbsp; &nbsp; ��ѵ����ÿ������ȫ���ٰ�6�ڸ�ǻ��ҽʦ��ѵ�࣬ÿ��18�ˣ���ѵʱ��2�ܣ��ϸ����������ھ���ѵ���ر�׼����ѵҪ��������ѵ��ѧ��4000Ԫ/��/�ڡ�ʳ����������ʱ�����������Ʒ����λ�����š�ִҵҽʦ�ʸ�֤��һ�缰������Ƭ�����š�ɽ����ѧ��³ҽԺ��ǻ��ҽʦ���ޱ�������ڡ���ǻ�������־����վ��ѯ����ַ��http://www.fqjwkzz.cn��<br />
<br />
&nbsp; &nbsp; �����绰��0531-82169442 E-mail��zlf8832@163.com<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1712','64','����һƪ������ѡ��2010���й���ƪ���Ӱ�����ѧ�����ġ�  ','','','admin','2012-01-06 08:42:08','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>2011��12��2�տƼ����й���ѧ������Ϣ�о����������й��Ƽ��ڿ����۽����2010�꡶��ǻ�������־���ܱ���Ƶ��Ϊ983�Σ�Ӱ������Ϊ0.714�������ѧ��59�ֺ����ڿ����е�10λ����������ĵ���Ϣ�ǣ��ҹ�֪����ǻ��ר�Һ���Ԫ�����쵼���о�С�鷢���ڱ���2009������ġ��������굥�׸�ǻ�������г�������ѡ��2010���й���ƪ���Ӱ�����ѧ�����ġ�����ǻ�������־��2009���14���1��18~20ҳ����<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �˴δ�ṫ����2010���ҹ����ڿƼ����Ĺ�����53.06��ƪ����������ҽҩ��������ԼΪ23.1��ƪ����2010���й���ƪ���Ӱ�����ѧ�����ġ��Ǵ�2006~2010���й��Ƽ��������������ݿ⣨CSTPCD������¼�������а������Ĵ����ԡ����ķ����ڿ�ˮƽ���Ƿ������о��ȵ㡢���ı���֤���ȶ���ָ��ѡȡ�ģ�����ҽѧ�๲��29ƪ������ѡ��&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���굥�׸�ǻ�������ǽ��긹ǻ��������о��ȵ㣬����Ԫ�����쵼���о�С�������˾��á����㡢���еľ��굥������װ�ã����ٴ�Ӧ�ñ�����Ӧ�ø�װ���о��굥�׸�ǻ�������г�����ȫ������Ч��������ȫ���õ��ƹ�Ӧ�ã����о��ѻ��ɽ��ʡ�Ƽ��������Ƚ����˴�������ѡ��ƪ���Ӱ�����ѧ�����ģ����������˸��о��Ĵ�����ǿ��Ҳ��������ǻ�������־���ѳ����ɳ�Ϊ�ڹ��ھ���һ��Ӱ������ҽѧ������ڿ���&nbsp;<br />
</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>����һ���� һ������ &nbsp;&nbsp;&nbsp;&nbsp;�����༭�� &nbsp; &nbsp;&nbsp;</span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1713','64','ɽ����ѧ��³ҽԺ������ �ھ����Ƽ�����ͨ�����ѵ������֪ͨ','','','admin','2012-02-07 08:43:43','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>ɽ����ѧ��³ҽԺ�������ھ����Ƽ�����ͨ��Ƶڶ�ʮ����ѵ�ඨ��2012��3�¿��࣬�ֿ�ʼ���������屨��Ҫ�������ͨ����ھ����Ƽ�����ѵ�����������¡�<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://www.fqjwkzz.cn/doc/423423424242345666.doc\">��������ͨ����ھ����Ƽ�����ѵ������������</a></span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>����</span><span>�� &nbsp;&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>����һ���� ��������</span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1714','64','ɽ����ѧ��³ҽԺ������ �ھ����Ƽ�����ͨ�����ѵ������֪ͨ','','','admin','2012-04-08 08:44:40','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; ɽ����ѧ��³ҽԺ���ڶ�ʮһ����������ͨ����ھ����Ƽ�����ѵ�ࡱ����2012��5��13�ձ�����5��14�տ��ࡣ</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ϵ�绰:0531-82169441��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>����</span><span>�� &nbsp;&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>����һ���� ���¶�ʮ����</span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1715','64','�ڶ���ɽ��ʡǻ�����ҽʦ��� �ߵ�ʮ�Ž�ȫ����ǻ��������ʾ���ֻ����֪ͨ','','','admin','2012-11-27 08:45:20','','<span style=\"background-color:#FFFFFF;\">
<p align=\"center\">
	<br />
<strong>��ӭ��</strong>
</p>
<p>
	�𾴵ĸ�λͬ�������ѣ�<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ϊ��һ����ǿ��ʡǻ�����ҽʦ��ѧ�������������ȫ��չʾ���⡢�����⡢���⡢С���⡢����ȶ�ѧ��ǻ����Ƶ����½�չ���ƶ��Ƚ�ǻ���������ٴ�Ӧ�ã������ʡǻ�����ҽʦ�ļ�����ѧ��ˮƽ����ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ����죬ɽ����ѧ��³ҽԺ������ǻ�������־�������ٴ�ʵ�������־���а�ġ��ڶ���ɽ��ʡǻ�����ҽʦ����ߵ�19��ȫ����ǻ��������ʾ���ֻᡱ����2012��12��7��9����ɽ������¡���ٿ�����ʱ�����ҹ�����ǻ�����ר�ҵ��������ѧ��������������ʾ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ⱥ�����ͣ���Ӣ�Ƽ��������ҹ�������ǻ����ƴ�ʦ�ķ�ɣ�ʵ����Ħ�ҹ��Ƚ���ǻ��������������ʦ����������Ƽ��յĴ��ڣ��ǹ��ǻ��ҽʦһ���ѵõĻ��ᡣ���ű��λ�����ٿ��Ʊض���ʡ��ѧ��ǻ����Ƶķ�չ��Ӧ���𵽾޴���ƶ����ã�ʹ����ͬ���ܹ����������ۡ��¼������·�����<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������ĵ��ڴ���������ڼ��ϣ�����һ�����������ջ����ĩ��Я�ֿ�����ʡǻ��������������δ������ӭ��λͬ��ӻԾ���룬���۵㡢̸��ᣬչ��ͬ����ȡ�õ�����ɹ���
</p>
<p align=\"right\">
	�����ϯ&nbsp;<img src=\"http://www.fqjwkzz.cn/images/2011112901.jpg\" alt=\"\" width=\"100\" height=\"40\" />
</p>
<p align=\"center\">
	<strong>��֯����</strong>
</p>
<p align=\"left\">
	<strong>�����ϯ</strong>
</p>
<p align=\"left\">
	����Ԫ
</p>
<p align=\"left\">
	<strong>��ͬ��ϯ����ƴ��Ϊ��<br />
</strong>������ ��Ѷ�� �� �� �� �� �� �� �� �� ������ �� ˮ �� �� ���ٵ� ���һ� �Ž��� ����ͤ
</p>
<p align=\"left\">
	<strong>����֪��ר�ң���ƴ��Ϊ��<br />
</strong>�� �⣺�̽�ǿ ����� ��Тƽ ����� ����ƽ �Ʋ��� �ֱ��� ����ΰ �ν��� �ƽ��� �޵��� ��̫ƽ ������ ���ܹ�&nbsp;<br />
�����⣺��� ������ ������ ������ ��Ԫ�� �󳤾� �� ��&nbsp;<br />
�� �⣺������ �ν��� �� �� �� �� ��� ١��� �� ѷ ��ɳ�&nbsp;<br />
�ؽھ����°ٳ� �޹��� �����&nbsp;<br />
С���⣺������ �Ƹ�Ԫ �� �� ������
</p>
<p align=\"left\">
	<strong>���ѧ��ίԱ�᣺����ƴ��Ϊ��<br />
</strong>������ �Ϻ��� ������ �̽�ǿ ����� �� �� �°ٳ� �º��� ��ǿ�� ��Тƽ ���¹� ��־�� �Һ��� �� �� �޹��� ������ ����� ��־�� �� �� ������ ������ ����ƽ �� �� ���ḻ ������ ������ �ν��� ���Ĵ� �� �� ���º� ����Ԫ �Ʋ��� �Ƹ�Ԫ �ֱ��� �ѷ�� ����ΰ ������ ������ �� �� ��־�� ��Ѷ�� ������ �۽��� �� �� �� �� �� �� �� �� ��� ��� ��� ���ƽ ����� ����� ������ ���»� ���̸� �� �� ���� ����͢ ��ΰ�� ���Ĺ� ������ ����� ��־�� ·���� ·���� ������ ���Ľ� �� �� �� �� ������ ����ѫ ������ �� ɭ ��һ�� �س��� ������ �ν��� �� �� ˾��ͬ �� �� �ι�� �� �� ������ ������ �� �� �� �� �� ˮ �︣�� ������ ������ ��С�� ������ ����� �ƽ��� ��ѧ�� �� �� �� �� �� �� ١��� �� �� �� �� �� �� �� �� �� ΰ ����ΰ ������ ������ ������ ������ ������ ���찲 ����ɽ ��Ӣ�� ���ѷ� ����Ԫ ���ٵ� ������ ��ï�� ��Ԫ�� �޵��� �� �� �� �� �춫̶ ���һ� ����� ���ٺ� ������ �� �� ������ ���ı� ������ Ԭ���� �� �� �� �� �� �� �� �� �� �� �� ѷ �� �� �� �� �Ű��� �Źں� �Ź��� �Ż�ǿ �Ż��� �Ž��� ������ ������ ��̫ƽ ��Ϊ�� ������ ��С�� ������ ������ �� �� ����ΰ ����ͤ �� �� ���ܹ� ������ ��ɳ� ׯ �� ��־ǿ
</p>
<p align=\"left\">
	<strong>��֯ίԱ�ᣨ��ƴ��Ϊ��<br />
</strong>�϶��� ���춫 �� �� �ߺ��� ������ ������ ������ ���� ����� ������ �� �� �� �� �� �� ����� ������ ����� ������ ������ ����׳ �־��� �� �� �� �� �� �� ���첨 ����� ������ ���ɸ� ������ ������ �� �� ��ʫ�� ����� ���� չ���� �� �� �� �� �Ź��� �ź��� ����� ������ �� �� �콡��
</p>
<p align=\"left\">
	<strong>���������<br />
</strong>���ı� ���� �Ź���
</p>
<p align=\"left\">
	<strong>������<br />
</strong>����ǻ�������־���༭��<br />
��ַ���������Ļ���·107�ţ��ʱ�250012��<br />
Email��<a href=\"mailto:fqjbjb@163.com\">fqjbjb@163.com</a><br />
�绰/���棺0531-86920598<br />
<strong>��������<br />
</strong>2012��12��7-9��<br />
<strong>��������<br />
</strong>2012��12��7��ȫ��<br />
<strong>�����ص�<br />
</strong>ɽ��ʡ�������Ͻ����ݣ���������ɽ·2�ţ�<br />
<strong>����ص�<br />
</strong>ɽ��ʡ�������Ͻ�����<br />
<strong>�����<br />
</strong>300Ԫ/�ˣ�ѧ��ίԱ��ίԱ���ջ����<br />
<strong>ס�ޱ�׼<br />
</strong>190Ԫ/��λ/��
</p>
<p>
	<strong>��ͨ��Ϣ��<br />
</strong>�ٻ�վ����34��43·��������ֲ��԰վ�³���ʮ��·���򶫼����Ͻ����ݣ��˳��⳵Լ20Ԫ��<br />
�ڼ��ϻ������˻�����͵���;����վ��ת��32·��������ֲ��԰վ�³���Ȫ�ǹ㳡վת��K54·��������ֲ��԰վ�³���ʮ��·���򶫼��ǣ��˳��⳵Լ150Ԫ��
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img height=\"280\" alt=\"\" src=\"http://www.fqjwkzz.cn/images/ditu.jpg\" width=\"700\" />
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ϸ�ճ̰��ţ�����&nbsp;<a href=\"http://www.fqjwkzz.cn/yaoqinghan.PDF\">���ظ���---�����뺯��</a></span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1716','64','��Ժ�а�ڶ���ɽ��ʡǻ�����ҽʦ��� �ߵ�ʮ�Ž�ȫ����ǻ���������ֻ�','','','admin','2012-12-20 08:46:15','','<p style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#000000;\">�ڶ���ɽ��ʡǻ�����ҽʦ����ߵ�ʮ�Ž�ȫ����ǻ��������ʾ���ֻ���2012��12��8����10���ڼ����Ͻ������ٿ������λ�����ɽ��ʡҽʦЭ�����죬��Ժ����ơ�������ơ�����ơ��ǿơ�С����ƺ͡���ǻ�������־���༭�������ٴ�ʵ�������־���༭�����ϳа죬������򡢺ӱ������ա����ϡ�ɽ���ȶ��ʡ�еĴ���700���˲λᡣɽ��ʡҽʦЭ��᳤������ͬ־��ϯ��Ļʽ���´ǣ���Ժ����Ԫ��Ժ����Ϊɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�����ίԱ��ϯ��Ļʽ���¿�Ļ�ʡ�</span><br />
<span style=\"color:#000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������뵽���Ա�����ѧ��������ѧ��301ҽԺ���㽭��ѧ���׶�ҽ�ƴ�ѧ���ӱ�ҽ�ƴ�ѧ��ɽ��ҽ�ƴ�ѧ��20��������֪��ǻ�����ר�Һ�ʡ��ǻ�����ר�Ҿ��������������о���չ������46�����ʵ�ѧ��������������Ժ�����ҽ�����27̨ǻ��������ʾ����Ժ����Ԫ���ڡ����һ����ڡ���Խ��ڡ�����ͤ���ڡ���������ڡ����춫���ڡ����ı����ڡ��϶��ɽ��ڡ����ڸ����ڡ��Ź��������ڵȾ�������ѧ��������������ʾ����λר�ҽ��ڵľ���������ʾ����Ժһ�廯�����䡢�Ƚ���ǻ���豸ƽ̨�ܵ������ǵĺ��������ޡ�</span><br />
<span style=\"color:#000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ժ�������20����90����ڹ��������ȿ�չ�˸�ǻ�����ܹ��п�ȡʯ�������ڵ���������Ƣ�༲������ֱ������θ��������֢����״�ټ����������޵ȼ����ĸ�ǻ���������Ʒ��棬��ȫ����ɽ�������˶����һ��ͬʱ�Ѹ�ǻ������������ѧ�ƽ����˽�һ���ƹ㣬Ŀǰ��ǻ����������Ժ�����������ҳ��濪չ��������ﵽ�˹�������ˮƽ�����λ�����ٿ�Ϊ�ƶ���ʡ��ѧ��ǻ����Ƶķ�չ�𵽻������ã�ͬʱҲ���չʾ����Ժǻ����Ƶ��ۺ�ʵ����</span> 
</p>
<br />
<p align=\"center\" style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/2012122001.JPG\" alt=\"1\" width=\"600\" height=\"400\" align=\"middle\" /> 
</p>
<p align=\"center\" style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/2012122002.JPG\" alt=\"1\" width=\"600\" height=\"400\" align=\"middle\" /> 
</p>
<p align=\"center\" style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/2012122003.JPG\" alt=\"1\" width=\"600\" height=\"400\" align=\"middle\" /> 
</p>
<p align=\"center\" style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/2012122004.JPG\" alt=\"1\" width=\"600\" height=\"400\" align=\"middle\" /> 
</p>
<p align=\"center\" style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/2012122005.JPG\" alt=\"1\" width=\"600\" height=\"400\" align=\"middle\" /> 
</p>
<p align=\"center\" style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/2012122006.JPG\" alt=\"1\" width=\"600\" height=\"400\" align=\"middle\" /> 
</p>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1717','64','ɽ����ѧ��³ҽԺ�������ھ����Ƽ��� ��ͨ�����ѵ������֪ͨ','','','admin','2013-03-06 08:47:28','','<span style=\"background-color:#FFFFFF;\">
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; ɽ����ѧ��³ҽԺ�������ھ����Ƽ�����ͨ��Ƶڶ�ʮ������ѵ�ඨ��2013��4����Ѯ���࣬�ֿ�ʼ���������屨��Ҫ�������ͨ����ھ����Ƽ�����ѵ�����������¡�<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������<a href=\"http://www.qlpw.net/fujian/201303zhaoshengjianzhang.doc\">��ͨ����ھ����Ƽ�����ѵ������������</a>
</p>
<br />
<p align=\"right\">
	ɽ����ѧ��³ҽԺҽʦ��ѵ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
����һ������������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	&nbsp;
</p>','1','0','0','0','0','','0','4','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1718','64','�ڶ�ʮ��ȫ����ǻ��������ʾ���ֻ�֪ͨ','','','admin','2013-04-22 08:48:29','','<span style=\"background-color:#FFFFFF;\"> 
<p align=\"center\">
	<strong>��ӭ��</strong> 
</p>
<p>
	�𾴵ĸ�λͬ�������ѣ�<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ǻ�������־����1996�괴�������������������ҹ���ǻ�������ҵ���ƹ㣬Ϊ���ڹ��ǻ���ھ����ҽʦ�ṩ�����õ�ѧ������ƽ̨����1998��ٰ�\"�׽�ȫ����ǻ��ѧ�����ֻ�\"����������ǻ�������־���༭���Ѿٰ�ʮ�Ž�ȫ����ǻ��ѧ�����ֻᡣΪ��һ����ǿ�ҹ�ǻ�����ҽʦ��ѧ�������������ȫ��չʾ��ǻ����Ƶ����½�չ���ƶ��Ƚ���ǻ���������ٴ�Ӧ�ã������ʡ��ǻ�����ҽʦ�ļ�����ѧ��ˮƽ����ɽ����ѧ��³ҽԺ������ǻ�������־�������ٴ�ʵ�������־�������\"�ڶ�ʮ��ȫ����ǻ��������ʾ���ֻ�\"����2013��7��5��7����ɽ������¡���ٿ�����ʱ�����ҹ�������ǻ�����ר�ҵ��������ѧ��������������ʾ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ⱥ�����ͣ���Ӣ�Ƽ��������ҹ�������ǻ����ƴ�ʦ�ķ�ɣ�ʵ����Ħ�ҹ��Ƚ���ǻ��������������ʦ����������Ƽ��յĴ��ڣ��ǹ��ǻ��ҽʦһ���ѵõĻ��ᡣ���ű��λ�����ٿ������ҹ���ǻ����Ƶķ�չ��Ӧ���𵽽ϴ���ƶ����ã�ʹ����ͬ���ܹ����������ۡ��¼������·�����<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������ĵ��ڴ���������ڼ��ϣ�����һ�����������ջ����ĩ��Я�ֿ�����ǻ��������������δ������ӭ��λͬ��ӻԾ���룬���۵㡢̸��ᣬչ��ͬ����ȡ�õ�����ɹ���
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span><span style=\"background-color:#FFFFFF;\"> 
<p align=\"right\">
	�����ϯ&nbsp;<img src=\"http://www.fqjwkzz.cn/images/2011112901.jpg\" alt=\"\" width=\"100\" height=\"40\" /> 
</p>
<p>
	<strong>������ʾ����</strong> 
</p>
<p>
	1.��ǻ��ֱ��������������λ���أ�&nbsp;<br />
2.��ǻ���᳦��������(���/�Ұ�᳦����)<br />
3.��ǻ��Զ/����θ��D2������<br />
4.��ǻ����״θ�г���<br />
5.���굥�׸�ǻ��������������������ʽ���������������г�����Ƣ�г����ȣ�<br />
6.��ǻ������Ƣ�������β�г���<br />
7.��ǻ���ȵ������г���<br />
8.��ǻ�������г���<br />
9.��ǻ����Ĥ�������г���<br />
10.��ǻ��ʳ���ѿ����޲���<br />
11.��ǻ�����ɹ����޲�����TAPP/TEP��<br />
12.��ǻ���п����޲���<br />
13.��ǻ�������������޲���<br />
14.ǻ����״����Ҷ�г���<br />
15.ǻ������С�пڼ�״�ٽ�ȫ�г�����Miccoli����<br />
16.��ǻ������ȡʯ��<br />
17.��ǻ�����ܹ��п�ȡʯ��T�͹�������<br />
18.��ǻ�������ҹܵ��ܹ�ȡʯ��
</p>
<p>
	*������ʽ�����߸��ݵ�ʱ��������ʵ�����
</p>
<br />
<p>
	<strong>ѧ����������</strong> 
</p>
<p>
	<strong>���᳡</strong><br />
1.���ʸ�ǻ�������о��ȵ�<br />
2.�й���ǻ����Ƶķ�չ��״�ͷ���<br />
3.��ǻ�����������벻��<br />
4.��ǻ�����ҽ��������
</p>
<p>
	<br />
<strong>θ�����ר��</strong><br />
1.��ǻ��θ��D2��������Ѫ�ܽ��ʼ��ܰͽ���ɨ<br />
2.��ǻ����θ�����Ǻϼ���<br />
3.θʳ�ܷ��������������<br />
4.��ǻ���᳦�����������м���·&amp;�෽��·<br />
5.NOTES��LESS��ֱ������<br />
6.��ǻ��θ��������ѧϰ����
</p>
<p>
	<br />
<strong>�ε���Ƣ���ר��</strong><br />
1.��ǻ�������г����г�Ѫ�Ĵ���<br />
2.��ǻ����������Ҷ�г�������׼��ʽ<br />
3.������ǻ�������г���<br />
4.���׸�ǻ��Ƣ�г�����̽��<br />
5.����Ƣ�������β�г���<br />
6.��ǻ�����������г�����������
</p>
<p>
	<br />
<strong>���ڷ������ר��</strong><br />
1.LESS��״������<br />
2.��ǻ��Ҹ���ܰͽ���ɨ�Ľ����뼼��<br />
3.��ǻ��θ��·����������<br />
4.θ������л��������2�����򲡣�������Ӧ֢����ʽѡ��<br />
5.��ǻ���������ӽ�ʽ�����п����޲���<br />
6.��ǻ�����ɹ����޲���������Ҫ���뾫�����ڻ�<br />
<span><br />
&nbsp;&nbsp;�йػ������ϸ���&nbsp;<a href=\"http://www.fqjwkzz.cn/news/yaoqinghan-20th.pdf\">�����˴���������ĵ�</a></span> 
</p>
<div>
	<br />
</div>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1719','64','2013����л�ǻ�������ѧԺר��Ѳ�ݽ� ��ɽ����ѧ��³ҽԺ��ǻ�����޲��߼����ְ� ���뺯','','','admin','2013-04-22 08:49:05','','<span style=\"background-color:#FFFFFF;\">
<p align=\"left\">
	<strong>�𾴵�ר�ң�</strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ã�<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ϊ��һ���ƹ�淶����ǻ�����޲��������ɴ��л�ǻ�������ѧԺ��ɽ����ѧ��³ҽԺ���͵��޷�չ�о�Ժ���Ͼٰ��\"2013����л�ǻ�������ѧԺר��Ѳ����ɽ����ѧ��³ҽԺ��ǻ�����޲��߼����ְ�\"����2013��4��26��-27����ɽ�����Ͼٰ졣���λ����ر������ƽ��۽��ڡ���Ľ��ڡ�����Ԫ���ڡ���������ڡ������ս��ڡ�Ҧ�ɽ��ڡ���������ڵȽ���������ʾ��������&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ŀ�꣺������ǻ����������ʦ�ڿγ̽������ܹ��������չ淶��TAPP���������������ܹ���TAPP�����������Կ�չTEP������&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �γ����ã���ʱ1�죬��̨������ʾ�뽲��������С�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����ʱ�䣺2013��4��27��&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����ص㣺ɽ����ѧ��ͻȪУ���ۺ�¥����ѧ��������&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ֵ���л�ǻ�������ѧԺ��ȹ��������ڼ����ٿ�����˱��λ���Ⱥ�����ͣ���Ӣ�Ƽ��������ҹ�ǻ�����޲���ʦ�ķ�ɣ�ʵ����Ħ�ҹ��淶��ǻ�����޲��������ǹ��ǻ��ҽʦһ�κܺõĽ����Ļ��ᡣ&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������ĵ��ڴ����������������Ȫ�ǣ�����һ�����������ջ����ĩ��Я�ֿ���ǻ�����޲����������δ����
</p>
<br />
<p align=\"left\">
	<strong><br />
�����ճ�</strong>
</p>
</span><span style=\"background-color:#FFFFFF;\">
<p>
	ʱ�� ���� ����
</p>
<p>
	7:50---8:10 ǩ��
</p>
<p>
	8:10---8:40 ��Ļʽ ����Ԫ
</p>
<p>
	8:40---9:05 ���븹����Ʒ�չ�����ں�δ����20+5���� �ƽ���
</p>
<p>
	9:05---9:30 ǻ���п����޲��ļ���Ҫ�㣨20+5���� ����Ԫ
</p>
<p>
	9:30---9:55 ��������޲��ļ���Ҫ�㣨20+5���� ������
</p>
<p>
	10:00-10:40 TEP������ʾ��������1�������������������������
</p>
<p>
	10:40-11:20 TAPP������ʾ��������2���������������� �� �Ź���
</p>
<p>
	11:20-12:00 TEP������ʾ��������1�� ���
</p>
<p>
	12:10--12:30 ��ǻ���¸��ɹ�����Ľ��� Ҧ��
</p>
<p>
	12:30--13:10 TEP���������̺�Ҫ�����
</p>
<p>
	��ǻ�����ɹ����޲�������֢��Ԥ���ʹ��� ���
</p>
<p>
	13:10-13:50 TAPP���������̺�Ҫ�����
</p>
<p>
	TAPP�ڸ����������е�Ӧ�� ������
</p>
<p>
	13:50-14:10 ��ǻ�����ɹ����޲������е����ҵĴ��� ������
</p>
<p>
	14:10-14:50 TAPP������ʾ��������2�� ������
</p>
<p>
	14:50-15:10 �ʴ�������<span></span>
</p>
</span><span style=\"background-color:#FFFFFF;\">
<p align=\"left\">
	<span><br />
<strong><a href=\"http://www.qlpw.net/news/4-27-yanjiubantongzhi.docx\">����˴���������ϸ�ĵ�����</a></strong></span>
</p>
<div>
	<span><br />
</span>
</div>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1720','64','��Ժ������л�ǻ�������ѧԺ��һ�������ȫ��ǻ�������ֻ�','','','admin','2013-05-03 08:49:37','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 4��27�գ����л�ǻ�������ѧԺ��һ�������ȫ��ǻ����ѧ�����ֻ�����Ժ���У����Ժ��ϡ��������Ĵ������졢���ϡ�ɽ���ȶ��ʡ�е�290��������λᡣ<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���λ�������Ժ��������죬������뵽�л�ҽѧ�����ѧ�ֻ����븹�����ѧ���鳤��������ѧ��������ҽԺ�ƽ��۽��ڣ����ҽԺ��Ľ��ڣ����ϴ�ѧ��������ڣ�����ҽԺ��������ڣ���������ҽԺ�����ո����ڵȹ����������֪��ר�ҡ������������ת����ѧ���������ϵķ�ʽ������������ܸ�ǻ�����޲��Ľ�չ������Ҫ�㡣�����ڼ䣬�����ϯ����Ժ����Ԫ���ڽ�����ԺԺʷ�����븹����Ʒ�չ����������˾���ѧ�����棬���л�ǻ�������ѧԺ��ʦ����Ľ��ڡ������ո����ڼ���Ժ�Ź��������ڽ����˸�ǻ���¸��ɹ����޲���������ʾ�������Ǿ�ǻ�����޲�����ȵ㼰����ϸ�ڵ�����ͬ��λר�ҽ��л���������ר���Ǿ��ʵ�������ʾ��ѧ������ʹ��λ�λ��������˽�ǻ�����޲�ä�㼰�ѵ����⣬�Դٽ������淶������Ҫ���á�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��Ժ�������2007�꿪ʼʵʩ��ǻ�����޲�������Ŀǰ���濪չǻ�����ɹ��ޡ��п��ޡ�ʳ���ѿ��ޡ����������ޡ������޲������������ۼ����600������&nbsp;<br />
�����ߣ�չ���� ����׳ ���ԣ������ ��ࣺ�����֡�</span>
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/DEFAD7F55FBABF25F762DC51C2FDCA8B.jpg\" alt=\"���л�ǻ�������ѧԺ1\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/2EA95E2643CCB2A825757E06E01BA0F4.jpg\" alt=\"���л�ǻ�������ѧԺ2\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/BB369C5EFFE0203713950B54ED1DF32E.jpg\" alt=\"���л�ǻ�������ѧԺ3\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<span style=\"background-color:#FFFFFF;\"></span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1721','64','��Ժ������л�ǻ�������ѧԺ��һ�������ȫ��ǻ�������ֻ�','','','admin','2013-05-03 08:49:37','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 4��27�գ����л�ǻ�������ѧԺ��һ�������ȫ��ǻ����ѧ�����ֻ�����Ժ���У����Ժ��ϡ��������Ĵ������졢���ϡ�ɽ���ȶ��ʡ�е�290��������λᡣ<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���λ�������Ժ��������죬������뵽�л�ҽѧ�����ѧ�ֻ����븹�����ѧ���鳤��������ѧ��������ҽԺ�ƽ��۽��ڣ����ҽԺ��Ľ��ڣ����ϴ�ѧ��������ڣ�����ҽԺ��������ڣ���������ҽԺ�����ո����ڵȹ����������֪��ר�ҡ������������ת����ѧ���������ϵķ�ʽ������������ܸ�ǻ�����޲��Ľ�չ������Ҫ�㡣�����ڼ䣬�����ϯ����Ժ����Ԫ���ڽ�����ԺԺʷ�����븹����Ʒ�չ����������˾���ѧ�����棬���л�ǻ�������ѧԺ��ʦ����Ľ��ڡ������ո����ڼ���Ժ�Ź��������ڽ����˸�ǻ���¸��ɹ����޲���������ʾ�������Ǿ�ǻ�����޲�����ȵ㼰����ϸ�ڵ�����ͬ��λר�ҽ��л���������ר���Ǿ��ʵ�������ʾ��ѧ������ʹ��λ�λ��������˽�ǻ�����޲�ä�㼰�ѵ����⣬�Դٽ������淶������Ҫ���á�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��Ժ�������2007�꿪ʼʵʩ��ǻ�����޲�������Ŀǰ���濪չǻ�����ɹ��ޡ��п��ޡ�ʳ���ѿ��ޡ����������ޡ������޲������������ۼ����600������&nbsp;<br />
�����ߣ�չ���� ����׳ ���ԣ������ ��ࣺ�����֡�</span>
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/DEFAD7F55FBABF25F762DC51C2FDCA8B.jpg\" alt=\"���л�ǻ�������ѧԺ1\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/2EA95E2643CCB2A825757E06E01BA0F4.jpg\" alt=\"���л�ǻ�������ѧԺ2\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/BB369C5EFFE0203713950B54ED1DF32E.jpg\" alt=\"���л�ǻ�������ѧԺ3\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<span style=\"background-color:#FFFFFF;\"></span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1722','64','����Ԫ�ٴε�ѡ�й�ҽʦЭ�����ҽʦ�ֻ� ΢�����ҽʦίԱ�ḱ����ίԱ','','','admin','2013-06-20 08:50:48','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 6��14�գ��й�ҽʦЭ�����ҽʦ�ֻ�΢�����ҽʦίԱ�ỻ��ѡ�ٻ����ڱ������ʻ��������ٿ�������ȫ����ʡ������������������ҽ�ƻ�����76��΢�����ר����Ϊ�ڶ���ίԱ��ίԱ�μ��˻��飬���������ѡ�٣���Ժ��Ժ������Ԫ�����ٴε�ѡ������ίԱ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���λ����ɱ�����ѧ����ҽԺ���й�ҽʦЭ�����ҽʦ�ֻ��ܸ��½���ΰ�������֣��й�ҽʦЭ�ḱ�᳤�����ҽʦ�ֻ�᳤��ɼ���ڣ��й�ҽʦЭ�ḱ�᳤���ھ�ҽʦ�ֻ�᳤�����½��ڣ��й�ҽʦЭ�����ҽʦ�ֻḱ�᳤���ܹ���ڣ���Тƽ���ڳ�ϯ���顣��ɼ���ڳ�ֿ϶���΢�����ҽʦίԱ���һ��ίԱ�����3������ȡ�õĳɼ���3������΢�����ҽʦίԱ��һֱ���Ž�ȫ������΢�����רҵ��ͬ������ͬ�����ҹ�΢����Ƶ��ƹ�ͷ�չ�����ֱ���������չ΢������������ҹ�΢����Ƶ�ѧ��ˮƽ�������ҹ���΢�������ҵΪ��ּ�����˴���׿�г�Ч�Ĺ�������΢����Ƽ�����ȫ�����ƹ㼰΢�����ѧ��ˮƽ����������˾޴��ס�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ͬ�ڣ��������й����ҽʦ����ڱ������ʻ��������ٿ�������Ԫ����Ӧ�����ֻ��飬������\"�����ӽ����׸�ǻ������\"�Ĵ�ᷢ�ԡ�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ߣ������� ��ࣺ�����֡�</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1723','64','����������20��ȫ����ǻ��������ʾ���ֻ�','','','admin','2013-07-12 08:51:19','','<span style=\"background-color:#FFFFFF;\">
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7��5-7�գ���20��ȫ����ǻ��������ʾ���ֻ��ڼ����ٿ������λ�������Ժ��������죬����ǻ�������־���༭�������л����븹�������־�����Ӱ棩�������ٴ�ʵ�������־���༭�����ϳа죬���Ա������Ϻ����㶫�����������ա��ӱ���ɽ�������ࡢ���������ݡ����ϡ���������ɽ����24��ʡ�еĴ���700���˲λᡣ<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ժ��Ժ�������ִ����ϯ����Ԫ���ڳ�ϯ��Ļʽ���¿�Ļ�ʡ���ῪĻʽ���Ȳ�����Ժ����Ƭ�����츹ǻ���������ֻ�ļ�¼Ƭ������Ԫ���ڽ�������Ժ�ķ�չ��ʷ����״���ع�����1996�꡶��ǻ�������־����������־��չ�ķ������̣��ܽ����츹ǻ�����ֻ�ĸſ��������л�ҽѧ�����ѧ�ֻ����ѧ���鳤�����пƼ���ѧͬ��ҽԺ��Тƽ���ڡ��л�ҽѧ�����ѧ�ֻḹǻ���ھ����ѧ���鳤�Ϻ����ҽԺ֣�񻪽��ڡ��л�ҽѧ�����ѧ�ֻ����븹�����ѧ���鳤�Ϻ�����ҽԺ�ƽ��۽��ڡ��й�ҽʦЭ�����ҽʦ�ֻ��ܸ��±�������ҽԺ����ΰ���ڵȹ��������֪��ר�������츹ǻ������а쵥λ�䷢��л״����Ļʽ���������������ҽԺ���人ͬ��ҽԺ���Ϻ�����ҽԺ����������ҽԺ���Ϻ���ɽҽԺ���Ͼ�������ҽԺ����������ҽԺ����������ҽԺ�������Ϸ�ҽԺ��42������֪��ר�Ҿ�����Ƹ����򼲲�΢�����Ƶ����½�չ�����˾���ѧ��������������Ժ�����ҽ�����14̨ǻ��������ʾ����Ժ����Ԫ���ڡ����������ڡ�����ͤ���ڡ����������ڡ����½��ڡ����춫���ڡ���������ڡ����ı����ڡ����ڸ����ڡ����󸱽��ڡ��Ź��������ڵȽ�����ѧ�����֡�������������ʾ����λר�ҽ��ڵľ���������ʾ����Ժһ�廯�����䡢�Ƚ���ǻ���豸ƽ̨�ܵ������ǵĺ��������ޡ�<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���λ��鹲���뵽ʡ��ר��63�ˣ�ʡ��ר��32�ˣ�Ϊ���츹ǻ��������ʾ��λ�������ࡢ��ģ����һ�λ��顣����ȫ���������Ƽ�����΢���������������ʽ�����ռ����淶�����ǻ���������ٽ�ѧ�Ʒ�չ�𵽻������ã�ͬʱҲ���չʾ����Ժ�����20�����ڸ�ǻ���������������Ĺ������ۺ�ʵ����<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ߣ�չ���� ����׳ ���ԣ������ ��ࣺ�����֡�
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/07/11/6ED0AEC5D56D12454B0845FED54E5BC1.jpg\" alt=\"\" />
</p>
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/07/11/E4A81CBFE85CB05F1A6ED384BB6C6BC7.jpg\" alt=\"\" />
</p>
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/07/11/2E89ED8A877CFCBDCF7873B5FBDF4338.jpg\" alt=\"\" />
</p>
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/07/11/9759985714E491E1CB0C5F6B44152E9D.jpg\" alt=\"\" />
</p>
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/07/11/78AB3377A5D3BC5B0EF3603BA43B1DD7.jpg\" alt=\"\" />
</p>','1','0','0','0','0','','0','3','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1724','64','����Ԫ��ѡ�й�ҽʦЭ���ھ�ҽʦ�ֻ���������ǻ��ҽʦίԱ������ίԱ','','','admin','2013-07-12 08:52:20','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2014��6��8���й�ҽʦЭ���ھ�ҽʦ�ֻ���������ǻ��ҽʦίԱ���������ڼ��Ͼٰ죬��Ժ����ƺ���Ԫ���ڸ�Ʊ��ѡ��ίԱ���׽�����ίԱ������������һ����ڵ�ѡ������ίԱ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\"��רҵίԱ��Ϊ�й�ҽʦЭ���ھ�ҽʦ�ֻ�Ķ�����֧������ּ�ڹ淶���ƹ���������ǻ����������ǿר��ҽʦ������Ϊ���΢�����ҽʦ�ṩѧ������ƽ̨��רҵίԱ��������ίԱ1����������ίԱ8��������1��������ίԱ57�ˣ�����ȫ��19��ʡ��42��ҽԺ�����������42�ˣ�������12�ˣ��������3�ˡ�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �봫ͳ������ǻ��������ȣ���������ǻ�������ɱ���������ز���֢�����ٶ��ķε����ٹ��ܵ�Ӱ�죬���ҿɻ�������������Ұ�����ձ��ȹ���Ӧ�÷ǳ��㷺�����ҹ�Ŀǰ��δ�ƹ�Ӧ�á���Ժ������ں���Ԫ���ڴ����£��ڹ�������������������������굥�׵����г�����Ҹ��·�������׼�״�ٴ�ȫ�г��ȶ�������������SCI�����ں����ڿ�����4ƪ����ɽ��ʡ�Ƽ��������Ƚ�1�</span> 
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ߣ�¬��ϼ��<br />
</span> 
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/20140616.jpg\" width=\"552\" height=\"349\" /> 
</p>','1','0','0','0','0','','0','3','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1725','64','����Ԫ��ѡ�й�ҽʦЭ���ھ�ҽʦ�ֻ���������ǻ��ҽʦίԱ������ίԱ','','','admin','2014-06-16 08:53:14','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2014��6��8���й�ҽʦЭ���ھ�ҽʦ�ֻ���������ǻ��ҽʦίԱ���������ڼ��Ͼٰ죬��Ժ����ƺ���Ԫ���ڸ�Ʊ��ѡ��ίԱ���׽�����ίԱ������������һ����ڵ�ѡ������ίԱ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\"��רҵίԱ��Ϊ�й�ҽʦЭ���ھ�ҽʦ�ֻ�Ķ�����֧������ּ�ڹ淶���ƹ���������ǻ����������ǿר��ҽʦ������Ϊ���΢�����ҽʦ�ṩѧ������ƽ̨��רҵίԱ��������ίԱ1����������ίԱ8��������1��������ίԱ57�ˣ�����ȫ��19��ʡ��42��ҽԺ�����������42�ˣ�������12�ˣ��������3�ˡ�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �봫ͳ������ǻ��������ȣ���������ǻ�������ɱ���������ز���֢�����ٶ��ķε����ٹ��ܵ�Ӱ�죬���ҿɻ�������������Ұ�����ձ��ȹ���Ӧ�÷ǳ��㷺�����ҹ�Ŀǰ��δ�ƹ�Ӧ�á���Ժ������ں���Ԫ���ڴ����£��ڹ�������������������������굥�׵����г�����Ҹ��·�������׼�״�ٴ�ȫ�г��ȶ�������������SCI�����ں����ڿ�����4ƪ����ɽ��ʡ�Ƽ��������Ƚ�1�</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ߣ�¬��ϼ��<br />
</span>
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/20140616.jpg\" width=\"552\" height=\"349\" />
</p>','1','0','0','0','0','','0','6','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1726','64','\"�ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻ�\"����֪ͨ','','','admin','2014-09-09 08:53:58','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;����ǻ�������־����1996�괴����һֱ�������ҹ���ǻ�������ҵ���ƹ㣬Ϊ���ڹ��ǻ���ھ����ҽʦ�ṩ�����õ�ѧ������ƽ̨����1998��ٰ�\"�׽�ȫ����ǻ��ѧ�����ֻ�\"����������ǻ�������־���༭���Ѿٰ��ʮ��ȫ����ǻ��ѧ�����ֻᡣΪ��һ����ǿ�ҹ�ǻ�����ҽʦ��ѧ�������������ȫ��չʾ��ǻ����Ƶ����½�չ���ƶ��Ƚ���ǻ���������ٴ�Ӧ�ã���ɽ����ѧ��³ҽԺ������ǻ�������־�������ٴ�ʵ�������־�������\"�ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻ�\"����2014��11��14�ա�16����ɽ�����ϣ�ɽ�����ã�¡���ٿ���</span>
</p>
<br />
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ⱥ�����ͣ���Ӣ�Ƽ������λ��������ҹ���λ������ǻ����ƴ�ʦ����������ʾ�뽲�������齫�����ٴ�ʵ�������ݼ��з�ӳ���������ǻ����Ƶ���֪ʶ��������¼������½�չ�����ű��λ����Ϊ���ǻ�����ҽʦ�ṩһ���˽⡢����ѧ�Ʒ�չ���򼰼���������ƽ̨��</span>
</p>
<br />
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���������ڴ���������ڼ��ϣ�����һ�����������ջ����ĩ��Я�ֿ�����ǻ��������������δ������ӭ��λͬ��ӻԾ���룬���۵㡢̸��ᣬչ��ͬ����ȡ�õ�����ɹ���</span>
</p>
<br />
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����飺����ǻ�������־���༭�����������Ļ���·107�ţ��ʱ�250012��<br />
</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail��fqjbjb@163.com<br />
</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�绰/���棺0531-86920598 82169293</span>
</p>','1','0','0','0','0','','0','6','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1727','81','����Ԫ','','','admin','2014-11-09 09:14:58','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109062138_32280.jpg\" alt=\"\" /> 
</p>
<p>
	��������Ԫ ��1962������ɽ�������أ�����ɽ����ѧ��³ҽԺ������Ρ���������Ρ���ƽ����Ҹ����Σ���³ҽԺ�ھ����Ƽ�����ѵ�������Ρ��ܳ�ѧ����ͷ�ˣ�����ҽʦ�����ڡ���ʿ����ʦ��ɽ��ʡ����ϵͳ�������ص�Ƽ��˲š����л��ٴ�ҽѧʵ����־���ܱࡢ����ǻ�������־��ִ�����ࡢ�༭�����Σ����ٴ�ʵ�������־�����࣬���л�ҽѧ��־Ӣ�İ桷��Լ���ר�ң���������Frontiers of Medicine in China����־�����л����������־�������л����������ѧ��־�������л�ҽѧ������־�������л��ھ������־�������л��ھ������־�������й�����������ٴ��������й�ʵ�������־������ɽ����ѧѧ�� ��ҽѧ�棩 �������й��ִ�����ѧ��־�������й�ʵ�����ѧ�������й��ھ���־���������������ʵ��������ɽ��ҽҩ�������ٴ������־�������л�����������־����ί�����й�΢�������־�������ί���������ھ�ҽʦ׼���ʸ�ָ���̲ġ��ھ�ҽѧ����ί�������������ѧ��ҩ��רҵ�����̲ı�ί���й�ҽʦЭ����Ʒ᳣ֻί���ھ�ҽʦ�᳣ֻ�����¡��л�ҽѧ����Ʒֻ�ίԱ�渹ǻ�����ھ����ѧ�鸱�鳤���л�ҽѧ��ɽ���ֻ�����רҵίԱ�ḱ����ίԱ��ɽ��ҽʦЭ�����ҽʦ�ֻḱ����ίԱ��ɽ��ҽѧ������רҵίԱ�ḹǻ���ھ����ѧ���鳤��ɽ��ʡ����Э����������ίԱ�ḱ����ίԱ��
</p>
<br />
����1991�꿪ʼ���¸�ǻ�������Ķ���ʵ����ٴ�Ӧ���о���1992��4�²��������ɽ��ʡ������ǻ�������г�����ͬ��6���ڹ������Ȳ��뿪չ�˸�ǻ�����ܹ��п�ȡʯT�ι���������1993��ʵʩ��ɽ��ʡ������ǻ����β�г�������ǻ�����޲�����1994�����ҹ����ȿ�չ�˸�ǻ��С��Ƣ�г�����ͬʱ��ѧ�ƿ����Ե�Ӧ�õ������ơ�������ơ�����ơ�����ƣ���չ�������Ѷȸ�ǻ��������ǻ����״����������ǻ����ֱ��������������ǻ��С�ΰ��г�������ǻ��ʳ���ѿ����޲�������ǻ�����Ҹ�ǻ������������ǻ���Ĥǻ��ǻ�����г����������г�����ǻ��������п�ȡʯ����ǻ���ӹ��г����ȣ���ĿǰΪֹ����ɸ��ָ�ǻ������62��5900�����������ˡ�ȫ����ǻ��ҽʦ��ѵ���ġ�����������22��ʡ���С�������103��ҽԺ267��ҽ�������˸�ǻ����ѵ��1996�괴����ȫ��Ψһ�ĸ�ǻ�����רҵ����----����ǻ�������־��������ͳһ���ţ�CN37��1361/R �������⹫�����С�Ϊ���ƹ㸹ǻ����������֯��10��ȫ����10��ɽ��ʡ��ǻ������ѧϰ�༰���ֻᣬ��ʡ��83��ҽԺ��22��ʡ��92��ҽԺ��60���ȫ����ǻ��ѧ�������������������ݺ�ר�⽲�������ڶ�ȫ���ĸ�ǻ���ھ�ҽѧ��ҵ��չ�����˾޴��ף�2005��2006���������������˼����Endoscopics Award����2003��Ը�����ֲ�����������ص�֧�֣���ȫ�����������������֯����������Ƹ�����ֲ���ģ���2007��ɹ������50����ԭλ���������Ը���ֲ������ȡ�������õ���Ч���Ѿ���Ϊ��Ժ�ĳ�������֮һ������ֲ������չ����������������ɽ�����������ȵ�λ��<br />
<br />
����Ŀǰ�е�ɽ��ʡ�Ƽ����ؼƻ�1�ɽ��ʡ��Ȼ��ѧ����1�ʡ���������п���2��������Ͽ���2����ڶԸ�ǻ��������ʵѵ�����������Ӧ�ú͸�ǻ�������˿�����Ӧ�ý������ص��о�����ȡ����һ���ĳɹ������մ��¸�ǻ��������ʿ�о���9�ˣ�˶ʿ�о���17�ˡ�����ɵĿ��⡰���Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ���о��� 1993����������Ƽ��������Ƚ������� ɽ��ʡ�Ƽ��������Ƚ�����1997����⡰��ǻ���ڸ�������е��ٴ�Ӧ���о��� ��ɽ��ʡ�Ƽ��������Ƚ���1998����⡰��ǻ������������е��ٴ�Ӧ���о��� ��ɽ��ʡ�Ƽ��������Ƚ���1999����⡰������ǻ���������ٴ��ƹ�Ӧ�á� ��ɽ��ʡҽѧ�Ƽ�����һ�Ƚ���2000����⡰��ǻ������������ǻ��ʯת��Ķ���ʵ���о��� ��ɽ��ʡ��ί�Ƽ��������Ƚ���2003����⡰��ǻ�������Ժ�ϸ��CR1������Լ������������Ӱ����о�����ɽ��ʡ�������Ƽ��������Ƚ�������ǻ����״�������Ķ���ʵ�鼰�ٴ�Ӧ���о�����ɽ��ʡ�������Ƽ��������Ƚ���2004�ꡰ���������г����ٰ������Զ������ƵĻ������ٴ��о����ֱ��ɽ��ʡ��ί�Ƽ��������Ƚ���ɽ��ʡ�������Ƽ��������Ƚ������⡰��ǻ��������ǻ�����Ѽ�ת��Ķ���ʵ���о��� 2005���ɽ��ʡ��У������гɹ�һ�Ƚ�����ר������ǻ�����������ɫͼ�ס���2005�ꡰɽ��ʡ��У������гɹ����Ƚ�����2006����⡰�����Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ�á���������ߵ�ѧУ�Ƽ��������Ƚ������⡰��ǻ��Ƣ�������Ļ������ٴ�Ӧ���о�����ɽ��ʡ��ѧ�����������Ƚ�����<br />
<br />
��������Annals of Surgery��������Ӱ������7.678������Surgical Endoscopy��������������Minimally Invasive Therapy &amp; Allied Technologies�����¹�������Surgical Laparoscopy, Endoscopy &amp; Percutaneous Techniques��������������Chir Gastroenterol�����¹�������Chinese Medical Journal����SCI��¼��־��������10ƪ���ڡ��л���ͨ�����־�������л��ε������־�������л������ھ���־�������л�ʵ�������־����15����־�Ϸ�������90��ƪ�������ˡ��ٴ���������ѧ��������ǻ���ٴ����μ�����������ǻ�����������ɫͼ�ס�������������ٴ�����ѧͼ�ס�������KARL A. ZUCKER����ǻ�����ѧ�����ڶ��棩�����롶�����˺�Զ�̻�������ƾ�Ҫ���������롶�ھ�����ǻ�����ѧ�����αࡶ��ǻ�����ѧ��������ͨ����ھ�����ѧ������Ƣ�����ѧ�������ִ�΢�����ѧ����ʮ��ָ����ơ�����θ�����������������ѧ����������1996���������л�ҽѧӰ����������ġ���ǻ���븹ǻ��������¼�����2005��10��-2006��11�£����������������������л�ҽѧ����֯�ĸ�ǻ��������ѧƬ7�������л�ҽѧ���������������ȫ�����С�2003�������ġ���ǻ�����ѧ����ɽ����ѧ��׼��Ϊɽ����ѧ��������������˶ʿѡ�޿γ�,���ھ����ѧ��2004����׼Ϊɽ����ѧҽѧԺ��˶ʿѡ�޿ογ̡�<br />','1','0','0','1','0','upload/1415514140.jpg','0','10','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1728','81','����','','','admin','2014-11-09 07:22:33','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109062922_11200.jpg\" alt=\"\" /> 
</p>
<p>
	�����й�Э��ҽ�ƴ�ѧ������Ʋ�ʿ�������ڣ�ɽ����ѧǻ����Ʋ�ʿ��2009�기����hartfordҽԺ����ѧϰ���򲡺ͷ���֢��������ơ��л�ҽѧ�����ѧ������ίԱ��ɽ��ʡҽʦЭ��ǻ��ҽʦ�ֻ����飬ɽ��ʡҽѧ������ѧ���Ա,&#171; ��ǻ�������־&#187;�༭�����Ρ�
</p>
<br />
������ʦ���������ר����������ڡ�����Ԫ���ڡ���ռԪ���ڣ���������Ƣ����ơ�ǻ������������о�����΢���������Ӧ��������Ƣ��ȸ��Ӽ��������ƣ��ɹ���չ�����������׾�Ƥ������Ĥ���崴������ǻ����Ƣ�г����ȸ����������ó����������������г�������΢��������������������ǻ����״����������ǻ��ֱ���������������������ڿ����Ͽ�չ�˴�����ǻ�����ھ�����θ�������������г�������ȡ�������õ���Ч��ÿ�����ǻ������Լ250����Э��ʡ�ڶ��ҽԺ��չǻ�����������ɽ��ʡ�Ƽ�����һ�Ƚ������Ƚ����������Ƽ��ɹ��ƹ���Ƚ���һ�<br />
<br />
������ϵ�绰��0531-82169426��13605313603<br />
<div>
	<br />
</div>','1','0','0','0','0','upload/1415514575.jpg','0','5','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1729','81','����','','','admin','2014-11-09 06:29:49','','<p>
	<span style=\"line-height:1.5;\">���������У�ҽѧ��ʿ�󣬸�����ҽʦ�������ڣ�˶ʿ�о�����ʦ��ɽ��ʡҽѧ��Ƣ����������ѹѧ��ίԱ��ʦ���й������ĸ�����ֲר�ң��������ֲ�ĵ������ѧ��Ժʿ��������ɸ�����ֲ�����г������˰����������������չ��ε���ȡ�������г����¸�ֲ�뼰����໤�ȸ�����ֲ��ȫ���̡��ɶ�����ɸ�����ֲ���������Ұ���г������Ų����ܰ�����������ʮ��ָ���г����������г������ܹ�̽��T����������Ƣ���г�����θ���г����᳦�����г�����ǻ�����г��������г���������ƴ�����������</span>
</p>
<br />
�����ڡ�Transplantation proceeding����Heptalogy�����л������־�����л���ͨ�����־�������л��ε������־�������л�ʵ�������־�������й���ͨ�����־�������й��ִ���ͨ��ƽ�չ�������й�����������ٴ���־������ɽ����ѧѧ���������������ʵ������SCI�������ڿ������һ��������28ƪ���αࡶ���������ֲѧ����Ŀǰ�е�ʡ������2����о���9��Ԫ��<br />
<br />
��������ʱ�䣺����ȫ�졣<br />
������ϵ�绰��0531��82169455�� 13573106158��<br />
����E-mail:jinglewei@yahoo.com.cn<br />','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1730','82','������','','','admin','2014-11-09 06:32:13','','������������ҽѧ˶ʿ������ҽʦ�����ڣ�˶ʿ����ʦ������Ƹ����Σ�θ�����ѧ����ͷ�ˣ�ɽ��ʡ��ͨ��ƿ���Э���Ա��ɽ��ʡ��ͨ���θ��רҵ������ίԱ�����й��ִ���ͨ��ƽ�չ����־��ί����ɽ����ѧѧ����ҽѧ���������Ա��1993��1995�μ��й�Ԯ̹ɣ����ҽ�ƶ������׶�ҽԺ����������������Ѽ���������θ������������������ж������⡣��θ�����᳦���ַ����١�ʮ��ָ���Ĳ��˿�չ��θ�����᳦�����μ���ʮ��ָ���г�������λֱ������������������ϸ�µ��о���<br />
<br />
��������ʱ�䣺����ȫ��<br />
������ϵ�绰��13791122955<br />','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1731','82','���ı�','','','admin','2014-11-09 06:33:44','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109063753_91499.jpg\" width=\"200\" alt=\"\" /> 
</p>
<p>
	����1992���ҵ��ɽ����ѧҽѧԺ����������רҵ13�꣬2002����ҽѧ˶ʿѧλ���ó�����Ƽ��������Σ�ʤ�γ���θ���������ε���������״�ټ���ΧѪ�ܼ�����������ơ����븹ǻ��΢�������¼������ٴ��о���������Ӧ�ã�������ɸ�ǻ�������г�������β�г�������ǻ��̽���΢��������������ҽѧ������о��������������������ѧ������⡶��ǻ����״��������CO2����Ի������ѭ�����ܵ�Ӱ�졷�ĸ����ˡ������д�����ಿ�����Ķ�ƪ���нϷḻ���ٴ����������кͽ�ѧ���顣
</p>','1','0','0','0','0','upload/1415515110.jpg','0','5','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1732','82','�����','','','admin','2014-11-09 06:39:32','','<p>
	<span style=\"line-height:1.5;\">�����������ҽѧ��ʿ������ҽʦ����ʿ�о�����ʦ��רҵ�س���θ����������΢����ƣ����ó�θ������ֱ��������������������Ϻ����ƣ��зḻ���ٴ����飬�ܽ���������Ѳ�֢���ش������⣬�����л�ҽѧ��ɽ������ֻ�θ��ѧ��ίԱ��ѧ�����飬ɽ��ʡ���Э��ίԱ�����רҵѧ����־��ί��</span>
</p>
<br />
��������ʱ�䣺ÿ�ܶ�ȫ�졣<br />
������ϵ�绰��0531��82169425�� 13791122686��<br />
����E-mail: lfj6671@163.com��<br />','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1733','82','������','','','admin','2014-11-09 06:41:05','','&nbsp; �����£�ҽѧ��ʿ��������ҽʦ��ɽ��ʡҽѧ����Ʒֻḹǻ���ھ�ѧ��ίԱ�����飬����������������ѧSHANDSҽԺ���ޡ���Ҫרҵ����Ϊθ����ơ�������������ƣ������ó�θ������ֱ���������������������򲡵�΢���������ƣ���������ǰ�¸������Ƽ������ۺ��������н������衣<br />
<br />
&nbsp; ����ʱ�䣺��һȫ��<br />
&nbsp; ��ϵ�绰��82166331 &nbsp;18560085126<br />
<div>
	<br />
</div>','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1734','83','�Ź���','','','admin','2014-11-09 06:42:13','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109073530_15927.jpg\" alt=\"\" />
</p>
<p>
	�����Ź�����������ҽʦ��˶ʿ����ʦ���й�ҽʦЭ�����ҽʦ�ֻ����븹�����ίԱ��ίԱ���л�ҽѧ�����븹�����ѧ���ǻ�����ѧ�顰���л�ǻ�������ѧԺ����ʦ��ɽ��ʡҽѧ�����븹�����ѧ��ίԱ��ɽ��ʡҽʦЭ�����ҽʦ�ֻ������ǻ�����ҽʦ�ֻ����飬���й��ھ������־��������ǻ�������־�������ٴ�ʵ�������־����ί����������Ƽ�����΢�����ƣ��ó���ǻ���������������������ε������Լ����͸��ָ����޵���Ϻ����ơ�2007�꿪ʼ���¸�ǻ�������Ļ������ٴ�Ӧ���о�����ĿǰΪֹ��ɸ���ǻ������������900����������ȫ��ǻ���޸߼�������ѵ��3�ڣ��Ե�һ���߷���SCI����6ƪ���е�ʡ������2�������ɹ��Ҽ�����2���Ϊ��Ҫ����˻�ɽ��ʡ�Ƽ�����һ�Ƚ������Ƚ���1��αูǻ������4����������1����
</p>','1','0','0','0','0','','0','3','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1735','84','����','','','admin','2014-11-09 06:44:01','','<p style=\"text-align:center;\">
	<img src=\"http://www.webles.cn/attached/image/20141109/20141109062922_11200.jpg\" alt=\"\" />
</p>
<p>
	�����й�Э��ҽ�ƴ�ѧ������Ʋ�ʿ�������ڣ�ɽ����ѧǻ����Ʋ�ʿ��2009�기����hartfordҽԺ����ѧϰ���򲡺ͷ���֢��������ơ��л�ҽѧ�����ѧ������ίԱ��ɽ��ʡҽʦЭ��ǻ��ҽʦ�ֻ����飬ɽ��ʡҽѧ������ѧ���Ա,&#171; ��ǻ�������־&#187;�༭�����Ρ�
</p>
<span></span><br />
<span>������ʦ���������ר����������ڡ�����Ԫ���ڡ���ռԪ���ڣ���������Ƣ����ơ�ǻ������������о�����΢���������Ӧ��������Ƣ��ȸ��Ӽ��������ƣ��ɹ���չ�����������׾�Ƥ������Ĥ���崴������ǻ����Ƣ�г����ȸ����������ó����������������г�������΢��������������������ǻ����״����������ǻ��ֱ���������������������ڿ����Ͽ�չ�˴�����ǻ�����ھ�����θ�������������г�������ȡ�������õ���Ч��ÿ�����ǻ������Լ250����Э��ʡ�ڶ��ҽԺ��չǻ�����������ɽ��ʡ�Ƽ�����һ�Ƚ������Ƚ����������Ƽ��ɹ��ƹ���Ƚ���һ�</span><br />
<br />
<span>������ϵ�绰��0531-82169426��13605313603</span><br />
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1736','85','���춫','','','admin','2014-11-09 06:44:22','','�������춫��ҽѧ˶ʿ������ɽ��ҽ�ƴ�ѧ��³ҽԺ��ͨ�������ҽʦ�����ڣ��о�����ʦ����״��ѧ�ƵĴ�ͷ�ˡ��й�ҽʦЭ����Ʒֻ�ίԱ,�й�ҽʦЭ���״��ҽʦίԱ��ίԱ��ɽ��ҽʦЭ������Ʒֻ�����ҽʦ�᳣ֻίίԱ,ɽ��ʡҽѧ�����ټ�����ѧ�顢������ѧ��ίԱ��1995����997��μ���Ԯ��̹ɣ����ҽ�ƶӡ����Ρ��й�ҽʦ������־�������й���ͨ��ƽ�չ������������ơ��͡��л�����������־���ı�ί��<br />
<br />
����Ŀǰ��Ҫ���¼�״�ټ��������ټ����Լ�ֱ���������������Σ�ÿ����Ժ�ڵ���������600������ʡ�����ȿ�չ��ǻ������С�пڼ�״�����������õ�������Ч�����ִﵽ��ͬ������Ч�������ȿ�չ�˱�����ǻ�񾭴Ե�ֱ��ϵĤȫ�г�������ֱ������������������ʣ���������������������ȿ�չ��С�пڵ����г����������˲��˵�ʹ�ࣻ���ȿ�չ���{ѡ�������жϵ�������ΧѪ�������������������θ�䶯�����ķ����������ڼ�״�ٵĶ�����������״�ٰ��ĸ��μ��������ʣ�����ͷ���»���Ĵ�ͳ��ʮ��ָ���г��͸�����ʮ��ָ���г�������Ƣ�������β�г��������ڷ��������Ĵ��������������׵Ĵ���ֱ�������εȼ������Լ��Ķ����Ĵ������Ͳ��ԡ��ڹ��Ҽ������ڿ�����ѧ������50��ƪ�����ࡶʵ������������ơ�1�����α�2������ʡ�Ƽ�������1�ʡ��ί�Ƽ��ɹ���2�ʡҽѧ��Ƽ��ɹ���1��ֳе�ʡ�Ƽ���������Ŀ2�����2�Ժ��������Ŀ1�����˶ʿ�о���12����Э��������ʿ�о���3�����е�ɽ����ѧҽѧԺ��������ѧ����<br />
<br />
��������ʱ�䣺����ȫ��<br />
������ϵ�绰��0531-82169425��13605315569<br />
����E-mail: zengyijia@medmail.com.cn<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1737','85','����','','','admin','2014-11-09 06:45:42','','��������2003���ҵ���Ϻ��ڶ�ҽ�ƴ�ѧ�������ѧ��ʿѧλ������ɽ����ѧҽѧԺ����ѧ�о��Ҹ����Σ�ɽ����ѧ��³ҽԺ����Ƹ�����ҽʦ������ִҵҽʦ�ʸ������⿪��ר��ίԱ��ίԱ��ɽ��ʡҽѧ����Ʒֻ�ʵ�����ѧ��ίԱ��<br />
<br />
����һֱ�������ٴ�����ѧ��һ�ߡ��ó���״������������������״���ټ����ȵ���ϼ����ơ���ʡ�����ȿ�չ����ȫǻ����ǻ��������С�пڼ�״���г�����ʹ΢���������ڼ�״�������е�����ѵĽ�ϡ���չ�������񾭼�⼼�����Ա����״�������к��񾭵����ˡ��е�������ѧ���������ѧ�����ſγ̵����ۼ�ʵ���ѧ�������ڹ������ڿ�����ѧ������10��ƪ����ʡ�Ƽ�������1�ʡҽѧ��Ƽ��ɹ���1��е�ʡ�Ƽ���������Ŀ3�������������Ŀ1�<br />
<br />
��������ʱ�䣺����ȫ��<br />
������ϵ�绰��0531-82169425<br />
����E-mail: doclvbin@163.com<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1738','86','����Ԫ','','','admin','2014-11-09 06:54:58','','<p style=\"text-align:center;\">
	<img src=\"http://www.webles.cn/attached/image/20141109/20141109062138_32280.jpg\" alt=\"\" />
</p>
<p>
	��������Ԫ ��1962������ɽ�������أ�����ɽ����ѧ��³ҽԺ������Ρ���������Ρ���ƽ����Ҹ����Σ���³ҽԺ�ھ����Ƽ�����ѵ�������Ρ��ܳ�ѧ����ͷ�ˣ�����ҽʦ�����ڡ���ʿ����ʦ��ɽ��ʡ����ϵͳ�������ص�Ƽ��˲š����л��ٴ�ҽѧʵ����־���ܱࡢ����ǻ�������־��ִ�����ࡢ�༭�����Σ����ٴ�ʵ�������־�����࣬���л�ҽѧ��־Ӣ�İ桷��Լ���ר�ң���������Frontiers of Medicine in China����־�����л����������־�������л����������ѧ��־�������л�ҽѧ������־�������л��ھ������־�������л��ھ������־�������й�����������ٴ��������й�ʵ�������־������ɽ����ѧѧ�� ��ҽѧ�棩 �������й��ִ�����ѧ��־�������й�ʵ�����ѧ�������й��ھ���־���������������ʵ��������ɽ��ҽҩ�������ٴ������־�������л�����������־����ί�����й�΢�������־�������ί���������ھ�ҽʦ׼���ʸ�ָ���̲ġ��ھ�ҽѧ����ί�������������ѧ��ҩ��רҵ�����̲ı�ί���й�ҽʦЭ����Ʒ᳣ֻί���ھ�ҽʦ�᳣ֻ�����¡��л�ҽѧ����Ʒֻ�ίԱ�渹ǻ�����ھ����ѧ�鸱�鳤���л�ҽѧ��ɽ���ֻ�����רҵίԱ�ḱ����ίԱ��ɽ��ҽʦЭ�����ҽʦ�ֻḱ����ίԱ��ɽ��ҽѧ������רҵίԱ�ḹǻ���ھ����ѧ���鳤��ɽ��ʡ����Э����������ίԱ�ḱ����ίԱ��
</p>
<br />
<span>����1991�꿪ʼ���¸�ǻ�������Ķ���ʵ����ٴ�Ӧ���о���1992��4�²��������ɽ��ʡ������ǻ�������г�����ͬ��6���ڹ������Ȳ��뿪չ�˸�ǻ�����ܹ��п�ȡʯT�ι���������1993��ʵʩ��ɽ��ʡ������ǻ����β�г�������ǻ�����޲�����1994�����ҹ����ȿ�չ�˸�ǻ��С��Ƣ�г�����ͬʱ��ѧ�ƿ����Ե�Ӧ�õ������ơ�������ơ�����ơ�����ƣ���չ�������Ѷȸ�ǻ��������ǻ����״����������ǻ����ֱ��������������ǻ��С�ΰ��г�������ǻ��ʳ���ѿ����޲�������ǻ�����Ҹ�ǻ������������ǻ���Ĥǻ��ǻ�����г����������г�����ǻ��������п�ȡʯ����ǻ���ӹ��г����ȣ���ĿǰΪֹ����ɸ��ָ�ǻ������62��5900�����������ˡ�ȫ����ǻ��ҽʦ��ѵ���ġ�����������22��ʡ���С�������103��ҽԺ267��ҽ�������˸�ǻ����ѵ��1996�괴����ȫ��Ψһ�ĸ�ǻ�����רҵ����----����ǻ�������־��������ͳһ���ţ�CN37��1361/R �������⹫�����С�Ϊ���ƹ㸹ǻ����������֯��10��ȫ����10��ɽ��ʡ��ǻ������ѧϰ�༰���ֻᣬ��ʡ��83��ҽԺ��22��ʡ��92��ҽԺ��60���ȫ����ǻ��ѧ�������������������ݺ�ר�⽲�������ڶ�ȫ���ĸ�ǻ���ھ�ҽѧ��ҵ��չ�����˾޴��ף�2005��2006���������������˼����Endoscopics Award����2003��Ը�����ֲ�����������ص�֧�֣���ȫ�����������������֯����������Ƹ�����ֲ���ģ���2007��ɹ������50����ԭλ���������Ը���ֲ������ȡ�������õ���Ч���Ѿ���Ϊ��Ժ�ĳ�������֮һ������ֲ������չ����������������ɽ�����������ȵ�λ��</span><br />
<br />
<span>����Ŀǰ�е�ɽ��ʡ�Ƽ����ؼƻ�1�ɽ��ʡ��Ȼ��ѧ����1�ʡ���������п���2��������Ͽ���2����ڶԸ�ǻ��������ʵѵ�����������Ӧ�ú͸�ǻ�������˿�����Ӧ�ý������ص��о�����ȡ����һ���ĳɹ������մ��¸�ǻ��������ʿ�о���9�ˣ�˶ʿ�о���17�ˡ�����ɵĿ��⡰���Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ���о��� 1993����������Ƽ��������Ƚ������� ɽ��ʡ�Ƽ��������Ƚ�����1997����⡰��ǻ���ڸ�������е��ٴ�Ӧ���о��� ��ɽ��ʡ�Ƽ��������Ƚ���1998����⡰��ǻ������������е��ٴ�Ӧ���о��� ��ɽ��ʡ�Ƽ��������Ƚ���1999����⡰������ǻ���������ٴ��ƹ�Ӧ�á� ��ɽ��ʡҽѧ�Ƽ�����һ�Ƚ���2000����⡰��ǻ������������ǻ��ʯת��Ķ���ʵ���о��� ��ɽ��ʡ��ί�Ƽ��������Ƚ���2003����⡰��ǻ�������Ժ�ϸ��CR1������Լ������������Ӱ����о�����ɽ��ʡ�������Ƽ��������Ƚ�������ǻ����״�������Ķ���ʵ�鼰�ٴ�Ӧ���о�����ɽ��ʡ�������Ƽ��������Ƚ���2004�ꡰ���������г����ٰ������Զ������ƵĻ������ٴ��о����ֱ��ɽ��ʡ��ί�Ƽ��������Ƚ���ɽ��ʡ�������Ƽ��������Ƚ������⡰��ǻ��������ǻ�����Ѽ�ת��Ķ���ʵ���о��� 2005���ɽ��ʡ��У������гɹ�һ�Ƚ�����ר������ǻ�����������ɫͼ�ס���2005�ꡰɽ��ʡ��У������гɹ����Ƚ�����2006����⡰�����Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ�á���������ߵ�ѧУ�Ƽ��������Ƚ������⡰��ǻ��Ƣ�������Ļ������ٴ�Ӧ���о�����ɽ��ʡ��ѧ�����������Ƚ�����</span><br />
<br />
<span>��������Annals of Surgery��������Ӱ������7.678������Surgical Endoscopy��������������Minimally Invasive Therapy &amp; Allied Technologies�����¹�������Surgical Laparoscopy, Endoscopy &amp; Percutaneous Techniques��������������Chir Gastroenterol�����¹�������Chinese Medical Journal����SCI��¼��־��������10ƪ���ڡ��л���ͨ�����־�������л��ε������־�������л������ھ���־�������л�ʵ�������־����15����־�Ϸ�������90��ƪ�������ˡ��ٴ���������ѧ��������ǻ���ٴ����μ�����������ǻ�����������ɫͼ�ס�������������ٴ�����ѧͼ�ס�������KARL A. ZUCKER����ǻ�����ѧ�����ڶ��棩�����롶�����˺�Զ�̻�������ƾ�Ҫ���������롶�ھ�����ǻ�����ѧ�����αࡶ��ǻ�����ѧ��������ͨ����ھ�����ѧ������Ƣ�����ѧ�������ִ�΢�����ѧ����ʮ��ָ����ơ�����θ�����������������ѧ����������1996���������л�ҽѧӰ����������ġ���ǻ���븹ǻ��������¼�����2005��10��-2006��11�£����������������������л�ҽѧ����֯�ĸ�ǻ��������ѧƬ7�������л�ҽѧ���������������ȫ�����С�2003�������ġ���ǻ�����ѧ����ɽ����ѧ��׼��Ϊɽ����ѧ��������������˶ʿѡ�޿γ�,���ھ����ѧ��2004����׼Ϊɽ����ѧҽѧԺ��˶ʿѡ�޿ογ̡�</span>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1739','87','����','','','admin','2014-11-09 06:58:20','','�������£�����ҽʦ�����ڡ�˶ʿ�о�����ʦ����Ҫ����θ���ر��ǽ�ֱ���������������Լ��������Ρ��Ե�λֱ����������������ֱ�����淶�����ơ��󳦰���ת�ƵĹ淶�����ơ�θ������������ϼ����ơ�θ�����ڷ����������ơ����Ա��ص�������ơ���֢�Գ�����������ơ��̵�������ơ����ָ����޵�������Ƶȷ�����������о����е�θ�������������л������ܻ��ٴ�Ԯ��ҩƷ���������й���֢������ٴ�Ԯ��ҩƷ��̹��ҽѧ��֤������<br />
<br />
��������ʱ�䣺����ȫ��<br />','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1740','87','�϶���','','','admin','2014-11-09 06:59:25','','�����϶��ɣ�������ҽʦ��ҽѧ��ʿ�������ձ��͸�ɽ����ҽ�ƴ�ѧ���ޡ�������θ����Ƽ������ر��Ǹ���ֱ����������������ƣ���ʡ�����ȿ�չ�˾����š�������Լ����ֱ���г����᳦�ع��Ǻ�����ȡ�ýϺ�Ч�����Խ�ֱ�����������͸���ֱ�������Բ��䣨���̡�����ֱ����Χŧ�ס�������ֱ���Ѵ���ֱ��ǰͻ������Ա��صȣ��������о���<br />
<br />
��������ʱ�䣺����ȫ�졣<br />
������ϵ�绰��82169425 13964066366<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1741','87','����','','','admin','2014-11-09 07:00:21','','�������𲨣�ҽѧ��ʿ��������ҽʦ����Ҫרҵ����Ϊθ����ơ��س���ơ���������ơ�����������ͨ��Ƴ��������෢����Σ����֢��������ƺ��������ڸ�����������Լ������ر���θ���������ı�׼�����β������ۺ������Լ�θ����������֢���������ơ�Χ�����ڴ���ȷ�������˷ḻ���ٴ����飻�ر��ǶԵ�λֱ���������������������Լ���������Ա��صĵ�������ơ����θ�����������Ƶȷ���Ҳ�н������衣<br />
<br />
��������ʱ�䣺��һȫ��<br />
������ϵ�绰��0531-82169425��13705318112<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1742','66','The current status and prospect of endoscopic thyroid operation','','','admin','2014-11-10 13:22:18','kczx/kczx1.ppt','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1743','66','Laparoscopic Surgery','','','admin','2014-11-10 13:22:18','kczx/kczx2.ppt','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1744','66','Laparoscopic Cholecystectomy, LC','','','admin','2014-11-10 13:23:57','kczx/kczx3.pptx','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1745','64','��վģ��ҳ','','','admin','2014-11-11 09:21:04','','<table cellspacing=\"10\" width=\"100%\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img alt=\"\" src=\"/attached/image/20141111/20141111092627_94147.jpg\" /> 
				</p>
				<p align=\"center\">
					����Ԫ ���ڡ���ʿ����ʦ
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					��������Ԫ ��1962������ɽ�������أ�����ɽ����ѧ��³ҽԺ������Ρ���������Ρ���ƽ����Ҹ����Σ���³ҽԺ�ھ����Ƽ�����ѵ�������Ρ��ܳ�ѧ����ͷ�ˣ�����ҽʦ�����ڡ���ʿ����ʦ��ɽ��ʡ����ϵͳ�������ص�Ƽ��˲š����л��ٴ�ҽѧʵ����־���ܱࡢ����ǻ�������־��ִ�����ࡢ�༭�����Σ����ٴ�ʵ�������־�����࣬���л�ҽѧ��־Ӣ�İ桷��Լ���ר�ң���������Frontiers of Medicine in China����־�����л����������־�������л����������ѧ��־�������л�ҽѧ������־�������л��ھ������־�������л��ھ������־�������й�����������ٴ��������й�ʵ�������־������ɽ����ѧѧ�� ��ҽѧ�棩 �������й��ִ�����ѧ��־�������й�ʵ�����ѧ�������й��ھ���־���������������ʵ��������ɽ��ҽҩ�������ٴ������־�������л�����������־����ί�����й�΢�������־�������ί���������ھ�ҽʦ׼���ʸ�ָ���̲ġ��ھ�ҽѧ����ί�������������ѧ��ҩ��רҵ�����̲ı�ί���й�ҽʦЭ����Ʒ᳣ֻί���ھ�ҽʦ�᳣ֻ�����¡��л�ҽѧ����Ʒֻ�ίԱ�渹ǻ�����ھ����ѧ�鸱�鳤���л�ҽѧ��ɽ���ֻ�����רҵίԱ�ḱ����ίԱ��ɽ��ҽʦЭ�����ҽʦ�ֻḱ����ίԱ��ɽ��ҽѧ������רҵίԱ�ḹǻ���ھ����ѧ���鳤��ɽ��ʡ����Э����������ίԱ�ḱ����ίԱ��
				</p>
				<p>
					����1991�꿪ʼ���¸�ǻ�������Ķ���ʵ����ٴ�Ӧ���о���1992��4�²��������ɽ��ʡ������ǻ�������г�����ͬ��6���ڹ������Ȳ��뿪չ�˸�ǻ�����ܹ��п�ȡʯT�ι���������1993��ʵʩ��ɽ��ʡ������ǻ����β�г�������ǻ�����޲�����1994�����ҹ����ȿ�չ�˸�ǻ��С��Ƣ�г�����ͬʱ��ѧ�ƿ����Ե�Ӧ�õ������ơ�������ơ�����ơ�����ƣ���չ�������Ѷȸ�ǻ��������ǻ����״����������ǻ����ֱ��������������ǻ��С�ΰ��г�������ǻ��ʳ���ѿ����޲�������ǻ�����Ҹ�ǻ������������ǻ���Ĥǻ��ǻ�����г����������г�����ǻ��������п�ȡʯ����ǻ���ӹ��г����ȣ���ĿǰΪֹ����ɸ��ָ�ǻ������62��5900�����������ˡ�ȫ����ǻ��ҽʦ��ѵ���ġ�����������22��ʡ���С�������103��ҽԺ267��ҽ�������˸�ǻ����ѵ��1996�괴����ȫ��Ψһ�ĸ�ǻ�����רҵ����----����ǻ�������־��������ͳһ���ţ�CN37��1361/R �������⹫�����С�Ϊ���ƹ㸹ǻ����������֯��10��ȫ����10��ɽ��ʡ��ǻ������ѧϰ�༰���ֻᣬ��ʡ��83��ҽԺ��22��ʡ��92��ҽԺ��60���ȫ����ǻ��ѧ�������������������ݺ�ר�⽲�������ڶ�ȫ���ĸ�ǻ���ھ�ҽѧ��ҵ��չ�����˾޴��ף�2005��2006���������������˼����Endoscopics Award����2003��Ը�����ֲ�����������ص�֧�֣���ȫ�����������������֯����������Ƹ�����ֲ���ģ���2007��ɹ������50����ԭλ���������Ը���ֲ������ȡ�������õ���Ч���Ѿ���Ϊ��Ժ�ĳ�������֮һ������ֲ������չ����������������ɽ�����������ȵ�λ��
				</p>
				<p>
					����Ŀǰ�е�ɽ��ʡ�Ƽ����ؼƻ�1�ɽ��ʡ��Ȼ��ѧ����1�ʡ���������п���2��������Ͽ���2����ڶԸ�ǻ��������ʵѵ�����������Ӧ�ú͸�ǻ�������˿�����Ӧ�ý������ص��о�����ȡ����һ���ĳɹ������մ��¸�ǻ��������ʿ�о���9�ˣ�˶ʿ�о���17�ˡ�����ɵĿ��⡰���Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ���о��� 1993����������Ƽ��������Ƚ������� ɽ��ʡ�Ƽ��������Ƚ�����1997����⡰��ǻ���ڸ�������е��ٴ�Ӧ���о��� ��ɽ��ʡ�Ƽ��������Ƚ���1998����⡰��ǻ������������е��ٴ�Ӧ���о��� ��ɽ��ʡ�Ƽ��������Ƚ���1999����⡰������ǻ���������ٴ��ƹ�Ӧ�á� ��ɽ��ʡҽѧ�Ƽ�����һ�Ƚ���2000����⡰��ǻ������������ǻ��ʯת��Ķ���ʵ���о��� ��ɽ��ʡ��ί�Ƽ��������Ƚ���2003����⡰��ǻ�������Ժ�ϸ��CR1������Լ������������Ӱ����о�����ɽ��ʡ�������Ƽ��������Ƚ�������ǻ����״�������Ķ���ʵ�鼰�ٴ�Ӧ���о�����ɽ��ʡ�������Ƽ��������Ƚ���2004�ꡰ���������г����ٰ������Զ������ƵĻ������ٴ��о����ֱ��ɽ��ʡ��ί�Ƽ��������Ƚ���ɽ��ʡ�������Ƽ��������Ƚ������⡰��ǻ��������ǻ�����Ѽ�ת��Ķ���ʵ���о��� 2005���ɽ��ʡ��У������гɹ�һ�Ƚ�����ר������ǻ�����������ɫͼ�ס���2005�ꡰɽ��ʡ��У������гɹ����Ƚ�����2006����⡰�����Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ�á���������ߵ�ѧУ�Ƽ��������Ƚ������⡰��ǻ��Ƣ�������Ļ������ٴ�Ӧ���о�����ɽ��ʡ��ѧ�����������Ƚ�����
				</p>
				<p>
					��������Annals of Surgery��������Ӱ������7.678������Surgical Endoscopy��������������Minimally Invasive Therapy &amp; Allied Technologies�����¹�������Surgical Laparoscopy, Endoscopy &amp; Percutaneous Techniques��������������Chir Gastroenterol�����¹�������Chinese Medical Journal����SCI��¼��־��������10ƪ���ڡ��л���ͨ�����־�������л��ε������־�������л������ھ���־�������л�ʵ�������־����15����־�Ϸ�������90��ƪ�������ˡ��ٴ���������ѧ��������ǻ���ٴ����μ�����������ǻ�����������ɫͼ�ס�������������ٴ�����ѧͼ�ס�������KARL A. ZUCKER����ǻ�����ѧ�����ڶ��棩�����롶�����˺�Զ�̻�������ƾ�Ҫ���������롶�ھ�����ǻ�����ѧ�����αࡶ��ǻ�����ѧ��������ͨ����ھ�����ѧ������Ƣ�����ѧ�������ִ�΢�����ѧ����ʮ��ָ����ơ�����θ�����������������ѧ����������1996���������л�ҽѧӰ����������ġ���ǻ���븹ǻ��������¼�����2005��10��-2006��11�£����������������������л�ҽѧ����֯�ĸ�ǻ��������ѧƬ7�������л�ҽѧ���������������ȫ�����С�2003�������ġ���ǻ�����ѧ����ɽ����ѧ��׼��Ϊɽ����ѧ��������������˶ʿѡ�޿γ�,���ھ����ѧ��2004����׼Ϊɽ����ѧҽѧԺ��˶ʿѡ�޿ογ̡�
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','1','4','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1746','64','vxcvxcvcx','sdfs','','admin','2014-11-11 09:33:27','','<table style=\"text-align:left;background-color:#ffffff;color:#000000;\" cellspacing=\"10\" width=\"100%\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p align=\"center\">
					<img alt=\"\" src=\"/attached/image/20141111/20141111093454_73901.jpg\" />
				</p>
				<p align=\"center\">
					����Ԫ ���ڡ���ʿ����ʦ
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span style=\"background-color:#ffffff;color:#000000;\">�����Ź�����������ҽʦ��˶ʿ����ʦ���й�ҽʦЭ�����ҽʦ�ֻ����븹�����ίԱ��ίԱ���л�ҽѧ�����븹�����ѧ���ǻ�����ѧ�顰���л�ǻ�������ѧԺ����ʦ��ɽ��ʡҽѧ�����븹�����ѧ��ίԱ��ɽ��ʡҽʦЭ�����ҽʦ�ֻ������ǻ�����ҽʦ�ֻ����飬���й��ھ������־��������ǻ�������־�������ٴ�ʵ�������־����ί����������Ƽ�����΢�����ƣ��ó���ǻ���������������������ε������Լ����͸��ָ����޵���Ϻ����ơ�2007�꿪ʼ���¸�ǻ�������Ļ������ٴ�Ӧ���о�����ĿǰΪֹ��ɸ���ǻ������������900����������ȫ��ǻ���޸߼�������ѵ��3�ڣ��Ե�һ���߷���SCI����6ƪ���е�ʡ������2�������ɹ��Ҽ�����2���Ϊ��Ҫ����˻�ɽ��ʡ�Ƽ�����һ�Ƚ������Ƚ���1��αูǻ������4����������1����</span>
				</p>
			</td>
		</tr>
	</tbody>
</table>
<strong></strong>','1','0','0','0','0','','1','1','0');

CREATE TABLE `articleclass` (
  `classid` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `parentid` int(4) NOT NULL DEFAULT '0',
  `position` int(4) NOT NULL DEFAULT '0',
  `classorder` int(4) NOT NULL DEFAULT '0',
  `url` mediumtext NOT NULL,
  `ctype` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('64','��̬��Ѷ','0','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('65','��Ƶ����','0','1','2','video.php','4','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('66','�γ�����','0','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('67','ר�ҽ���','0','1','4','','1','7');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('68','��־Ͷ��','0','1','5','http://fqjw.cbpt.cnki.net/WKB2/WebPublication/index.aspx?mid=FQJW','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('69','��������','0','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('73','�ε����','65','1','1','video.php?classid=73','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('74','θ�����','65','1','2','video.php?classid=74','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('75','���븹�����','65','1','3','video.php?classid=75','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('76','�������','65','1','4','video.php?classid=76','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('77','��״�����������','65','1','5','video.php?classid=77','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('78','�������������','65','1','6','video.php?classid=78','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('79','�������','65','1','7','video.php?classid=79','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('80','����','65','1','8','video.php?classid=80','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('81','�ε����','67','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('82','θ�����','67','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('83','���븹�����','67','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('84','�������','67','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('85','��״�����������','67','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('86','�������������','67','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('87','�س����','67','1','7','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('89','��������','0','4','1','','1','0');

CREATE TABLE `floatimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` text NOT NULL,
  `linkurl` text NOT NULL,
  `pass` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `paixu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


CREATE TABLE `focus` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `linkurl` mediumtext NOT NULL,
  `imgurl` mediumtext NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=gbk;

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('24','�Ź���&#160;����','http://www.webles.cn/showarticle.php?articleid=1734','upload/1408746637.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('25','���ı� ����','http://www.webles.cn/showarticle.php?articleid=1731','upload/1408746599.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','����&#160;����','http://www.webles.cn/showarticle.php?articleid=1728','upload/1408746574.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','����Ԫ ����','http://www.webles.cn/showarticle.php?articleid=1727','upload/1408746524.jpg','');

CREATE TABLE `gbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `adddate` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `reply` longtext NOT NULL,
  `pass` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

insert into `gbook`(`id`,`name`,`email`,`title`,`content`,`adddate`,`ip`,`reply`,`pass`,`hits`) values('6','wellans1979','��ʿ�����ɷ�����','��ʿ�����ɷ�����','��ʦ���ң���ΰ��ͨ���й����нɷѵ�ʱ������ʱ����ţ��ҽɷ�֮�����ң���ΰ���Ļ��������һ��ͬѧ�����ȣ������˱����ѣ��ڡ����ԡ�����ע���ˡ����Ȳ�ʿ�����ѣ�������ţ�11181����������ѯһ�£������ܸ��������ȣ������ɹ�ô������Ҳû�п������µı����ɹ�������������Щ�ż���лл��','2009-11-03 11:31:53','127.0.0.1','�������������о���������Ϣ���ϲ�ѯ��','1','0');
insert into `gbook`(`id`,`name`,`email`,`title`,`content`,`adddate`,`ip`,`reply`,`pass`,`hits`) values('7','sdfas','sadfsadf','sadfasf','sadfsafasdf','2010-03-04 01:44:20','127.0.0.1','sfdsaf234','1','0');

CREATE TABLE `link` (
  `linkid` int(4) NOT NULL AUTO_INCREMENT,
  `linkname` mediumtext NOT NULL,
  `classid` int(4) NOT NULL DEFAULT '0',
  `linkurl` mediumtext NOT NULL,
  `imgurl` mediumtext NOT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=gbk;


CREATE TABLE `linkclass` (
  `classid` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `classorder` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;


CREATE TABLE `photo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `linkurl` mediumtext NOT NULL,
  `imgurl` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('2','������Ƶ','','scroll/a7.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('3','������Ƶ','','scroll/a6.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('4','������Ƶ','','scroll/a5.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('5','������Ƶ','','scroll/a4.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('6','������Ƶ','','scroll/a3.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('7','������Ƶ','','scroll/a2.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('8','������Ƶ','','scroll/a1.jpg');

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `linkurl` text NOT NULL,
  `imgurl` text NOT NULL,
  `ctype` int(11) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `adddate` datetime NOT NULL,
  `isrec` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('6','���긹ǻ�����׵����г���','����΢����Ƽ����ķ�չ , ���̶ȵļ����������˺�����Ч����Ϊ���ҽʦ��׷�� ������Ȼǻ���� �� ���� ( natural orifice transluminal endoscopic surgery, NOTES)Ӧ�˶��� , ��ͨ��һ�����Ŀ��������ھ� , �����ߵĿ� �� ���� ����� �����ŵ��� Ȼǻ���������� , ����θ �� ���� �� ���� �� ��ֱ�� �� ʳ�����������븹ǻ����ǻ�������� , �����߸����������пںͰ̺� , ʵ���� ���ް̺� �� (No Scar)��΢�� �� �������۵�Ч�� �� ���� �����豸 ����е���� , ��֮�����Ѷȸ� , ���ڸ�ǻ��Ⱦ���������׵ķ��� , NOTES�����������ٴ��㷺��չ �� ������ 2008�� 1 1�� ��չ�˾�����·���׸�ǻ������ ( embryonic naturalorifice transumbilicalendoscopic surgery, E-NOTES), ͬ���ﵽ�˸������ۺͽϺõ�����Ч�� , ���� NOTES�����ѶȺ��������մ�Ϊ���� , ������Ϊ��ǰ;�����͸�ǻ������ ��
','http://www.cmxxw.net/fqjwkzz/flv/sssp1.flv','upload/1408753184.jpg','73','����Ԫ','2014-11-09 00:00:00','1','11');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('7','���׸�ǻ��Ƣ�г���','��ǻ��Ƣ�г���( laparoscopic splenectomy�� LS)�� 1992 �꿪ʼ����� �� �˺������緶Χ��Ѹ�ٿ�չ �� ���������� 1994 ���ڹ��ڽ��翪չ��LS�� �˺���̿�չ��������ǻ ��Ƣ�г��� �� ��ǻ��Ƣ�����г����ȣ� ����Ч������ �� LESS �������ֽ׶�����е�����ް̺� �������� ��Ŀǰ����΢�����ѧ����о��ȵ�֮һ�� ������΢�����ҽ�����ٵ�����ս�����߶�����Ч���Ľ�һ��׷�� ��','http://www.cmxxw.net/fqjwkzz/flv/sssp2.flv','upload/1408753039.jpg','76','����Ԫ','2014-11-09 00:00:00','1','10');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('8','minilap�������׵����г���','minilap�������׵����г���  ��� �ε����
Minilap��еֱ����3mm���£����ڳ�ϸ��е������״��ͷ��ֱ�Ӿ�Ƥ���룬ȡ����Ƥ���п�ϸС�����Ϻ�̺����Է��֣���ˣ���������LESS������������������̺۵��ŵ㡣��LESS��������һ�����ʵļ������ƣ���Minilap��Ҳ����һ��ȫ�µĸ������1997�꣬�����θ�ǻ�������������㸹ǻ���������ĸ�������˹�����΢�����ѧ�硣������ʹ��ר�������׹ܺ���е���в�����Ѱ���С���������˺���֯�ƻ���������������Ч������Ȼ�ü������д���С������Ч���õ��ŵ㣬����������е����ϸС��ץ�����������Բ���𻵣���˸ü���û�еõ��ܺõ��ƹ��������Minilap��е������Ϊ��������е�����ϵķ�չ�����������ŵ㣺��1��ͨ����Ƥ���̣�����ʹ���׹��룻��2��ֱ��2.3mm������С���������̺ۣ���3��Ӳ�ȸߣ��������𣻣�4�����ڴ�ץ����ǿ�����黼�߾�ʹ��MinilapץǯЭ��ǣ�����Һ���¶����������óɹ��������ü����ǰ�ȫ�����еġ�ʹ��Minilap��󽵵��˵��׸�ǻ������ͬ��ֱ����Ұ�����Ĳ����Ѷȣ�������е�ķ���Ҳ��������е�ڸ�ǻ������໥���š���ײ��ͬʱ���������԰̺��಻����LESS�������������ƣ�ʹLESS�����Ĺ㷺�ƹ�Ӧ�ó�Ϊ���ܡ�
','http://www.cmxxw.net/fqjwkzz/flv/sssp3.flv','upload/1408753116.jpg','73','����Ԫ','2014-11-09 00:00:00','1','6');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('9','��ǻ����״�ٴ�ȫ�г���','����΢����Ƽ����ķ�չ�� ���̶ȵؼ����������˺�ȡ�ø��õ�����Ч���ѳ�Ϊ���ҽʦ��׷�� ���꣬ ǻ����״�������ս����죬 ���������¶��λ���������пںͰ̺ۣ� �������ߵ������ʣ�ͬʱ��������������� ������������ġ� Ż�µȡ� ���Ÿ�ǻ��������·���򡰵��ס� �������ް̺ۡ� ����չ�� �ƶ��Ÿ�ǻ�����������΢���� �������۵�
����չ�� 
����ʽ���׼�״���������ŵ� �����������ŵ�������Ч���� ��Դ�ͳǻ����״�������� �����п�ת�����������εĲ�λ; ͬʱ�����豸��ʹ�� ��������������ز���֢�� ��­��ѹ���� �� ���ж� �� �Ķ����� �� �㷺Ƥ�����׵� �� ���ǵ��о����� �� �������� CO2�� ������һϵ�в����ڻ��������Ӧ��
','http://www.cmxxw.net/fqjwkzz/flv/sssp4.flv','upload/1408753200.jpg','77','����Ԫ','2014-11-09 00:00:00','1','6');

