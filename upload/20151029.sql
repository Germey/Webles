CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user` varchar(25) NOT NULL DEFAULT '',
  `passwd` varchar(25) NOT NULL DEFAULT '',
  `class` int(4) NOT NULL DEFAULT '0',
  `expire` date NOT NULL DEFAULT '0000-00-00',
  `item` mediumtext NOT NULL,
  `classid` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','6851189','1','3008-08-27','#����û�##�༭�û�##�����Ŀ##�༭��Ŀ##�������##�༭����##�鿴����վ##������##�༭���##�������##�༭����##�����Ƶ##�༭��Ƶ##��ӹ���ͼƬ##�༭����ͼƬ##��Ӹ���ͼ��##�༭����ͼ��##�������ݿ�##�鿴����#','\'a\',\'64\',\'65\',\'73\',\'74\',\'75\',\'76\',\'77\',\'78\',\'79\',\'80\',\'66\',\'67\',\'81\',\'82\',\'83\',\'84\',\'85\',\'86\',\'87\',\'88\',\'68\',\'69\',\'89\',\'b\'');

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
) ENGINE=MyISAM AUTO_INCREMENT=1807 DEFAULT CHARSET=gbk;

insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1710','69','��������','','','admin','2014-11-08 06:51:37','','<p style=\"text-align:center;\">
	&nbsp; &nbsp;&nbsp;<img src=\"/attached/image/20141113/20141113121458_21038.jpg\" width=\"400\" height=\"257\" alt=\"\" />
</p>
<p>
	&nbsp; &nbsp; ��ǻ��������1992���ڹ��ڿ�չ���������䴴��С���ָ�����ŵ�õ�ҽ����Աϲ������һ�¼���Ѹ��Ӧ�õ����⡢�����ơ����⡢�����⡢����Ƶȿ��ң�Ϊ�ٽ�ѧ����������߼���ˮƽ�����Ǵ����ˡ���ǻ�������־����
</p>
&nbsp; &nbsp; ����ǻ�������־��������1996��11�£�ɽ��ʡ��ʱ���ţ�³�ڿ���398�ţ���ΪС16������64��ҳ�룬������ɽ��ҽ�ƴ�ѧ����ҽԺ����ɽ����ѧ��³ҽԺ�����졣���ࣺ��ϣ�ꡢ��骺����༭�����κ���Ԫ����������˵�һ���ί�ᣬ��ί24�ˡ������������Կ�������־�ܵ��˹�����֪��ר�Һ͹��ǻ��ҽ�����ߵĺ�����2000��9�»�������ų�����ͿƼ�����׼����׼�ĺ�[2000]��310�ţ�������ֵ��У����־ע��Ϊ���������ܣ�ɽ����ѧ����Ĺ����⹫�����е�ѧ���ڿ�������CN 37-1361/R��ISSN 1009-6612����16����64ҳ�룬�������ÿ���ȫ��Ψһ�ĸ�ǻ�����רҵ���Ҳ���л�ҽѧ����Ʒֻḹǻ��-�ھ����ѧ���רҵ���ڿ�����־���ʣ���־ǿԺʿ��������Ժʿ�������Ժʿ������̪Ժʿ��֣��ɭԺʿ�����ϳ�Ժʿ�ȣ����ࣺ֣�񻪡�����Ԫ������֣��Ϊ�л�ҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤�������ࣺ���ܹ⡢��������󻪡������ȣ����Σ����ı������ڡ�2000��12�±����ڼ����ٿ��˵ڶ����ί�ᣬ��ί����70���ˣ����Թ�����30��Ҵ�ҽԺ����Լ��ί25�ˣ�������������Ա40���ˣ�������30�ˡ���Ϊ����������ǻ�����ר�ҡ�2005��12�±����༭�����Ϻ��ٿ��˵������ί�ᣬ��ί���Թ�����50��Ҵ�ҽԺ��110���ˣ���Լ��ί43�ˣ�������������Ա90���ˣ�������20���ˣ�˶ʿ����ʦ80���ˡ��ҹ���۵�����ί3�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ���Ϊ������������ǻ�����ר�ҡ�2010��9���ڼ����ٿ����Ľ��ί�ᣬ��ί���Թ�����90��Ҵ�ҽԺ��250���ˡ�������200���ˣ��ҹ���۵�����ί4�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ������1�ˣ���Ϊ������������ǻ�����ר�ҡ�<br />
&nbsp; &nbsp; 2001��ȱ��������й��ڿ�ȫ�����ݿ⣨CJFD�������й��Ƽ������ڿ��������й��Ƽ��ڿ����ݿ⡷�����й��Ƽ�����ѧ�������ݿ�棨CSTPCD����������������ҽѧ�ڿ��������ݿ⣨CMCC���������й�����ҽѧ���׼�������ϵͳ�������ݿ⣨CBMdisc���������й�ѧ���ڿ��ۺ��������ݿ⡷����¼��ͨ��Inter�����������̼������ɲ��ġ�2002�걻��Ϊ�����컪�����������ڿ���2004��5��������־��������վ��http://www.fqjwkzz.cn����2006�걾�������й��Ƽ���Ϣ�о����ۺ�����������¼Ϊ�й��Ƽ������ڿ����й�ͳ��Դ�ڿ����������ҹ���ǻ�����רҵ�Ĳ��Ϸ�չ�������Ѳ�����������ߵ�����2004�꾭ɽ��ʡ���ų������׼��Ϊ˫�¿���2006��ҳ������90ҳ��2009����Ϊ�¿���80ҳ�롣<br />
&nbsp; &nbsp; ��־������2011��4�µף�������75�ڣ���Լ1120���֣����ո��5443ƪ������2431ƪ����������33ƪ��ר�ұ�̸52ƪ��ר���о�340ƪ������1308ƪ������116ƪ�������о���չ1ƪ���ٴ�����197ƪ������146ƪ����������197ƪ����������6ƪ��Ӣ�ĸ�1ƪ������7ƪ��<br />
&nbsp; &nbsp; ������֡�˫�١����룬�����ٴ����᳹������ʵ�����ٴ�����У��ռ���������ϵķ��룬ʵ�����ǣ���ʱ������ǻ����Ƶ��¼������¾��飬�ƹ㸹ǻ����Ƶ��о��ɹ���������Ҫ��Ŀ��������ר�ұ�̸��ר���о���������������Ӣ�ĸ塢�ٴ����顢��������ȣ�ÿ�ھ�����ȫ��֪����ǻ��ר�ҵ�������ר�ұ�̸��ר�⽲����������԰���������ڵ�31��ʡ����������ֱϽ�У��������ҽԺ��ҽѧԺ�����ҽʦ����ǻ��ҽ�����ߺ�ͼ��ݷ��У��ʷ�����24-171��<br />
&nbsp; &nbsp; Ϊ������־�����ѧ���Ӱ�죬��߱���֪���ȣ�1998����2010����ױ����ɹ�������15��ȫ����10��ɽ��ʡ��ǻ������ѧϰ�༰���ֻᣬ2�ι��ʸ�ǻ���ھ����ѧ�����ֻᣬ�����Ա5400���ˣ��ձ���Yugo Nagai���ڣ�������Park���ڼ�Frezza���ڱ�ƸΪ������������ί��ר�̲ι��ˡ���ǻ�������־���༭������������ר��ѧ�����棬��ϸ�����˹��⸹ǻ����Ƶķ�չ�������������Ӧ֤������֤��ѡ���벢��֢�Ĵ�����Щ��ܺõ��ƶ�����ʡ��ǻ���������ʵĽ�������ϵ����Ϊ�ҹ���ǻ�����ҽ�����߽���ѧ��̽�֡������ܽ��ṩ�����õĻ��ᣬ���ҹ���ǻ����Ƶķ�չ��������˾޴���ƶ����á�<br />
&nbsp; &nbsp; 2009����й��Ƽ��ڿ���֤���棨���İ棩�У�����Ӱ������Ϊ0.381���ܱ���Ƶ��485��������0.78,ƽ��������6.83��<br />
&nbsp; &nbsp; ������������һֱ�ܵ������ߵĺ��������߷�Χ��������������Ӱ������������������󣬱����������Լ��Ĳ��㣬�������ƺͷ�չ���ң��߾�ȫ����������ɹ���һ����ѧ�����Ϊȫ������ҹ���ǻ�����ҽ����Ա������ˮƽ�ͼ���ˮƽ���ٽ�ѧ����������չ�ҹ���ǻ����Ʒ���<br />','1','0','0','0','0','','0','9','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1711','89','��������','','','admin','2014-11-08 06:58:01','upload/1415877914.doc','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141113/20141113112212_58078.jpg\" width=\"700\" height=\"167\" alt=\"\" /> 
</p>
<p>
	<br />
</p>
<p>
	&nbsp; &nbsp; ɽ����ѧ��³ҽԺ���������ھ����Ƽ�����ѵ���ء���ɽ��ʡ��ͨ���רҵΨһ�ľ���������֤�ĸ�ǻ���ھ�ҽʦ��ѵ���أ�ʦ������ǿ�󣬾��ж���ĸ�ǻ����ѵ���飬�Լ���ǻ��ҽʦѧ������ƽ̨�������й��Ƽ������ڿ�������ǻ�������־����������ѵ���400��ƽ���ף��䱸����յ������缰���ߵ��ӣ���ѵ�豸�Ƚ��������걸�������������������и�ǻ��ģ��ѵ���ҡ����ʵ�飩�����ҡ������������ʵѵ���ҡ���ý����ң�������³ҽԺ��ǻ��������ͬ��ֱ����������ͼ���ҡ���Ъ�Ҽ�ԡ�ҵȳ�����
</p>
<p>
	<br />
</p>
<p>
	&nbsp; &nbsp; <strong>һ�����ն���</strong><br />
&nbsp; &nbsp; ��ѵ����ÿ������ȫ���ٰ�6�ڸ�ǻ��ҽʦ��ѵ�࣬ÿ��18�ˣ���ѵʱ��2�ܡ���ѵ������ȫ���������������ٴ��������Ѿ�ȡ��ҽʦ�ʸ�֤���ҽʦִҵ֤�飬������ھ����Ƽ���������ר��ҽʦ���ɱ����μӡ�<br />
&nbsp; &nbsp; <strong>������ѵ��ʽ</strong><br />
&nbsp; &nbsp; ��ѵ�ϸ����������й�Ҫ�󣬲��������ڿΡ�������ʾ��ģ��ѵ��������ʵ�����ѵ��Ŀ���Էֽ׶Ρ��ֲ������ʽ���С�ѧԱ����ѵ�����˺ϸ��䷢��ɽ����ѧ��³ҽԺ�ھ����Ƽ�����ѵ�ϸ�֤�顷��<br />
&nbsp; &nbsp;<strong> ���� &nbsp; ѧԱ����</strong><br />
&nbsp; &nbsp; ��һ�� &nbsp; &nbsp;����ʱ��<br />
&nbsp; &nbsp; ȫ����ܱ�����<br />
&nbsp; &nbsp; ������ &nbsp; &nbsp;��������<br />
&nbsp; &nbsp;&nbsp;1����λ�Ƽ���<br />
&nbsp; &nbsp; 2. ճ������Ƭ�ġ�ɽ����ѧ��³ҽԺ�ھ����Ƽ�����ѵ�౨��������������һ��<br />
&nbsp; &nbsp; 3.��ִҵҽʦִҵ֤�顷ԭ������ӡ����һ��<br />
&nbsp; &nbsp; 4. һ��Ͷ���������ڲ�ɫ��Ƭ������<br />
&nbsp; &nbsp;&nbsp;������������ʽ<br />
&nbsp; &nbsp; ���ز���д��ɽ����ѧ��³ҽԺ�ھ����Ƽ�����ѵ�౨���������Ӱ淢����qlyynjpx@163.com�������Ӹǵ�λ���µı�����ԭ���ʼ����涨��ַ��δ��ʱ�ĳ��ı�����ԭ�����ڱ���ʱ������ϵ�ˣ���<br />
&nbsp; &nbsp; <strong>�ġ����˵��</strong><br />
&nbsp; &nbsp; ÿ������ѧԱ18�ˣ����ձ����Ⱥ�˳������ʸ���飬���ϱ����������Ե绰��ʽ֪ͨΪ׼��<br />
&nbsp; &nbsp; �����ص㣺ɽ����ѧ��ͻȪУ������·���ס��������ھ����Ƽ�����ѵ���ء���ɽ����ѧ��³ҽԺ���棩��<br />
&nbsp; &nbsp; ѧϰ���ã�4500Ԫ���ˣ�ʳ������<br />
&nbsp; &nbsp;&nbsp;�ʼĵ�ַ���������Ļ���·107�ţ�ɽ����ѧ��³ҽԺ�ھ����Ƽ�����ѵ���� �� �ʱࣺ250012 ��<br />
&nbsp; &nbsp; ��ϵ�ˣ������� &nbsp;0531��82169442
</p>
<p>
	<br />
</p>
<p>
	<span>&nbsp; &nbsp; ������أ�<a href=\"upload/1415877914.doc\" target=\"_blank\"><span style=\"color:#E53333;\">ɽ����ѧ��³ҽԺ�ھ����Ƽ�����ѵ�౨����</span></a></span><a href=\"upload/1415877914.doc\" target=\"_blank\"></a> 
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1712','64','����һƪ������ѡ��2010���й���ƪ���Ӱ�����ѧ�����ġ�  ','','','admin','2012-01-06 08:42:08','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>2011��12��2�տƼ����й���ѧ������Ϣ�о����������й��Ƽ��ڿ����۽����2010�꡶��ǻ�������־���ܱ���Ƶ��Ϊ983�Σ�Ӱ������Ϊ0.714�������ѧ��59�ֺ����ڿ����е�10λ����������ĵ���Ϣ�ǣ��ҹ�֪����ǻ��ר�Һ���Ԫ�����쵼���о�С�鷢���ڱ���2009������ġ��������굥�׸�ǻ�������г�������ѡ��2010���й���ƪ���Ӱ�����ѧ�����ġ�����ǻ�������־��2009���14���1��18~20ҳ����<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �˴δ�ṫ����2010���ҹ����ڿƼ����Ĺ�����53.06��ƪ����������ҽҩ��������ԼΪ23.1��ƪ����2010���й���ƪ���Ӱ�����ѧ�����ġ��Ǵ�2006~2010���й��Ƽ��������������ݿ⣨CSTPCD������¼�������а������Ĵ����ԡ����ķ����ڿ�ˮƽ���Ƿ������о��ȵ㡢���ı���֤���ȶ���ָ��ѡȡ�ģ�����ҽѧ�๲��29ƪ������ѡ��&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���굥�׸�ǻ�������ǽ��긹ǻ��������о��ȵ㣬����Ԫ�����쵼���о�С�������˾��á����㡢���еľ��굥������װ�ã����ٴ�Ӧ�ñ�����Ӧ�ø�װ���о��굥�׸�ǻ�������г�����ȫ������Ч��������ȫ���õ��ƹ�Ӧ�ã����о��ѻ��ɽ��ʡ�Ƽ��������Ƚ����˴�������ѡ��ƪ���Ӱ�����ѧ�����ģ����������˸��о��Ĵ�����ǿ��Ҳ��������ǻ�������־���ѳ����ɳ�Ϊ�ڹ��ھ���һ��Ӱ������ҽѧ������ڿ���&nbsp;<br />
</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>����һ���� һ������ &nbsp;&nbsp;&nbsp;&nbsp;�����༭�� &nbsp; &nbsp;&nbsp;</span>
</p>','1','0','0','0','0','','0','139','0');
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
</p>','1','0','0','0','0','','0','141','0');
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
</p>','1','0','0','0','0','','0','144','0');
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
</p>','1','0','0','0','0','','0','165','0');
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
</p>','1','0','0','0','0','','0','204','0');
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
</p>','1','0','0','0','0','','0','292','0');
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
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','236','0');
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
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','274','0');
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
</div>','1','0','0','0','0','','0','231','0');
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
</div>','1','0','0','0','0','','0','257','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1722','64','����Ԫ�ٴε�ѡ�й�ҽʦЭ�����ҽʦ�ֻ� ΢�����ҽʦίԱ�ḱ����ίԱ','','','admin','2013-06-20 08:50:48','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 6��14�գ��й�ҽʦЭ�����ҽʦ�ֻ�΢�����ҽʦίԱ�ỻ��ѡ�ٻ����ڱ������ʻ��������ٿ�������ȫ����ʡ������������������ҽ�ƻ�����76��΢�����ר����Ϊ�ڶ���ίԱ��ίԱ�μ��˻��飬���������ѡ�٣���Ժ��Ժ������Ԫ�����ٴε�ѡ������ίԱ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���λ����ɱ�����ѧ����ҽԺ���й�ҽʦЭ�����ҽʦ�ֻ��ܸ��½���ΰ�������֣��й�ҽʦЭ�ḱ�᳤�����ҽʦ�ֻ�᳤��ɼ���ڣ��й�ҽʦЭ�ḱ�᳤���ھ�ҽʦ�ֻ�᳤�����½��ڣ��й�ҽʦЭ�����ҽʦ�ֻḱ�᳤���ܹ���ڣ���Тƽ���ڳ�ϯ���顣��ɼ���ڳ�ֿ϶���΢�����ҽʦίԱ���һ��ίԱ�����3������ȡ�õĳɼ���3������΢�����ҽʦίԱ��һֱ���Ž�ȫ������΢�����רҵ��ͬ������ͬ�����ҹ�΢����Ƶ��ƹ�ͷ�չ�����ֱ���������չ΢������������ҹ�΢����Ƶ�ѧ��ˮƽ�������ҹ���΢�������ҵΪ��ּ�����˴���׿�г�Ч�Ĺ�������΢����Ƽ�����ȫ�����ƹ㼰΢�����ѧ��ˮƽ����������˾޴��ס�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ͬ�ڣ��������й����ҽʦ����ڱ������ʻ��������ٿ�������Ԫ����Ӧ�����ֻ��飬������\"�����ӽ����׸�ǻ������\"�Ĵ�ᷢ�ԡ�&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ߣ������� ��ࣺ�����֡�</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','255','0');
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
</p>','1','0','0','0','0','','0','261','0');
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
</p>','1','0','0','0','0','','1','34','0');
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
</p>','1','0','0','0','0','','0','286','0');
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
</p>','1','0','0','0','0','','0','316','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1727','81','����Ԫ','','','admin','2014-11-09 09:14:58','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"http://www.webles.cn/upload/1415881234.jpg\" width=\"200\" height=\"274\" alt=\"\" /> 
				</p>
				<p align=\"center\">
					<strong><span style=\"font-size:16px;\">����Ԫ</span></strong><strong>&nbsp;</strong> 
				</p>
				<p align=\"center\">
					<strong>����ҽʦ ��������&nbsp;</strong> 
				</p>
				<p align=\"center\">
					<strong>��ʿ�о�����ʦ</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; <strong>רҵ</strong>����ͨ���
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<strong>&nbsp; ����ʱ��</strong><span style=\"line-height:1.5;\">���ܶ����� &nbsp;&nbsp;</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; <strong>�о�����</strong>����ǻ�������Ļ������ٴ�Ӧ�ã���Ҫ������
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					��1����ǻ��θ������л�������Ʒ��ֺ�<span>2</span>�����򲡵Ļ������ٴ��о�
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					��2�����굥�׸�ǻ�������;���Ȼǻ���ھ�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					��3����ǻ�������˺�������ʵ��ǻ��ѵ��ϵͳ
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					��4����ǻ������������Ƽ��������еĹ淶��Ӧ��
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; <strong>����</strong>��husanyuan1962<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@hotmail.com</span>
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:21.0pt;\">
					�����ѧ����ͷ�ˣ���ʿ�о���ѧ������ʿѧλ������ҽʦ��ɽ����ѧ�������ڡ���ʿ����ʦ������ɽ����ѧ��³ҽԺ��Ժ������̩ɽѧ�ߡ���Ƹ���ڣ�<span>2012</span>������������ͻ������������ר�ң�<span>2012</span>����ɽ��ʡ��ͻ������������ר�ң�<span>2011</span>����ɽ��ʡҽѧ����˲ţ�<span>2010</span>����ɽ��ʡ����ϵͳ�ܳ�ѧ����ͷ�ˣ�<span>2005</span>����ɽ��ʡҽ�Ƽ������֣�<span>2006</span>����<a name=\"undefined\"></a><a name=\"undefined\"></a>ɽ����ѧ���㲩ʿ��ָ����ʦ���й�ҽʦЭ��<span>��</span>�й��ھ��ܳ����佱<span>��</span>��<span>��</span>����˼ҽѧ��ѧ������<span>��</span>�ܳ��ɾͽ�����ߡ����ܹ���Ժ�������������<span>2010</span>����
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>����Ҫѧ��������ְ��ѧ����ְ��</b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--�л�ҽѧ�����ѧ�ֻ�ίԱ����ǻ���ھ����ѧ�鸱�鳤
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--�л�ҽѧ�������ھ�ѧ�ֻᾭ��Ȼǻ���ھ�����ѧ�鸱�鳤
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--�й�ҽʦЭ�����ҽʦ�᳣ֻί��΢�����רҵίԱ�ḱ����ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--�й�ҽʦЭ���ھ�ҽʦ�᳣ֻί����������ǻ��ίԱ������ίԱ�������ھ�רҵίԱ�ḱ����ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--�������ھ���΢��רҵ����ȫ������ίԱ�ᡢ�й�ҽʦЭ���ھ�ҽʦ�ֻᡢ�����ھ�ҽʦЭ���й�Э�ᾭ��Ȼǻ���ھ����רҵίԱ�ḱ��ϯ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ��ʡҽѧ�����¡���Ʒֻḱ����ίԱ����ǻ���ھ����ѧ���鳤
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ��ʡҽʦЭ�����ҽʦ�ֻ�����ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�����ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ��ʡҽʦЭ��������ֲҽʦ�ֻḱ����ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ��ʡ����Э����������ίԱ�ḱ����ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ����ѧ��³ҽԺ�������ھ����Ƽ�����ѵ��������
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--����ǻ�������������ٴ�Ӧ�á�ɽ��ʡ��ʮ���塱��У�ص�ʵ��������
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ����ѧ��³ҽԺ�ٴ�ҽѧ������ʵʵ��������
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					&nbsp;--����θ���ھ����ѧ�ᣨSAGES����Ա
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--ɽ����ѧҽѧԺѧλίԱ��ίԱ
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--����ǻ�������־�������ٴ�ʵ�������־������
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--���й��ھ���־�������й��ִ�ҽѧ��־��������
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--���л���ͨ�����־�������л����������־���������������־�������й�ʵ�������־����26����־�����ί���ί
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>���е�������������������</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. &nbsp;θ��·����������POMC/CART��Ԫ��NPY/AgRP��Ԫ�Ը� ������������ĵ����о���81471019��.������Ȼ��ѧ����. 2015-2018.&nbsp;&nbsp;
73��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. &nbsp;��-��-�����2 �����򲡴���θ��·�������ڸ��ȵ��������Եĵ����о�.(81270888/H0713) .������Ȼ��ѧ����. 2013-2016.&nbsp;&nbsp; 70��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					3. &nbsp;θ������·������2�����򲡵Ļ����о� (81070642/H0713). ������Ȼ��ѧ����. 2011-2013. &nbsp;&nbsp;38��
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					4. &nbsp;�߷ֱ���ħ����ת�˴Ź����Ǿ�ȷ��ϼ�״�ٰ������о�.ɽ��ʡ�Ƽ������ʺ�����Ŀ.2013.12-2015.11. 30��
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					5. &nbsp;��������P120�����Է������е�����. ɽ��ʡ�Ƽ������ʿƼ�������Ŀ.2012-2014.15��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					6. &nbsp;С����θ������·������2�������е����û���(20100131110049).��������ʿ�����. 2011-2013.&nbsp; &nbsp;6��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					7. &nbsp;˫���Ը��ϰ����������ҩ��Խ᳦�������Ƽ������û����о�(2007AA021802).
863�ӿ��⣨˫���Ը��ϰ����������ҩ���Ƽ���. 2008-2010.&nbsp; &nbsp;24��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					8. &nbsp;��ǻ�������˿�����Ӧ���о�(2005GG3202061).ɽ��ʡ�Ƽ����ؼƻ��ص���Ŀ. 2005-2008. &nbsp;&nbsp;10��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					9. &nbsp;��ǻ��������ʵѵ�����������Ӧ��(Y2005C05).ɽ��ʡ��Ȼ��ѧ����.2005-2008. 7��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>����Ҫ���������������</b> 
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					1. &nbsp;���٣�����Ԫ�������ţ���־ǿ�������������������Ź������Ժ�־���Թ��������ı���褣����£��²������������. �ε���΢����Ƽ����о������ƹ�Ӧ��.���ҿƼ��������Ƚ�.2013
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					2. &nbsp;���٣�����Ԫ�������ţ���־ǿ�������������������Ź������Ժ�־���Թ��������ı���褣����£��²������������.�ε���΢����Ƽ����о������ƹ�Ӧ��.�л�ҽѧ�Ƽ���һ�Ƚ���201301080U0302��.2013
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					3. &nbsp;����Ԫ,����ͤ,����,���һ�,�Ź���,������,�ź���,�,������,���ı�,�²�,������.��ǻ�������������ٴ�Ӧ��ϵ���о�.ɽ��ʡ�Ƽ�����һ�Ƚ�(JB2008-1-20-1). 2008.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					4. &nbsp;����Ԫ,�Ź���,����׳,����,���ı�,������,���,����ܿ,Ф˼��.��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ���о�. ɽ��ʡ�Ƽ��������Ƚ�(JB2011-2-113-1). 2011.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					5. &nbsp;����Ԫ,����ͤ,����,�Ź���,������,�²�,�����,��ϣ��.���Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ��.�������ߵ�ѧУ�Ƽ��������Ƚ�(2006-307). 2006.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					6. &nbsp;����Ԫ,����,����,������,�²�,������,������,������,������,���ı�,�Ź���,���.��ǻ��Ƣ�������Ļ������ٴ�Ӧ���о�. ɽ��ʡ�Ƽ��������Ƚ�(JB2006-2-32-1). 2006.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					7. &nbsp;����Ԫ��.������ǻ���������ٴ��ƹ�Ӧ��.ɽ��ʡҽѧ�Ƽ�����һ�Ƚ�. 1999
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					8. &nbsp;����Ԫ���Ź�������������ǡ����ı�.��ǻ��������ǻ�����Ѽ�ת��Ķ���ʵ���о�.ɽ��ʡ��������У����Ȼ��ѧ��һ�Ƚ�(2004310050).2004
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					9. &nbsp;����Ԫ��.��ǻ������������ǻ��ʯת��Ķ���ʵ���о�.ɽ��ʡ��ί�Ƽ��������Ƚ�(2000Y0134). 2000
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					10. &nbsp;����Ԫ��.����ǻ�����������ɫͼ�ס�.ɽ��ʡ��У������гɹ����Ƚ�.2005
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					11.����Ԫ����.��ǻ����״�������Ķ���ʵ�鼰�ٴ�Ӧ���о�.ɽ��ʡ�������Ƽ����������Ƚ�(2003010551).2003
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					12. ����Ԫ��.����ǻ����״�����г����������̲�.ɽ��ʡҽѧ��ҽѧ����һ�Ƚ�.2006
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					13. ����Ԫ��.����ǻ������ϵ�н�ѧDVD��4��.ɽ��ʡҽѧ���ѧһ�Ƚ�.2006
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;text-indent:21.1pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>�����ר����</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. ����Ԫ����ΰ�ܣ����β����Ź�����������. ��������Ѫ����Ƥ�����ص�PEG-PLGA�����������Ʊ�����������ţ�201010211937.5��.����ר���������ţ�CN101889983A��.2010
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. ����Ԫ��Ѧ�𻪣���־�. һ�ָ�ǻ������ѵ���ǣ�����ţ�200420097475.9��.ʵ������ר���������ţ�&nbsp;CN2742515��.2005
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					3. ����Ԫ����־豣�Ѧ��. ��ǻ������ѵ���ǣ�����ţ�200430089421.3��.������ר���������ţ�CN3457409��.2005
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>�����ķ���</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. &nbsp;Liu S, Zhang G,
Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>The entire small
intestine mediates the changes in glucose homeostasis after intestinal surgery
in Goto-Kakizaki rats. Ann Surg.2012,256(6):1049-58��IF= 7.492��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. &nbsp;Wang TT, Hu SY,
Gao HD, Zhang GY, Liu CZ, Feng JB, Frezza EE.Ileal transposition controls
diabetes as well as modified duodenal jejunal bypass with better lipid lowering
in a nonobese rat model of type II diabetes by increasing GLP-1.Ann
Surg.2008,247(6):968-75.��IF=8.46��
				</p>
				<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					3. &nbsp;Chen W, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a> Suitable carriers for encapsulation and distribution of endostar: comparison of
endostar-loaded particulate carriers. Int J Nanomedicine.
2011;6:1535-41. ��IF= 4.976��
				</p>
				<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					4. &nbsp;Sanyuan Hu, Yangde Zhang. <a name=\"undefined\"></a><a name=\"undefined\"></a>Endostar-loaded
PEG-PLGA nanoparticles: in vitro and in vivo evaluation. Int J
Nanomedicine.2010;5:1039-1048 (IF=4.976)
				</p>
				<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					5. &nbsp;Sun NF, Meng QY, Tian AL,
Hu SY, Wang RH, Liu ZX, Xu L. <a name=\"undefined\"></a><a name=\"undefined\"></a>Nanoliposome-mediated FL/TRAIL double-gene
therapy for colon cancer: in vitro and in vivo evaluation. Cancer
Lett. 2012;315(1):69-77. (IF=4.863)
				</p>
				<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					6. &nbsp;Wang L, Cheng H, Liu Y,
Wang L, Yu W, Zhang G, Chen B, Yu Z, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Prognostic Value of
Nuclear ��-catenin Overexpression at Invasive Front in Colorectal Cancer for
Synchronous Liver Metastasis. Ann Surg Oncol. 2011;18(6):1553-9.��IF=
4.182��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					7. &nbsp;Jiang J, Ding X,
Zhang G, Su Q, Wang Z, Hu S.&nbsp; Spontaneous
retroperitoneal hematoma associated with iliac vein rupture. J Vasc
Surg.2010;52(5):1278-82��IF=3.851��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					8. &nbsp;Zhang G, Liu S, Yu
W, Wang L, Liu N, Li F, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Gasless laparoendoscopic single-site surgery
with abdominal wall lift in general surgery: initial experience.
Surg Endosc. 2011;25(1):298-304.&nbsp;��IF=3.436��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					9. &nbsp;Yu W, Li F, Wang
Z, Qi X, Li B, Zhang G, Hao X, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a> Effects of CO(2)
insufflation on cerebrum during endoscopic thyroidectomy in a porcine model.
Surg Endosc. 2011 25(5):1495-504��IF=3.436��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					10. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Wang K</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Liu S</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20F%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Liu F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20C%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Hu C</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Hu S</a>. <a name=\"undefined\"></a><a name=\"undefined\"></a>Duodenal-Jejunal
Bypass Surgery Up-Regulates the Expression of the Hepatic Insulin Signaling
Proteins and the Key Regulatory Enzymes of Intestinal Gluconeogenesis in
Diabetic Goto-Kakizaki Rats. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a>&nbsp;2013
May 23. [Epub ahead of print]
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					11. Hu C, Zhang G, Sun
D, Han H, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a><a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23636998\">Duodenal-jejunal bypass improves
glucose metabolism and adipokine expression independently of weight loss in a
diabetic rat model.</a> Obes Surg. 2013 Sep;23(9):1436-44. doi:
10.1007/s11695-013-0976-1.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					12. Sun D,Yan Z, Chen
W, Liu S, Zhang G, <a name=\"undefined\"></a><a name=\"undefined\"></a>Type 2 Diabetes Control in a Nonobese Rat Model
Using Sleeve Gastrectomy with Duodenal�CJejunal Bypass (SGDJB) <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012.DOI
10.1007/s11695-012-0744-7��IF=3.283��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					13. Yan Z, Chen W, Liu
S, Zhang G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Myocardial Insulin Signaling and Glucose
Transport Are Up-regulated in Goto-Kakizaki Type 2 Diabetic Rats After Ileal
Transposition. Obes Surg. 2012;22(3):493-501 ��IF=3.283��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					14. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Ding X</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang K</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang H</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Zhang G</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Liu Y</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Yang Q</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Chen W</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Hu S</a>. <a name=\"undefined\"></a><a name=\"undefined\"></a>High
expression of CCL20 is associated with poor prognosis in patients with
hepatocellular carcinoma after curative resection. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303##\">J
Gastrointest Surg.</a> 2012 Apr;16(4):828-36. ��IF=2.733��.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					15. Chen W, Yan Z, Liu
S, Zhang G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>The Changes of Pro-opiomelanocortin Neurons in
Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC
Neurons. J Gastrointest Surg 2011; 15(9):1618-24.��IF=2.733��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					16. Ding X, Zhu J, Zhu
M, Li C, Jian W, Jiang J, Wang Z, Hu S, Jiang X. Therapeutic Management of
Hemorrhage from Visceral Artery Pseudoaneurysms after Pancreatic Surgery. J
Gastrointest Surg. 2011 May 17. [Epub ahead of print] ��IF=2.733��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					17. Zhu J, Yang Y, Ma
C, Zhang G, Wang K, Hu S.CEACAM1 Cytoplastic Expression is Closely Related to
Tumor Angiogenesis and Poorer Relapse-free Survival After Curative Resection of
Hepatocellular Carcinoma. World J Surg. 2011 Apr 26. [Epub ahead of print] ��IF=2.693��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					18. Sun NF, Meng QY,
Hu SY, Tian AL, Wang RH, Liu ZX, Xu L. Correlation between the expression of
the BAG-1 gene and clinicopathologic factors in colorectal cancer. J Cancer Res
Clin Oncol. 2011;137(10):1419-24. ��IF= 2.485��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					19. Wang L, Wang L, Yu
W, Zhang G, Zhang L, Tian G, Hu S. Association between age and synchronous
liver metastasis in female colorectal cancer patients. J Cancer Res Clin Oncol.
2011 Jun;137(6):959-64 ��IF= 2.485��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					20. Su Q, Hu S, Gao H,
Ma R, Yang Q, Pan Z, Wang T, Li F.Role of AIB1 for tamoxifen resistance in
estrogen receptor-positive breast cancer cells.Oncology.2008,75(3-4):159-68.
(IF=2.444)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					21. Zhu J, Feng A, Sun
J, Jiang Z, Zhang G, Wang K, Hu S, Qu X.Increased CD4(+) CD69(+) CD25(-) T
cells in patients with hepatocellular carcinoma are associated with tumor
progression. J Gastroenterol Hepatol. 2011 May 9. doi: 10.1111/j.1440-1746.2011.06765.x.
[Epub ahead of print] (IF=2.410)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					22. Li F, Zhang G,
Liang J, Ding X, Cheng Z, Hu S.Sleeve gastrectomy provides a better control of
diabetes by decreasing ghrelin in the diabetic Goto-Kakizaki rats. J
Gastrointest Surg. 2009,13(12):2302-8. ��IF=2.311��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					23. Zhang HF, Hu SY,
Zhang GY, Wang KX, Chen B, Li B. Laparoscopic primary choledochorrhaphy over
endonasobiliary drainage tubes. Surg Endosc.2007,21(11):2115-7.��IF=2.242��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					24. Wang L, Li CL,
Wang L, Yu WB, Yin HP, Zhang GY, Zhang LF, Li S, Hu SY.Influence of CXCR4/SDF-1
axis on E-cadherin/��-catenin complex expression in HT29 colon cancer cells.
World J Gastroenterol. 2011;17(5):625-32. (IF=2.240)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					25. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20QY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Yang QY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang L</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20ZG%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang ZG</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20F%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li F</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20YQ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li YQ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20XJ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Ding XJ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Hu SY</a>.
Infection during transgastric and transvaginal natural orifice transluminal
endoscopic surgery in a live porcine model. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/21362281##\">Chin Med J (Engl).</a> 2011 Feb;124(4):556-61.
��IF=0.858��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					26. Wen-Bin Yu,
Guang-Yong Zhang, Feng Li, Qing-Yun Yang, San-Yuan HuTransumblical single port
laparoscopic cholecystectomy with a simple technique: Initial experience of 33
cases. Minim Invasive Ther Allied Technol. 2010;19(6):340-344��IF=1.330��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					27. Wang YL, Zhang GY,
Wang L, Wang KX, Hu SY. Endoscopic thyroidectomy by a modified anterior chest
approach: A single institution;s 5-year experience.Minim Invasive Ther Allied
Technol. 2009,18(5):297-301. ��IF=1.611��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					28. Zhang H, Hu S,
Zhang G, Wang K, Chen B, Li B, Frezza EE. Laparoscopic versus open
proctocolectomy with ileal pouch-anal anastomosis. Minim Invasive Ther Allied
Technol.2007,16(3):187-91.��IF=0.978��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					29. &nbsp;Zhang GY, Hu SY,
Zhang HF, Wang KX, Wang L.A novel therapeutic approach to non-parasitic splenic
cysts: laparoscopic fenestration and endothelium obliteration.Minim Invasive
Ther Allied Technol.2007,16(5):314-6.��IF=0.978��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					30. &nbsp;Li B, Zhang Q, Liu
J, Yu H, Hu S.Clinical application of a laparoscope in ventri-peritoneal
shunting.Minim Invasive Ther Allied Technol.2007,16(6):367-9.��IF=0.978��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					31. &nbsp;Yu W, Hu S, Qi Y,
Li B.The correlation between sonographic diagnosis and laparoscopic
observations on fatty liver. J Laparoendosc Adv Surg Tech A. 2009,19(2):163-9.��IF=0.912��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					32.&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20SZ%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu SZ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun D</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Wang L</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20T%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu T</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun Y</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20MX%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Li MX</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Hu SY</a>.
A high-fat diet reverses improvement in glucose tolerance induced by
duodenal-jejunal bypass in type 2 diabetic rats. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22490596##\">Chin Med J (Engl).</a> 2012 Mar;125(5):912-9. ��IF=0.858��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					33.&nbsp;&nbsp; <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sui%20GD%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Sui GD</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Niu%20ZJ%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Niu ZJ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Hu SY</a>.
Expression of farnesyltransferase in primary liver cancer. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22882915##\">Chin Med J (Engl).</a> 2012
Jul;125(14):2427-31. ��IF=0.858��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					34. &nbsp;Chen B, Hu SY,
Wang L, Wang KX, Zhang GY, Zhang HF, Xuan SJ, Wachtel MS, Frezza
EE.Laparoscopic splenectomy: a 12-year single-center experience.Chin Med J
(Engl).2008,121(8):766-8.��IF=0.858��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					35.&nbsp;&nbsp; Wang TT, Frezza
EE, Ma R, Hu SY, Liu CZ, Zhang GY, Wachtel MS, L�� XM, Feng JB, L�� CX.Loss
expression of active fragile sites genes associated with the severity of breast
epithelial abnormalities.Chin Med J (Engl).2008,121(20):1969-74. ��IF=0.858��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					36. &nbsp;Wang KX, Hu SY,
Jiang XS, Zhu M, Jin B, Zhang GY, Chen B.Protective effects of ischaemic
postconditioning on warm/cold ischaemic reperfusion injury in rat liver: a
comparative study with ischaemic preconditioning.Chin Med J
(Engl).2008,121(20):2004-9. ��IF=0.858��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					37. &nbsp;Zhang
GY, Wang TT, Cheng ZQ, Feng JB, Hu SY. Resolution of diabetes mellitus by ileal
transposition compared with biliopancreatic diversion in a nonobese animal
model of type 2 diabetes. Can J Surg. 2011 Aug;54(4):243-51. ��IF=0.850��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					38.&nbsp;&nbsp; Jin B, Liu CZ, Hu
SY, Wang TT, Wang L, Jiang XS, Frezza EE.Influence of estrogen and androgen on
the outcome of liver transplantation. Hepatogastroenterology.
2008,55(81):207-11. ��IF=0.68��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					39.&nbsp;&nbsp; Liu CZ, Hu SY, Zhu
M, Wang TT, Jin B, Shao J, Lv LH, Yin JL, Wachtel MS, Frezza EE.Hepatocyte
infusions improve the results of liver transplantation in rats.
Hepatogastroenterology. 2010;57(101):899-902.(IF=0.669)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					40. &nbsp;Wang KX, Hu SY,
Zhang GY, Chen B, Zhang HF.Hand-assisted laparoscopic splenectomy for
splenomegaly: a comparative study with conventional laparoscopic
splenectomy.Chin Med J (Engl).2007,120(1):41-5.(IF=0.636)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					41.&nbsp;&nbsp; Zhang H, Hu S, Zhi
X, Wang L, Zhang G, Wang K.Laparoscopic proctocolectomy with ileal pouch-anal anastomosis.Surg
Laparosc Endosc Percutan Tech.2007,17(5):388-91.(IF=0.575)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					42. &nbsp;Wang YL, Zhang GY,
Wang L, Hu SY. Metallic clip migration to T-tube sinus tract after laparoscopic
choledochotomy.Acta Chir Belg. 2009,109(2):242-4. (IF=0.47)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					43. Chen B, Hu SY,
Wang L, Wang KX, Zhang GY, Zhang HF.Reoperation of biliary tract by
laparoscopy: a consecutive series of 26 cases.Acta Chir Belg.2007,107(3):292-6.
(IF=0.394)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					44. &nbsp;B Chen,S Hu, L Wang, K Wang, G Zhang, H Zhang, MS Wachtel, EE
Frezza. Economical Strategies of Laparoscopic Splenectomy: A Chinese
Single-Center Experience. Chir Gastroenterol.2007,23:387-391. (IF=0.11)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>���������Ҫר����������</b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. &nbsp; ���ٴ���������ѧ��ɽ���Ƽ������� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1996����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. &nbsp; ����ǻ���ٴ����μ�����.ɽ����ѧ����������. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2002.����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					3. &nbsp; ����ǻ�����������ɫͼ�ס�.ɽ����ѧ����������.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2004.����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					4. &nbsp; ����������ٴ�����ѧͼ�ס�.ɽ����ѧ����������.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2006.����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					5. &nbsp; ����ǻ�����ѧ���ڶ��棩��.ɽ����ѧ����������.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2005.����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					6. &nbsp; �������˺�Զ�̻�������ƾ�Ҫ��.ɽ����ѧ����������. &nbsp; &nbsp;2006.����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					7. &nbsp; ����ͨ���ѧ����ͼ�ס� ɽ���Ƽ�������. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 2010.����
				</p>
				<p>
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','1','0','upload/1415514140.jpg','0','486','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1728','84','����','','','admin','2014-11-08 07:22:33','','<p style=\"text-align:center;\">
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
</div>','1','0','0','0','0','upload/1415514575.jpg','0','275','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1729','81','����','','','admin','2014-11-09 06:29:49','','<p>
	<span style=\"line-height:1.5;\">
	<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td width=\"20%\" height=\"400\" valign=\"top\">
					<p align=\"center\">
						<img src=\"/attached/image/20141113/20141113095742_65384.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">�� &nbsp;�� &nbsp;</span></strong>
					</p>
					<p align=\"center\">
						<strong>������ҽ<strong>ʦ</strong></strong><span style=\"line-height:1.5;\"><strong>&nbsp;˶ʿ�о�����ʦ</strong></span>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>רҵ</strong>���ε����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>����ʱ��</strong>������ȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>�о�����</strong>��
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>���䣺</strong><span style=\"line-height:1.5;\"><span>jinglewei@yahoo.com.cn</span></span>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085136<br />
</span>
					</p>
					<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
						<tbody>
							<tr>
								<td height=\"400\" valign=\"top\" width=\"20%\">
								</td>
								<td valign=\"top\" width=\"80%\">
									<p>
										<br />
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td width=\"80%\" valign=\"top\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; ɽ��ʡҽѧ��Ƣ����������ѹѧ��ίԱ��ʦ���й������ĸ�����ֲר�ң��������ֲ�ĵ������ѧ��Ժʿ��������ɸ�����ֲ�����г������˰����������������չ��ε���ȡ�������г����¸�ֲ�뼰����໤�ȸ�����ֲ��ȫ���̡��ɶ�����ɸ�����ֲ���������Ұ���г������Ų����ܰ�����������ʮ��ָ���г����������г������ܹ�̽��T����������Ƣ���г�����θ���г����᳦�����г�����ǻ�����г��������г���������ƴ�����������</span><br />
<span style=\"line-height:1.5;\"><br />
<span>&nbsp; &nbsp; �ڡ�Transplantation proceeding����Heptalogy�����л������־�����л���ͨ�����־�������л��ε������־�������л�ʵ�������־�������й���ͨ�����־�������й��ִ���ͨ��ƽ�չ�������й�����������ٴ���־������ɽ����ѧѧ���������������ʵ������SCI�������ڿ������һ��������28ƪ���αࡶ���������ֲѧ����Ŀǰ�е�ʡ������2����о���9��Ԫ��</span></span>
					</p>
					<p>
						<br />
					</p>
					<p>
						��&nbsp;����������
					</p>
					<p>
						<br />
					</p>
					<p>
						��ѧ����ְ��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						���е��Ͳ�����������
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						�������ѧ�����ġ�
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						������ɹ���
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</span>
</p>
<br />','1','0','0','0','0','','0','213','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1730','82','������','','','admin','2014-11-09 06:32:13','','������������ҽѧ˶ʿ������ҽʦ�����ڣ�˶ʿ����ʦ������Ƹ����Σ�θ�����ѧ����ͷ�ˣ�ɽ��ʡ��ͨ��ƿ���Э���Ա��ɽ��ʡ��ͨ���θ��רҵ������ίԱ�����й��ִ���ͨ��ƽ�չ����־��ί����ɽ����ѧѧ����ҽѧ���������Ա��1993��1995�μ��й�Ԯ̹ɣ����ҽ�ƶ������׶�ҽԺ����������������Ѽ���������θ������������������ж������⡣��θ�����᳦���ַ����١�ʮ��ָ���Ĳ��˿�չ��θ�����᳦�����μ���ʮ��ָ���г�������λֱ������������������ϸ�µ��о���<br />
<br />
��������ʱ�䣺����ȫ��<br />
������ϵ�绰��13791122955<br />','1','0','0','0','0','','0','194','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1731','82','���ı�','','','admin','2014-11-09 06:33:44','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<img alt=\"\" src=\"/attached/image/20141113/20141113072236_33241.jpg\" /><strong><span style=\"font-size:16px;\">���ı�</span> </strong> 
				</p>
				<p align=\"center\">
					<strong>����ҽʦ&nbsp; ˶ʿ�о�����ʦ</strong>&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>רҵ</strong>��θ�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; &nbsp;�������������
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp; <strong>����ʱ��</strong>������ȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp; <strong>�о�����</strong>��θ������л��������2�����򲡵Ļ���
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085155</span> 
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
					<tbody>
						<tr>
							<td height=\"400\" valign=\"top\" width=\"20%\">
							</td>
							<td valign=\"top\" width=\"80%\">
								<p>
									<br />
								</p>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td width=\"80%\" valign=\"top\">
				<p>
					&nbsp; &nbsp; ����ɽ����ѧ��³ҽԺθ����Ƹ����Ρ�
				</p>
				<p>
					&nbsp; &nbsp; 1992���ҵ��ɽ����ѧҽѧԺ����������רҵ13�꣬2002����ҽѧ˶ʿѧλ���ó�����Ƽ��������Σ�ʤ�γ���θ���������ε���������״�ټ���ΧѪ�ܼ�����������ơ����븹ǻ��΢�������¼������ٴ��о���������Ӧ�ã�������ɸ�ǻ�������г�������β�г�������ǻ��̽���΢��������������ҽѧ������о��������������������ѧ������⡶��ǻ����״��������CO2����Ի������ѭ�����ܵ�Ӱ�졷�ĸ����ˡ������д�����ಿ�����Ķ�ƪ���нϷḻ���ٴ����������кͽ�ѧ���顣
				</p>
				<p>
					<br />
				</p>
				<p>
					��&nbsp;����������
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					���е��Ͳ�����������
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					�������ѧ�����ġ�
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					������ɹ���
				</p>
				<div>
					<br />
				</div>
				<p>
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','upload/1415515110.jpg','0','306','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1732','82','�����','','','admin','2014-11-09 06:39:32','','<p>
	<span style=\"line-height:1.5;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113093353_44008.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;�����</strong></span>&nbsp;
					</p>
					<p align=\"center\">
						<strong>����ҽʦ &nbsp;��ʿ�о�����ʦ</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;רҵ��θ�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;����ʱ�䣺�ܶ�ȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�о�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;���䣺<span>lfj6671@163.com</span>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�绰��18560085119
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;</span><span style=\"line-height:1.5;\">רҵ�س���θ����������΢����ƣ����ó�θ������ֱ��������������������Ϻ����ƣ��зḻ���ٴ����飬�ܽ���������Ѳ�֢���ش������⣬�����л�ҽѧ��ɽ������ֻ�θ��ѧ��ίԱ��ѧ�����飬ɽ��ʡ���Э��ίԱ�����רҵѧ����־��ί��</span>
					</p>
					<div>
						<br />
					</div>
					<p>
						��&nbsp;����������
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						���е��Ͳ�����������
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						�������ѧ�����ġ�
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						������ɹ���
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
<br />
</span>
</p>
<br />','1','0','0','0','0','','0','191','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1733','82','������','','','admin','2014-11-09 06:41:05','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141113/20141113075158_56738.jpg\" alt=\"\" /> 
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp;&nbsp;<strong><span style=\"font-size:16px;\">������</span>&nbsp;������ҽʦ</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>רҵ</strong>��θ�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; &nbsp;�������������
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>����ʱ��</strong>����һȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>�о�����</strong>��θ������л��������2�����򲡵Ļ���
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>����</strong>��<span id=\"__kindeditor_bookmark_start_111__\"></span>wkx3726@163.com<span style=\"line-height:1.5;\"><span id=\"__kindeditor_bookmark_end_112__\"></span></span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085126</span> 
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<b><strong>��</strong>��Ҫ��������<strong>��</strong></b> 
				</p>
				<p class=\"MsoNormal\">
					<b></b> 
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2007.08-2008.01&nbsp; ɽ����ѧ��³ҽԺ��ͨ���סԺҽʦ<span></span> 
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					<span style=\"background-color:#FFFFFF;\">2008.04-2009.03&nbsp; ɽ����ѧ��³ҽԺ��ͨ���סԺ��ҽʦ</span>
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2008.02-2013.12 &nbsp;ɽ����ѧ��³ҽԺ��ͨ�������ҽʦ
				</p>
				<p class=\"MsoNormal\">
					2011.12-2012.02&nbsp; ������������ѧ<span>SHANDS</span>ҽԺѧϰ
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>ѧ����ְ<strong>��</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\">
					�й�ҽʦЭ���Ա<span></span> 
				</p>
				<p class=\"MsoNormal\">
					ɽ��ʡҽʦЭ�����ҽʦ�ֻḹǻ���ھ�ѧ�� ίԱ������<span></span> 
				</p>
				<p class=\"MsoNormal\">
					����ǻ�������־�����α༭<span></span> 
				</p>
				<p class=\"MsoNormal\">
					<b>&nbsp;</b> 
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>�����ѧ������<strong>��</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) &nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20KX%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Wang KX</a>, </b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Hu SY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jiang%20XS%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Jiang XS</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhu%20M%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Zhu M</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jin%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Jin B</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Chen B</a>.
Protective effects of ischaemic postconditioning on warm/cold ischaemic
reperfusion injury in rat liver: a comparative study with ischaemic
preconditioning. &nbsp;Chin Med J. 2008
20;121(20):2004-2009.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Sun D</a>, <b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Wang K</a></b>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Yan Z</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Zhang G</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Liu S</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20F%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Liu F</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20C%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Hu C</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Hu S</a>. Duodenal-jejunal
bypass surgery up-regulates the expression of the hepatic insulin signaling
proteins and the key regulatory enzymes of intestinal gluconeogenesis in
diabetic Goto-Kakizaki rats. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a> 2013;23(11):1734-1742. <b>����ͬ��һ��</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(3)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Ding X</a>, <b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang K</a></b>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang H</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Zhang G</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Liu Y</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Yang Q</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Chen W</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Hu S</a>. High
expression of CCL20 is associated with poor prognosis in patients with
hepatocellular carcinoma after curative resection <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303\">J Gastrointest
Surg.</a> 2012;16(4):828-836. <b>����ͬ��һ��</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4)&nbsp;&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Wang K</a></b>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Hu S</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jiang%20X%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Jiang X</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhu%20M%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Zhu M</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jin%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Jin B</a>.
Liver transplantation for patient with variant hepatic artery arising from
right renal artery: a case report. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=2.%09Liver+transplantation+for+patient+with+variant+hepatic+artery+arising+from+right+renal+artery.\">Transplant Proc.</a> 2007 39(5):1716-1717.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(5)&nbsp;&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20KX%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Wang KX</a></b>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Hu SY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Chen B</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20HF%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Zhang HF</a>.
Hand-assisted laparoscopic splenectomy for splenomegaly: a comparative study
with conventional laparoscopic splenectomy. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/17254486\">Chin Med J .</a> 2007 5;120(1):41-45.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>�е��Ͳ���������<strong>��</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b><b>(1) &nbsp;</b></b><span style=\"font-family:����, Arial, Helvetica, sans-serif;font-size:12px;line-height:30px;background-color:#FFFFFF;\">��״θ�г�����С����������Ӫ�����ܶԸ������������ �ĵ��ڣ�81471020����������Ȼ��ѧ����������Ŀ����2015-2018��65��Ԫ��<strong>��Ŀ������</strong></span>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b>(2) &nbsp;</b><span style=\"line-height:1.5;\">ȱѪ����Ը���ֲ������༰С����֯ȱѪ�ٹ�ע���˵ı�������</span><b>�� </b><span style=\"line-height:1.5;\">ɽ��ʡ�����������ѧ�ҿ��н�������ƻ�</span><span style=\"line-height:1.5;\">. 2008-2011. &nbsp;6</span><span style=\"line-height:1.5;\">��Ԫ</span><span style=\"line-height:1.5;\">. </span><b>��Ŀ������</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b>(3) &nbsp;</b>Wnt���״ٳɹ������ʸ�ϸ�����ȵ���ϸ���ֻ��Ļ����о�<b>�� </b>ɽ����ѧ�������»���<span>. 2009-2012.
10</span>��Ԫ<span>. </span><b>��Ŀ���Ա���ڶ�λ��<span></span></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4) &nbsp;����ԭ<span>Pdx1</span>С�����Ϲ���Դ�Բ�������ͻ״ϸ����ֲ�����������򲡡�����Ƽ����Ǽƻ�<span>.2012-2014. 5</span>��Ԫ<span>.<b> </b></span><b>��Ŀ���Ա���ڶ�λ��</b><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>����ɹ�<strong>��</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) &nbsp;��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ��.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<b>ɽ��ʡ�Ƽ��������Ƚ�</b>.
2011. ����λ
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2) &nbsp;��ǻ�������������ٴ�Ӧ��ϵ���о�.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<b>ɽ��ʡ�Ƽ�����һ�Ƚ�</b>. 2008. ����λ
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(3) &nbsp;��ǻ��Ƣ�������������ٴ�Ӧ��ϵ���о�.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<b>ɽ��ʡ�Ƽ��������Ƚ�</b>. 2007.
����λ
				</p>
			</td>
		</tr>
	</tbody>
</table>
<div>
	<br />
</div>','1','0','0','0','0','','0','405','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1734','83','�Ź���','','','admin','2014-11-09 06:42:13','','<p style=\"text-align:center;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113053347_22873.jpg\" alt=\"\" /> 
					</p>
					<p align=\"center\">
						&nbsp; &nbsp; &nbsp; <strong><span style=\"font-size:16px;\">�Ź���</span>&nbsp;</strong> 
					</p>
					<p align=\"center\">
						<strong>������ҽʦ ˶ʿ�о�����ʦ</strong> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>רҵ</strong>�����븹�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>����ʱ��</strong>���ܶ�ȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>�о�����</strong>��θ������л��������2�����򲡵Ļ���
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>����</strong>��guangyongzhang<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@hotmail.com</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085157</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\"><strong></strong></span> 
					</p>
					<p class=\"MsoNormal\">
						<strong>&nbsp; &nbsp; &nbsp;</strong><span style=\"line-height:1.5;\">����ɽ����ѧ��³ҽԺ����Ƹ����Ρ����븹���������</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<strong>������ְ��</strong> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(1) &nbsp; &nbsp;�л�ҽѧ����Ʒֻ����븹�����ѧ��ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(2) &nbsp; &nbsp;�й�ҽʦЭ�����ҽʦ�ֻ����븹�����ίԱ��ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(3) &nbsp; &nbsp;�й�ҽʦЭ���ھ�ҽʦ�ֻ���������ǻ��רҵίԱ��ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(4) &nbsp; &nbsp;���л�ǻ�������ѧԺ��ʦ
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(5) &nbsp; &nbsp;ɽ��ʡҽʦЭ�����ҽʦ�ֻ� ����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(6) &nbsp; &nbsp;ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ� ����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(7) &nbsp; &nbsp;ɽ��ʡҽѧ�����븹�����ѧ�� ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(8) &nbsp; &nbsp;���й��ھ������־��������ǻ�������־����ί
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:6.0pt;\">
						<strong>���ٴ�רҵ�س���</strong><span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">
						2002�꿪ʼ���¸�ǻ���Ķ���ʵ�顢�������ٴ��о���2007�꿪ʼ���¸������޵��ٴ�Ӧ�úͻ����о�����ĿǰΪֹ��ɸ�ǻ�����ɹ���TAPP����883����TEP����297��
���п����޲���126���������������޲���64����ʳ���ѿ��޵����޲���62���������޲���3��,����ȫ��ǻ���޸߼�������ѵ��4�ڣ���ȫ��40���ҽԺ��60���ȫ�����븹����ƻ������ѵ��������������ʾ��ר�⽲��������ѵȫ������ǻ�����޲�����800����.
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">
						<strong>���е��Ͳ�����������</strong> 
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:30.0pt;\">
						<span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(1) &nbsp;��-�ε�֭�������θ��·���������ȵ��������Ը����е����ü������о�(81370496).������Ȼ��ѧ����������Ŀ��.2014-2017.70��Ԫ.<b><u>��Ŀ������</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(2) &nbsp;θ��С����θ��·������<span>2</span>�������е����úͻ���<span>(ZR2012HQ030).</span>ɽ��ʡ��Ȼ��ѧ�����������<span>.2012-2014.6</span>��Ԫ.<b><u>��Ŀ������</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(3) &nbsp;θ��������������������ü����ƵĶ���ʵ���о���2008BS03022��.ɽ��ʡ�����������ѧ�ҿ��н�������ƻ�.2008-2011. 6��Ԫ.<b><u>��Ŀ������</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(4) &nbsp;��ǻ�������������˻�����ϵͳ����ƺ�ʵ��.ɽ����ѧ�������»�������̽����Ŀ�ڶ��ࣩ.2012-2015. 20��Ԫ.<b><u>��Ŀ������</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(5) &nbsp;<a><span>θ������·������</span>2<span>������</span><span>�Ļ����о�</span></a> (81070642/H0713). ������Ȼ��ѧ����. 2011��2013. 38��.<b><u> </u></b><b><u>��Ŀ���Ա����</u></b><b><u>3</u></b><b><u>λ��</u></b> <span>&nbsp;</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(6) &nbsp;С����θ������·������<span>2</span>�������е����û���<span>(20100131110049). </span>��������ʿ�����<span>.</span>2011��2013. 6��.<b><u> </u></b><b><u>��Ŀ���Ա����</u></b><b><u>3</u></b><b><u>λ��</u></b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:6.0pt;\">
						<strong>�������ѧ�����ġ�</strong><span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(1) &nbsp;Liu S, <b><u>Zhang G</u></b>, Wang L, Sun
D, Chen W, Yan Z, Sun Y, Hu S. The entire small intestine mediates the changes
in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats. Ann Surg.2012,<span>256(6):104</span>9-58<b>��</b><b>SCI</b><b>����ͬ��һ���ߣ�</b><b> <span>IF= 7.474</span></b><b>��</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(2) &nbsp;<b><u>Zhang G</u></b>, Liu S, Yu W, Wang L, Liu N, Li F, Hu S. Gasless
laparoendoscopic single-site surgery with abdominal wall lift in general
surgery: initial experience. Surg Endosc. 2011;25(1):298-304.<b>��</b><b>SCI</b><b>��</b><b>IF=3.436</b><b>��</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(3) &nbsp;<b><u>Zhang GY</u></b>, Wang TT, Cheng ZQ, Feng
JB, Hu SY. Resolution of diabetes mellitus by ileal transposition compared with
biliopancreatic diversion in a nonobese animal model of type 2 diabetes. Can J
Surg. 2011;54(4):243-51.<b>��</b><b>SCI</b><b>��</b><b>IF=0.850</b><b>��</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(4) &nbsp;<b><u>Zhang
GY</u></b>,
Hu SY, Zhang HF, Wang KX, Wang L. A novel therapeutic approach to non-parasitic
splenic cysts: laparoscopic fenestration and endothelium obliteration.Minim
Invasive Ther Allied Technol. 2007;16(5):314-6. <b>��</b><b>SCI</b><b>��</b><b>IF=1.330</b><b>��</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(5) &nbsp;<b><u>�Ź���</u></b>,����Ԫ,����ͤ,��. <a name=\"undefined\"></a><a name=\"undefined\"></a>��ǻ�������ڸ����⵨�ܽ�ʯ�����е�Ӧ��:��682���ٴ����� [J]. �л������־, 2008, 46 (23):1787-1788.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(6) &nbsp;<b><u>�Ź���</u></b>,����Ԫ,����ͤ,��.��ǻ��������������������������.�л��ε������־.2007,13(8): 531-532.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(7) &nbsp;<b><u>�Ź���</u></b><b><u>,</u></b>����Ԫ,����. <a name=\"undefined\"></a><a name=\"undefined\"></a>���굥�׸�ǻ�������г���.��ǻ�������־,2009,14
(1):18-20 .��<b>2010</b><b>���й���ƪ���Ӱ������������</b>��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(8) &nbsp;<b><u>�Ź���</u></b><b><u>,</u></b>����ܿ,����Ԫ��. ���굥�׸�ǻ����Ƽ�������״��չ��.��ǻ�������־,
2009,14 (1):78-80 .
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:6.0pt;\">
						<strong>������ɹ���</strong><span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(1) &nbsp;���٣�����Ԫ�������ţ���־ǿ������������������<b><u>�Ź���</u></b>���Ժ�־���Թ��������ı�����褣����£��²������������. �ε���΢����Ƽ����о������ƹ�Ӧ��.�л�ҽѧ�Ƽ���һ�Ƚ���201301080U0302��.2013
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(2) &nbsp;����Ԫ��<b><u>�Ź���</u></b><b>��</b>����׳�����ϣ����ı��������£���壬����ܿ��Ф˼��<span>. </span>��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ��<span>. </span><b>ɽ��ʡ�Ƽ��������Ƚ�</b><span>. 2011.</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						<span>(3) &nbsp;</span>����Ԫ������ͤ�����ڣ����һ���<b><u>�Ź���</u></b>�������£��ź��壬��������ң����ı����²���������<span>. </span>��ǻ�������������ٴ�Ӧ��ϵ���о�<span>. </span>ɽ��ʡ�Ƽ�����һ�Ƚ�<span>. 2008.</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						<span>(4) &nbsp;</span>����Ԫ��<b><u>�Ź���</u></b>����������ǣ����ı�<span>. </span>��ǻ��������ǻ�����Ѽ�ת��Ķ���ʵ���о�<span>.</span>ɽ��ʡ��������У����Ȼ��ѧ��һ�Ƚ�<span>.2004.</span> 
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:12.0pt;\">
						<strong>������������</strong><span></span> 
					</p>
					<p class=\"MsoNormal\">
						����ͨ�������ͼ�ס�.ɽ���Ƽ�������.2010.������
					</p>
					<p class=\"MsoNormal\">
						����������ٴ�����ѧͼ�ס�.ɽ����ѧ����������.2006.��ί
					</p>
					<p class=\"MsoNormal\">
						�������˺�Զ�̻�������ƾ�Ҫ��.ɽ����ѧ����������. 2006.��ί
					</p>
					<p class=\"MsoNormal\">
						����ǻ�����ѧ���ڶ��棩��.ɽ����ѧ����������. 2005.��ί
					</p>
					<p class=\"MsoNormal\">
						����ǻ�����������ɫͼ�ס�.ɽ����ѧ����������. 2004.��ί
					</p>
					<p class=\"MsoNormal\">
						����ǻ���ٴ����Ƽ�����.ɽ����ѧ����������. 2004.��ί
					</p>
					<p>
						<br />
					</p>
					<p>
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<p>
	<br />
</p>','1','0','0','0','0','','0','400','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1735','84','����','','','admin','2014-11-09 06:44:01','','<p style=\"text-align:center;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113084916_35397.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;�� &nbsp; &nbsp;��</strong></span>&nbsp;
					</p>
					<p align=\"center\">
						<strong>������ҽʦ &nbsp;˶ʿ�о�����ʦ</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;רҵ���������
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;����ʱ�䣺��һ������ȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�о����������������ȵ���ϸ����ֲ
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;���䣺wkx3726@163.com
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�绰��18560083669
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; ��Ϊɽ����ѧ��³ҽԺ����������Σ�<span style=\"background-color:#FFFFFF;\">�л�ҽѧ�����ѧ�ֻ�����ίԱ��ɽ��ʡҽʦЭ��ǻ��ҽʦ�ֻ����飬ɽ��ʡҽѧ������ѧ���Ա,&#171; ��ǻ�������־&#187;�༭�����Ρ�</span></span>
					</p>
					<p>
						<span style=\"line-height:1.5;\">
						<p>
							&nbsp; &nbsp; �й�Э��ҽ�ƴ�ѧ������Ʋ�ʿ�������ڣ�ɽ����ѧǻ����Ʋ�ʿ��2009�기����hartfordҽԺ����ѧϰ���򲡺ͷ���֢��������ơ�
						</p>
<span>������ʦ���������ר����������ڡ�����Ԫ���ڡ���ռԪ���ڣ���������Ƣ����ơ�ǻ������������о�����΢���������Ӧ��������Ƣ��ȸ��Ӽ��������ƣ��ɹ���չ�����������׾�Ƥ������Ĥ���崴������ǻ����Ƣ�г����ȸ����������ó����������������г�������΢��������������������ǻ����״����������ǻ��ֱ���������������������ڿ����Ͽ�չ�˴�����ǻ�����ھ�����θ�������������г�������ȡ�������õ���Ч��ÿ�����ǻ������Լ250����Э��ʡ�ڶ��ҽԺ��չǻ�����������ɽ��ʡ�Ƽ�����һ�Ƚ������Ƚ����������Ƽ��ɹ��ƹ���Ƚ���һ�</span></span>
					</p>
					<p>
						<br />
					</p>
					<p>
						��&nbsp;����������
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						���е��Ͳ�����������
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						�������ѧ�����ġ�
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						������ɹ���
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<p style=\"text-align:center;\">
	<br />
</p>
<p>
	<br />
</p>
<div>
	<span><br />
</span> 
</div>','1','0','0','0','0','','0','231','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1736','85','���춫','','','admin','2014-11-09 06:44:22','','<p>
	<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td width=\"20%\" height=\"400\" valign=\"top\">
					<p align=\"center\">
						<img src=\"/attached/image/20141113/20141113090652_22117.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">���춫</span></strong> 
					</p>
					<p align=\"center\">
						<strong>����ҽʦ&nbsp; ˶ʿ�о�����ʦ</strong>&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp; <strong>������λ</strong>��ɽ����ѧ��³ҽԺ
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<strong>&nbsp; &nbsp;&nbsp;רҵ</strong>����״�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>����ʱ��</strong>���������� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>�о�����</strong>����״�ټ����Ļ������ٴ��о�
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp; <strong>���䣺</strong><span style=\"line-height:1.5;\">zengyijia@medmail.com.cn</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��<span>13605315569</span><br />
</span> 
					</p>
					<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
						<tbody>
							<tr>
								<td height=\"400\" valign=\"top\" width=\"20%\">
								</td>
								<td valign=\"top\" width=\"80%\">
									<p>
										<br />
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td width=\"80%\" valign=\"top\">
					<p>
						&nbsp; &nbsp; ����ɽ����ѧ��³ҽԺ��״��������Ρ�
					</p>
					<p>
						<br />
<span>����Ŀǰ��Ҫ���¼�״�ټ��������ټ����Լ�ֱ���������������Σ�ÿ����Ժ�ڵ���������600������ʡ�����ȿ�չ��ǻ������С�пڼ�״�����������õ�������Ч�����ִﵽ��ͬ������Ч�������ȿ�չ�˱�����ǻ�񾭴Ե�ֱ��ϵĤȫ�г�������ֱ������������������ʣ���������������������ȿ�չ��С�пڵ����г����������˲��˵�ʹ�ࣻ���ȿ�չ���{ѡ�������жϵ�������ΧѪ�������������������θ�䶯�����ķ����������ڼ�״�ٵĶ�����������״�ٰ��ĸ��μ��������ʣ�����ͷ���»���Ĵ�ͳ��ʮ��ָ���г��͸�����ʮ��ָ���г�������Ƣ�������β�г��������ڷ��������Ĵ��������������׵Ĵ���ֱ�������εȼ������Լ��Ķ����Ĵ������Ͳ��ԡ��ڹ��Ҽ������ڿ�����ѧ������50��ƪ�����ࡶʵ������������ơ�1�����α�2������ʡ�Ƽ�������1�ʡ��ί�Ƽ��ɹ���2�ʡҽѧ��Ƽ��ɹ���1��ֳе�ʡ�Ƽ���������Ŀ2�����2�Ժ��������Ŀ1�����˶ʿ�о���12����Э��������ʿ�о���3�����е�ɽ����ѧҽѧԺ��������ѧ����</span> 
					</p>
					<p>
						<span style=\"line-height:1.5;\"><br />
</span>
					</p>
					<p>
						<span style=\"line-height:1.5;\">��ѧ����ְ��</span>
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<span style=\"line-height:1.5;\">�й�ҽʦЭ����Ʒֻ�ίԱ</span>
					</p>
					<p style=\"background-color:#FFFFFF;\">
						�й�ҽʦЭ���״��ҽʦίԱ��ίԱ
					</p>
					<p style=\"background-color:#FFFFFF;\">
						�й�����Э���״�ٰ�ίԱ��ίԱ
					</p>
					<p style=\"background-color:#FFFFFF;\">
						��������ѧ��״�����ѧԺ����
					</p>
					<p style=\"background-color:#FFFFFF;\">
						ɽ��ʡ���겡�о��᳣������
					</p>
					<p style=\"background-color:#FFFFFF;\">
						ɽ��ҽʦЭ������ҽʦ�᳣ֻ��ίԱ
					</p>
					<p style=\"background-color:#FFFFFF;\">
						ɽ��ʡҽѧ�����ټ�����ѧ�顢������ѧ��ίԱ
					</p>
					<p style=\"background-color:#FFFFFF;\">
						ɽ��ʡ����ҽʦ
					</p>
					<p style=\"background-color:#FFFFFF;\">
						1995����997��μ���Ԯ��̹ɣ����ҽ�ƶ�
					</p>
					<p style=\"background-color:#FFFFFF;\">
						���й�ҽʦ������־�������й���ͨ��ƽ�չ������������ơ��͡��л�����������־���ı�ί��
					</p>
					<p style=\"background-color:#FFFFFF;\">
						<br />
					</p>
					<p style=\"background-color:#FFFFFF;\">
						<span style=\"line-height:1.5;\">��������ѧ�����ġ�</span>
					</p>
					<div>
						1.ϸ�����Ӷ�̬����θ�ٰ���ϵ��̽�� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; �л�ҽѧ��־<br />
2.���ܾ۽��������Ͻ��������������ٰ����ٴ��о� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;�л��ε������־.<br />
3.5-LOXmRNA��COX-2mRNA�����ٰ��еı�Ｐ���ٴ����� &nbsp;�й���ͨ�����־ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
4.θ������2������ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; �й���ͨ�����־ &nbsp;<br />
5.U�ι������������ڸ��Ų����ܰ�25����Ч���� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; �й�ʵ�������־<br />
6.�����ڿ���CT�Ͷ�ƽ���ؽ���ֱ������ǰ���ڵ��ж� &nbsp; &nbsp; &nbsp; &nbsp; �й���ͨ�����־ &nbsp;<br />
7.5-LOX mRNA��VEGF mRNA�����ٰ��еı�Ｐ���ٴ����� &nbsp; &nbsp; &nbsp;�й���ͨ�����־ &nbsp; &nbsp;&nbsp;<br />
8.������ǰ�񾭺��¸����񾭵�ֱ��ϵĤȫ�г��� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; �й���ͨ�����־ &nbsp;<br />
9.��ѡ�������ж�������ΧѪ���������θ���ܵ�Ӱ�죩 &nbsp; &nbsp; &nbsp; �л��ε������־ &nbsp; &nbsp;<br />
10.����Һ����Ԥ����ʮ��ָ���г����������ļ�ֵ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;�й��ִ���ͨ��ƽ�չ &nbsp;&nbsp;<br />
11.ֱ��ϵĤȫ�г���˫�Ǻ����ڵ�λֱ�����е�Ӧ�� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;�й���ͨ�����־ &nbsp;<br />
12.����Һ����Ԥ����ʮ��ָ���г��������� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ɽ��ҽҩ &nbsp;<br />
13.��ֹѪ�ڸ������Χ�����ڵ�Ӧ�ù۲� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; �й�ҩ��&nbsp;<br />
<br />
					</div>
					<p>
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<br />','1','0','0','0','0','','0','211','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1737','85','����','','','admin','2014-11-09 06:45:42','','<p>
	<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td width=\"20%\" height=\"400\" valign=\"top\">
					<p align=\"center\">
						<img src=\"/attached/image/20141113/20141113094913_12406.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">�� &nbsp;�� &nbsp;</span></strong><strong>������ҽʦ</strong><span style=\"line-height:1.5;\">&nbsp;</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>רҵ</strong>����״�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>����ʱ��</strong>������ȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>�о�����</strong>��
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>���䣺</strong><span style=\"line-height:1.5;\"><span>doclvbin@163.com</span></span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085107<br />
</span> 
					</p>
					<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
						<tbody>
							<tr>
								<td height=\"400\" valign=\"top\" width=\"20%\">
								</td>
								<td valign=\"top\" width=\"80%\">
									<p>
										<br />
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td width=\"80%\" valign=\"top\">
					<p>
						&nbsp;&nbsp;<span style=\"line-height:1.5;\">2003���ҵ���Ϻ��ڶ�ҽ�ƴ�ѧ�������ѧ��ʿѧλ������ɽ����ѧҽѧԺ����ѧ�о��Ҹ����Σ�ɽ����ѧ��³ҽԺ����Ƹ�����ҽʦ������ִҵҽʦ�ʸ������⿪��ר��ίԱ��ίԱ��ɽ��ʡҽѧ����Ʒֻ�ʵ�����ѧ��ίԱ��</span>
					</p>
<span>����һֱ�������ٴ�����ѧ��һ�ߡ��ó���״������������������״���ټ����ȵ���ϼ����ơ���ʡ�����ȿ�չ����ȫǻ����ǻ��������С�пڼ�״���г�����ʹ΢���������ڼ�״�������е�����ѵĽ�ϡ���չ�������񾭼�⼼�����Ա����״�������к��񾭵����ˡ��е�������ѧ���������ѧ�����ſγ̵����ۼ�ʵ���ѧ�������ڹ������ڿ�����ѧ������10��ƪ����ʡ�Ƽ�������1�ʡҽѧ��Ƽ��ɹ���1��е�ʡ�Ƽ���������Ŀ3�������������Ŀ1�</span> 
					<p>
						<br />
					</p>
					<p>
						<br />
					</p>
					<p>
						<br />
					</p>
					<p>
						��&nbsp;����������
					</p>
					<p>
						<br />
					</p>
					<p>
						��ѧ����ְ��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						���е��Ͳ�����������
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						�������ѧ�����ġ�
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						������ɹ���
					</p>
					<div>
						<br />
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</p>','1','0','0','0','0','','0','190','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1738','86','����Ԫ','','','admin','2014-11-09 06:54:58','','<p style=\"text-align:center;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"http://www.webles.cn/upload/1415881234.jpg\" width=\"200\" height=\"274\" alt=\"\" /> 
					</p>
					<p align=\"center\">
						<strong><span style=\"font-size:16px;\">����Ԫ</span></strong><strong>&nbsp;</strong> 
					</p>
					<p align=\"center\">
						<strong>����ҽʦ ��������&nbsp;</strong> 
					</p>
					<p align=\"center\">
						<strong>��ʿ�о�����ʦ</strong> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;<strong>������λ</strong><span style=\"background-color:#FFFFFF;\">��ɽ����ѧ��³ҽԺ</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<strong>&nbsp; רҵ</strong>����ͨ���
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<strong>&nbsp; ����ʱ��</strong><span style=\"line-height:1.5;\">���ܶ����� &nbsp;&nbsp;</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; <strong>�о�����</strong>����ǻ�������Ļ������ٴ�Ӧ�ã���Ҫ������
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						��1����ǻ��θ������л�������Ʒ��ֺ�2�����򲡵Ļ������ٴ��о�
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						��2�����굥�׸�ǻ�������;���Ȼǻ���ھ�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						��3����ǻ�������˺�������ʵ��ǻ��ѵ��ϵͳ
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						��4����ǻ������������Ƽ��������еĹ淶��Ӧ��
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; <strong>����</strong>��husanyuan1962<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@hotmail.com</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp;&nbsp;</span> 
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:21pt;\">
						�����ѧ����ͷ�ˣ���ʿ�о���ѧ������ʿѧλ������ҽʦ��ɽ����ѧ�������ڡ���ʿ����ʦ������ɽ����ѧ��³ҽԺ��Ժ������̩ɽѧ�ߡ���Ƹ���ڣ�2012������������ͻ������������ר�ң�2012����ɽ��ʡ��ͻ������������ר�ң�2011����ɽ��ʡҽѧ����˲ţ�2010����ɽ��ʡ����ϵͳ�ܳ�ѧ����ͷ�ˣ�2005����ɽ��ʡҽ�Ƽ������֣�2006����<a name=\"undefined\"></a><a name=\"undefined\"></a>ɽ����ѧ���㲩ʿ��ָ����ʦ���й�ҽʦЭ�ᡰ�й��ھ��ܳ����佱����������˼ҽѧ��ѧ���������ܳ��ɾͽ�����ߡ����ܹ���Ժ�������������2010����
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>����Ҫѧ��������ְ��ѧ����ְ��</b><b></b> 
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--�л�ҽѧ�����ѧ�ֻ�ίԱ����ǻ���ھ����ѧ�鸱�鳤
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--�л�ҽѧ�������ھ�ѧ�ֻᾭ��Ȼǻ���ھ�����ѧ�鸱�鳤
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--�й�ҽʦЭ�����ҽʦ�᳣ֻί��΢�����רҵίԱ�ḱ����ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--�й�ҽʦЭ���ھ�ҽʦ�᳣ֻί����������ǻ��ίԱ������ίԱ�������ھ�רҵίԱ�ḱ����ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--�������ھ���΢��רҵ����ȫ������ίԱ�ᡢ�й�ҽʦЭ���ھ�ҽʦ�ֻᡢ�����ھ�ҽʦЭ���й�Э�ᾭ��Ȼǻ���ھ����רҵίԱ�ḱ��ϯ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ��ʡҽѧ�����¡���Ʒֻḱ����ίԱ����ǻ���ھ����ѧ���鳤
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ��ʡҽʦЭ�����ҽʦ�ֻ�����ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�����ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ��ʡҽʦЭ��������ֲҽʦ�ֻḱ����ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ��ʡ����Э����������ίԱ�ḱ����ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ����ѧ��³ҽԺ�������ھ����Ƽ�����ѵ��������
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--����ǻ�������������ٴ�Ӧ�á�ɽ��ʡ��ʮ���塱��У�ص�ʵ��������
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ����ѧ��³ҽԺ�ٴ�ҽѧ������ʵʵ��������
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						&nbsp;--����θ���ھ����ѧ�ᣨSAGES����Ա
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--ɽ����ѧҽѧԺѧλίԱ��ίԱ
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--����ǻ�������־�������ٴ�ʵ�������־������
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--���й��ھ���־�������й��ִ�ҽѧ��־��������
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--���л���ͨ�����־�������л����������־���������������־�������й�ʵ�������־����26����־�����ί���ί
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>���е�������������������</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. &nbsp;θ��·����������POMC/CART��Ԫ��NPY/AgRP��Ԫ�Ը� ������������ĵ����о���81471019��.������Ȼ��ѧ����. 2015-2018.&nbsp;&nbsp; 73��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. &nbsp;��-��-�����2 �����򲡴���θ��·�������ڸ��ȵ��������Եĵ����о�.(81270888/H0713) .������Ȼ��ѧ����. 2013-2016.&nbsp;&nbsp; 70��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						3. &nbsp;θ������·������2�����򲡵Ļ����о� (81070642/H0713). ������Ȼ��ѧ����. 2011-2013. &nbsp;&nbsp;38��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						4. &nbsp;�߷ֱ���ħ����ת�˴Ź����Ǿ�ȷ��ϼ�״�ٰ������о�.ɽ��ʡ�Ƽ������ʺ�����Ŀ.2013.12-2015.11. 30��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						5. &nbsp;��������P120�����Է������е�����. ɽ��ʡ�Ƽ������ʿƼ�������Ŀ.2012-2014.15��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						6. &nbsp;С����θ������·������2�������е����û���(20100131110049).��������ʿ�����. 2011-2013.&nbsp; &nbsp;6��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						7. &nbsp;˫���Ը��ϰ����������ҩ��Խ᳦�������Ƽ������û����о�(2007AA021802). 863�ӿ��⣨˫���Ը��ϰ����������ҩ���Ƽ���. 2008-2010.&nbsp; &nbsp;24��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						8. &nbsp;��ǻ�������˿�����Ӧ���о�(2005GG3202061).ɽ��ʡ�Ƽ����ؼƻ��ص���Ŀ. 2005-2008. &nbsp;&nbsp;10��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						9. &nbsp;��ǻ��������ʵѵ�����������Ӧ��(Y2005C05).ɽ��ʡ��Ȼ��ѧ����.2005-2008. 7��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>����Ҫ���������������</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						1. &nbsp;���٣�����Ԫ�������ţ���־ǿ�������������������Ź������Ժ�־���Թ��������ı���褣����£��²������������. �ε���΢����Ƽ����о������ƹ�Ӧ��.���ҿƼ��������Ƚ�.2013
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						2. &nbsp;���٣�����Ԫ�������ţ���־ǿ�������������������Ź������Ժ�־���Թ��������ı���褣����£��²������������.�ε���΢����Ƽ����о������ƹ�Ӧ��.�л�ҽѧ�Ƽ���һ�Ƚ���201301080U0302��.2013
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						3. &nbsp;����Ԫ,����ͤ,����,���һ�,�Ź���,������,�ź���,�,������,���ı�,�²�,������.��ǻ�������������ٴ�Ӧ��ϵ���о�.ɽ��ʡ�Ƽ�����һ�Ƚ�(JB2008-1-20-1). 2008.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						4. &nbsp;����Ԫ,�Ź���,����׳,����,���ı�,������,���,����ܿ,Ф˼��.��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ���о�. ɽ��ʡ�Ƽ��������Ƚ�(JB2011-2-113-1). 2011.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						5. &nbsp;����Ԫ,����ͤ,����,�Ź���,������,�²�,�����,��ϣ��.���Ӹ�ǻ��������ά�������ڸ����⵨�ܽ�ʯ�����е�Ӧ��.�������ߵ�ѧУ�Ƽ��������Ƚ�(2006-307). 2006.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						6. &nbsp;����Ԫ,����,����,������,�²�,������,������,������,������,���ı�,�Ź���,���.��ǻ��Ƣ�������Ļ������ٴ�Ӧ���о�. ɽ��ʡ�Ƽ��������Ƚ�(JB2006-2-32-1). 2006.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						7. &nbsp;����Ԫ��.������ǻ���������ٴ��ƹ�Ӧ��.ɽ��ʡҽѧ�Ƽ�����һ�Ƚ�. 1999
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						8. &nbsp;����Ԫ���Ź�������������ǡ����ı�.��ǻ��������ǻ�����Ѽ�ת��Ķ���ʵ���о�.ɽ��ʡ��������У����Ȼ��ѧ��һ�Ƚ�(2004310050).2004
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						9. &nbsp;����Ԫ��.��ǻ������������ǻ��ʯת��Ķ���ʵ���о�.ɽ��ʡ��ί�Ƽ��������Ƚ�(2000Y0134). 2000
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						10. &nbsp;����Ԫ��.����ǻ�����������ɫͼ�ס�.ɽ��ʡ��У������гɹ����Ƚ�.2005
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						11.����Ԫ����.��ǻ����״�������Ķ���ʵ�鼰�ٴ�Ӧ���о�.ɽ��ʡ�������Ƽ����������Ƚ�(2003010551).2003
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						12. ����Ԫ��.����ǻ����״�����г����������̲�.ɽ��ʡҽѧ��ҽѧ����һ�Ƚ�.2006
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						13. ����Ԫ��.����ǻ������ϵ�н�ѧDVD��4��.ɽ��ʡҽѧ���ѧһ�Ƚ�.2006
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>�����ר����</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. ����Ԫ����ΰ�ܣ����β����Ź�����������. ��������Ѫ����Ƥ�����ص�PEG-PLGA�����������Ʊ�����������ţ�201010211937.5��.����ר���������ţ�CN101889983A��.2010
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. ����Ԫ��Ѧ�𻪣���־�. һ�ָ�ǻ������ѵ���ǣ�����ţ�200420097475.9��.ʵ������ר���������ţ�&nbsp;CN2742515��.2005
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						3. ����Ԫ����־豣�Ѧ��. ��ǻ������ѵ���ǣ�����ţ�200430089421.3��.������ר���������ţ�CN3457409��.2005
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>�����ķ���</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. &nbsp;Liu S, Zhang G, Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>The entire small intestine mediates the changes in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats. Ann Surg.2012,256(6):1049-58��IF= 7.492��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. &nbsp;Wang TT, Hu SY, Gao HD, Zhang GY, Liu CZ, Feng JB, Frezza EE.Ileal transposition controls diabetes as well as modified duodenal jejunal bypass with better lipid lowering in a nonobese rat model of type II diabetes by increasing GLP-1.Ann Surg.2008,247(6):968-75.��IF=8.46��
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						3. &nbsp;Chen W, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a>&nbsp;Suitable carriers for encapsulation and distribution of endostar: comparison of endostar-loaded particulate carriers. Int J Nanomedicine. 2011;6:1535-41. ��IF= 4.976��
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						4. &nbsp;Sanyuan Hu, Yangde Zhang.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Endostar-loaded PEG-PLGA nanoparticles: in vitro and in vivo evaluation. Int J Nanomedicine.2010;5:1039-1048 (IF=4.976)
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						5. &nbsp;Sun NF, Meng QY, Tian AL, Hu SY, Wang RH, Liu ZX, Xu L.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Nanoliposome-mediated FL/TRAIL double-gene therapy for colon cancer: in vitro and in vivo evaluation. Cancer Lett. 2012;315(1):69-77. (IF=4.863)
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						6. &nbsp;Wang L, Cheng H, Liu Y, Wang L, Yu W, Zhang G, Chen B, Yu Z, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Prognostic Value of Nuclear ��-catenin Overexpression at Invasive Front in Colorectal Cancer for Synchronous Liver Metastasis. Ann Surg Oncol. 2011;18(6):1553-9.��IF= 4.182��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						7. &nbsp;Jiang J, Ding X, Zhang G, Su Q, Wang Z, Hu S.&nbsp; Spontaneous retroperitoneal hematoma associated with iliac vein rupture. J Vasc Surg.2010;52(5):1278-82��IF=3.851��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						8. &nbsp;Zhang G, Liu S, Yu W, Wang L, Liu N, Li F, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Gasless laparoendoscopic single-site surgery with abdominal wall lift in general surgery: initial experience. Surg Endosc. 2011;25(1):298-304.&nbsp;��IF=3.436��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						9. &nbsp;Yu W, Li F, Wang Z, Qi X, Li B, Zhang G, Hao X, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a>&nbsp;Effects of CO(2) insufflation on cerebrum during endoscopic thyroidectomy in a porcine model. Surg Endosc. 2011 25(5):1495-504��IF=3.436��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						10.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Wang K</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Liu S</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20F%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Liu F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20C%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Hu C</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Hu S</a>.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Duodenal-Jejunal Bypass Surgery Up-Regulates the Expression of the Hepatic Insulin Signaling Proteins and the Key Regulatory Enzymes of Intestinal Gluconeogenesis in Diabetic Goto-Kakizaki Rats.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a>&nbsp;2013 May 23. [Epub ahead of print]
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						11. Hu C, Zhang G, Sun D, Han H, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a><a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23636998\">Duodenal-jejunal bypass improves glucose metabolism and adipokine expression independently of weight loss in a diabetic rat model.</a>&nbsp;Obes Surg. 2013 Sep;23(9):1436-44. doi: 10.1007/s11695-013-0976-1.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						12. Sun D,Yan Z, Chen W, Liu S, Zhang G,&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Type 2 Diabetes Control in a Nonobese Rat Model Using Sleeve Gastrectomy with Duodenal�CJejunal Bypass (SGDJB)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012.DOI 10.1007/s11695-012-0744-7��IF=3.283��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						13. Yan Z, Chen W, Liu S, Zhang G, Sun D, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Myocardial Insulin Signaling and Glucose Transport Are Up-regulated in Goto-Kakizaki Type 2 Diabetic Rats After Ileal Transposition. Obes Surg. 2012;22(3):493-501 ��IF=3.283��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						14.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Ding X</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang K</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang H</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Liu Y</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Yang Q</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Hu S</a>.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>High expression of CCL20 is associated with poor prognosis in patients with hepatocellular carcinoma after curative resection.<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303##\">J Gastrointest Surg.</a>&nbsp;2012 Apr;16(4):828-36. ��IF=2.733��.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						15. Chen W, Yan Z, Liu S, Zhang G, Sun D, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>The Changes of Pro-opiomelanocortin Neurons in Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC Neurons. J Gastrointest Surg 2011; 15(9):1618-24.��IF=2.733��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						16. Ding X, Zhu J, Zhu M, Li C, Jian W, Jiang J, Wang Z, Hu S, Jiang X. Therapeutic Management of Hemorrhage from Visceral Artery Pseudoaneurysms after Pancreatic Surgery. J Gastrointest Surg. 2011 May 17. [Epub ahead of print] ��IF=2.733��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						17. Zhu J, Yang Y, Ma C, Zhang G, Wang K, Hu S.CEACAM1 Cytoplastic Expression is Closely Related to Tumor Angiogenesis and Poorer Relapse-free Survival After Curative Resection of Hepatocellular Carcinoma. World J Surg. 2011 Apr 26. [Epub ahead of print] ��IF=2.693��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						18. Sun NF, Meng QY, Hu SY, Tian AL, Wang RH, Liu ZX, Xu L. Correlation between the expression of the BAG-1 gene and clinicopathologic factors in colorectal cancer. J Cancer Res Clin Oncol. 2011;137(10):1419-24. ��IF= 2.485��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						19. Wang L, Wang L, Yu W, Zhang G, Zhang L, Tian G, Hu S. Association between age and synchronous liver metastasis in female colorectal cancer patients. J Cancer Res Clin Oncol. 2011 Jun;137(6):959-64 ��IF= 2.485��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						20. Su Q, Hu S, Gao H, Ma R, Yang Q, Pan Z, Wang T, Li F.Role of AIB1 for tamoxifen resistance in estrogen receptor-positive breast cancer cells.Oncology.2008,75(3-4):159-68. (IF=2.444)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						21. Zhu J, Feng A, Sun J, Jiang Z, Zhang G, Wang K, Hu S, Qu X.Increased CD4(+) CD69(+) CD25(-) T cells in patients with hepatocellular carcinoma are associated with tumor progression. J Gastroenterol Hepatol. 2011 May 9. doi: 10.1111/j.1440-1746.2011.06765.x. [Epub ahead of print] (IF=2.410)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						22. Li F, Zhang G, Liang J, Ding X, Cheng Z, Hu S.Sleeve gastrectomy provides a better control of diabetes by decreasing ghrelin in the diabetic Goto-Kakizaki rats. J Gastrointest Surg. 2009,13(12):2302-8. ��IF=2.311��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						23. Zhang HF, Hu SY, Zhang GY, Wang KX, Chen B, Li B. Laparoscopic primary choledochorrhaphy over endonasobiliary drainage tubes. Surg Endosc.2007,21(11):2115-7.��IF=2.242��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						24. Wang L, Li CL, Wang L, Yu WB, Yin HP, Zhang GY, Zhang LF, Li S, Hu SY.Influence of CXCR4/SDF-1 axis on E-cadherin/��-catenin complex expression in HT29 colon cancer cells. World J Gastroenterol. 2011;17(5):625-32. (IF=2.240)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						25.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20QY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Yang QY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang L</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20ZG%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang ZG</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20F%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20YQ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li YQ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20XJ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Ding XJ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Hu SY</a>. Infection during transgastric and transvaginal natural orifice transluminal endoscopic surgery in a live porcine model.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/21362281##\">Chin Med J (Engl).</a>&nbsp;2011 Feb;124(4):556-61. ��IF=0.858��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						26. Wen-Bin Yu, Guang-Yong Zhang, Feng Li, Qing-Yun Yang, San-Yuan HuTransumblical single port laparoscopic cholecystectomy with a simple technique: Initial experience of 33 cases. Minim Invasive Ther Allied Technol. 2010;19(6):340-344��IF=1.330��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						27. Wang YL, Zhang GY, Wang L, Wang KX, Hu SY. Endoscopic thyroidectomy by a modified anterior chest approach: A single institution;s 5-year experience.Minim Invasive Ther Allied Technol. 2009,18(5):297-301. ��IF=1.611��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						28. Zhang H, Hu S, Zhang G, Wang K, Chen B, Li B, Frezza EE. Laparoscopic versus open proctocolectomy with ileal pouch-anal anastomosis. Minim Invasive Ther Allied Technol.2007,16(3):187-91.��IF=0.978��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						29. &nbsp;Zhang GY, Hu SY, Zhang HF, Wang KX, Wang L.A novel therapeutic approach to non-parasitic splenic cysts: laparoscopic fenestration and endothelium obliteration.Minim Invasive Ther Allied Technol.2007,16(5):314-6.��IF=0.978��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						30. &nbsp;Li B, Zhang Q, Liu J, Yu H, Hu S.Clinical application of a laparoscope in ventri-peritoneal shunting.Minim Invasive Ther Allied Technol.2007,16(6):367-9.��IF=0.978��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						31. &nbsp;Yu W, Hu S, Qi Y, Li B.The correlation between sonographic diagnosis and laparoscopic observations on fatty liver. J Laparoendosc Adv Surg Tech A. 2009,19(2):163-9.��IF=0.912��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						32.&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20SZ%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu SZ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Wang L</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20T%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu T</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun Y</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20MX%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Li MX</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Hu SY</a>. A high-fat diet reverses improvement in glucose tolerance induced by duodenal-jejunal bypass in type 2 diabetic rats.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22490596##\">Chin Med J (Engl).</a>&nbsp;2012 Mar;125(5):912-9. ��IF=0.858��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						33.&nbsp;&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sui%20GD%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Sui GD</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Niu%20ZJ%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Niu ZJ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Hu SY</a>. Expression of farnesyltransferase in primary liver cancer.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22882915##\">Chin Med J (Engl).</a>&nbsp;2012 Jul;125(14):2427-31. ��IF=0.858��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						34. &nbsp;Chen B, Hu SY, Wang L, Wang KX, Zhang GY, Zhang HF, Xuan SJ, Wachtel MS, Frezza EE.Laparoscopic splenectomy: a 12-year single-center experience.Chin Med J (Engl).2008,121(8):766-8.��IF=0.858��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						35.&nbsp;&nbsp; Wang TT, Frezza EE, Ma R, Hu SY, Liu CZ, Zhang GY, Wachtel MS, L�� XM, Feng JB, L�� CX.Loss expression of active fragile sites genes associated with the severity of breast epithelial abnormalities.Chin Med J (Engl).2008,121(20):1969-74. ��IF=0.858��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						36. &nbsp;Wang KX, Hu SY, Jiang XS, Zhu M, Jin B, Zhang GY, Chen B.Protective effects of ischaemic postconditioning on warm/cold ischaemic reperfusion injury in rat liver: a comparative study with ischaemic preconditioning.Chin Med J (Engl).2008,121(20):2004-9. ��IF=0.858��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						37. &nbsp;Zhang GY, Wang TT, Cheng ZQ, Feng JB, Hu SY. Resolution of diabetes mellitus by ileal transposition compared with biliopancreatic diversion in a nonobese animal model of type 2 diabetes. Can J Surg. 2011 Aug;54(4):243-51. ��IF=0.850��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						38.&nbsp;&nbsp; Jin B, Liu CZ, Hu SY, Wang TT, Wang L, Jiang XS, Frezza EE.Influence of estrogen and androgen on the outcome of liver transplantation. Hepatogastroenterology. 2008,55(81):207-11. ��IF=0.68��
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						39.&nbsp;&nbsp; Liu CZ, Hu SY, Zhu M, Wang TT, Jin B, Shao J, Lv LH, Yin JL, Wachtel MS, Frezza EE.Hepatocyte infusions improve the results of liver transplantation in rats. Hepatogastroenterology. 2010;57(101):899-902.(IF=0.669)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						40. &nbsp;Wang KX, Hu SY, Zhang GY, Chen B, Zhang HF.Hand-assisted laparoscopic splenectomy for splenomegaly: a comparative study with conventional laparoscopic splenectomy.Chin Med J (Engl).2007,120(1):41-5.(IF=0.636)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						41.&nbsp;&nbsp; Zhang H, Hu S, Zhi X, Wang L, Zhang G, Wang K.Laparoscopic proctocolectomy with ileal pouch-anal anastomosis.Surg Laparosc Endosc Percutan Tech.2007,17(5):388-91.(IF=0.575)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						42. &nbsp;Wang YL, Zhang GY, Wang L, Hu SY. Metallic clip migration to T-tube sinus tract after laparoscopic choledochotomy.Acta Chir Belg. 2009,109(2):242-4. (IF=0.47)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						43. Chen B, Hu SY, Wang L, Wang KX, Zhang GY, Zhang HF.Reoperation of biliary tract by laparoscopy: a consecutive series of 26 cases.Acta Chir Belg.2007,107(3):292-6. (IF=0.394)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						44. &nbsp;B Chen,S Hu, L Wang, K Wang, G Zhang, H Zhang, MS Wachtel, EE Frezza. Economical Strategies of Laparoscopic Splenectomy: A Chinese Single-Center Experience. Chir Gastroenterol.2007,23:387-391. (IF=0.11)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>���������Ҫר����������</b><b></b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. &nbsp; ���ٴ���������ѧ��ɽ���Ƽ������� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1996����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. &nbsp; ����ǻ���ٴ����μ�����.ɽ����ѧ����������. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2002.����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						3. &nbsp; ����ǻ�����������ɫͼ�ס�.ɽ����ѧ����������.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2004.����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						4. &nbsp; ����������ٴ�����ѧͼ�ס�.ɽ����ѧ����������.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2006.����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						5. &nbsp; ����ǻ�����ѧ���ڶ��棩��.ɽ����ѧ����������.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2005.����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						6. &nbsp; �������˺�Զ�̻�������ƾ�Ҫ��.ɽ����ѧ����������. &nbsp; &nbsp;2006.����
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						7. &nbsp; ����ͨ���ѧ����ͼ�ס� ɽ���Ƽ�������. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 2010.����
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<span></span>','1','0','0','0','0','','0','232','1');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1739','87','����','','','admin','2014-11-09 06:58:20','','<p>
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113083640_13935.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;�� &nbsp;��</strong></span>&nbsp;
					</p>
					<p align=\"center\">
						<strong>����ҽʦ &nbsp;˶ʿ�о�����ʦ</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;רҵ���س����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;����ʱ�䣺����ȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�о�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;���䣺
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�绰��18560085117
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; ��Ϊɽ����ѧ��³ҽԺ����Ƹ����Ρ��س��������</span>
					</p>
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; ��Ҫ����θ���ر��ǽ�ֱ���������������Լ��������Ρ��Ե�λֱ����������������ֱ�����淶�����ơ��󳦰���ת�ƵĹ淶�����ơ�θ������������ϼ����ơ�θ�����ڷ����������ơ����Ա��ص�������ơ���֢�Գ�����������ơ��̵�������ơ����ָ����޵�������Ƶȷ�����������о����е�θ�������������л������ܻ��ٴ�Ԯ��ҩƷ���������й���֢������ٴ�Ԯ��ҩƷ��̹��ҽѧ��֤������</span>
					</p>
					<div>
						<br />
					</div>
					<p>
						��&nbsp;����������
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						���е��Ͳ�����������
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						�������ѧ�����ġ�
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						������ɹ���
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>','1','0','0','0','0','','0','183','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1740','87','�϶���','','','admin','2014-11-09 06:59:25','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141113/20141113082956_30901.jpg\" alt=\"\" />
				</p>
				<p align=\"center\">
					&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;�϶���</strong></span>&nbsp;<strong>����ҽʦ</strong>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;רҵ���س����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;����ʱ�䣺����ȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;�о�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;���䣺
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;�绰��18560085118
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span>&nbsp; &nbsp; ��Ϊɽ����ѧ��³ҽԺ�س���Ƹ����Σ������ձ��͸�ɽ����ҽ�ƴ�ѧ���ޡ�������θ����Ƽ������ر��Ǹ���ֱ����������������ƣ���ʡ�����ȿ�չ�˾����š�������Լ����ֱ���г����᳦�ع��Ǻ�����ȡ�ýϺ�Ч�����Խ�ֱ�����������͸���ֱ�������Բ��䣨���̡�����ֱ����Χŧ�ס�������ֱ���Ѵ���ֱ��ǰͻ������Ա��صȣ��������о���</span>
				</p>
				<p>
					<br />
��&nbsp;����������
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					���е��Ͳ�����������
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					�������ѧ�����ġ�
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					������ɹ���
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>
<br />','1','0','0','0','0','','0','158','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1741','87','����','','','admin','2014-11-09 07:00:21','','<p>
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113082613_74506.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;����</strong></span><strong>&nbsp;������</strong><strong>ҽʦ</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;רҵ��<span>θ����ơ�</span>�س����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;����ʱ�䣺��һȫ�� &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�о�����
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;���䣺
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;�绰��18560085115
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span>&nbsp; &nbsp; ����������ͨ��Ƴ��������෢����Σ����֢��������ƺ��������ڸ�����������Լ������ر���θ���������ı�׼�����β������ۺ������Լ�θ����������֢���������ơ�Χ�����ڴ���ȷ�������˷ḻ���ٴ����飻�ر��ǶԵ�λֱ���������������������Լ���������Ա��صĵ�������ơ����θ�����������Ƶȷ���Ҳ�н������衣</span>
					</p>
					<p>
						<br />
					</p>
					<p>
						��&nbsp;����������
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						���е��Ͳ�����������
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						�������ѧ�����ġ�
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						������ɹ���
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<br />','1','0','0','0','0','','0','187','0');
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
</table>','1','0','0','0','0','','1','9','0');
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1747','86','����׳','','','admin','2014-11-13 03:32:19','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141208/20141208022516_22225.jpg\" width=\"200\" height=\"281\" alt=\"\" /> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; <strong><span style=\"font-size:16px;\">����׳</span> ����ҽʦ</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>������λ</strong><span style=\"background-color:#FFFFFF;\">��ɽ����ѧ��³ҽԺ</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<strong>&nbsp;רҵ</strong>��θ�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp; &nbsp; &nbsp;�������������</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>����ʱ��</strong>������ȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>�о�����</strong>��
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 1��θ������л��������2�����򲡵Ļ������ٴ�Ӧ��</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 2��������Ⱥ��2�����򲡵Ĺ�ϵ</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 3��С����������̬�����úͻ���</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 4��θ�������еĴ�л����</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>����</strong>��liushaozhuang<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@sdu</span><span style=\"line-height:1.5;\">.edu.cn</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp;<strong>�绰</strong>��18560085165</span> 
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span style=\"line-height:1.5;\"><strong>��</strong></span><strong> ��������</strong><span style=\"line-height:1.5;\"><strong>��</strong></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2000�C2005 �Ͷ���ԭɽ����ѧҽѧԺ�����ҽѧѧʿѧλ��<span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2005�C2007 ��ְ��ɽ����ѧҽѧԺ������ѧ���������к����¹�����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2007�C2012 &nbsp;�Ͷ���ɽ����ѧҽѧԺ��˶��������������ͨ���ѧ��ʿѧλ��<span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2012.08���� ��ְ��ɽ����ѧ��³ҽԺ��ͨ��ơ�
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>���е��Ͳ�����������</strong><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) &nbsp;θ��·����С��֬�ʸ��ܶԸ��������ǲ����ĵ��ڣ�81300286)��������Ȼ��ѧ�����������2014-2016��23��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2) &nbsp;θ��·����������֬�ʸ��ܶԸ��������ǲ����ĵ��ڣ�20130131120069������������ʿ������½�ʦ�ࣩ��2014-2016��4��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b>(3) &nbsp;</b>θ��·����������POMC/CART��Ԫ��NPY/AgRP��ԪӪ�����ܶԸ�������������ĵ��أ�2014GSF118170����ɽ��ʡ�Ƽ���չ�ƻ���2014-2016��8��Ԫ��<b><u>��Ŀ������</u></b><b><u></u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4) &nbsp;С����θ��·�������ڸ��ȵ��������Ը����е����úͻ��ƣ�BS2013YY031��<a name=\"undefined\"></a><a name=\"undefined\"></a>��ɽ��ʡ�����������ѧ�ҿ��н�������ƻ���2013-2015��5��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(5) &nbsp;����Զ��С����θ������·������2�������е���������ƣ�yzc09094����ɽ����ѧ�о����������»���2010-2011��1��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(6) &nbsp;θ��·����������POMC/CART��Ԫ��NPY/AgRP��Ԫ�Ը�������������ĵ����о���81471019����������Ȼ��ѧ����������Ŀ����2015-2018��73��Ԫ��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(7) &nbsp;��״θ�г�����С����������Ӫ�����ܶԸ������������ �ĵ��ڣ�81471020����������Ȼ��ѧ����������Ŀ����2015-2018��65��Ԫ��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(8) &nbsp;��-�ε�֭�������θ��·���������ȵ��������Ը����е����ü������о�(81370496).������Ȼ��ѧ����������Ŀ����2014-2017��70��Ԫ��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(9) &nbsp;��-��-�����2 �����򲡴���θ��·�������ڸ��ȵ��������Եĵ����о�(81270888)��������Ȼ��ѧ����2013-2016��70��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(10) θ������·������2�����򲡵Ļ����о� (81070642)��������Ȼ��ѧ����2011-2013��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>�������ѧ�����ġ�</strong><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1)&nbsp;<b><u>Liu
S,</u></b> Zhang
G, Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S. The entire small intestine
mediates the changes in glucose homeostasis after intestinal surgery in
Goto-Kakizaki rats. Ann Surg.2012,<span>256(6):104</span>9-58��IF=
6.329��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2) Zhang
G, <b><u>Liu S</u></b>, Yu W, Wang L, Liu N, Li F, Hu S. Gasless laparoendoscopic
single-site surgery with abdominal wall lift in general surgery: initial
experience. Surg Endosc. 2011;25(1):298-304.����ͬ��һ���ߣ�IF=4.013��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(3) Sun D, <b><u>Liu
S</u></b>, Zhang G, Colonne
P, Hu C, Han H, Li M, Hu S. Sub-sleeve gastrectomy achieves good diabetes control
without weight loss in anon-obese diabetic rat model. Surg Endosc. 2014 Mar;28(3):1010-8.
����ͬ��һ���ߣ�IF=3.427��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4)&nbsp;<b><u>Liu SZ</u></b>, Sun D, Zhang GY, Wang L, Liu T, Sun Y, Li MX, Hu SY. A
high-fat diet reverses improvement in glucose tolerance induced by
duodenal-jejunal bypass in type 2 diabetic rats. Chin Med J (Engl). 2012;125(5):912-9.��IF: 0.864��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(5) ����׳,�Ź���,��־ǿ,չ����,�����,���,����Ԫ.Minilap�ӽ�ʽ���굥�׸�ǻ�������г���12������.��ǻ�������־.2013;18(11):834-7
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(6)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Sun D</a>,<b><u>&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Hu S</a>. <a name=\"undefined\"></a><a name=\"undefined\"></a>Type
2 Diabetes Control in a Nonobese Rat Model Using Sleeve Gastrectomy with
Duodenal�CJejunal Bypass (SGDJB) <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012; 22(12):1865-73.&nbsp; DOI
10.1007/s11695-012-0744-7��IF=3.283��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(7) Yan Z, Chen W, <b><u>Liu S</u></b>, Zhang G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Myocardial Insulin
Signaling and Glucose Transport Are Up-regulated in Goto-Kakizaki Type 2
Diabetic Rats After Ileal Transposition. Obes Surg.
2012;22(3):493-501 ��IF=3.283��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(8) Chen W, Yan Z,<b><u> Liu S</u></b>, Zhang
G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>The Changes of Pro-opiomelanocortin Neurons in
Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC
Neurons. J Gastrointest Surg 2011; 15(9):1618-24.��IF=2.733��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(9)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Yan Z</a>,&nbsp;<b><u><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Hu S</a>.
The better effect of Roux-en-Y gastrointestinal reconstruction on blood glucose
of&nbsp;nonobese&nbsp;type&nbsp;2&nbsp;diabetesmellitus patients. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/24139553\">Am J Surg.</a>&nbsp;2013 Oct 15. doi:
10.1016/j.amjsurg.2013.06.011. [Epub ahead of print] ��IF=2.516��
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>������ɹ���</strong><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) ����Ԫ���Ź�����<b><u>����׳</u></b>�����ϣ����ı��������£���壬����ܿ��Ф˼��<span>. </span>��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ��<span>. </span><b>ɽ��ʡ�Ƽ��������Ƚ�</b><span>. 2011.</span> 
				</p>
				<p>
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','365','2');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1748','82','����׳','','','admin','2014-11-13 05:29:02','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141208/20141208022516_22225.jpg\" width=\"200\" height=\"280\" alt=\"\" /> 
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp;&nbsp;<strong><span style=\"font-size:16px;\">����׳</span>&nbsp;����ҽʦ</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<strong>&nbsp;������λ</strong>��ɽ����ѧ��³ҽԺ
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<strong>&nbsp;רҵ</strong>��θ�����
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp; &nbsp; &nbsp;�������������</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					&nbsp;<strong>����ʱ��</strong>������ȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					&nbsp;<strong>�о�����</strong>��
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 1��θ������л��������2�����򲡵Ļ������ٴ�Ӧ��</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 2��������Ⱥ��2�����򲡵Ĺ�ϵ</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 3��С����������̬�����úͻ���</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 4��θ�������еĴ�л����</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>����</strong>��liushaozhuang<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@sdu</span><span style=\"line-height:1.5;\">.edu.cn</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp;<strong>�绰</strong>��18560085165</span> 
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span style=\"line-height:1.5;\"><strong>��</strong></span><strong>&nbsp;��������</strong><span style=\"line-height:1.5;\"><strong>��</strong></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2000�C2005 �Ͷ���ԭɽ����ѧҽѧԺ�����ҽѧѧʿѧλ��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2005�C2007 ��ְ��ɽ����ѧҽѧԺ������ѧ���������к����¹�����
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2007�C2012 &nbsp;�Ͷ���ɽ����ѧҽѧԺ��˶��������������ͨ���ѧ��ʿѧλ��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2012.08���� ��ְ��ɽ����ѧ��³ҽԺ��ͨ��ơ�
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>���е��Ͳ�����������</strong> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) &nbsp;θ��·����С��֬�ʸ��ܶԸ��������ǲ����ĵ��ڣ�81300286)��������Ȼ��ѧ�����������2014-2016��23��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2) &nbsp;θ��·����������֬�ʸ��ܶԸ��������ǲ����ĵ��ڣ�20130131120069������������ʿ������½�ʦ�ࣩ��2014-2016��4��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(3) &nbsp;</b>θ��·����������POMC/CART��Ԫ��NPY/AgRP��ԪӪ�����ܶԸ�������������ĵ��أ�2014GSF118170����ɽ��ʡ�Ƽ���չ�ƻ���2014-2016��8��Ԫ��<b><u>��Ŀ������</u></b><b><u></u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4) &nbsp;С����θ��·�������ڸ��ȵ��������Ը����е����úͻ��ƣ�BS2013YY031����ɽ��ʡ�����������ѧ�ҿ��н�������ƻ���2013-2015��5��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(5) &nbsp;����Զ��С����θ������·������2�������е���������ƣ�yzc09094����ɽ����ѧ�о����������»���2010-2011��1��Ԫ��<b><u>��Ŀ������</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(6) &nbsp;θ��·����������POMC/CART��Ԫ��NPY/AgRP��Ԫ�Ը�������������ĵ����о���81471019����������Ȼ��ѧ����������Ŀ����2015-2018��73��Ԫ��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(7) &nbsp;��״θ�г�����С����������Ӫ�����ܶԸ������������ �ĵ��ڣ�81471020����������Ȼ��ѧ����������Ŀ����2015-2018��65��Ԫ��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(8) &nbsp;��-�ε�֭�������θ��·���������ȵ��������Ը����е����ü������о�(81370496).������Ȼ��ѧ����������Ŀ����2014-2017��70��Ԫ��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(9) &nbsp;��-��-�����2 �����򲡴���θ��·�������ڸ��ȵ��������Եĵ����о�(81270888)��������Ȼ��ѧ����2013-2016��70��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(10) θ������·������2�����򲡵Ļ����о� (81070642)��������Ȼ��ѧ����2011-2013��<b><u>��Ŀ���Ա</u></b> 
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>�������ѧ�����ġ�</strong> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1)&nbsp;<b><u>Liu S,</u></b>&nbsp;Zhang G, Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S. The entire small intestine mediates the changes in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats. Ann Surg.2012,256(6):1049-58��IF= 6.329��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2) Zhang G,&nbsp;<b><u>Liu S</u></b>, Yu W, Wang L, Liu N, Li F, Hu S. Gasless laparoendoscopic single-site surgery with abdominal wall lift in general surgery: initial experience. Surg Endosc. 2011;25(1):298-304.����ͬ��һ���ߣ�IF=4.013��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(3) Sun D,&nbsp;<b><u>Liu S</u></b>, Zhang G, Colonne P, Hu C, Han H, Li M, Hu S. Sub-sleeve gastrectomy achieves good diabetes control without weight loss in anon-obese diabetic rat model. Surg Endosc. 2014 Mar;28(3):1010-8. ����ͬ��һ���ߣ�IF=3.427��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4)&nbsp;<b><u>Liu SZ</u></b>, Sun D, Zhang GY, Wang L, Liu T, Sun Y, Li MX, Hu SY. A high-fat diet reverses improvement in glucose tolerance induced by duodenal-jejunal bypass in type 2 diabetic rats. Chin Med J (Engl). 2012;125(5):912-9.��IF: 0.864��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(5) ����׳,�Ź���,��־ǿ,չ����,�����,���,����Ԫ.Minilap�ӽ�ʽ���굥�׸�ǻ�������г���12������.��ǻ�������־.2013;18(11):834-7
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(6)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Sun D</a>,<b><u>&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Hu S</a>.&nbsp;Type 2 Diabetes Control in a Nonobese Rat Model Using Sleeve Gastrectomy with Duodenal�CJejunal Bypass (SGDJB)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012; 22(12):1865-73.&nbsp; DOI 10.1007/s11695-012-0744-7��IF=3.283��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(7) Yan Z, Chen W,&nbsp;<b><u>Liu S</u></b>, Zhang G, Sun D, Hu S.&nbsp;Myocardial Insulin Signaling and Glucose Transport Are Up-regulated in Goto-Kakizaki Type 2 Diabetic Rats After Ileal Transposition. Obes Surg. 2012;22(3):493-501 ��IF=3.283��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(8) Chen W, Yan Z,<b><u>&nbsp;Liu S</u></b>, Zhang G, Sun D, Hu S.&nbsp;The Changes of Pro-opiomelanocortin Neurons in Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC Neurons. J Gastrointest Surg 2011; 15(9):1618-24.��IF=2.733��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(9)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Yan Z</a>,&nbsp;<b><u><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Hu S</a>. The better effect of Roux-en-Y gastrointestinal reconstruction on blood glucose of&nbsp;nonobese&nbsp;type&nbsp;2&nbsp;diabetesmellitus patients.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/24139553\">Am J Surg.</a>&nbsp;2013 Oct 15. doi: 10.1016/j.amjsurg.2013.06.011. [Epub ahead of print] ��IF=2.516��
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>������ɹ���</strong> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) ����Ԫ���Ź�����<b><u>����׳</u></b>�����ϣ����ı��������£���壬����ܿ��Ф˼��.&nbsp;��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ��.&nbsp;<b>ɽ��ʡ�Ƽ��������Ƚ�</b>. 2011.
				</p>
				<p>
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','278','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1749','83','���β�','','','admin','2014-11-13 05:42:00','','<table width=\"100%\" style=\"color: rgb(0, 0, 0); font-family: ����, Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\" cellspacing=\"10\"><tbody><tr class=\"firstRow\"><td width=\"20%\" height=\"400\" valign=\"top\"><p><img alt=\"\" src=\"/attached/image/20141113/20141113082319_31722.jpg\"/><span style=\"font-size: 16px;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;���β�</strong></span>&nbsp;<strong>����ҽʦ</strong></p><p style=\"text-align: center;\">&nbsp;&nbsp;רҵ��<span style=\"line-height: 1.5;\">���븹�����</span></p><p style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;����ʱ�䣺����ȫ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>�о�����</p><p style=\"background: white; line-height: 150%;\"><span style=\"color: black; font-family:;\" new=\"\" times=\"\">&nbsp;1</span><span style=\"color: black;\"><span style=\"font-family: ����;\">��θ������л��������</span></span><span style=\"color: black; font-family:;\" new=\"\" times=\"\">2</span><span style=\"color: black;\"><span style=\"font-family: ����;\">�����򲡵Ļ���</span></span></p><p style=\"background: white; line-height: 150%;\"><span style=\"color: black; font-family:;\" new=\"\" times=\"\">&nbsp; 2</span><span style=\"color: black;\"><span style=\"font-family: ����;\">����֢��������Ӧ������������</span></span></p><p style=\"background: white; line-height: 150%;\">���䣺zhibo6531@163.com&nbsp;&nbsp;&nbsp;	�绰��18560085166&nbsp;&nbsp;&nbsp;	</p><p style=\"text-align: center;\">&nbsp;</p></td><td width=\"80%\" valign=\"top\"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">������������</span></strong></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2003�C2009</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">ɽ����ѧ</span> <span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">�ٴ�ҽѧ�����ƣ�</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2009�C2013 </span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">ɽ����ѧҽѧԺ���ѧ</span> <span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��ʿ��</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2010.10-2013.03 </span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��������ŵ����ѧ</span> <span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">����������ʿ��</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2013.08</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp; </span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��ְ��ɽ����ѧ��³ҽԺ����ơ�</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp;</span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">���е��Ͳ�����������</span></strong></p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">�е�ʡ��������һ��</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">: </span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp; </span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">����ϸ��</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">NLRP3</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��������θ��·�����ȵ���ϸ�����ܸ��������û����о�</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">.(2014ZRE27521).</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">ɽ��ʡ��Ȼ��ѧ����</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">(</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">�������</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">). 2014</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">-2016.&nbsp; 12</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��Ԫ</span> </p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��Ŀ������</span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">���������Ȼ�������</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">3</span><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">.</span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">�������ѧ�����ġ�</span></strong></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp;</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1. <strong>Yan, Zhibo(</strong>#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Myocardial insulin signaling and glucose transport are up-regulated in Goto-Kakizaki type 2 diabetic rats after ileal transposition.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Obesity Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">22</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">3</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">493-501</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wu, Jianbo(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Schwartz, David E.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yu, Jingui</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Malik, Asrar B.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Activatio n of NLRP3 inflammasome in alveolar macrophages contributes to mechanical stretch-induced lunginflammation and injury.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Immunology</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2013</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">190</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">7</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">3590-3599</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span> <span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��ͬ��һ���ߡ�</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">3</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The changes of pro-opiomelanocortin neurons in type 2 diabetes mellitus rats after ileal transposition: the role of POMC neurons.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Journal of Gastrointestinal Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2011</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">15</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">9</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1618-1624</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span> </p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">4</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Weijie Chen(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhibo Yan</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Shaozhuang Liu</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Guangyong Zhang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Dong Sun</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sanyuan Hu(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The better effect of Roux-en-Y gastrointestinal reconstruction on blood glucose of nonobese type 2 diabetes mellitus </span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">patients.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">American Journal of Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">207</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">877-881</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">5</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Dejie(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Minshall, Richard D</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Schwartz, David E</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Yuguo</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Activati on of calpains mediates early lung neutrophilic inflammation in ventilator-induced lung injury.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">American Journal of Physiology - Lung Cellular and Molecular </span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Physiology</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">302</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">4</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">L370-L379</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chuanzhen Liu(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhibo Yan</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Changcun Fang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Guangqing Cao</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Biao Wang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sijie Li</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Shuming Wu(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Establishment and comparison of two reliable hyperkinetic pulmonary hypertension models in rabbits.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Thoracic and Cardiovascular Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">148</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">5</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2353-2359</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">7</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Jiao, Hao(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Yang(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wang, Zhen-Guo</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Gongjian</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Minshall, Richard D</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Malik, Asrar B</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Caveolin-1 Tyr14 phosphorylation induces interaction with TLR4 in endothelial cells and mediates MyD88-dependent signaling and sepsis-induced lung inflammation.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Immunology</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2013</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">191</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">12</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6191-6199</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">8</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yang, Zhiyong(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Reynolds, Albert B</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Christman, John W</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Minshall, Richard D</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Malik, Asrar B</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Yang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Differential role for p120-catenin in regulation of TLR4 signaling in macrophages.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Immunology</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">193</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">4</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1931-1941</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">9</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Maimaitiyusufu, Wubulikasimu(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Han, Haifeng</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Xiang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang Guangyong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Kasimu, Aimaiti</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Duodenal-jejunal bypass surgery on type 2 diabetic rats reduces the expression of matrix metalloproteinase-9 and tissue inhibitor of matrix metalloproteinase-1 in the thoracic aorta.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chinese Medical Journal</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">127</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">13</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2423-2428</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">10</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wang, Kexin(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Fengjun</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Chunxiao</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Duodenal-jejunal bypass surgery up-regulates the expression of the hepatic insulin signaling proteins and the key regulatory enzymes of intestinal gluconeogenesis in diabetic Goto-Kakizaki rats.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Obesity Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2013</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">23</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">11</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1734-1742</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">11</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wang, Lei</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Yu</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The entire small intestine mediates the changes in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats.</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Annals of Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">256</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1049-1058</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">12</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Type 2 diabetes control in a nonobese rat model using sleeve gastrectomy with duodenal-jejunal bypass (SGDJB).</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Obesity Surgery</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">22</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">12</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1865-1873</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">13</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">������</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">���Ź���������׳�������룬���ڣ�����Ω��<strong>���β�</strong>������Ԫ</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����֭�ᡢ��л������</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">�����򲡣���ǻ�������־��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">01</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">71-76</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span> </p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">14</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��������</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">������׳���Ź��������裬���ڣ�����Ω��<strong>���β�</strong>������Ԫ</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">-</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">-</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">������</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">�����򲡼����������е����ã���ǻ�������־��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">01</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">61-65</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span> </p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">15</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">������Ω</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">������׳���Ź����������룬���裬���ڣ�<strong>���β�</strong>������Ԫ</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(*)</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����״θ�г�������ؼ�</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">�����򲡻���Ļ��ƣ���ǻ�������־��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">01</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">����</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">54-60</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span> </p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp;</span></strong></p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: ����; font-size: 16px;\">�α�����</span></strong></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span> <span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��ͨ�������ͼ�ף�ɽ����ѧ����������</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">; </span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\"> (2010</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">8</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1</span><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\">��</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">)</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family: ����; font-size: 16px;\"><br/></span></p><p>&nbsp;&nbsp;	</p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\">&nbsp;</p></td></tr></tbody></table>','1','0','0','0','0','','0','229','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1750','84','չ����','','','admin','2014-11-13 05:42:37','','','1','0','0','0','0','','1','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1751','86','������','','','admin','2014-11-08 08:06:59','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"http://www.webles.cn/attached/image/20141113/20141113075158_56738.jpg\" alt=\"\" />
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp;&nbsp;<strong><span style=\"font-size:16px;\">������</span>&nbsp;������ҽʦ</strong>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>רҵ</strong>��θ�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; &nbsp;�������������
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>����ʱ��</strong>����һȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>�о�����</strong>��θ������л��������2�����򲡵Ļ���
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>����</strong>��<span id=\"__kindeditor_bookmark_start_111__\"></span>wkx3726@163.com<span style=\"line-height:1.5;\"><span id=\"__kindeditor_bookmark_end_112__\"></span></span>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085126</span>
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<b><strong>��</strong>��Ҫ��������<strong>��</strong></b>
				</p>
				<p class=\"MsoNormal\">
					<b></b>
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2007.08-2008.01&nbsp; ɽ����ѧ��³ҽԺ��ͨ���סԺҽʦ
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2008.04-2009.03&nbsp; ɽ����ѧ��³ҽԺ��ͨ���סԺ��ҽʦ
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2008.02-2013.12 &nbsp;ɽ����ѧ��³ҽԺ��ͨ�������ҽʦ
				</p>
				<p class=\"MsoNormal\">
					2011.12-2012.02&nbsp; ������������ѧSHANDSҽԺѧϰ
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>ѧ����ְ<strong>��</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\">
					�й�ҽʦЭ���Ա
				</p>
				<p class=\"MsoNormal\">
					ɽ��ʡҽʦЭ�����ҽʦ�ֻḹǻ���ھ�ѧ�� ίԱ������
				</p>
				<p class=\"MsoNormal\">
					����ǻ�������־�����α༭
				</p>
				<p class=\"MsoNormal\">
					<b>&nbsp;</b>
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>�����ѧ������<strong>��</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) &nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20KX%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Wang KX</a>,&nbsp;</b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Hu SY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jiang%20XS%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Jiang XS</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhu%20M%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Zhu M</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jin%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Jin B</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Chen B</a>. Protective effects of ischaemicpostconditioning on warm/cold ischaemic reperfusion injury in rat liver: a comparative study withischaemic preconditioning. &nbsp;Chin Med J. 2008 20;121(20):2004-2009.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Sun D</a>,&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Wang K</a></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Liu S</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20F%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Liu F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20C%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Hu C</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Hu S</a>. Duodenal-jejunal bypass surgery up-regulates the expression of the hepatic insulin signaling proteins and the key regulatory enzymesof intestinal gluconeogenesis in diabetic Goto-Kakizaki rats.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a>&nbsp;2013;23(11):1734-1742.<b>����ͬ��һ��</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(3)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Ding X</a>,&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang K</a></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang H</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Liu Y</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Yang Q</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Hu S</a>. High expression of CCL20 isassociated with poor prognosis in patients with hepatocellular carcinoma after curative resection&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303\">JGastrointest Surg.</a>&nbsp;2012;16(4):828-836.&nbsp;<b>����ͬ��һ��</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4)&nbsp;&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Wang K</a></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Hu S</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jiang%20X%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Jiang X</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhu%20M%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Zhu M</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jin%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17580230\">Jin B</a>. Liver transplantation for patient with variant hepatic arteryarising from right renal artery: a case report.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=2.%09Liver+transplantation+for+patient+with+variant+hepatic+artery+arising+from+right+renal+artery.\">Transplant Proc.</a>&nbsp;2007 39(5):1716-1717.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(5)&nbsp;&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20KX%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Wang KX</a></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Hu SY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Chen B</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20HF%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=17254486\">Zhang HF</a>. Hand-assisted laparoscopic splenectomy forsplenomegaly: a comparative study with conventional laparoscopic splenectomy.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/17254486\">Chin Med J .</a>&nbsp;20075;120(1):41-45.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>�е��Ͳ���������<strong>��</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(1) &nbsp;</b><span style=\"font-family:����, Arial, Helvetica, sans-serif;line-height:30px;\">��״θ�г�����С����������Ӫ�����ܶԸ������������ �ĵ��ڣ�81471020����������Ȼ��ѧ����������Ŀ����2015-2018��65��Ԫ��<strong>��Ŀ������</strong></span>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(2) &nbsp;</b><span style=\"line-height:1.5;\">ȱѪ����Ը���ֲ������༰С����֯ȱѪ�ٹ�ע���˵ı�������</span><b>��&nbsp;</b><span style=\"line-height:1.5;\">ɽ��ʡ�����������ѧ�ҿ��н�������ƻ�</span><span style=\"line-height:1.5;\">. 2008-2011. &nbsp;6</span><span style=\"line-height:1.5;\">��Ԫ</span><span style=\"line-height:1.5;\">.&nbsp;</span><b>��Ŀ������</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(3) &nbsp;</b>Wnt���״ٳɹ������ʸ�ϸ�����ȵ���ϸ���ֻ��Ļ����о�<b>��&nbsp;</b>ɽ����ѧ�������»���. 2009-2012. 10��Ԫ.&nbsp;<b>��Ŀ���Ա���ڶ�λ��</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4) &nbsp;����ԭPdx1С�����Ϲ���Դ�Բ�������ͻ״ϸ����ֲ�����������򲡡�����Ƽ����Ǽƻ�.2012-2014. 5��Ԫ.<b>&nbsp;</b><b>��Ŀ���Ա���ڶ�λ��</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>��</strong></b>����ɹ�<strong>��</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) &nbsp;��������װ�ú�����ʽ���������굥�׸�ǻ���������ٴ�Ӧ��.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<b>ɽ��ʡ�Ƽ��������Ƚ�</b>. 2011. ����λ
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2) &nbsp;��ǻ�������������ٴ�Ӧ��ϵ���о�.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<b>ɽ��ʡ�Ƽ�����һ�Ƚ�</b>. 2008. ����λ
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(3) &nbsp;��ǻ��Ƣ�������������ٴ�Ӧ��ϵ���о�.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<b>ɽ��ʡ�Ƽ��������Ƚ�</b>. 2007. ����λ
				</p>
				<div>
					<br />
				</div>
			</td>
		</tr>
	</tbody>
</table>
<br />','1','0','0','0','0','','0','265','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1752','84','չ����','','','admin','2014-11-13 08:17:16','','<table width=\"100%\" style=\"color: rgb(0, 0, 0); font-family: ����, Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\" cellspacing=\"10\"><tbody><tr class=\"firstRow\"><td width=\"20%\" height=\"400\" valign=\"top\"><p><img alt=\"\" src=\"/attached/image/20141113/20141113081734_65458.jpg\"/> 
				</p><p style=\"text-align: center;\">&nbsp; &nbsp; <span style=\"font-size: 16px;\"><strong>&nbsp;չ����</strong></span>&nbsp;<strong>����ҽʦ</strong> 
				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;רҵ���������				</p><p style=\"text-align: center;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ���븹�����				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;����ʱ�䣺����ȫ�� &nbsp; &nbsp;&nbsp;				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;�о�������������				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;���䣺zhanhanxiang@126.com				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;�绰��18560085156				</p><p style=\"text-align: center;\"><br/> 
				</p></td><td width=\"80%\" valign=\"top\"><p>&nbsp;</p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><span style=\"line-height: 1.5;\">չ���裬�У����������ҽʦ�����ѧ��ʿ���ε�����ƣ���ǻ����Ʋ�ʿ���й�ҽʦЭ���ھ�ҽʦ�ֻ���������ǻ��ҽʦίԱ��ίԱ�����顣2011�격ʿ��ҵ�ڱ���Э��ҽԺ��ʦ���ҹ������������ר��������Ժʿ���������ɽ����ѧ��³ҽԺ����ƹ�����ʦ���ҹ�����ǻ�����ר�Һ���Ԫ���ڣ��ó����ٰ����������ڷ�����������������������������֢�����ס��ε����������ู���޵�������ƣ�������������Ƴ���������΢�����������ֿ��п���3��������ʮһ��Ƽ�֧�żƻ�1�������Ȼ��ѧ����2���׫д��������20</span><a name=\"undefined\"></a><span style=\"line-height: 1.5;\">ƪ������SCI��¼9ƪ���α�����2����</span></p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><br/></p><p class=\"MsoNormal\"><strong>���ֿ���</strong> 
				</p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">1. &nbsp;����������ϸ������̽��miR-497�������ٰ�ת�ƻ��ƣ�2013M531606�����й���ʿ�����������Ŀ��20013/7-2015/7				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					2. &nbsp;MircoRNA-146a����EGFR/mTORͨ·���Զ������ڷ���������ֳ����Ϯ��Ӱ�켰�����о���ZR2013HQ049����ɽ��ʡ��Ȼ�������������Ŀ��2014/1-2015/12.				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					3. &nbsp;miR-146a��ŧ��֢������ϡ���������������˾��������Ч�������е������о������ջ���2012/12-2013/12.&nbsp;	</span></p><p class=\"MsoListParagraph\" style=\"text-indent: 0cm; margin-left: 18pt;\"><br/></p><p class=\"MsoNormal\"><strong>�������£�</strong> </p><p class=\"MsoNormal\"><br/></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">(1) <strong>Zhan HX</strong>, Xu JW, Wu D,Zhang TP,Hu SY. Pancreatic cancer stem cells: new insight into a&nbsp;stubborn disease. Cancer Letters,2015,357(2):429-37.</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">(2) <strong>Zhan HX</strong>, Xu JW, Wang L, Wu D, Zhang GY, Hu SY. FoxQ1 is a Novel Molecular Target for Pancreatic Cancer and is Associated with Poor Prognosis.&nbsp;Curr Molecular Medicine,2015;15(5):469-77&nbsp;.</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">(3) <strong>Zhan HX</strong>, Xu JW, Wang L, Zhang GY, Hu SY. Lymph node ratio is an&nbsp;independent prognostic factor for patients after resection of pancreatic cancer.World Journal of Surgical Oncology,2015, 13:105.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: left; text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">(4) &nbsp;<strong>Zhan HX</strong>,
Cong L, Zhao YP , Zhang TP,Chen G,Zhou L, Guo JC. Activated mTOR/P70S6K
signaling pathway is involved in insulinoma tumorigenesis. J Surgical
Oncology,2012, 106(8):972-980				</span></p><p class=\"MsoNormal\" style=\"text-align: left; text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(5) &nbsp;<strong>Zhan HX</strong>,
Cong L, Zhao YP , Chen G,Zhou L, Guo JC, Liao Q, Dai MH. Risk factors of occurrence
of insulinoma: A Chinese hospital based case-control study. HBPD int, 2013
12(3):324-8.				</span></p><p class=\"MsoNormal\" style=\"text-align: left; text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(6) <strong>&nbsp;Zhan HX</strong>, Zhang TP, Liu BN, Liao Q, Zhao YP. A Systematic review of pancreatic lipoma: how come there are so few cases?
Pancreas, 2010, 39(2):257-260.				</span></p><p class=\"MsoNormal\" style=\"text-align: left; text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">(7) &nbsp;<strong>Zhan HX</strong>, Lv Y,
Zhang Y, Liu C, Wang B, Jiang YY, Liu XM. Hepatic and renal artery rupture due to Aspergillus
and Mucor mixed infection after combined liver and kidney transplantation.
Transplantation Proc,2008,40(5): 1771-1773.</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(8) &nbsp;Zhao
YP, <strong>Zhan HX</strong>, Zhang TP, Cong L, Dai MH, Liao Q, Cai LX. Surgical
management of patients with insulinomas: Results of 292 cases in a single
institution. J Surgical Oncology, 2011, 103(2):169-174.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(9) &nbsp;Zhao
YP, <strong>Zhan HX</strong>, Cong L, Zhang TP, Liao Q, Dai MH, Cai LX, Zhu Y. Risk
factors for postoperative pancreatic fistula in patients with insulinomas:
analysis of 292 Consecutive Cases. HBPD int,2012,11(1):102-106				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(10) &nbsp;<strong>չ����</strong>,������,��̫ƽ,���֣���Ȫ�����λ�.�ȵ���������Χ������Ѫ�Ǳ仯���ɼ�����.�л��ε������־,2011,17(1):13-16.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(11) &nbsp;<strong>չ����</strong>,��̫ƽ,������. ������FXR�ڵ�֭��л������������еĵ��ػ��Ƽ��о���չ.�������ѧ��־,2010,37��11��:777-780.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(12) &nbsp;<strong>չ����</strong>,������,��̫ƽ,������.��������ϸ�������ٴ��������ص����.���������ʵ��,2009,14 (5):516-518.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(13) <strong>չ����</strong>,Ҧ��,����,�����ۣ��ؽ�������ӳ�������.һ�����͸���֯����֧�ܵ��Ʊ�����������������.���ľ�ҽ��ѧѧ��,2009,30(19):1853-1856.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(14) <strong>չ����</strong>,����,����,���죬��ѧ��.��ɫ�����ճ����ڶ�̬�����ֲ�μ��䲢��֢�е�Ӧ��.������ͨ��ѧѧ����ҽѧ�棩,2008,29(1):102-106.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(15) ��̫ƽ,<strong>չ����</strong>,������. �Թ淶���������ۺ�����Ϊ���Ը������ٰ�Ԥ��.�л��ε������־��2011,17(6):441-446.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(16) ��̫ƽ,<strong>չ����</strong>,������,���֣���Ȫ�����λ���������.���Ͷ෢�ڷ��������ۺ�֢����ȵ��������η���.�й�ʵ�������־,2010,30(9):769-772.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(17) ��̫ƽ,<strong>չ����</strong>,������.�������ٰ�����ǰ���г�������.�л��ε������־��2010,16(2):81-84.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(18) �Ź���,<strong>չ����</strong>,����׳,���,��־ǿ,����,����Ԫ. ��ǻ���¾���ǻ��Ĥǰ���޲������ӹ�Բ�ʹ��Ĵ������.��ǻ�������־��2013,18(10):72-724.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(19) ��̫ƽ,<strong>չ����</strong>,л��,������.��ͷ���׿�������ʽѡ������.�й�ʵ�������־��2009,29(8):639-641.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(20) ��̫ƽ,<strong>չ����</strong>,������.���������ٰ������������.�л����������־��2009,8(4):251-254.				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\"><strong>�α�����</strong> 
				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					1��Glisson�ٺ��ʽ���г������������������磨2008��				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					2����������ѧ������ͼ����湫˾��2008��				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p><br/></p><p class=\"MsoNormal\"> 
				</p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><br/></p></td></tr></tbody></table>','1','0','0','0','0','','0','298','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1753','86','���ı�','','','admin','2014-11-11 09:03:17','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<img alt=\"\" src=\"http://www.webles.cn/attached/image/20141113/20141113072236_33241.jpg\" /><strong><span style=\"font-size:16px;\">���ı�</span></strong>
				</p>
				<p align=\"center\">
					<strong>����ҽʦ&nbsp; ˶ʿ�о�����ʦ</strong>&nbsp;
				</p>
				<p align=\"center\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>רҵ</strong>��θ�����
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp; &nbsp;�������������
				</p>
				<p align=\"center\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>����ʱ��</strong>������ȫ�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>�о�����</strong>��θ������л��������2�����򲡵Ļ���
				</p>
				<p align=\"center\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085155</span>
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
					<tbody>
						<tr>
							<td height=\"400\" valign=\"top\" width=\"20%\">
							</td>
							<td valign=\"top\" width=\"80%\">
								<p>
									<br />
								</p>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td width=\"80%\" valign=\"top\">
				<p>
					&nbsp; &nbsp; ����ɽ����ѧ��³ҽԺθ����Ƹ����Ρ�
				</p>
				<p>
					&nbsp; &nbsp; 1992���ҵ��ɽ����ѧҽѧԺ����������רҵ13�꣬2002����ҽѧ˶ʿѧλ���ó�����Ƽ��������Σ�ʤ�γ���θ���������ε���������״�ټ���ΧѪ�ܼ�����������ơ����븹ǻ��΢�������¼������ٴ��о���������Ӧ�ã�������ɸ�ǻ�������г�������β�г�������ǻ��̽���΢��������������ҽѧ������о��������������������ѧ������⡶��ǻ����״��������CO2����Ի������ѭ�����ܵ�Ӱ�졷�ĸ����ˡ������д�����ಿ�����Ķ�ƪ���нϷḻ���ٴ����������кͽ�ѧ���顣
				</p>
				<p>
					<br />
				</p>
				<p>
					��&nbsp;����������
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					���е��Ͳ�����������
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					�������ѧ�����ġ�
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					������ɹ���
				</p>
				<div>
					<br />
				</div>
				<p>
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','199','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1754','85','�²�','','','admin','2014-11-10 09:53:33','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<img src=\"/attached/image/20141113/20141113095429_95720.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">�� &nbsp;�� &nbsp;</span></strong><strong>����ҽʦ</strong><span style=\"line-height:1.5;\">&nbsp;</span>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>רҵ</strong>����״�����
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>����ʱ��</strong>�� &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>�о�����</strong>��
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>���䣺</strong>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085112<br />
</span>
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
					<tbody>
						<tr>
							<td height=\"400\" valign=\"top\" width=\"20%\">
							</td>
							<td valign=\"top\" width=\"80%\">
								<p>
									<br />
								</p>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td width=\"80%\" valign=\"top\">
				<p>
					&nbsp;<span style=\"line-height:1.5;\">��&nbsp;����������</span>
				</p>
				<p>
					<br />
				</p>
				<p>
					��ѧ����ְ��
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					���е��Ͳ�����������
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					�������ѧ�����ġ�
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					������ɹ���
				</p>
				<div>
					<br />
				</div>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','168','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1755','81','����','','','admin','2014-11-13 10:01:28','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<span><img src=\"/attached/image/20141113/20141113100627_40783.jpg\" alt=\"\" /></span> 
				</p>
				<p align=\"center\">
					<span><span><strong>&nbsp;</strong></span><strong><span style=\"font-size:16px;\">�� &nbsp;��</span></strong><strong><span style=\"font-size:16px;\">&nbsp;</span></strong></span> 
				</p>
				<p align=\"center\">
					<span><span><strong>������ ˶ʿ����ʦ</strong></span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span>&nbsp; &nbsp; <strong>������λ</strong>��ɽ����ѧ��³ҽԺ</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp; &nbsp; <strong>רҵ</strong>���ε����</span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp;&nbsp;&nbsp;&nbsp;<strong>����ʱ��</strong>����һȫ�� &nbsp; &nbsp;&nbsp;</span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp;&nbsp;&nbsp;&nbsp;<strong>�о�����</strong>���ΰ��ķ�������</span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp; &nbsp;&nbsp;<strong>����</strong>��litao7706@163.com </span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp; &nbsp;&nbsp;<strong>�绰</strong>��18560085138<br />
</span> </span> 
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:����, Arial, Helvetica, sans-serif;font-size:14px;\">
					<tbody>
						<tr>
							<td height=\"400\" valign=\"top\" width=\"20%\">
							</td>
							<td valign=\"top\" width=\"80%\">
								<p>
									<span><span><br />
</span> </span> 
								</p>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td width=\"80%\" valign=\"top\">
				<p>
					<span style=\"line-height:1.5;\">&nbsp; &nbsp; ���Σ�ҽѧ��ʿ����Ʋ�ʿ�󡢸�����ҽʦ�������ڡ�˶ʿ����ʦ��</span> 
				</p>
				<p>
					<strong>��ѧ����ְ��</strong>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<span><span></span> </span> 
				</p>
				<p class=\"MsoNormal\">
					<span>�л��ٴ�ҽʦ��־��Լ��ί<br />
ɽ��ʡ����ѧ���������ѧ�ֻ�ίԱ</span> 
				</p>
				<p class=\"MsoNormal\" style=\"background:white;\">
					<span> </span> 
				</p>
				<p>
					<span><br />
</span> 
				</p>
				<p class=\"MsoNormal\">
					<span><span><strong>���е��Ͳ�����������</strong></span> </span> 
				</p>
				<p class=\"MsoNormal\">
					<span><span>1.������Ȼ��ѧ����2009-2012�� 1�� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20��<br />
2.��������ʿ�����2010-2013�� 1�� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5��<br />
3.�й���ʿ���ѧ����������Ŀ��һ�ȣ���2013-2016�� 1�� &nbsp; 8��<br />
4.�й���ʿ���ѧ�����ر�������Ŀ��2014-2017�� 1�� &nbsp; &nbsp; &nbsp; 15��<br />
5.ɽ��ʡ��Ȼ��ѧ�����ص���Ŀ��2015-2018��1�� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;30��<br />
6.ɽ����ѧ�������»���2010-2012�� 1�� &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5��<br />
<br />
</span> </span> 
				</p>
				<p class=\"MsoNormal\">
					<span><span><strong>�������ѧ�����ġ�</strong></span></span>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<span><span>&nbsp; &nbsp; 1.	Li T, Zhi XT, Hu SY. Congenital portal venous system aneurysms associated with caput medusae. Hepatology 2011; 53:1052-1053 (SCI, IF: 12.0)<br />
2.	Li T, Ji Y, Zhi XT, Wang L, Yang XR, Shi GM, Zhang W, Tang ZY. A Comparison of Hepatic Mucinous Cystic Neoplasms With Biliary Intraductal Papillary Neoplasms. Clin Gastroenterol Hepatol 2009; 7:586-593. (SCI, IF: 6.7)<br />
3.	Li T, Qin LX, Gong X, Jian Z, Sun HC, Qiu SJ, Ye QH, Wang L, Fan J. HBsAg-negative Hepatocellular Carcinoma: Clinical Characteristics, Outcome and Risk Factors for Early and Late Intrahepatic Recurrence after Resection. Cancer 2013; 19:126-135 (SCI, IF:5.2)<br />
4.	Li T, Fan J, Qin LX, Zhou J, Sun HC, Qiu SJ, Ye QH, Wang L, Tang ZY. Risk factors, prognosis and management of early and late intrahepatic recurrence after resection of primary clear cell carcinoma of the liver. Ann Surg Oncol 2011; 18:1955-1963 (SCI, IF: 4.1)<br />
5.	Li T, Zeng ZC, Wang L, Qiu SJ, Zhou JW, Zhi XT, Yu HH, Tang ZY.Radiation enhances long-term metastasis potential of residual hepatocellular carcinoma in nude mice through TMPRSS4-induced epithelial-mesenchymal transition. Cancer Gene Ther 2011;18:617-626 (SCI, IF:3.0)<br />
6.	Li T, Sun BZ, Zhi XT, Qu SF, Dong ZR, Hu SY. An unusual cause of unilateral urinary tract obstruction. Surgery 2012;15:764-65.( SCI, IF:3.4)&nbsp;<br />
7.	Li T, Dong ZR, Guo ZY, Wang CH, Tang ZY, Qu SF, Chen ZT, Li XW, Zhi XT. Aspirin enhances IFN-a-induced growth inhibition and apoptosis of hepatocellular carcinoma via JAK1/STAT1 pathway. Cancer Gene Ther 2013; 20, 366-374 (SCI, IF:3.0)<br />
8.	Li T, Hu SY, Chen ZT, Chen ZQ, Zhi XT. Colorectal cavernous hemangioma in Klippel-Trenaunay syndrome: A rare cause of abdominal pain and hematochezia. Surgery 2013; &nbsp;DOI: 10.1016/j.surg.2013.08.006.( Corresponding author, SCI, IF:3.4)<br />
9.	Li T, Hu SY, Zhi XT. Segmental portal hypertension caused by pancreatic mucinous cystadenoma. J Gastroen Hepatol 2014, 29(10):1751.( SCI, IF:3.6)<br />
10.	Li T, Qin LX, Zhou J, Sun HC, Qiu SJ, Ye QH, Wang L, Tang ZY, Fan J. Staging, prognostic factors and adjuvant therapy of intrahepatic cholangiocarcinoma after curative resection. Liver Int &nbsp;2014;34:953-960.��Corresponding author, SCI, IF:4.4��<br />
11.	 Li T, Wang L, Chen RX, Ye QH, Sun HC, Qin LX, Tang ZY. Hepatocellular carcinoma with situs inversus totalis and polysplenia syndrome. Liver Int, 2007;27:1431-1432��SCI, IF:4.4��<br />
12.	Li T, Yang XY, Tang ZY. Intrahepatic and intraperitoneal splenosis mimicking HCC with abdominal wall metastasis in a patient with hepatitis C cirrhotic liver. Surgery 2014; Epub ahead of print.( Corresponding author, SCI, IF:3.4)<br />
13.	Li T, Qin LX, Ji Y, Sun HC, Ye QH, Wang L, Pan Q, Fan J, Tang ZY. Atypical hepatic focal nodular hyperplasia presenting as acute abdomen and misdiagnosed as hepatocellular carcinoma. Hepatol Res, 2007;37:1110-1116.��SCI, IF:2.1��<br />
14.	Li T, Wang L, Yu HH, Sun HC, Qin LX, Ye QH, Fan J, Tang ZY. Hepatic Angiomyolipoma: A retrospective study of 25 cases. Surg Today 2008,38:529-535��SCI, IF:1.0��<br />
15.	Li T, Qin LX, Gong X, Zhou J, Sun HC, Wang L, Qiu SJ, Ye QH, Fan J. Clinical Characteristics, Outcome and Risk Factors for Early and Late Intrahepatic Recurrence of Female Patients after Curative Resection of Hepatocellular Carcinoma. Surgery 2014;156:651-660 ( Corresponding author, SCI, IF:3.4)<br />
16.	Li T, Dong ZR, Guo ZY, Wang CH, Zhi XT, Zhou JW, Li DK, Chen ZT, Chen ZQ, Hu SY. Mannose-mediated inhibitory effects of PA-MSHA on invasion and metastasis of hepatocellular carcinoma via EGFR/Akt/I��B��/NF-��B pathway. Liver Int 2014. doi: 10.1111/liv.12644. [Epub ahead of print] ��SCI, IF:4.4��<br />
17.	Li T, Luo LX, Zhang C, Wang GP, Chen ZT, Jiang ZC, Wang XY, Zhi XT. End-to-End Invaginated Pancreaticojejunostomy with Three Overlapping U-Sutures--A Safe and Simple Method of Pancreaticoenteric Anastomosis. J Invest Surg. 2014 Dec 1. [Epub ahead of print] ��SCI, IF:1.2��<br />
18.	Ding B, Li T, Zhang J, Zhao LX, Zhai GX. Advances in Liver-Directed Gene Therapy for Hepatocellular Carcinoma by Non-Viral Delivery Systems. Curr Gene Therapy, 2012, 12, 92-102��SCI, IF:5.3��.<br />
19.	Yu HH*, Li T*, Wu ZQ, Liu L, Ju MJ, Tang ZY. Intrahepatic splenosis mimicking hepatoma. BMJ Case Reports 2009; doi:10.1136/bcr.06.2008.0230 corr1��co-first author��<br />
20.	Bi DS, Li T,Wang KX, Huan SY. The Parasympathetic Supply to the Distal Colon��One Marker for Precisely Locating the Posterior Dissection Plane in the Operation of TME. J Surg Oncol 2010;05:1-3 (SCI, IF:2.6��<br />
21.	Chen ZQ, Wang L, Li T, Hu SY, Zhi XT. Supraclavicular Lateral Collar Incision Versus Conventional Approach for Thyroidectomy: Supplement for Minimally Invasive Techniques with Extended Indications. J Laparoendosc Adv Surg Tech AA &nbsp;2011;21:45-50 (SCI, IF:1.0��<br />
22.	����,�����ᣬ�����������磬��ǿƣ������ã���������־ǿ������ͤ. ��˹ƥ�ִٽ�������-a�յ��ΰ������������о�. �л��ε������־��2014, 20:670-674 (����A)<br />
23.	����, ����ͤ, �ܽ��, ������, ����, �ں���, ��³, ������. С������˾ƥ��Эͬ������-�����Ƹ�ϸ���ΰ�����ת�Ƶ�ʵ���о�. �л��ε������־��2012, 18: 50-53. (����A)<br />
24.	����, ����, ����Ԫ, ������, ����ͤ. ��������ͷ״�������ٴ��������. �л������־, 2010, 48:488-490. (����A)<br />
25.	����, �����࣬�ܽ�ΰ�����Σ�����Ԫ������ͤ.��¶����������ŧ�˾��Ƽ��յ���ϸ���ΰ������Ļ����о�.�л��ε������־,2011,17:838-841. (����A)<br />
26.	����, ���ѳ�, ��³, ��˫��, ����ͤ, �ܽ��, �ں���, ������. ��Ĥ˿���ᵰ��ø4�յ����ƺ��ϸ���ΰ�ת�ƵĻ����о�.�л��ε������־, 2011,17:1009-1013 (����A)<br />
27.	����,����,������,�ܼ�,��ݴ�,Ҷ�ຣ,��˫��,��³,������.͸��ϸ���͸ΰ��������ڼ����ڸ����Ķ����ط���.�л��ε������־��2012, 18: 578-581. (����A)<br />
28.	����, ����, ������, �ܼ�, ��ݴ�, ��³, Ҷ�ຣ, ��˫��, ������. ͸��ϸ���͸ΰ����ٴ������ص㼰Ԥ�����. �л���ͨ�����־, 2012; 27: 96-99. (����A)<br />
29.	����, ����, ������, �ܼ�, ��ݴ�, ��³, Ҷ�ຣ, ��˫��, ������. ����Ѫ��ƽ����֬�����ٴ��������. �л������־, 2009, 47:1536-1539 (����A)<br />
30.	����, Ѧ��, �ܽ��, ��³, �߶�÷, �¾�, ������. ��ŧ�˾��Ƽ����Ƹ�ϸ���ΰ�����ת�Ƶ�ʵ���о�. �л��ε������־, 2009, 15:848-850. (����A)&nbsp;<br />
31.	���̺�, ��˼��, ����ͤ, ������, ������, ������, ��С��, ��־��, ������, ����. ��Ĥ˿���ᵰ��ø4�Ը�ϸ���ΰ���ֳ��Ϯ���õ�ʵ���о�. �л��ε������־, 2013; 19:220-224.(ͨѶ���ߣ�����A)<br />
32.	����, ����, ������, �ܼ�, ����Ԫ, ����ͤ, ������. ͸��ϸ���͸ΰ����󸴷������Ƽ�Ԥ�����. �л��ε������־, 2013;19:742-745.(����A)<br />
33.	����, ������, ����, �̽���, ��³, ��ݴ�, Ҷ�ຣ, ����, ������. ����ԭ�����఩�����������. �л������־, 2007, 45:1335-1337. (����A)<br />
34.	����,���ѳ�,��³,������,�ں���,��˫��,������. �����ΰ�ϸ��MMP-2�����Եı仯�������Ϯ��Ӱ���ʵ���о�. �л�ʵ�������־, 2007, 24:14-16. (����B)<br />
35.	����,������,�ֹ���,��Ԫ,��ݴ�,Ҷ�ຣ,��³,����,����,������.��������Խ���������Է����ѳ�Ѫһ��. �л���ͨ�����־, 2007, 22:764-765. (����A)<br />
36.	����,������. ��������Խ���������о���չ. �л��ε������־, 2007, 13: 643-645. (����A)<br />
37.	����,������,���ѳ�.���ƺ�д氩ϸ����Ϯ�Ա仯��������о���չ. �л���������ѧ��־, 2007, 16: 238-240. (����A)<br />
38.	���Σ�����ͤ. �����Իƾ��������๦��˥�߻��Ƶ��о���չ.�й��ִ���ͨ��ƽ�չ 2004, 7:136-138.<br />
39.	������,������,����ͤ,���̺�,������,��С��,��־��,������,��־ǿ,����.��¶����������ŧ�˾��Ƽ��Ըΰ�ϸ�����ڵ����û����о�. �л��ε������־, 2013; 19:452-455.(ͨѶ���ߣ�����A)<br />
40.	���ջ�,���ٷ�,�Ŵ��,����ͤ,������,����,���ƺ,�Ͻ���,��־ǿ,����. ���൨������ͷ״���������ճҺ�����������ļ������. �л��ε������־��2014 (ͨѶ���ߣ�����A)<br />
41.	��ǿ�,Ф��,����,����ͤ,������,����,�Ͻ���,���ƺ,��־ǿ,����. ��¶����������ŧ�˾��Ƽ����Ƹΰ���Ƥ����ת���������о�. �л�ʵ�������־��2014 (ͨѶ���ߣ�����A)<br />
42.	��ǿ�, Ф��, ����, ����ͤ, ������, ����, �Ͻ���, ���ƺ, ��־ǿ, ����. ��¶����������ŧ�˾��Ƽ�ͨ��Akt/I��B��/NF-��Bͨ·���Ƹΰ���Ƥ����ת��. �л��ε������־, 2014.(ͨѶ���ߣ�����A)<br />
43.	������, ����, ��˼��, ����ϣ, �Ŵ�, ������, ������, ��С��, ����ͤ. С������˾ƥ��Эͬ������-���յ��ΰ�BEL-7402ϸ��������ʵ���о�.�л��ε������־, 2012; 18: 292-295. (����A)<br />
44.	�ܽ��, ����, ������, �����, ������, �ӕF��, ������. ��ŧ�˾��Ƽ����˸ΰ�MHCC97Lϸ����ֳ����Ϯ������Ӱ��. �л��ε������־, 2010; 16: 643-645. (����A)<br />
45.	�Ŵ�, ����, ������, ����ϣ, ������, ��־��, ������, ����ͤ. ���ڵ��ܽ�ʯ�ϲ����ڵ��ܰ����ٴ������ص㼰Ԥ�����. �л��ε������־, 2012; 18: 893-896. (����A)<br />
46.	��˼��,����,�Ŵ��,����Ԫ,����ͤ. ����ʵ�Լ���ͷ״���������������. �й��ִ���ͨ��ƽ�չ, 2010,10:418-420.<br />
47.	��˼��,����,����,������,����ͤ.ԭ���Ը�Ĥ�����������������. �й��ִ���ͨ��ƽ�չ, 2011,14:116-118<br />
48.	������,����,����ͤ.�������࿹��ҩ���������õ��о���չ. �й��ִ���ͨ��ƽ�չ,2010,13:562-566<br />
49.	�� ��,�� ��,¬ ��,����Զ.��ɫӫ�⵰�ױ�ǵ��˸ΰ�ϸ����Balb/c��ǰ�������Ĺ۲�. �й��۶��Ǻ���־, 2008, 8:82-83.<br />
</span></span> 
				</p>
				<div>
					<br />
				</div>
<br />
				<p>
					<br />
				</p>
				<p class=\"MsoNormal\">
					<span><span>������ɹ���</span> </span> 
				</p>
				<div>
					<span><span> 
					<p class=\"MsoNormal\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;background:white;\">
						1.&nbsp; D8S298λ���Ӻ���ȱʧ�ڸ�ϸ������������Ԥ���еļ�ֵ<span>. </span>�ൺ�пƼ��������Ƚ�<span>. 2013</span> 
					</p>
					<p class=\"MsoNormal\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;background:white;\">
						2.&nbsp; �������������Ρ�Ԥ�����Ŵ�ѧ�����Ŵ�ѧ�����о�<span>.</span>ɽ��ʡ��Ȼ��ѧ���Ƚ�<span>.2014&nbsp;</span> 
					</p>
<br />
</span> </span> 
				</div>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','361','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1759','64','ɽ����ѧ��³ҽԺʵʩɽ��ʡ�������굥�׸�ǻ�����г���','','','admin','2015-03-20 08:29:20','','&nbsp;&nbsp;&nbsp; ���գ���Ժ�����F5C�����ɹ�ʵʩ���굥�׸�ǻ��������Ҷ�г��������������Ƽ����¹���վ����Ϊɽ��ʡ�������굥�׸�ǻ�����г�����<br />
&nbsp;&nbsp;&nbsp; ��������巢�ָ�ռλ1������Ժ�����壺��������¡������������ѹʹ������ʹ������δ���������쳣���飬��������ߵʹ���ƶ����������ԣ��������ɡ���������ʾ����Ҷ�����ʻ����ſ飬����ǿ��CTʾ��������Ҷռλ����ϻ��߲�ʷ���������������ȣ���ǰ��Ͽ���Ϊ��Ѫ�������������߾��������F5C�����������ۣ�������ǰ׼���󣬾����о��굥�׸�ǻ��������Ҷ�г����������ɺ���Ԫ���ڡ����󸱽��ڡ��Ÿ�����ҽʦʵʩ��ȡ���ºỡ���пڣ���Լ3cm�������п����㣬���뵥�׸�ǻ����е��̽�飺��ǻ���޸�ˮ�����ڡ���ǻδ���쳣��ڣ����Ҵ�С����������δ�����Խ���Ը�Ӳ�����֣���������Ҷ�ɼ�1öѪ������Լ8��6cm���Ҹα���δ�������쳣�������Գ�������ϸ�Բ�ʹ����������״�ʹ������״�ʹ����������ʹ��������״�ʹ����Լ0.5cm�Գ�������ϸ������漰�����Լ1cm����֯��ʹ���и�պ����ڵ�һ�������Ŵ���ϣ�����������Ҷ�г�����������Ƹδ��棬���걾����ȡ����ڣ��������пڽ���ȡ�������г�ѪԼ50ml��������ʾ�������ࣩ����״Ѫ�����������һ�컼�߽���ʳ���´�����ָ����á�<br />
&nbsp;&nbsp;&nbsp; ���굥�׸�ǻ�������ǽ��������ڹ����⿪չ��һ�ָ�ǻ�����������ڶ�׸�ǻ�������Ļ����Ͻ�һ������������Ҫ�������߾�ͨ���������ļ���������Ҫ�����õĸ�ǻ�����ɣ�Ŀǰ���ڵ��׸�ǻ�����г�������Կ�չ���٣�ɽ��ʡĿǰ���޴��౨������Ժ��������ŷḻ�ĸ����г����飬�����ѿ�չ�˾��굥�׸�ǻ�������г�����׸�ǻ�����г������ŷḻ�ĸ�ǻ�������������˴γɹ�ʵʩ��ɽ��ʡ�������굥�׸�ǻ��������Ҷ�г������������ĳɹ���Ϊ��Ժ���׸�ǻ�������Ľ�һ����չ�����˱���ľ��顣���׸�ǻ����������С����ǻ��¶ʱ��̣����߻ָ��죬ʹ��С������֢���٣�סԺʱ��̣�������Ϊ���߽��ܡ�
<p align=\"center\">
	<img alt=\"\" src=\"/attached/image/20150413/20150413083305_62822.png\" />
</p>','1','0','0','0','0','','0','144','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1756','64','ȺӢ���ͣ�ҽ������---�ڶ�ʮһ��ȫ����ǻ���������ֻ�Բ���ٰ�','','','admin','2014-11-17 10:41:15','','<p align=\"left\" style=\"text-align:left;text-indent:30pt;\">
	<br />
</p>
<p style=\"background:white;text-indent:30pt;\">
	<span>2014</span>��<span>11</span>��<span>14-16</span>�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����<span>3D</span>��ǻ������ר����<span>Video</span>������Ƶ��ʾר���ȶ������᳡�����뵽��<span>41</span>λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������<span>48</span>��ѧ��������<span>17</span>����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��<span>600</span>�����������λ����֡�
</p>
<p style=\"background:white;text-indent:30pt;\">
	�������ֻῪĻʽ�ڼ�¼��Ƭ��ǰ���е���³ǻ����ơ��������Ļ���ع���ɽ����ѧ��³ҽԺ�����ǻ�������ķ�չ���̣������ר�Һʹ����������Ժǻ����Ʒ�չ<span>22</span>����ȡ�õļ���������������һ֧������Ӳ��ǻ��ҽʦ������ĸ�ǻ���������¡��ƹ��ƽ̨����Ļʽ����Ժ����Ƹ����Ρ����븹����������Ź������������֡������ϯ���л�ҽѧ�����ѧ�ֻḹǻ���ھ����ѧ�鸱�鳤�������ھ�ѧ�ֻᾭ��Ȼǻ���ھ�����ѧ�鸱�鳤���й�ҽʦЭ�����ҽʦ�᳣ֻί��΢�����רҵίԱ�ḱ����ίԱ���й�ҽʦЭ���ھ�ҽʦ�᳣ֻί����������ǻ��ίԱ������ίԱ����Ժ�����ѧ����ͷ�˺���Ԫ�����¿�Ļ�ʣ�������ȫ�����ص����ר�ұ�ʾ��ֿ��ӭ�������ܽ��˹��ڸ�ǻ���ķ�չ��״����ǻ����Ƶ�δ��ǰ������չ����<span></span> 
</p>
<p style=\"background:white;text-indent:30pt;\">
	��Ļʽ���л�ҽѧ�����ѧ�ֻḹǻ���ھ����ѧ���鳤���Ϻ���ͨ��ѧ�������ҽԺ��֣�񻪽��ڣ��й�ҽʦЭ�����ҽʦ�ֻ�΢�����רҵίԱ������ίԱ���л�ҽѧ�����ѧ�ֻ��ֱ���������ѧ�鸱�鳤���Ĵ���ѧ����ҽԺ�����ܹ���ڣ��л�ҽѧ�����ѧ�ֻ����븹�����ѧ���鳤���Ϻ���ͨ��ѧ��������ҽԺ���ƽ��۽��ڣ��й�ҽʦЭ�����ҽʦ�ֻ��޺͸������רҵίԱ������ίԱ����ɽ��ѧ����������ҽԺ�ĳ�˫���ڵȳ�ϯ��Ļʽ����������᳡ѧ���������Ը�ǻ���Ұ�᳦�����᳦ϵĤ�г�����ר�������ȫ��Ĳ��͡�֮�󣬸��ֻ᳡��ר���θ�����ε���������Ƹ����򼲲�΢�����Ƶ����½�չ�����˾��ʵ�ѧ��������<span></span> 
</p>
<p style=\"background:white;text-indent:30pt;\">
	���λ��鹲������<span>17</span>����ǻ������ֱ����<span>4</span>��������ͬʱ��᳡�����źţ�������ͨ���帹ǻ���źź�<span>3D</span>��ǻ���źţ���������������Ժҽʦ������ɡ�����Ԫ���ڡ�����ͤ���ڡ����������ڡ����½��ڡ����ı����ڡ����춫���ڡ��Ź��������ڡ����ڸ����ڡ�������ڡ����󸱽��ڵȷֱ�����������ʾ����״θ�г�����Ƣ�г������������г��������׸�ǻ�������г�����θ��������<span>D2</span>�ܰͽ���ɨ��ֱ�������������п����޲��������ɹ����޲�������״�ٲ����г�������������λҽʦ��տ�ļ��յõ������ר�ҡ������һ�º�������������Ժ����Ƹ���ר�Ƹ�ǻ��������ȫ������ͳ��졣
</p>
<p style=\"background:white;text-indent:6pt;\">
	<span>&nbsp;<span class=\"apple-converted-space\">&nbsp;&nbsp;&nbsp;</span></span>�˴λ����Ǹ�ǻ������������һ��ѧ��ʢ�ᣬ���鲻��ȫ�����������Ƽ�����΢���������������ʽ�������롢���ܺ�չʾ��<span>3D</span>ǻ�����������ռ����淶�����ǻ���������ٽ�ѧ�Ʒ�չ�𵽻������ã�ͬʱҲ����չʾ����Ժ��ǻ����Ƶķ�չ�ɹ�����һ���������Ժ����ǻ�������ȫ����Ӱ������ѧ����λ��
</p>
<p style=\"background:white;text-indent:6pt;\">
	<br />
</p>
<p style=\"background:white;text-indent:6pt;\">
	<img alt=\"\" src=\"/php/../attached/image/20141123/20141123161922_97698.jpg\" /><img alt=\"\" src=\"/php/../attached/image/20141123/20141123161923_20140.jpg\" /><img alt=\"\" src=\"/php/../attached/image/20141123/20141123161924_52333.jpg\" /><img alt=\"\" src=\"/php/../attached/image/20141123/20141123161926_37166.jpg\" /><img alt=\"\" src=\"/php/../attached/image/20141123/20141123161927_93965.jpg\" /><img alt=\"\" src=\"/php/../attached/image/20141123/20141123161929_79491.jpg\" /> 
</p>
<p>
	<br />
</p>
<span> 
<p style=\"background:white;text-indent:6pt;\">
	<br />
</p>
</span> 
<p align=\"left\" style=\"text-align:left;text-indent:30pt;\">
	<br />
</p>
<span> </span>','1','0','0','0','0','','0','410','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1757','66','�ھ����ѧ��ϰ�⼰�ο���','','','admin','2014-11-21 14:07:32','','<p>
	1.ʲô��΢����ƣ���ǻ����������Щ�ŵ㣿�о�����3�ָ�ǻ����е��<br />
�𰸣���1��΢����ƣ���ָ�ھ�����׼ȷȥ�������ͬʱ��2������ʹ�����������ֲ����˺�ȫ��Ӧ������С�̶��������ͼ�����ϵ��2������<br />
��2���ŵ㣺1.������Ұ�������зŴ�Ч�������Թ۲쵽�����������׹۲쵽�Ĳ�λ��3������2.����С����ʹ�ᣬ�������ܱյ��衢��ǻ�ڽ��У��ڻ�������С������ָ��죨3������<br />
3.�����˲���סԺʱ�䣬�Ӷ������˲��˸���(2��)��<br />
4.�����п�С������Ч���ã�2�����������˵��ڸ�Ⱦ���п��޵ȸ��ڼ��������Ŀ����ԣ�3����<br />
��3����е��1.��ǻ����ʾϵͳ����ǻ����΢������ͷ����ģת��������ʾ�������Դ��¼����ȣ�2.CO2����ϵͳ����������������ȣ�3.�����豸����е������������ϴ�������������룬����װ�õȡ���3����
</p>
<p>
	2.��ǻ���Ļ�����������Щ�� <br />
�𰸣�<br />
(1)����������1.�պϷ���������Ե�����λ������пڣ���Լ10mm��Ƥ�¡���1�������п������ý�ǯ�������𸹱ڣ��������뾭�пڴ�ֱ������ǻб�д��븹ǻ����ͷ������Ĥ�͸�Ĥʱ������ͻ�ƸУ�2���������̽�����ɲ��ó���ʵ�顢��ѹ�������������֤ʵ�������ѽ��븹ǻ��1������������������ˮ��ע���������������룬�ȳ������з�Һ��ѪҺ���ٿ�ע�����ڵ�������ˮ���绺���½�����֤ʵ������ͷλ�ڸ�ǻ��2��������ǻ��ע�������̼���壬��Ԥ��ѹ��15mmHg��2�������������ʶԳ�����¡��ߵ�����ʱ������������ɡ���2����2.���ŷ���������Ե�����λ������пڣ���Լ10mm�����Ĥ��1��������ֱ���´򿪸�Ĥ��������ָ������ȷ��ǻ����������ճ���������׹����ӳ����ܽ���������1����<br />
(2)��ǻ����ֹѪ����Ҫ���õ���ֹѪ���е�����˫���������֡��������ѼС��������ȷ�ʽ��2����<br />
(3)��ǻ������֯�������п����е����и�������Է��롢�����������и�ȣ�2����<br />
(4)��ǻ���·�ϣ����ߴ�᷽����ǻ�ڴ�ἰǻ���ᣨ1������<br />
(5)�걾ȡ����С�ڻ��Դ����׹��ʵı걾����ֱ�Ӵ��׹�����ȡ������걾���󣬿ɽ������������ȡ���걾��1�������г�����֯�޴��������Բ����ߣ��ɽ�����е����֯���������֯��С�������ȡ���������һС�п�ȡ����֯����1�������������걾���������ʹ�ñ걾����������������Ĳ�ɢ����1����
</p>
<p>
	3.��ǻ����ֱ����������Ӧ֤��һ�����֢��<br />
�𰸣�1.��Ӧ֤����1����ֱ�������ԡ����Լ�������2����<br />
��2����ֱ������������������2����<br />
��3��&nbsp;��ֱ���Ĺ����Լ��������������Ա��ء�ֱ���Ѵ��ȡ���4����<br />
2.����֢����1���޷����������븹ǻ�������ߣ�2������<br />
��2�����������鸹ǻ��ת�ƣ�2������<br />
��3����������2������<br />
��4�����Գ����裨2������<br />
��5����Խ���֢������ֱ������6CM��������Χ��֯���㷺�������Ұ�᳦������������ܡ���4����
</p>
<p>
	4.��ǻ�������г����Ļ������輰ע�����<br />
�𰸣�1.�����������裺 ��1����λ�����ͷ�߽ŵ�λ���Ҳ���̧�ߣ�1������������һ10mm�����пڣ�����������15mmHg�����븹ǻ��̽�鸹ǻ��1������ǻ��ֱ���½�ͻ�´���10mm�׹���Ϊ�������ף������������ǯ����е��1��������������������Ե����Ҹǰ������ˮƽ�ֱ���5mm�пڣ������׹ܣ�1������<br />
��2����ץǯ�����ҵײ���ͷ��ǣ������һץǯ�����Ҿ������·�ǣ�����ǵ��ҹ����������뵨�ܹܳɴ�ֱ�Ƕȣ�����¶Calot���ǣ�2������<br />
��3�����÷���ǯ��繳���ʺ����ǣ���ͨ��ǰ���ǽ��ʳ����ҹ��뵨�Ҷ������ֱ����Ѽмб����˲��ü������ϣ�3������<br />
��4��˳�л����н����Ҵӵ��Ҵ��ϲ����������ڴ��״�ȡ����1������<br />
��5�����Ҵ�������Ѫ��Ӧ����ֹѪ��1������<br />
��6��������ˮ��ϴ��ǻ���۲��з���Ѫ�͵�֭������1������<br />
2.ע�������1�����ڴ���Ӧ���ᣬ��¶�����ã���2����<br />
��2�����е���Դ���ᵼ�²��ױ�����ĵ������ˣ����ѵĵ���Ӧ���Ապ��Է�����ʯ���䣬����ĵ���ʯӦ�������һأ���2����<br />
��3���ſ����е�����Ӱָ������������Ҫ�ĵ������Ρ������������ѻ������ܹܽ�ʯ��̽��ʱ����2����<br />
��4�����������������ѡ����ʲ��������쳣���ر��Ǽ��Ե�����ʱ��Ӧ��ʱ��ת��������2����
</p>
<p>
	5.���ݳ��������п��޿ɷ�Ϊ���ࣿ�����п����޲����ĳ�������֢��<br />
�𰸣�1.���ࣺС�п���: &lt; 3cm��2������<br />
���п���: 3��5cm��2������ <br />
���п���: 5��10cm��2������ <br />
�޴��п���: ��10cm�������ݻ��븹ǻ�ݻ��ı�ֵ&gt;15%(�������޻�������Ϊ����)��4������<br />
2.����֢��1.������2������2.��Ⱦ(2��)��3.������ʹ��2������4.Ѫ���ף�2������5.������2����
</p>
<p>
	6.��ǻ������ȡ�����ľ��Խ���֢����Խ���֢��<br />
�𰸣����Խ���֢��1.�Բ������ܲ�����1������<br />
2.��ȱʧ��1������<br />
3.��ʵ���쳣���������������������1������<br />
4.����������1������<br />
5.��Ѫ�ϰ��Լ�����1������<br />
6.�����ܲ�ȫ��1������<br />
7.���л�Ը�Ⱦ��ŧ����Ŵ��������ȵ�˫�������������Լ�����3������<br />
��Խ���֢��1.����ŧ�򡢻�Ը�Ⱦ���Ŵ��������ȵ�˫�������������Լ�����2������<br />
2.ȫ������������п��ܳ��������ߣ�������Σ�2������<br />
3.�����᳦��������֢��ʷ��1������<br />
4.��Ĥ����ά������Ӳ������ˮ�������������׵ȣ�3������<br />
5.�����������ܿ��ܷ������ߣ������򲡡���Ѫѹ�ȣ�3����
</p>
<p>
	7���Բ�����ǻ���ӹ��޳�������Ӧ֢�ͽ���֢��<br />
�𰸣���Ӧ֤��1.���Գ�Ѫ����ʹ�������ӹ��������µ�ѹ��֢״��2����;<br />
2.��������Ĳ���֢��2������<br />
3.ϰ����������2������<br />
4.��ǻ���飬�ӹ�����12�����䣨2������<br />
5.������ͻ��������Ѹ�٣�2������<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����֢��1.�������ӹ��������ӹ��ټ�����2.5������<br />
2.ճĤ�¼���ͻ�빬ǻ50%���ϣ�2.5������<br />
3.����ֱ������10cm��2.5������<br />
4.����Ҫ�����ӹ��г�����2.5������
</p>
<p>
	8.������Լ��ĸ�ǻ������֪ʶ���ٴ����飬������ǻ�����δ���ķ�չ��������ƣ�������������ʽ��ҽʦ��ѵ�ȷ��棩(20��)<br />
�ο��𰸣��Դӣ�������ĩ��ǻ���������ʷ�Խ����������ǻ�������Ի��ߴ���С�������졢������ʹ�����������Ƽ�������������Խ��Խ��Ҫ�����ã�����ȡ����ͳ��������֮�ơ����긹ǻ�������ķ�չ�������죬������ʽ������������Ӧ֤�����ؿ��䷢չǰ��������ܡ�<br />
������Ƹ�ǻ�������ķ�չ�����߽�������ǻ���ķŴ����ƶ����ݸ�ϵͳ�Ľ��ʽ����µ���ʶ���⽫ʹ��ǻ��������ø�Ϊ΢������ϸ��׼ȷ�����ָ�ǻ���������������縹���޸�ǻ���޲����������ٺ�ǰ�����г��ȣ���ո¶ͷ�ǣ������ַ�չ���Ƶĳ�����֡�<br />
�Ը�ǻ������Ϊ�����΢�������ǽ����Ƶķ�չ�������ſ�ѧ�����Ľ�����Խ��Խ����Ƚ��豸�Ͳ��Ͻ����ϵ���ǻ�������У��µ���ѵģʽҲ��Ӧ�˶�������ǻ����������ø��򵥡����ռ���������ʽҲ����ø��ӹ淶����ˣ�δ����ǻ�������ķ�չ���Ը���Ϊ��Ӧ���豸΢�ͻ������������򵥻����������ռ��������������淶�����ڹ���������ͬ�ʵĹ�ͬŬ����������Ƹ�ǻ�����������и������õ�Ӧ��ǰ����
</p>
<p>
	<br />
</p>','1','0','0','0','0','','0','176','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1758','66','Test and answer for foreign students','','','admin','2014-11-22 16:44:11','upload/1416674772.doc','<p class=\"p15\" style=\"margin-left:18.0000pt;text-indent:-18.0000pt;\">
	<br />
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1760','64','����Ԫ����ҿ�ѧ�������������Ƚ�','','','admin','2015-03-19 08:34:40','','<p style=\"color:#000000;text-align:left;background-color:#ffffff;text-indent:0px;\">
	<span style=\"background-color:#ffffff;\"><span style=\"line-height:1.5;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ǰ������Ժ��Ժ������Ԫ���ڡ�����Ƹ������Ź��������ں��й�������ҽԺ������Ͽ�ҽԺ��ͬ��ɵġ��ε��ȸ�ǻ������������ϵ��Ӧ�á���Ŀ�ٻ�2014����ҿ�ѧ�������������Ƚ���
</p>
<p>
	��������Ŀ�ڹ������ȳ��������΢����������������������ǻ�������Ը��г����ۣ������˸�ǻ�����г��ؼ��Լ�������;��չ�˸�ǻ������������·�о������������΢����������¶�����⣬�����˻��ڸ�ǻ���ĸ����⵨�ܽ�ʯ����������΢�����Ƽ�������ϵ;�Ӷ��������Լ�����ࡢ������ȫ���ָ�����Ϊ������ɫ�ĸ�ǻ���ε�������������ϵ���ı��˸ε��ȼ���������ƵĲ��Ժ�ģʽ���ݼ������ڶࡣ
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p align=\"center\">
	<img alt=\"\" src=\"/attached/image/20150413/20150413084408_86533.png\" />
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ɽ����ѧ��³ҽԺ���ߺ���Ԫ������1992����ʼ�����ڸ�ǻ���������ٴ�������Ӧ���о����Ը����⵨�ܽ�ʯ�ø�ǻ���������ƽ����˶��ַ���̽���Ͷ���ʵ���о����磺��ǻ�ڲ���������ʯת���ʵ���о�����ǻ�������Ѽ�ת���ʵ���о�����ǻ�������絶�п����ܹܶ�������Ӱ��Ķ���ʵ���о�����ǻ�����ܹ��п�ȡʯT�ι����������ɼ�����֢���Σ���ǻ�����ܹ��п�ȡʯ���ܹ�һ�ڷ��������ǻ���¾����ҹܵ��ܹܽ�ʯȡʯ�����������ܹ�������ǻ�����ܹ��п�ȡʯ�����������ܽ���������������Ե���Ӧ֤�ͽ���֤�������˸����⵨�ܽ�ʯ��ǻ�����Ƽ�����ϵ���ڹ���������ڿ���������19ƪ������SCI��¼2ƪ����ʮ����ȫ��ѧ�������Ͻ���ר��ѧ��������������ʾ���Ը�ǻ�������ڸ����⵨�ܽ�ʯ�����е�Ӧ�����˽ϴ���ƶ����á� <br />
����Ϊ��һ�����ָ�ǻ���������ŵ㣬����Ԫ���ڶԸ�ǻ�����������˸������¡�2008�꿪���Ե������е��豸����е������ȫ���������������ϵľ��굥�׸�ǻ�������г���������ִ����Ե����޾��������������˾��굥�׸�ǻ��������·װ�ã���Ӧ���ٴ�����þ޴�ɹ����÷������ʵ�ã����ã����ƹ㣬�ڹ����ܵ�ͬ�м��������Ϊ�˽��͸ü��������Ѷȣ�������Ӧ����Ӧ֤�������Եؽ����굥�׸�ǻ������������ʽ��ǻ�����ϣ���չ�˹�������ˮƽ������ʽ���굥�׸�ǻ��������������ڹ���������ڿ���������9ƪ����SCI��¼3ƪ���μӹ��ʻ��齻��2�Σ��ٰ�ȫ��ѧϰ�༰���ֻ�23�Σ�Ӧ���ڹ��ݡ����ࡢ���֡����ϡ��½�����������ȫ��ѧ�������Ͻ���������ʾ��ר�⽲��20��Σ������ڡ���ǻ�������־���ϵġ����굥�׸�ǻ�������г��������ķֱ���ѡ2010��Ⱥ�2013����й���ƪ���Ӱ�����ѧ�����ġ��Ծ��굥�׸�ǻ���������ҹ��ķ�չ���ƹ������˽ϴ��ס�
</p>
</span> 
<p>
	&nbsp;
</p>
</span>','1','0','0','0','0','','0','152','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1761','64','ɽ����ѧ��³ҽԺ�����ʵʩ��ǻ�������г���һ��','','','admin','2015-04-01 08:46:44','','<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���գ�ɽ����ѧ��³ҽԺ�����F5C�����ɹ�ʵʩһ����ǻ�������г�����<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������ϸ�������8�꣬����3����Ժ������ǿ��CTʾ����Ҷ���ܶ������ռλ�����Դ󣩣����Ҷ෢��ʯ�鵨���ף�����������ָ��������������Χ�ϴ󣬸�ǻ����������Ҫ��ϸߣ������F5C���������������ۣ�������ǰ׼���󣬾����и�ǻ�������г��������г������ں���Ԫ���ڡ�����������ָ���£��ɽ��󸱽��ڡ��Ÿ�����ҽʦ�����׷�����ҽʦ�����ҽʦʵʩ������̽�飺��ǻ�޸�ˮ�����Ҵ�С�ɣ�����δ�����Խ���Ը�Ӳ�����֣��������δ�������׿飬�����г����ң�Ȼ���Գ�������ϸ�Բ�ʹ�������״�ʹ������ʵ�һ���ţ����ʳ���ζ���ͨ������II��III��IV�εķ�֧����hem-o-lock�С������ռн���ֱ�бպ���ϣ����ʳ��ž�����֧�������Կ����ռмбգ��ɼ����ȱѪ�߳��֣�ע�Ᵽ���Ҹζ������ž�����֧�����ܹܣ�Ȼ������ڶ����ţ���¶����ξ������������״�ʹ����������ʹ�����θ�ʹ�������ȱѪ�����Լ1cm�Ե絶����Ԥ���ߣ���Ԥ���߶��Է����������桢�������֯����Ĺܵ���hem-o-lock�мбպ��жϣ�ʹ���и�պ����ڵ�һ�������Ŵ���ϣ��������г�����������Ƹδ��棬�ӳ������пڣ����걾����ȡ��������˳���������ʿ��걾���ɼ����Ҷ෢��ɫ��ʯ�����θ��ڵ������ţ��ڿɼ���ö��ɫ��ʯ��������ʾ�������ࣩ��Ӳ����������ϸ���������ܰ�ϸ��Ϊ���������ڵ������Ű鵨�ܽ�ʯ�������ߵ�һ���´�������ڻָ���ʳ��<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ͳ��������ʽ�������ڳ�Լ25-30cm���������ڳ�����ǻ��¶ʱ�䳤�����˴󣬻ָ�����סԺʱ�䳤������֢��Խ϶࣬��Ƚϴ�ͳ��������ʽ����ǻ����������пڽ�Լ6cm���ӳ������п�ȡ���걾�ã�����������С����ǻ��¶ʱ��̣���Ĥ�����Ժã����߻ָ��졢ʹ��С��סԺʱ��̡�����֢���١���Ȼ����ǻ����������Ҫ��ϸߣ�����Ҫ�������߾�ͨ���������ļ���������Ҫ�������������õĸ�ǻ�����ɣ�Ŀǰ��ǻ��������Ҷ�г�����β����г���Կ�չ�㷺����ǻ���Ҹβ����г�Ҳ�õ���һ���ƹ㣬���ǰ���г������ѶȽϴ󣬿�չ��Խ��٣����ž���Ĳ��ϻ��ۣ����������Ĳ�����ߣ�����������ʽ���Ϊҽ�������������������ʽ��
</p>
<p align=\"center\">
	<img alt=\"\" src=\"/attached/image/20150413/20150413084920_37152.png\" /> 
</p>
<p>
	&nbsp;
</p>','1','0','0','0','0','','0','158','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1762','64','2015��³θ�������̳��׿Խ���θ��Ѳ��Բ���ٰ�','','','admin','2015-04-27 00:43:51','','<p class=\"MsoNormal\" style=\"text-indent:22.0pt;\">
	<span> </span> 
</p>
<p class=\"MsoNormal\" style=\"text-indent:22.0pt;\">
	<span>
	<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:22.0pt;\">
		2015��4��25��26�գ�ɽ����ѧ��³ҽԺ�롶��ǻ�������־�������ˡ�2015��³θ�������̳��׿Խ���θ��Ѳ���� �ڼ������Ͻ����ݳɹ��ٰ졣���λ������뵽24λ����֪��θ�����ר�ҵ������ѧ�������������ڼ仹��������̨��ǻ��θ��������ʾ������ȫ���Ĺ�200���������ר�Ҵ�����������֡�
	</p>
	<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:22.0pt;\">
		����������ɽ��ʡҽʦЭ�ḱ�᳤��ɽ��ʡҽʦЭ����Ʒֻ�����ίԱ��ɽ����ѧ��³ҽԺ���¸�Ժ���¿�Ļ�ʣ�������ɽ��ʡ������չ����״�������ר�����Ի�ӭ���ʺ򡣿�Ļʽ�������ѧ�����滷�ڴӶ���ǶȲ�����θ�������ķ�����չ�����ơ��ɱ�������ҽԺ���ٵ½��ڡ��Ϻ���ͨ��ѧ�������ҽԺ�������ڡ��й�ҽѧ��ѧԺ����ҽԺ�����ν��ڡ��Ͼ�������ҽԺ��������ڡ����ִ�ѧ��������ҽԺ��ѧ�����ڡ��������ҽԺ�������ڡ���������ҽԺҶӱ�����ڡ��й������ž���ҽԺ���ݽ��ڡ�ɽ��ʡ����������ҽԺ½���׽��ڡ��ൺ��ѧҽѧԺ����ҽԺ���ұ����ڡ�ɽ����ѧҽѧԺ�ּ̻Խ��ڵ�14������֪��ר�Ҽ���³ҽԺ���������ڡ���������ڵ�10����Ժר�Ҿ�θ���ķ�����չ�����Ƶ����½�չ�����˾��ʵ�ѧ���㱨��������ʾ���ڣ���ɽ��ʡ��ͨ���θ��רҵ������ίԱ��ɽ����ѧ��³ҽԺ����Ƹ����Ρ�θ��������κ�����������ʾ��ǻ��θ����������ɽ����ѧ��³ҽԺθ����Ƹ��������ı�������ʾ��ǻ�����᳦�г��������ʵ�������ʾ��������ר�ҵ�һ�º�����
	</p>
	<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:22.0pt;\">
		<span style=\"line-height:1.5;\">���λ����˳���ٿ���������θ��������չ�������о������Ƶ����½�չ�����˾��ʵ�ѧ�����֣�ͬʱҲ����չʾ����Ժ�ڸ�ǻ��θ����Ʒ���ķ�չ�ɹ�����һ���������Ժθ�������ȫ����Ӱ������ѧ����λ��</span>
	</p>
</span>
</p>
<div style=\"text-align:left;\">
	<span style=\"line-height:1.5;\"></span><img src=\"/attached/image/20150506/20150506005939_95105.jpg\" alt=\"\" /><img src=\"/attached/image/20150506/20150506010132_92512.jpg\" alt=\"\" /><img src=\"/attached/image/20150506/20150506010150_85531.jpg\" alt=\"\" /><img src=\"/attached/image/20150506/20150506010203_40448.jpg\" alt=\"\" /><img src=\"/attached/image/20150506/20150506010214_80617.jpg\" alt=\"\" /><img src=\"/attached/image/20150506/20150506010224_69911.jpg\" alt=\"\" /> 
</div>
<p>
	<br />
</p>
<p class=\"MsoNormal\" style=\"text-indent:22.0pt;\">
	<br />
</p>','1','0','0','0','0','','0','149','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1763','64','��������������������������5.11ɽ����ѧ��³ҽԺ��������մ�������','','','admin','2015-05-09 02:12:51','','<p style=\"margin-left:0cm;background:white;\">
	&nbsp; &nbsp;&nbsp;5��<span>11</span>����������������֯ȷ����������η����ա�����������������֯ȷ����ʮ�����Լ���֮һ��Ŀǰ�й������س�����Ⱥ��<span>2</span>�ڣ������߳���<span>9000</span>��Ŀǰ�й�������Ⱥ����<span>9000</span>�򣬡������ӡ������Ǵ���Խ��Խ��ġ�ˮͰ���������ǡ�������������ĸ�Ѫѹ����Ѫ֬��֬���Ρ����Ĳ��ȼ��������غͷ�������������<span style=\"background-color:#FFFFFF;\">����Ѫѹ��</span>��Ѫ�ܲ��ȼ���Ҳ�����������ҳ����ữ���ơ����غͷ�������Ĵ�л�ۺ�֢�������򲡡���Ѫѹ�������ѳ��ۺ�����˯�ߺ�����ͣ�ȼ����������ӣ��ѳ�Ϊ���������������̵�����ԭ�򡣹���ÿ��Ϊ���������µļ�����ҽҩ�ѵ�Ͷ��������԰�������Ҽơ�<span></span>
</p>
<p style=\"margin-left:0cm;background:white;\">
	&nbsp;&nbsp;&nbsp; ����<span>5</span>��<span>11</span>�գ�ɽ����ѧ��³ҽԺ���ڻ���¥������������մ���������������������ߵ��������޷�����<span style=\"color:#000000;\">��</span><span style=\"color:#000000;\">BMI</span><span style=\"color:#000000;\">��</span><span style=\"color:#000000;\">27.5</span><span style=\"color:#000000;\">��</span>��������������˻��й��ڷ��ֵĴ�л�ۺ�����������Ѫѹ����Ѫ�ǡ���Ѫ֬�����򲡡�֬���Ρ������ѳ��ۺ�֢�����Ĳ����ؽ��׵ȡ�������ӭ��<span>5</span>��<span>11</span>��������η�����ǰ��ɽ����ѧ��³ҽԺ��ѯ�˽⡣<span></span>
</p>
<p style=\"margin-left:0cm;background:white;\">
	��������Ԫ������ҽʦ��ɽ����ѧ��³ҽԺ��Ժ�������ҹ�������¸�ǻ��רҵ��ר��֮һ���ڸ�ǻ���������л�ҽѧ����Ʒֻ�ίԱ�渹ǻ���ھ����ѧ�鸱�鳤���л�ҽѧ����Ʒֻ�ίԱ�渹ǻ���ھ����ѧ�鸱�鳤���й�ҽʦЭ�����ҽʦ�᳣ֻί��΢�����רҵίԱ�ḱ����ίԱ���й�ҽʦЭ����Ʒ᳣ֻί���ھ�ҽʦ�᳣ֻ�����£��й�ҽʦЭ�����ҽʦ�ֻ�΢�����רҵίԱ�ḱ����ίԱ��ɽ��ʡҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤��ɽ��ʡҽʦЭ�����ҽʦ�ֻ�����ίԱ��ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�����ίԱ��ɽ��ʡҽѧ����Ʒֻḱ����ίԱ��ɽ��ʡҽѧ������Ƹ�����ίԱ��ɽ��ʡ����Э����������ίԱ�ḱ����ίԱ��<span></span>
</p>
<p style=\"margin-left:0cm;background:white;\">
	&nbsp;&nbsp;&nbsp; ����������ҽʦ�����ڣ�����ɽ����ѧ��³ҽԺ�ڷ��ڿ����Σ�ҽѧѧʿ����ʿ����ʦ��ɽ����ѧ�ڷ������л�о���������ɽ����ѧ�ܳ�ѧ�ƴ�ͷ�ˣ�ɽ��ʡ����ϵͳ�ܳ�ѧ�ƴ�ͷ�ˣ������й�ҽʦЭ���ڷ���ѧ�ֻḱ�ܸ��³����л�ҽѧ������ѧ�᳣ֻ��ίԱ��ɽ��ʡҽѧ���ڷ���ѧ�ֻ�����ίԱ��ɽ��ʡҽѧ������ѧ�ֻḱ����ίԱ�����л�������־����������ҽѧ�ڷ���ѧ�ֲᡷ����־��ί����<span>Journal of Cellular and Molecular Medicine</span>������־���ר�ҡ���ҽ<span>30</span>���꣬�ٴ�����ḻ��רҵ֪ʶ��㣬�ó����θ����ڷ��ڴ�лϵͳ�������ر��������򲡼��䲢��֢�ķ�������������ڹ������ȿ�չ����������ϸ����ֲ�������򲡹�����<img src=\"/attached/image/20150509/20150509023149_64819.jpeg\" alt=\"\" /><span><img src=\"/attached/image/20150509/20150509023212_66955.jpeg\" alt=\"\" /></span>
</p>','1','0','0','0','0','','0','139','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1764','64','��Ժ����5.11������η���������','','','admin','2015-05-15 03:30:09','','<p style=\"text-indent:21.0pt;\">
	5��<span>11</span>����������������֯ȷ���ġ�������η����ա������죬ɽ����ѧ��³ҽԺ����Ƽ�������������Ŷ������ڷ��ڿ�ר���ڻ���¥ǰ��չ�����������������������ѯ���Ϊǰ����ѯ�ķ���֢���ߴ��ڡ��������š�<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	�����￪ʼ���а�Сʱ��ҽԺ����¥ǰ�Ѿ����ַǷ���һ��;ۼ������ǰ������Ļ��ߡ�����Ԫ���ڡ��������ڡ����¹������ڡ�������ڡ������¸����ڡ�����׳����ҽʦ�����ľ�����ҽʦ�������ۻ�ʿ���Ȳμ����������ڵ���Ļ�ֳ���ҽ��ר����ǰ����ѯ�ķ���֢���߿�չһ��һ��������ָ������п�ѧ���ص�ͬʱ����ͨ����Ѳ�Ѫ�ǡ�Ѫѹ�����ſ����������Ͽ�չ�������̡�<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	����������������֯ȷ����ʮ�����Լ���֮һ��Ŀǰ�й������س�����Ⱥ��<span>2</span>�ڣ������߳���<span>9000</span>�����غͷ������������򲡡���Ѫѹ����Ѫ�ܲ��ȼ���Ҳ�����������ҳ����ữ���ơ����ͳ��������ʾ���й�ÿ��Ϊ���������µļ���Ͷ�뾭�Ѹߴ�����������ҡ�<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	&nbsp;�����ֲ���Ӱ�����ۣ����ᵼ��һϵ����ؼ���������Ӱ�����彡������ɽ����ѧ��³ҽԺ�ڷ��ڿ����γ������ڽ��ܣ��������صĽ�������ܶ࣬�����򲡡���Ѫѹ����Ѫ֬�����Ĳ�������˯����ͣ�ۺ����ȣ�������������ܲ��ɷֵĹ�ϵ��<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	������һ����ѡ����ڡ���ѧ�Ĺ��̡�Ҫ�������أ���Ҫ���ڱ�������������⣬��ǿ�˶��������ı侲���ٶ������ʽ���������ضȷ����������ŵ��ˣ�����ҽ����ָ�������ҩ�����ƣ�ҩ������Ч��Ƿ���߻�������򲡡���Ѫѹ�ȼ����߿�ѡ���������ơ�<span></span> 
</p>
<p style=\"text-indent:10.5pt;\">
	��ɽ����ѧ��³ҽԺ��Ժ����ȫ��֪����ǻ�����ר�Һ���Ԫ���ڽ��ܣ���ҽ�Ƽ�����������Ľ��죬��л�����Ѿ���Ϊ�����ضȷ��ֺ����򲡵���Ҫѡ��д��ָ�ϣ���л�����������򲡱���ѡΪ<span>2013</span>��ʮ��ҽѧ���¡�λ����λ��������Ҫͨ����ǻ����������ɣ�ͨ�����Լ����������ص�<span>60%-70%</span>�������������ڻ����������򲡣������ʳ���<span>60%</span>����Ч��<span>90%</span>���ϣ���Ժ�ǹ������翪չ���غ�����������ҽԺ֮һ��Ŀǰ�Ѿ�����������ơ��ڷ��ڿơ�����ơ�<span>ICU</span>�ȿ��Ҷ�λҽ����ɵļ����Ŷӣ��ɹ����������ضȷ��ֻ��ߺ����򲡻��ߣ������˷ḻ�ľ��顣<img src=\"http://www.gims.com.cn/attached/image/20150515/20150515040843_85871.jpg\" alt=\"\" /><img src=\"/attached/image/20150515/20150515040023_46180.jpg\" alt=\"\" /><img src=\"/attached/image/20150515/20150515040054_44483.jpg\" alt=\"\" /><img src=\"/attached/image/20150515/20150515040113_45455.jpg\" alt=\"\" /><img src=\"http://www.gims.com.cn/attached/image/20150515/20150515040041_28643.jpg\" alt=\"\" /><img src=\"http://www.gims.com.cn/attached/image/20150515/20150515040002_27473.jpg\" alt=\"\" /> 
</p>','1','0','0','0','0','','0','137','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1765','64','��ɽ��ʡ������������ƹ淶�������ֻᡱ�ڼ��ٿ�','','','admin','2015-07-21 02:36:24','','<p style=\"text-align:justify;color:#535353;font-family:Verdana, Geneva, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<p style=\"margin-left:0cm;text-align:justify;background:white;\">
		&nbsp; &nbsp; 7��12�գ���ɽ��ʡ������������ƹ淶�������ֻᡱ�ڼ��Ͼٰ졣
	</p>
	<p style=\"text-align:justify;background:white;\">
		&nbsp;
&nbsp; �����ڼ���������ҽԺ�����Ͼ�����ҽԺ���ĳ�������ҽԺ��Ϋ��������ҽԺ����̨ع諶�ҽԺ���Ͳ�������ҽԺ���ൺ��ѧ����ҽԺ�ȶ��ҽԺ����Ժ��30��λ����ƺ��ڷ��ڿ�ר��������ֻᣬ��ͬ̽����ʡ������������ƵĹ淶���ơ��������µ����в�ѧͳ�ƣ��ҹ����򲡺ͷ��ֻ�������Ŀǰ�ֱ�λ�ӹ��ʵ�һ�͵ڶ���ɽ��ʡ���ҹ��ķ��ֺ����򲡴�ʡ�����غ�����������ĿǰΨһ�����������򲡡���Ч���ز�ά�����ز����������Ʒ�����Ŀǰ������������Э�ᡢ�����������ˡ��л�ҽѧ������ѧ�ᡢ�й�ҽʦЭ�����ҽʦ�ֻ���ֺ�����ҽʦרҵίԱ������γɶ���ָ�Ϻ͹�ʶָ�����򲡺ͷ���֢��������ơ��ҹ��ļ��غ�������Ʒ�չ����Ŀǰ�д���������Ӧ֤���ղ��ϸ������г���Χ��θ�����ؽ����淶��������úͻ���ָ������λ�����ÿ��������ķ�������������������ͽ��ܶȵ͵����⡣���ڴˣ���Ժ���غ���������Ŷ��ټ����ٰ�˴����ֻᡣ
	</p>
	<p style=\"text-align:justify;background:white;\">
		&nbsp;
&nbsp; &nbsp;���ֻ��ϣ���Ժ���غ���������Ŷ������ר����ϸ�������ҹ�����Ժ�����ƹ淶������Ԫ���ںͳ������ڷֱ����ˡ��й����ֺ������������ָ�ϣ�2014�����͡����غ�����������������2�����򲡻��ߵ�ϣ������ѧ�����棬����׳����ҽʦ��������������ר�ҽ����ˡ����غ�����������ʽѡ�񡱺͡����غ���������������ǰɸ�鼰������������Լ���������ҽԺ�����ٴ����ڽ����˼���������ҽԺ�ļ��غ�������Ʒ�չ�ͳɼ������ϣ����ר�ҽ������ۣ����ϸ���ѭָ�Ͽ�չ���غ�������������ǿ����Ƶȶ�ѧ��Э����������չ���߽���������ɽ��ʡ���غ��������Э���顢���ڿ�չ�淶�������ֻ�������ɹ�ʶ�����ƶ�����һ���������
	</p>
	<p style=\"text-align:justify;background:white;\">
		&nbsp;
&nbsp;��Ժ���������������������ص㷢չרҵ֮һ����2006��12�¿�չ���ҹ�������ǻ����״θ�г�����Ŀǰ�ѽ������������ơ��ڷ��ڿơ�����Ƶ�ѧ�����ڵĶ�ѧ�ơ���������������Ŷӡ����ڼ��غ�������Ƶ��ٴ�Ӧ���ƹ㷽�洦��ɽ��ʡ���ȵ�λ������ٴ��ͻ����о������ҹ�������ˮƽ��
	</p>
</p>
<p style=\"text-align:center;color:#535353;font-family:Verdana, Geneva, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<img src=\"/attached/image/20150721/20150721024446_98041.jpg\" alt=\"\" /> 
</p>
<br />
<p>
	<br />
</p>','1','0','0','0','0','','0','103','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1766','64','ɽ����ѧ��³ҽԺ����Ƴɹ�ʵʩ�޴�Ĥ�������г��������8���޸���','','','admin','2015-07-21 02:45:51','','<p style=\"text-align:justify;color:#535353;font-family:Verdana, Geneva, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	&nbsp; &nbsp; ��ǰ����Ժ�����F5D�����ɹ�ʵʩһ���޴�Ĥ��֬�������г�����������СԼ30cm��25cm��10cm�������ش�8������������8���£����������Բ��ʣ�����CTδ������������<br />
&nbsp; &nbsp; ����Ů�ԣ�47�꣬�򡰸�ʹ�����ࡱ��Ժ�����壺������¡�����ϸ�����һ�޴������СԼ25��15cm���߽���壬���ͣ�ѹʹ���ԡ�����CT��ʾ�Ҳูǻ�ھ޴��������Χ������Ѫ�ܹ�ϵ���С�����������ָ�����������ϴ�����Χ��������Ѫ�ܹ�ϵ���У��������ռ��󡣻�����Ժ�������ǰ׼�����ų����ɺ�����������ҽʦ����塢��������ҽʦ���콨��ҽʦ��ʵʩ����������̽���������λ���Ҳูǻ����СԼ30��25��10cm����ʵ�ԣ����϶�ѹ�Ҹ���Ե�������Ҹ�ѹ����࣬�Ҹ�ή����ͬʱ���������᳦����᳦������ࡣ��һ��̽������λ�ڸ�Ĥ���н�������Ĥ���ұڽϺ񣬱���ɼ��ḻ�Ĺ�ѪѪ�ܡ�������������ѹ��������λ�ã��������ϵ���С���������ǻ������ʮ��ָ����ϵ���С�������������˳�������������г������г�ѪԼ200ml���г��������ش�8�����ʱ��Ϊ2Сʱ35�֣�������������������ƽ�ȡ�������ʾ����Ĥ��ճҺ��֬�������������黯��S100�������ԣ�Ki67������7-8%�����������1��������ʳ������ָ����ã��������9���Ժ��<br />
&nbsp; &nbsp; ��Ĥ��֬������( retroperitoneal liposarcoma, RPLS) ��һ�ֺ����Ķ���������������ռȫ������������1%���£���40-60 ����Ⱥ�ж෢�����Զ���Ů�ԡ� RPLS�����޵���֢״������ͨ���Ը����޴���������⣬���и��͡���ʹ���ű㡢�������ѡ���֫���͵�֢״�����ȡ����������ݵ���������֢״��ż�����������ѡ���Ѫ���¼���֢���ݿˡ���Ĥ��֬������������������Ϊ���������ڸ�Ĥ��֬��������λ�ͨ�����ֽ����������������г�����������λ��֬��������ȣ���Ĥ��֬���������������г����ֲ������ʸߣ�����Զ��ת�ƣ�Ԥ����RPLS����Ԥ���������г������������й�ϵ���ò����������8���������޸�����<br />
	<div style=\"text-align:center;\">
		<span style=\"line-height:1.5;\"></span><img src=\"/attached/image/20150721/20150721024724_71229.jpg\" alt=\"\" />
	</div>
</p>','1','0','0','0','0','','0','87','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1767','64','mini-lap������ǻ�������г��������ߣ�����Ԫ���ڣ�','','','admin','2015-07-21 03:22:03','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI4OTA0MDk3Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; minilap�������׵����г��� ��� �ε���� Minilap��еֱ����3mm���£����ڳ�ϸ��е������״��ͷ��ֱ�Ӿ�Ƥ���룬ȡ����Ƥ���п�ϸС�����Ϻ�̺����Է��֣���ˣ���������LESS������������������̺۵��ŵ㡣��LESS��������һ�����ʵļ������ƣ���Minilap��Ҳ����һ��ȫ�µĸ������1997�꣬�����θ�ǻ�������������㸹ǻ���������ĸ�������˹�����΢�����ѧ�硣������ʹ��ר�������׹ܺ���е���в�����Ѱ���С���������˺���֯�ƻ���������������Ч������Ȼ�ü������д���С������Ч���õ��ŵ㣬����������е����ϸС��ץ�����������Բ���𻵣���˸ü���û�еõ��ܺõ��ƹ��������Minilap��е������Ϊ��������е�����ϵķ�չ�����������ŵ㣺��1��ͨ����Ƥ���̣�����ʹ���׹��룻��2��ֱ��2.3mm������С���������̺ۣ���3��Ӳ�ȸߣ��������𣻣�4�����ڴ�ץ����ǿ�����黼�߾�ʹ��MinilapץǯЭ��ǣ�����Һ���¶����������óɹ��������ü����ǰ�ȫ�����еġ�ʹ��Minilap��󽵵��˵��׸�ǻ������ͬ��ֱ����Ұ�����Ĳ����Ѷȣ�������е�ķ���Ҳ��������е�ڸ�ǻ������໥���š���ײ��ͬʱ���������԰̺��಻����LESS�������������ƣ�ʹLESS�����Ĺ㷺�ƹ�Ӧ�ó�Ϊ���ܡ�
</p>','1','0','0','0','0','','0','106','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1795','64','ɽ��ʡҽʦЭ����ֻ�ίԱ��ѡ���Ƽ���','','','admin','2015-09-07 12:56:05','','<p><br/></p><p style=\"line-height: 2em; margin-bottom: 10px;\">���������������غ�ѡ���Ƽ���</p><p><br/></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp;<strong><span style=\"font-family: ����; font-size: 24px;\">ɽ��ʡ</span></strong><strong><span style=\"font-family: ����; font-size: 24px;\">ҽʦЭ��θ�����ҽʦ�ֻ�ίԱ��ѡ���Ƽ���</span></strong></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻ�ίԱ��ѡ���Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151027/1445918675842863.doc\">ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻ�ίԱ��ѡ���Ƽ���.doc</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><span style=\"font-size: 24px;\"><strong><span style=\"font-family: ����;\">ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С������ھ�ί</span></strong><strong><span style=\"font-family: ����;\">Ա��ίԱ��ѡ���Ƽ���</span></strong></span></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С������ھ�ίԱ��ίԱ��ѡ���Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151027/1445918693773582.doc\">ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С������ھ�ίԱ��ίԱ��ѡ���Ƽ���.doc</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><span style=\"font-size: 24px;\"><strong><span style=\"font-family: ����;\">ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ��ίԱ��ѡ���Ƽ���</span></strong></span></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ��ίԱ��ѡ���Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151027/1445918708505322.doc\">ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ��ίԱ��ѡ���Ƽ���.doc</a></p><p><br/></p><h1><span style=\"background-color: rgb(255, 153, 0);\"></span></h1>','1','1','0','0','0','','0','367','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1768','66','�й����ֺ������������ָ��2014�����ߣ�����Ԫ���ڣ�','','','admin','2015-07-29 03:55:45','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDk4MTg0MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 7��12�գ���ɽ��ʡ������������ƹ淶�������ֻᡱ�ڼ��Ͼٰ졣�����ڼ���������ҽԺ�����Ͼ�����ҽԺ���ĳ�������ҽԺ��Ϋ��������ҽԺ����̨ع諶�ҽԺ���Ͳ�������ҽԺ���ൺ��ѧ����ҽԺ�ȶ��ҽԺ����Ժ��30��λ����ƺ��ڷ��ڿ�ר��������ֻᣬ��ͬ̽����ʡ������������ƵĹ淶���ơ��������µ����в�ѧͳ�ƣ��ҹ����򲡺ͷ��ֻ�������Ŀǰ�ֱ�λ�ӹ��ʵ�һ�͵ڶ���ɽ��ʡ���ҹ��ķ��ֺ����򲡴�ʡ�����غ�����������ĿǰΨһ�����������򲡡���Ч���ز�ά�����ز����������Ʒ�����Ŀǰ������������Э�ᡢ�����������ˡ��л�ҽѧ������ѧ�ᡢ�й�ҽʦЭ�����ҽʦ�ֻ���ֺ�����ҽʦרҵίԱ������γɶ���ָ�Ϻ͹�ʶָ�����򲡺ͷ���֢��������ơ��ҹ��ļ��غ�������Ʒ�չ����Ŀǰ�д���������Ӧ֤���ղ��ϸ������г���Χ��θ�����ؽ����淶��������úͻ���ָ������λ�����ÿ��������ķ�������������������ͽ��ܶȵ͵����⡣���ڴˣ���Ժ���غ���������Ŷ��ټ����ٰ�˴����ֻᡣ<span style=\"line-height:1.5;\"></span>
</p>
<p>
	<br />
</p>','1','0','0','1','0','upload/1438142115.jpg','0','64','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1769','66','���غ�����������������2�����򲡻��ߵ�ϣ�������ߣ��������ڣ�','','','admin','2015-07-29 04:02:13','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDk3NzU4MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 7��12�գ���ɽ��ʡ������������ƹ淶�������ֻᡱ�ڼ��Ͼٰ졣�����ڼ���������ҽԺ�����Ͼ�����ҽԺ���ĳ�������ҽԺ��Ϋ��������ҽԺ����̨ع諶�ҽԺ���Ͳ�������ҽԺ���ൺ��ѧ����ҽԺ�ȶ��ҽԺ����Ժ��30��λ����ƺ��ڷ��ڿ�ר��������ֻᣬ��ͬ̽����ʡ������������ƵĹ淶���ơ��������µ����в�ѧͳ�ƣ��ҹ����򲡺ͷ��ֻ�������Ŀǰ�ֱ�λ�ӹ��ʵ�һ�͵ڶ���ɽ��ʡ���ҹ��ķ��ֺ����򲡴�ʡ�����غ�����������ĿǰΨһ�����������򲡡���Ч���ز�ά�����ز����������Ʒ�����Ŀǰ������������Э�ᡢ�����������ˡ��л�ҽѧ������ѧ�ᡢ�й�ҽʦЭ�����ҽʦ�ֻ���ֺ�����ҽʦרҵίԱ������γɶ���ָ�Ϻ͹�ʶָ�����򲡺ͷ���֢��������ơ��ҹ��ļ��غ�������Ʒ�չ����Ŀǰ�д���������Ӧ֤���ղ��ϸ������г���Χ��θ�����ؽ����淶��������úͻ���ָ������λ�����ÿ��������ķ�������������������ͽ��ܶȵ͵����⡣���ڴˣ���Ժ���غ���������Ŷ��ټ����ٰ�˴����ֻᡣ
</p>','1','0','0','1','0','upload/1438142747.jpg','0','64','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1770','66','�𲽼���������������ƣ����ߣ����ٴ����ڣ�','','','admin','2015-07-29 04:06:29','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NjA1OTM4MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 7��12�գ���ɽ��ʡ������������ƹ淶�������ֻᡱ�ڼ��Ͼٰ졣�����ڼ���������ҽԺ�����Ͼ�����ҽԺ���ĳ�������ҽԺ��Ϋ��������ҽԺ����̨ع諶�ҽԺ���Ͳ�������ҽԺ���ൺ��ѧ����ҽԺ�ȶ��ҽԺ����Ժ��30��λ����ƺ��ڷ��ڿ�ר��������ֻᣬ��ͬ̽����ʡ������������ƵĹ淶���ơ��������µ����в�ѧͳ�ƣ��ҹ����򲡺ͷ��ֻ�������Ŀǰ�ֱ�λ�ӹ��ʵ�һ�͵ڶ���ɽ��ʡ���ҹ��ķ��ֺ����򲡴�ʡ�����غ�����������ĿǰΨһ�����������򲡡���Ч���ز�ά�����ز����������Ʒ�����Ŀǰ������������Э�ᡢ�����������ˡ��л�ҽѧ������ѧ�ᡢ�й�ҽʦЭ�����ҽʦ�ֻ���ֺ�����ҽʦרҵίԱ������γɶ���ָ�Ϻ͹�ʶָ�����򲡺ͷ���֢��������ơ��ҹ��ļ��غ�������Ʒ�չ����Ŀǰ�д���������Ӧ֤���ղ��ϸ������г���Χ��θ�����ؽ����淶��������úͻ���ָ������λ�����ÿ��������ķ�������������������ͽ��ܶȵ͵����⡣���ڴˣ���Ժ���غ���������Ŷ��ټ����ٰ�˴����ֻᡣ
</p>','1','0','0','1','0','upload/1438143013.jpg','0','80','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1771','66','���ش�л����������ǰɸ��������������ߣ�������ڣ�','','','admin','2015-07-29 04:12:35','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NjA2OTc0OA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 7��12�գ���ɽ��ʡ������������ƹ淶�������ֻᡱ�ڼ��Ͼٰ졣�����ڼ���������ҽԺ�����Ͼ�����ҽԺ���ĳ�������ҽԺ��Ϋ��������ҽԺ����̨ع諶�ҽԺ���Ͳ�������ҽԺ���ൺ��ѧ����ҽԺ�ȶ��ҽԺ����Ժ��30��λ����ƺ��ڷ��ڿ�ר��������ֻᣬ��ͬ̽����ʡ������������ƵĹ淶���ơ��������µ����в�ѧͳ�ƣ��ҹ����򲡺ͷ��ֻ�������Ŀǰ�ֱ�λ�ӹ��ʵ�һ�͵ڶ���ɽ��ʡ���ҹ��ķ��ֺ����򲡴�ʡ�����غ�����������ĿǰΨһ�����������򲡡���Ч���ز�ά�����ز����������Ʒ�����Ŀǰ������������Э�ᡢ�����������ˡ��л�ҽѧ������ѧ�ᡢ�й�ҽʦЭ�����ҽʦ�ֻ���ֺ�����ҽʦרҵίԱ������γɶ���ָ�Ϻ͹�ʶָ�����򲡺ͷ���֢��������ơ��ҹ��ļ��غ�������Ʒ�չ����Ŀǰ�д���������Ӧ֤���ղ��ϸ������г���Χ��θ�����ؽ����淶��������úͻ���ָ������λ�����ÿ��������ķ�������������������ͽ��ܶȵ͵����⡣���ڴˣ���Ժ���غ���������Ŷ��ټ����ٰ�˴����ֻᡣ
</p>','1','0','0','1','0','upload/1438143335.jpg','0','66','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1772','66','2015��³θ�������̳��׿Խ���θ��Ѳ�������ұ����ڣ�','','','admin','2015-07-28 04:23:22','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDI5NzIyNA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 2015��4��25��26�գ�ɽ����ѧ��³ҽԺ�롶��ǻ�������־�������ˡ�2015��³θ�������̳��׿Խ���θ��Ѳ���� �ڼ������Ͻ����ݳɹ��ٰ졣���λ������뵽24λ����֪��θ�����ר�ҵ������ѧ�������������ڼ仹��������̨��ǻ��θ��������ʾ������ȫ���Ĺ�200���������ר�Ҵ�����������֡��ɱ�������ҽԺ���ٵ½��ڡ��Ϻ���ͨ��ѧ�������ҽԺ�������ڡ��й�ҽѧ��ѧԺ����ҽԺ�����ν��ڡ��Ͼ�������ҽԺ��������ڡ����ִ�ѧ��������ҽԺ��ѧ�����ڡ��������ҽԺ�������ڡ���������ҽԺҶӱ�����ڡ��й������ž���ҽԺ���ݽ��ڡ�ɽ��ʡ����������ҽԺ½���׽��ڡ��ൺ��ѧҽѧԺ����ҽԺ���ұ����ڡ�ɽ����ѧҽѧԺ�ּ̻Խ��ڵ�14������֪��ר�Ҽ���³ҽԺ���������ڡ���������ڵ�10����Ժר�Ҿ�θ���ķ�����չ�����Ƶ����½�չ�����˾��ʵ�ѧ���㱨��������ʾ���ڣ���ɽ��ʡ��ͨ���θ��רҵ������ίԱ��ɽ����ѧ��³ҽԺ����Ƹ����Ρ�θ��������κ�����������ʾ��ǻ��θ����������ɽ����ѧ��³ҽԺθ����Ƹ��������ı�������ʾ��ǻ�����᳦�г��������ʵ�������ʾ��������ר�ҵ�һ�º�����
</p>','1','0','0','0','0','','0','38','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1773','66','θ������ǰ���ڣ����������������ڣ�','','','admin','2015-07-28 04:39:01','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDE3NDk4NA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 2015��4��25��26�գ�ɽ����ѧ��³ҽԺ�롶��ǻ�������־�������ˡ�2015��³θ�������̳��׿Խ���θ��Ѳ���� �ڼ������Ͻ����ݳɹ��ٰ졣���λ������뵽24λ����֪��θ�����ר�ҵ������ѧ�������������ڼ仹��������̨��ǻ��θ��������ʾ������ȫ���Ĺ�200���������ר�Ҵ�����������֡��ɱ�������ҽԺ���ٵ½��ڡ��Ϻ���ͨ��ѧ�������ҽԺ�������ڡ��й�ҽѧ��ѧԺ����ҽԺ�����ν��ڡ��Ͼ�������ҽԺ��������ڡ����ִ�ѧ��������ҽԺ��ѧ�����ڡ��������ҽԺ�������ڡ���������ҽԺҶӱ�����ڡ��й������ž���ҽԺ���ݽ��ڡ�ɽ��ʡ����������ҽԺ½���׽��ڡ��ൺ��ѧҽѧԺ����ҽԺ���ұ����ڡ�ɽ����ѧҽѧԺ�ּ̻Խ��ڵ�14������֪��ר�Ҽ���³ҽԺ���������ڡ���������ڵ�10����Ժר�Ҿ�θ���ķ�����չ�����Ƶ����½�չ�����˾��ʵ�ѧ���㱨��������ʾ���ڣ���ɽ��ʡ��ͨ���θ��רҵ������ίԱ��ɽ����ѧ��³ҽԺ����Ƹ����Ρ�θ��������κ�����������ʾ��ǻ��θ����������ɽ����ѧ��³ҽԺθ����Ƹ��������ı�������ʾ��ǻ�����᳦�г��������ʵ�������ʾ��������ר�ҵ�һ�º�����
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1774','66','��ǻ��ֱ�������������񾭱�����������·���׽��ڣ�','','','admin','2015-07-28 04:40:48','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDE2MDE2MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 2015��4��25��26�գ�ɽ����ѧ��³ҽԺ�롶��ǻ�������־�������ˡ�2015��³θ�������̳��׿Խ���θ��Ѳ���� �ڼ������Ͻ����ݳɹ��ٰ졣���λ������뵽24λ����֪��θ�����ר�ҵ������ѧ�������������ڼ仹��������̨��ǻ��θ��������ʾ������ȫ���Ĺ�200���������ר�Ҵ�����������֡��ɱ�������ҽԺ���ٵ½��ڡ��Ϻ���ͨ��ѧ�������ҽԺ�������ڡ��й�ҽѧ��ѧԺ����ҽԺ�����ν��ڡ��Ͼ�������ҽԺ��������ڡ����ִ�ѧ��������ҽԺ��ѧ�����ڡ��������ҽԺ�������ڡ���������ҽԺҶӱ�����ڡ��й������ž���ҽԺ���ݽ��ڡ�ɽ��ʡ����������ҽԺ½���׽��ڡ��ൺ��ѧҽѧԺ����ҽԺ���ұ����ڡ�ɽ����ѧҽѧԺ�ּ̻Խ��ڵ�14������֪��ר�Ҽ���³ҽԺ���������ڡ���������ڵ�10����Ժר�Ҿ�θ���ķ�����չ�����Ƶ����½�չ�����˾��ʵ�ѧ���㱨��������ʾ���ڣ���ɽ��ʡ��ͨ���θ��רҵ������ίԱ��ɽ����ѧ��³ҽԺ����Ƹ����Ρ�θ��������κ�����������ʾ��ǻ��θ����������ɽ����ѧ��³ҽԺθ����Ƹ��������ı�������ʾ��ǻ�����᳦�г��������ʵ�������ʾ��������ר�ҵ�һ�º�����
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1775','64','ɽ����ѧ��³ҽԺ���조2015��³��ֱ�����������̳��','','','admin','2015-07-20 18:31:22','','<p>
	&nbsp; &nbsp; 7��17-19�գ�2015��³��ֱ�����������̳�ڼ��Ͼٰ졣
</p>
<p>
	&nbsp; &nbsp; ������ɽ����ѧ��³ҽԺ������ǻ�����־���༭�����졣ɽ����ѧ��³ҽԺ��Ժ����ɽ����ѧ���ѧϵ���κ���Ԫ���ڵ��δ����ϯ���¿�Ļ�ʣ�����Ƹ����Ρ���ֱ��������δ��½����Լ�����Ƹ����Ρ����븹����������Ź��������ڵ���ִ����ϯ�����������������ʡ����ͬ���μӣ��ͽ�ֱ����ƺ�����Ƶ�רҵ���¼������ٴ�Ӧ���½�չ���й㷺����Ľ�����̽�֡�
</p>
&nbsp; &nbsp; �����7��18�հ���ѧ���������ر����������ҽ�ƴ�ѧ�����ڶ�ҽԺ����ɽ���ڡ�������ѧ������ɽҽԺҦ��Զ���ڡ��׶�ҽ�ƴ�ѧ������������ҽԺ�����ս��ڡ�������ѧ������ɽҽԺΤ�ǽ��ڡ�����ҽ�ƴ�ѧ������һҽԺ���½��ڵ�20��λ���ڼ�ʡ������ר�ң��͸�ǻ����ֱ���������������ȵ��������ר�⽲������ۡ�������7��19�հ���������ʾ�������ս�����ʾ�˸�ǻ�����ɹ����޲�����TEP��ʽ�����Ź�����������ʾ�˸�ǻ�����ɹ����޲�����TAPP��ʽ�������½�����ʾ��ǻ��ֱ������λǰ�г�������λר�Ҿ�������Ҫ���ѵ㡢ע��������Լ��ľ����ĵ������ֳ���ר�Ҵ�����н�������λҽʦ��տ�ļ��յõ����ר�ҡ������һ�º�����<br />','1','0','0','0','0','','0','59','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1776','66','��ǻ��θ��������֮��ᣨ�ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ��衣�','','','admin','2015-08-10 18:36:16','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1MjIyMA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','37','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1777','66','��ȫ��ǻ��θ�����������������ؽ����ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ�º��','','','admin','2015-08-10 18:42:53','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1MjQyNA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','38','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1778','66','����θ����������ʳ�ܷ����ص���о����ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ��������','','','admin','2015-08-10 18:45:23','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1MjQ2MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','31','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1779','66','ֱ����������ȫ�᳦ϵĤ�г��Ŀ�չ��״���ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ����ΰ��','','','admin','2015-08-10 18:47:19','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1NDAxNg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','37','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1780','66','ֱ���Ѵ�������Ƶ��ٴ��о����ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ���죩','','','admin','2015-08-10 18:49:36','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1NTE3Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','35','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1781','66','���������޵����ƣ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ�½ܣ�','','','admin','2015-08-10 18:50:35','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwMTEyNA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','34','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1782','66','TAPP���������淶��������ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ�����գ�','','','admin','2015-08-10 18:51:48','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwNDc5Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1783','66','��ξ�����ǻ��θ���۵���ʽ���ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ�ųɣ�','','','admin','2015-08-10 18:53:11','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwNDgxNg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','31','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1784','66','��ǻ��Ҹ���ܰͽ���ɨ�ļ����ѵ���Բߣ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ�����','','','admin','2015-08-10 18:54:39','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwNDg1Mg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','27','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1785','66','��ǻ�����ɹ����޲��ľ��飨�ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ��ģ�','','','admin','2015-08-10 18:56:25','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkxMTA1Mg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','33','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1786','66','TAPP���������淶��������ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ��ģ�','','','admin','2015-08-10 18:57:29','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkxMTUxNg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','31','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1787','66','ǻ����״����������״��չ�����ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ������','','','admin','2015-08-10 18:58:38','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkxMzkzMg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','33','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1788','66','TEPһ�ּ��������뾶���ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ�Ź�����','','','admin','2015-08-10 18:59:20','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3MDIwMA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','38','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1789','66','θ����л��������2�����򲡣��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ����׳��','','','admin','2015-08-10 19:01:07','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3NDg0OA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','37','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1790','66','�������͸��ɹ��޵ĸ�ǻ����������ᣨ�ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ��������','','','admin','2015-08-10 19:02:12','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3OTE2MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','34','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1791','66','��λֱ��ǰ���϶��Ĥ��Ѫ�ܷ�֧�Ĺ�ϵ���ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬ����ǿ��','','','admin','2015-08-10 19:02:56','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3OTE2NA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1792','66','��ǻ���������������������غʹ�л���ѧԺ����Ѳ��������׳��','','','admin','2015-08-10 19:03:43','','<div style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTMzMzU2OA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</div>','1','0','0','0','0','','0','46','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1793','66','��ǻ����ʮ��ָ���г�����ͻϵĤ�г��������Ǻϵĸ��廯���ԣ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᣬĲһƽ��','','','admin','2015-08-12 16:33:35','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNjU1OTI1Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014��11��14-16�գ���ɽ����ѧ��³ҽԺ�͡���ǻ�������־���༭������ġ��ڶ�ʮһ��ȫ����ǻ��������ʾ���ֻᡱ��ɽ������˳���ٿ����������ֻ�����θ����ơ��ε���Ƣ��ơ����븹����ƺ��ڷ�����ơ���ǻ���¼�����3D��ǻ������ר����Video������Ƶ��ʾר���ȶ������᳡�����뵽��41λ����֪����ǻ�����ר�ҵ������ѧ�������������ڼ乲������48��ѧ��������17����ǻ��������ʾ������������ʾ������Ժҽʦ������ɡ�����ȫ����ȫʡ��600�����������λ����֡�
</p>','1','0','0','0','0','','0','45','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1794','64','���й����ؼ���л���ѧԺѲ��--����վ���ɹ��ٿ�','','','admin','2015-08-10 12:40:45','','<p style=\"text-indent:24.0pt;background:white;\">
	8��<span>9</span>�գ���ɽ����ѧ��³ҽԺ�͡��й����ؼ���л���ѧԺ���ٰ�ġ��й����ؼ���л���ѧԺѲ��<span>--</span>����վ���ڼ���˳���ٿ������������й�ҽ�ƴ�ѧ��������ҽԺ���ڶ���ҽ��ѧ��������ҽԺ�����ϴ�ѧ������һҽԺ��������̳ҽԺ������������ҽԺ��ҽԺ����Ժ��<span>15</span>λ���غ��������ר����ɵĽ�ʦ�ź�����ȫ�������ǻ���������<span>70</span>��λ������۱��λ��飬�͡����غ�������ơ��Ĺ��ʽ�չ�������淶������ѧ��Э���ȶ���������������̽�֡�<span></span>
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.1pt;background:white;\">
	<b>��ʦ�ź�Ӱ</b><img src=\"/attached/image/20150907/20150907124312_85822.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	���غ�����������ҹ���������ѧ�ƣ���Ŀǰ���ʡ����ڵ��о��ȵ㡣�������µ����в�ѧͳ�ƣ��ҹ����򲡺ͷ��ֻ�������Ŀǰ�ֱ�λ�ӹ��ʵ�һ�͵ڶ������غ�����������ĿǰΨһ�����������򲡡���Ч���ز�ά�����ز����������Ʒ�����Ŀǰ������������Э�ᡢ�����������ˡ��л�ҽѧ������ѧ�ᡢ�й�ҽʦЭ�����ҽʦ�ֻ���ֺ�����ҽʦרҵίԱ������γɶ���ָ�Ϻ͹�ʶָ�����򲡺ͷ���֢��������ơ������ϯ����Ԫ���ں�����ֽ��������¿�Ļ�ʣ������˹��ڼ��غ�������Ƶķ�չ��״�ͻ�����ͬʱ���ܵ���Ϊ�ƶ��й����غ�������������Ĺ淶�������򻯡����Ļ���רҵ���Լ���ѧ��Э�����й����ؼ���л���ѧԺ������Ժ�ٰ��˱���Ѳ�����<img src=\"/attached/image/20150907/20150907124231_61822.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.1pt;background:white;\">
	<b>����Ԫ���ڡ�����ֽ����¿�Ļ��<span></span></b>
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	�����й�ҽ�ƴ�ѧ��������ҽԺ���ڶ���ҽ��ѧ��������ҽԺ�����ϴ�ѧ������һҽԺ����Ժ�ȹ��ڵĶ���������غ������������������������ݷḻ��ѧ���������ڶ���ҽ��ѧ��������ҽԺ��֣������ڡ��й�ҽ�ƴ�ѧ��������ҽԺ�����½��ڡ����ϴ�ѧ������һҽԺ������ڡ����Ͼ�����ҽԺ����С�Ž��ڷֱ�͡����غ���������<span>��</span>�Ϻ��ʿر�׼����������������ʽ���ܡ�������׼���������������ͽ��������������������������󡱵�������ѧ��������<img src=\"/attached/image/20150907/20150907124342_82262.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	ɽ����ѧ��³ҽԺ��ѧ�ơ����غ���������Ŷӡ�����Ԫ���ڡ��������ڡ������ڡ�����׳����ҽʦ�ֱ�͡���ǻ����״θ�г�������״��Ҫ���Ч�����ۡ��������غ�����������������<span>2</span>�����򲡻��ߵ�ϣ�������������������������������ǻ��������������������³ҽԺ�����벡����������Ŀȫ���������Ժ��չ���غ����������ľ��顣<img src=\"/attached/image/20150907/20150907124404_53047.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	���Ա�����̳ҽԺ����ï����ڡ�����������ҽԺ���ξ������ڡ�����������ҽԺ��·���׽��ڡ���Ժ�������¸����ڵ�ר�������˸�ʱ��ѧ�������������ڼ䣬���ר�ҡ������������ۣ��ԡ����غ�������ơ��������ͻ��߹���淶������ѧ��Э�����������˸߶ȹ�ʶ������ȡ����Բ���ĳɹ���<img src=\"/attached/image/20150907/20150907124426_59589.jpg\" alt=\"\" />
</p>','1','0','0','0','0','','0','44','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1796','64','���ڶ�ʮ����ȫ����ǻ��������ʾ���ֻ��ߵ�����ɽ��ʡҽʦЭ�ḹǻ�����ҽʦ�ֻ���ᡢ����ǻ�������־��������ί�ỻ����顱��һ��֪ͨ','','','admin','2015-09-07 13:13:07','','<p style=\"text-align: center;\">&nbsp;&nbsp; <img width=\"559\" height=\"770\" title=\"1443437074114550.jpg\" style=\"width: 575px; height: 792px;\" alt=\"��\" src=\"/ueditor/php/upload/image/20150928/1443437074114550.jpg\"/></p><p style=\"text-align: center;\">
	&nbsp;<img width=\"557\" height=\"776\" title=\"1443437157598486.jpg\" style=\"width: 566px; height: 782px;\" alt=\"��\" src=\"/ueditor/php/upload/image/20150928/1443437157598486.jpg\"/><img width=\"558\" height=\"771\" title=\"1443441682592031.jpg\" style=\"width: 569px; height: 776px;\" alt=\"��\" src=\"/ueditor/php/upload/image/20150928/1443441682592031.jpg\"/><img width=\"559\" height=\"785\" title=\"1443441776120540.jpg\" style=\"width: 572px; height: 789px;\" alt=\"��\" src=\"/ueditor/php/upload/image/20150928/1443441776120540.jpg\"/></p>','1','0','0','0','0','','1','202','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1799','64','��ʹ���������Ž���','','','admin','2015-09-15 03:31:14','','&nbsp;&nbsp;&nbsp; ��ʹ�������ǵ�ֿ�ѣ�����ǻ�������־����ί��������Ͽ�ҽԺ��Ժ�����л�ҽѧ�������ھ��ֻ�ǰ��ί��ίԱ�����ѧ�鸱�鳤���л�ҽѧ����Ʒֻḹǻ�����ھ����ѧ��ίԱ�����Ž�����ҽ����Ч����2015��9��12��13ʱ19�ֲ���������<br />
&nbsp;&nbsp;&nbsp; �����Ž������ҹ�΢�������ҵ������еĽܳ��������쵼�������΢�����������ȫ�����翪չ�ھ�����ǻ���ĵ�λ֮һ,��ȫ������ͻ����רҵѧ����ɫ�ͽϴ��Ӱ��,�ھ�����ǻ��΢����Ƽ������������ˮƽ�����ؽ��ڵ��쵼�£�΢��������΢�����ƸΡ������ȼ�θ��������������˷ḻ�ľ��飬�����������ȫ���������������ϵ����������������ڶ��ָ����Ե����������ƣ�Ϊ�й��ĸ�ǻ�������ҵ������׿Խ�Ĺ��ס���Ϊ���ĵĸ����ˣ������Ž�����΢�����Ƹ���Σ�ز��Ŀ��С��ٴ����ھ�����ǻ���¼����о�Ӧ�÷���������������տ���������ȫ������ˮƽ�����й������ž���ҽԺ���ٽ��ڡ�����Ͽ�ҽԺ�����Ž��ں���Ժ����Ԫ���ڹ�ͬ��ɵġ��ε��ȸ�ǻ������������ϵ��Ӧ�á���Ŀ�ٻ�2014����ҿ�ѧ�������������Ƚ���<br />
&nbsp;&nbsp;&nbsp; �����ŶԹ������˸����Σ��Բ��˼������飬һ��ͬ�ʣ�ʱ���뵽���˵�ʹ��Ͱ�Σ������ϸ�£������ܵ���һ˿�������������Ͻ�ϸ�µ�ҽ�����硣�����У��ؽ��ھ�ֹ���ţ���ׯ���ף������ù���֮�㣬���İ����Լ���ͬ�£��Դ�ͬ�¡�ѧ���ºͶ����С��ؽ���ҽ�¸��У�����������ȫ��ȫ��Ϊ����������Ͻ�ϸ�µĹ����������˽�ķ��׾��������ǹ��ҽ������ѧϰ�İ�����<br />
&nbsp;&nbsp;&nbsp; ��Ϊ�ҹ�΢�������ҵ��������֮һ���������������Ž���������һ��������ǻ�������־������Ϊ����΢���������Ʒ����ƽ̨����������ǻ�������־����һ����С���������𽥳ɳ�׳���ڡ���ǻ�������־���ɳ���һ�����ؼ�ʱ�ڣ��������Ž��ڵĳ�ı����ʹ���𽥳������ƣ��ڡ���ǻ�������־����չ����ƿ����ʱ���������Ž��ڵĶ���֧��ʹ������ն�ˣ��´��Ի͡��ؽ����ڡ�ȫ����ǻ��������ʾ���ֻᡱ�ľ��ʱ�����������Ŀ���ؽ��ڡ���ǻ�������־���Ϸ���ľ����ѵ��������΢�����ҽ��Ӱ����Զ��<br />
&nbsp;&nbsp;&nbsp; �����Ž��ڵ���ȥ����ʹ����ʧȥ��һλֿ�ѣ�Ҳ���й�΢�������ҵ���ش���ʧ���ؽ�����Ȼ�뿪�����ǣ��������е�Ʒ�ʺͳ�ߵľ�����Զ������ͬ�ڣ����������ڿҿң�������˽�ľ���������ҵִ��׷�����ڴ��µľ�����Ӳ��������ˡ���˽���׵ľ�����ֵ������ѧϰ�ͷ��<br />
<p>
	<span style=\"font-family:����;color:black;font-size:14pt;\"><span style=\"font-family:����;color:black;font-size:14pt;\"></span></span>&nbsp;
</p>','1','0','0','0','0','','1','93','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1800','64','aa','','','admin','2015-09-28 10:37:07','','<p style=\"text-align: left;\"></p><p style=\"text-align: center;\"><img title=\"1443437004789374.jpg\" alt=\"��\" src=\"/ueditor/php/upload/image/20150928/1443437004789374.jpg\"/></p>','1','0','0','0','0','','1','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1801','64','����ǻ�������־��������ί�ỻ��֪ͨ','','','admin','2015-09-30 00:47:55','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ��ɽ����ѧ��³ҽԺ������ǻ�������־���༭����ɽ��ʡҽʦЭ������ġ��ڶ�ʮ����ȫ����ǻ��������ʾ���ֻ��ߵ�����ɽ��ʡҽʦЭ�ḹǻ�����ҽʦ�ֻ���ᡢ����ǻ�������־��������ί�ỻ����顱����2015��11��13-15����ɽ��ʡ������ɽ������¡���ٿ��������ص�����ί�Ƽ�����д����ӡ�������ɹ�ҽԺ��ز���ǩ��ͬ�Ⲣ���£���2015��10��20��֮ǰ������д�ĵ��Ӱ汾����ҽԺ����֮���ɨ��������������䣨<a href=\"mailto:fqjbjb@163.com\">fqjbjb@163.com</a>��������ӭ���μӱ�ί�ỻ����飡</p><br/><p style=\"line-height: 2em; margin-bottom: 10px;\">����һ������ǻ�������־��������ί�Ƽ���</p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"����ǻ�������־��������ί�Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151016/1444958366940932.doc\">����ǻ�������־��������ί�Ƽ���.doc</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><a title=\"����ǻ�������־��������ί�Ƽ���.docx\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20150930/1443576417851598.docx\"></a>������������ǻ�������־����־���</p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a title=\"����ǻ�������־����־���.pdf\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20150930/1443576432611223.pdf\">����ǻ�������־����־���.pdf</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">������������ǻ�������־����ί��ίԱ������ְ��</p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a title=\"����ǻ�������־����ί��ίԱ������ְ��.pdf\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151024/1445678401135563.pdf\">����ǻ�������־����ί��ίԱ������ְ��.pdf</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp;</p>','1','0','0','0','0','','0','533','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1802','64','�ڶ�ʮ����ȫ����ǻ��������ʾ���ֻ�����ճ�','','','admin','2015-10-27 02:43:31','','<p><img title=\"1445923250808093.jpg\" alt=\"\" src=\"/ueditor/php/upload/image/20151027/1445923250808093.jpg\" width=\"883\" height=\"623\" style=\"width: 883px; height: 623px;\"/><img title=\"1445914959305052.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959305052.jpg\" width=\"884\" height=\"674\" style=\"width: 884px; height: 674px;\"/></p><p><img title=\"1445914959872125.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959872125.jpg\" width=\"885\" height=\"686\" style=\"width: 885px; height: 686px;\"/></p><p><img title=\"1445914959120217.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959120217.jpg\" width=\"885\" height=\"678\" style=\"width: 885px; height: 678px;\"/></p><p><img title=\"1445914959562124.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959562124.jpg\" width=\"883\" height=\"607\" style=\"width: 883px; height: 607px;\"/></p><p><img title=\"1445914959642937.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959642937.jpg\" width=\"884\" height=\"569\" style=\"width: 884px; height: 569px;\"/></p><p><img title=\"1445914959132895.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959132895.jpg\" width=\"885\" height=\"582\" style=\"width: 885px; height: 582px;\"/></p><p><img title=\"1445914960119073.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914960119073.jpg\" width=\"887\" height=\"592\" style=\"width: 887px; height: 592px;\"/></p><p>&nbsp;</p>','1','1','0','0','0','','0','133','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1803','64','��ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�ȫ��ίԱ���顱֪ͨ','','','admin','2015-10-28 00:50:55','','<p style=\"line-height: 2em;\">&nbsp; &nbsp; ��ɽ��ʡҽʦЭ�ᡢɽ����ѧ��³ҽԺ������ǻ�������־���༭������ġ�������ɽ��ʡҽʦЭ�ḹǻ�����ҽʦ�ֻ���ᡢ�ڶ�ʮ����ȫ����ǻ��������ʾ���ֻᡢ����ǻ�������־��������ί�ỻ����顱����2015��11��13-15����ɽ��ʡ������ɽ������¡���ٿ��������ڼ佫�ٿ���ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�ȫ��ίԱ���顱�����۷ֻỻ�����˺͡���ǻ��ίԱ�ᡢС�����ǻ��ίԱ�ᡢ��������ǻ��ҽʦίԱ�ᡱ�ȷֻ�����������ˡ�</p><p style=\"line-height: 2em;\">&nbsp; &nbsp; ����ҽʦЭ���³̣��ֻ��Ա�谴ʱ�μӻ��飬���λίԱ��ʱ�λᡣ</p><br/><p style=\"line-height: 2em;\">���ӣ����ڡ�ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻᡱ������֪ͨ <a href=\"http://www.webles.cn/showarticle.php?articleid=1804\">http://www.webles.cn/showarticle.php?articleid=1804</a><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���ڡ�ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С�����ǻ��ίԱ�ᡱ������֪ͨ <a href=\"http://www.webles.cn/showarticle.php?articleid=1806\">http://www.webles.cn/showarticle.php?articleid=1806</a><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���ڡ�ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ�ᡱ������֪ͨ&nbsp; <a href=\"http://www.webles.cn/showarticle.php?articleid=1805\">http://www.webles.cn/showarticle.php?articleid=1805</a><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ɽ��ʡҽʦЭ����ֻ�ίԱ��ѡ���Ƽ���<a href=\"http://www.webles.cn/showarticle.php?articleid=1795\">http://www.webles.cn/showarticle.php?articleid=1795</a><a href=\"http://www.webles.cn/showarticle.php?articleid=1805\"></a></p>','1','1','0','0','0','','0','156','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1804','64','���ڡ�ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻᡱ������֪ͨ','','','admin','2015-10-28 00:59:51','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ��ɽ��ʡҽʦЭ�ᡢɽ����ѧ��³ҽԺ������ǻ�������־���༭������ġ�������ɽ��ʡҽʦЭ�ḹǻ�����ҽʦ�ֻ���ᡢ�ڶ�ʮ����ȫ����ǻ��������ʾ���ֻᡢ����ǻ�������־��������ί�ỻ����顱����2015��11��13-15����ɽ��ʡ������ɽ������¡���ٿ��������ڼ佫�ٿ���ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻᡱ����������ٿ���һ��ȫ��ίԱ���飬������ίԱȱϯ���齫��Ϊ����ίԱ�ʸ�ϣ����λר�ҽ�����׼ʱ�μӡ�<br/>&nbsp; &nbsp; Ӧѧ��ѡ��Ҫ��������ΪίԱ��ר����д�á�ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻ�ίԱ��ѡ���Ƽ���<img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻ�ίԱ��ѡ���Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151028/1445994410423045.doc\">ɽ��ʡҽʦЭ��θ�����ҽʦ�ֻ�ίԱ��ѡ���Ƽ���.doc</a>��һʽ���ݣ����Ӹǵ�λ���º���10��31��ǰ��������������ͬʱ���͵��Ӱ汾�����Ƽ�������֪ͨ������ǻ�������http��//<a href=\"http://www.webles.cn ��������Ѷ������ѯ���أ�лл����֧�֣�\" _src=\"http://www.webles.cn ��������Ѷ������ѯ���أ�лл����֧�֣�\">www.webles.cn ��������Ѷ������ѯ���أ�лл����֧�֣�</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ���ʼĵ�ַ��ɽ��ʡ�������������Ļ���·107��ɽ����ѧ��³ҽԺ����ǻ�������־���༭�� ����׳(��)</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ��ϵ�绰��0531-86920598</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; �ʱࣺ250012</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; �������䣺<a href=\"mailto:18396822910@163.com\">1</a>6416448@qq.com</p><p style=\"text-align: center;\"><img title=\"1445994197107979.jpg\" alt=\"��\" src=\"/ueditor/php/upload/image/20151028/1445994197107979.jpg\"/></p><p style=\"text-align: center;\"><img title=\"1445994241843207.jpg\" alt=\"��\" src=\"/ueditor/php/upload/image/20151028/1445994241843207.jpg\"/></p>','1','0','0','0','0','','0','111','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1805','64','���ڡ�ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ�ᡱ������֪ͨ','','','admin','2015-10-28 01:10:50','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ��ɽ����ѧ��³ҽԺ������ǻ�������־���༭����ɽ��ʡҽʦЭ������ġ�������ɽ��ʡҽʦЭ�ḹǻ�����ҽʦ�ֻ���ᡢ�ڶ�ʮ����ȫ����ǻ��������ʾ���ֻᡢ����ǻ�������־��������ί�ỻ����顱����2015��11��13-15����ɽ��ʡ������ɽ������¡���ٿ��������ڼ佫�ٿ���ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ�ᡱ����������ٿ���һ��ȫ��ίԱ���飬������ίԱȱϯ���齫��Ϊ����ίԱ�ʸ�ϣ����λר�ҽ�����׼ʱ�μӡ�<br/>&nbsp; &nbsp; Ӧѧ��ѡ��Ҫ��������ΪίԱ��ר����д�á�ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ��ίԱ��ѡ���Ƽ���<img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ��ίԱ��ѡ���Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151028/1445994682845359.doc\">ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ���ǻ��ίԱ��ίԱ��ѡ���Ƽ���.doc</a>��һʽ���ݣ����Ӹǵ�λ���º���11��6��ǰ��������������ͬʱ���͵��Ӱ汾�����Ƽ�������֪ͨ������ǻ�������http��//<a href=\"http://www.webles.cn ��������Ѷ������ѯ���أ�лл����֧�֣�\" _src=\"http://www.webles.cn ��������Ѷ������ѯ���أ�лл����֧�֣�\">www.webles.cn ��������Ѷ������ѯ���أ�лл����֧�֣�</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ���ʼĵ�ַ��ɽ��ʡ�������������Ļ���·107��ɽ����ѧ��³ҽԺ�����</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ��Τ�� 18560086960 ������ 18560086951 (��)&nbsp;</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; �������䣺lishuhai1981<a href=\"mailto:18396822910@163.com\">@163.com</a></p><p style=\"text-align: center;\"><img title=\"1445994762727194.jpg\" alt=\"\" src=\"/ueditor/php/upload/image/20151028/1445994762727194.jpg\"/></p><p style=\"text-align: center;\"><img title=\"1445994773131888.jpg\" alt=\"\" src=\"/ueditor/php/upload/image/20151028/1445994773131888.jpg\"/></p>','1','0','0','0','0','','0','60','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1806','64','���ڡ�ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С�����ǻ��ίԱ�ᡱ������֪ͨ','','','admin','2015-10-28 01:15:33','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ��ɽ����ѧ��³ҽԺ������ǻ�������־���༭����ɽ��ʡҽʦЭ������ġ�������ɽ��ʡҽʦЭ�ḹǻ�����ҽʦ�ֻ���ᡢ�ڶ�ʮ����ȫ����ǻ��������ʾ���ֻᡢ����ǻ�������־��������ί�ỻ����顱����2015��11��13-15����ɽ��ʡ������ɽ������¡���ٿ��������ڼ佫�ٿ���ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С�����ǻ��ίԱ�ᡱ����������ٿ���һ��ȫ��ίԱ���飬������ίԱȱϯ���齫��Ϊ����ίԱ�ʸ�ϣ����λר�ҽ���׼ʱ�μӡ�<br/>&nbsp; &nbsp; Ӧѧ��ѡ��Ҫ��������ΪίԱ��ר����д�á�ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С������ھ�ίԱ��ίԱ��ѡ���Ƽ���<img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С������ھ�ίԱ��ίԱ��ѡ���Ƽ���.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151028/1445994970135907.doc\">ɽ��ʡҽʦЭ��ǻ�����ҽʦ�ֻ�С������ھ�ίԱ��ίԱ��ѡ���Ƽ���.doc</a>��һʽ���ݣ����Ӹǵ�λ���º���10��31��ǰ��������������ͬʱ���͵��Ӱ汾��</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ���ʼĵ�ַ��ɽ��ʡ�������������Ļ���·107��ɽ����ѧ��³ҽԺС����ƶ���&nbsp;&nbsp;</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; ���� 18560088191 �¼�ΰ 18560086386����)</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; �������䣺<a href=\"mailto:18396822910@163.com\">qiluyiyuanerwaike@126.com</a></p><p style=\"text-align: center;\"><img width=\"627\" height=\"839\" title=\"1446003726767730.jpg\" style=\"width: 540px; height: 818px;\" alt=\"��\" src=\"/ueditor/php/upload/image/20151028/1446003726767730.jpg\"/><img width=\"627\" height=\"839\" title=\"1446003733419602.jpg\" style=\"width: 534px; height: 738px;\" alt=\"��\" src=\"/ueditor/php/upload/image/20151028/1446003733419602.jpg\"/></p>','1','0','0','0','0','','0','114','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('64','��̬��Ѷ','0','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('65','��Ƶ����','0','1','2','video.php','4','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('66','�γ�����','0','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('67','ר�ҽ���','0','1','4','','1','11');
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
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('90','�������','67','1','9','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('91','С�����','67','1','10','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('93','�����','67','1','11','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('94','������','67','1','8','','1','0');

CREATE TABLE `floatimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` text NOT NULL,
  `linkurl` text NOT NULL,
  `pass` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `paixu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

insert into `floatimg`(`id`,`imgurl`,`linkurl`,`pass`,`position`,`paixu`) values('9','upload/20151029.png','http://www.webles.cn/4/index.html','1','0','0');

CREATE TABLE `focus` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `linkurl` mediumtext NOT NULL,
  `imgurl` mediumtext NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=gbk;

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('36','�Ź��� ������','http://www.webles.cn/showarticle.php?articleid=1734','upload/1415874727.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('38','����Ԫ ����','http://www.webles.cn/showarticle.php?articleid=1727','upload/1415881234.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','����&nbsp;����','http://www.webles.cn/showarticle.php?articleid=1728','upload/1415874691.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','����׳ ����ҽʦ','http://www.webles.cn/showarticle.php?articleid=1747','upload/1418005444.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('33','������ ������','http://www.webles.cn/showarticle.php?articleid=1733','upload/1415881347.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('37','���ı� ����','http://www.webles.cn/showarticle.php?articleid=1731','upload/1408746599.jpg','');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('6','���긹ǻ�����׵����г���','����΢����Ƽ����ķ�չ , ���̶ȵļ����������˺�����Ч����Ϊ���ҽʦ��׷�� ������Ȼǻ���� �� ���� ( natural orifice transluminal endoscopic surgery, NOTES)Ӧ�˶��� , ��ͨ��һ�����Ŀ��������ھ� , �����ߵĿ� �� ���� ����� �����ŵ��� Ȼǻ���������� , ����θ �� ���� �� ���� �� ��ֱ�� �� ʳ�����������븹ǻ����ǻ�������� , �����߸����������пںͰ̺� , ʵ���� ���ް̺� �� (No Scar)��΢�� �� �������۵�Ч�� �� ���� �����豸 ����е���� , ��֮�����Ѷȸ� , ���ڸ�ǻ��Ⱦ���������׵ķ��� , NOTES�����������ٴ��㷺��չ �� ������ 2008�� 1 1�� ��չ�˾�����·���׸�ǻ������ ( embryonic naturalorifice transumbilicalendoscopic surgery, E-NOTES), ͬ���ﵽ�˸������ۺͽϺõ�����Ч�� , ���� NOTES�����ѶȺ��������մ�Ϊ���� , ������Ϊ��ǰ;�����͸�ǻ������ ��
','http://www.cmxxw.net/fqjwkzz/flv/sssp1.flv','upload/1408753184.jpg','73','����Ԫ','2014-11-09 00:00:00','0','157');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('12','��ǻ������θ��������','    ��ǻ��θ�����������н�20�����ʷ�� Ŀǰ��������θ����Ӧ����ȡ�ù�����Ĺ�ʶ�� ���ڽ�չ��θ�����棬�����Ѿ�ȡ���˽Ϻõ��ٴ���Ч������������ĵ�ǰհ����������о���������۸�ǻ�����������ӡ� ���ҽʦֻ���ϸ�ѡ����ʲ����� �������ϸ���ѭ�������������ĸ���ԭ�򣬲���ʹ��ǻ��θ����������������΢�����ƣ����ҿ���ȡ���뿪�������൱��Զ����Ч��','http://www.webles.cn/flv/��ǻ������θ�������� ���ı�(14����).flv','','74','���ı�','2014-12-12 10:45:56','0','34');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('13','��ǻ����״θ�г���','    2�����������֢������أ���T2DM���������������ɼ���������չ������Ŀǰ��չ�϶��T2DM������ʽ��Ҫ��Roux-en-Y θ��·����Roux-en-Y gastric bypass,RYGB�����ɵ���θ������adjustable gastric banding��AGB������״θ�г�����sleeve gastrectomy��SG�������ȷ�����ʮ��ָ����������biliopancreatic diversion with duodenal switch��BPD-DS���ȡ����Ÿ�ǻ�������ķ�չ��Ӧ�ã� Ŀǰ 90% ���ϵ� T2DM ��������ǻ������ɡ���ͬ������ʽ����Ч��ͬ��Buchwald�ȵ�һ��Ŀ��Meta���������ʾ���� T2DM ���ٴ���ȫ��������BPD-DS�ﵽ95.1%����RYGBΪ80.3%����SGΪ79.7%��LAGB ��ֻ��56.7%��SG���������Լ򵥣���Ч���ã�����֢���٣� �����Ӧ���ڼ��ȷ��ֲ��˵ļ������ƣ���ΪRYGB ��BPD��һ���������Խ�����������֢�����ʺ������ʡ��˺������𽥷��� SG �� T2DM Ҳ��������Ч����SG�� RYGB����T2DM ���ٴ��������൱���������� Leonetti�ȷ�����һ��ǰհ�Զ����о��ĳɹ������ǶԱ��˰�T2DM�ķ���֢������ LSG ��ҩ�����ƶ� T2DM ��������غϲ�֢��������Ч�������ʾ���� 18���µ�������У�LSG ���BMI���ո�Ѫ�ǡ�HbA 1c��ָ�����������ĸ��ƣ�80%���˵����򲡻����ȫ�ٴ����⣬������ص������ϲ�֢Ҳ�������Ը��ƣ���ҩ������������ǰ�����ָ��û�����Ը��ƣ����в����������ɣ���Ѫѹ���Ⱥϲ�֢���ɻ���ء�','http://www.webles.cn/flv/sleevehu.flv','upload/1418393752.jpg','78','����Ԫ','2014-12-12 12:58:16','0','57');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('7','���׸�ǻ��Ƣ�г���','��ǻ��Ƣ�г���( laparoscopic splenectomy�� LS)�� 1992 �꿪ʼ����� �� �˺������緶Χ��Ѹ�ٿ�չ �� ���������� 1994 ���ڹ��ڽ��翪չ��LS�� �˺���̿�չ��������ǻ ��Ƣ�г��� �� ��ǻ��Ƣ�����г����ȣ� ����Ч������ �� LESS �������ֽ׶�����е�����ް̺� �������� ��Ŀǰ����΢�����ѧ����о��ȵ�֮һ�� ������΢�����ҽ�����ٵ�����ս�����߶�����Ч���Ľ�һ��׷�� ��','http://www.cmxxw.net/fqjwkzz/flv/sssp2.flv','upload/1408753039.jpg','76','����Ԫ','2014-11-09 00:00:00','0','116');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('14','��ǻ������Ƣ�������β�г���','    ������β����Ƣ��������Ƣ���ϵ���У���ͳ�����г�������β��ʱ�����г�Ƣ�ࡣ����Ƣ�࿹��Ⱦ�����߹��ܱ�ȷ�Ϻ󣬱���Ƣ�������β�г������𽥳�Ϊ����β�����Բ�����ѡ��ʽ�� 
    ������Ϊ����Ƣ�������β�г�����Ҫ�����ڲ��ʺ�������ժ����������β�����Բ��䣬 ���ȵ��������������������޹����ȵ�ϸ���������ʺ��������������������Լ����������Ƶļ������������ס�����β�����˵ȡ����ڶ�ͯ�� ��Ӧ����Ƣ������Ϊ��ѡ��ʽ�� �Ա���Ƣ�г����������Ը�Ⱦ�ķ�����������ǰӰ��ѧ��顢����̽�鼰����������ǳ���Ҫ��ѡ���ԵĽ��б���Ƣ�������β�г����������޹���Ƣ�г�����������β���񽻽���������Ҳ��ѧ�������б���Ƣ�������β�г���������β�����������Ƿ��б�Ƣ�����д������飬����ѧ����Ϊ����β���������Ǳ�Ƣ�����Ľ���֤��������β�г���ʱӦͬʱ�г�Ƣ�ࡣ','http://www.webles.cn/flv/��ǻ������Ƣ�������β�г��� ����Ԫ.flv','','76','����Ԫ','2014-12-12 13:14:11','0','61');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('15','��ǻ�������г�+������̽��ȡʯ��','    ���������������ļӿ죬������ʳ�����ɣ����ҽ�ʯ�����Ļ���Խ��Խ�࣬���������������ƣ�һ����������û�и��輰ʱ���ƻ򲻵����ƣ�����ܵ�����ಢ��֢�ķ��������ʯ���뵨�ܹܺ����������ס������ס�����Ȳ���֢�ķ�����Ŀǰ��������������Ӧ֤�ĵ���ʯ���ߴ󲿷��ǲ�������������ƣ���Ҫѡ�÷���С������֢�١���ȫ�Ըߵķ�ʽ����ǻ�������г����ǽ�Ϊ�㷺Ӧ�õ�һ�����Ƶ���ʯ�ķ�������ȴ�ͳ������������������������ŵ㣺����ʱ��̡����г�Ѫ���١����������ܵ�ʹ��С������֢�����ʵ͵ȡ����о�����������۲���϶���������ʱ�䡢��������ʱ�䡢סԺʱ��̣����г�Ѫ���ͣ�ֹʹҩ��Ӧ���ʡ����󲢷�֢�ʵͣ�������ͳ��ѧ���壬 ֵ���ٴ��ƹ�Ӧ�á�','http://www.webles.cn/flv/��ǻ�������г�+�����ҹ�ȡʯ�� ����Ԫ.flv','','73','����Ԫ','2014-12-12 13:19:58','0','106');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('8','minilap�������׵����г���','minilap�������׵����г���  ��� �ε����
Minilap��еֱ����3mm���£����ڳ�ϸ��е������״��ͷ��ֱ�Ӿ�Ƥ���룬ȡ����Ƥ���п�ϸС�����Ϻ�̺����Է��֣���ˣ���������LESS������������������̺۵��ŵ㡣��LESS��������һ�����ʵļ������ƣ���Minilap��Ҳ����һ��ȫ�µĸ������1997�꣬�����θ�ǻ�������������㸹ǻ���������ĸ�������˹�����΢�����ѧ�硣������ʹ��ר�������׹ܺ���е���в�����Ѱ���С���������˺���֯�ƻ���������������Ч������Ȼ�ü������д���С������Ч���õ��ŵ㣬����������е����ϸС��ץ�����������Բ���𻵣���˸ü���û�еõ��ܺõ��ƹ��������Minilap��е������Ϊ��������е�����ϵķ�չ�����������ŵ㣺��1��ͨ����Ƥ���̣�����ʹ���׹��룻��2��ֱ��2.3mm������С���������̺ۣ���3��Ӳ�ȸߣ��������𣻣�4�����ڴ�ץ����ǿ�����黼�߾�ʹ��MinilapץǯЭ��ǣ�����Һ���¶����������óɹ��������ü����ǰ�ȫ�����еġ�ʹ��Minilap��󽵵��˵��׸�ǻ������ͬ��ֱ����Ұ�����Ĳ����Ѷȣ�������е�ķ���Ҳ��������е�ڸ�ǻ������໥���š���ײ��ͬʱ���������԰̺��಻����LESS�������������ƣ�ʹLESS�����Ĺ㷺�ƹ�Ӧ�ó�Ϊ���ܡ�
','http://www.cmxxw.net/fqjwkzz/flv/sssp3.flv','upload/1408753116.jpg','73','����Ԫ','2014-11-09 00:00:00','0','96');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('9','��ǻ����״�ٴ�ȫ�г���','    ����΢����Ƽ����ķ�չ�� ���̶ȵؼ����������˺�ȡ�ø��õ�����Ч���ѳ�Ϊ���ҽʦ��׷�� ���꣬ ǻ����״�������ս����죬 ���������¶��λ���������пںͰ̺ۣ� �������ߵ������ʣ�ͬʱ��������������� ������������ġ� Ż�µȡ� ���Ÿ�ǻ��������·���򡰵��ס� �������ް̺ۡ� ����չ�� �ƶ��Ÿ�ǻ�����������΢���� �������۵�
����չ�� 
    ����ʽ���׼�״���������ŵ� �����������ŵ�������Ч���� ��Դ�ͳǻ����״�������� �����п�ת�����������εĲ�λ; ͬʱ�����豸��ʹ�� ��������������ز���֢�� ��­��ѹ���� �� ���ж� �� �Ķ����� �� �㷺Ƥ�����׵� �� ���ǵ��о����� �� �������� CO2�� ������һϵ�в����ڻ��������Ӧ��
','http://www.cmxxw.net/fqjwkzz/flv/sssp4.flv','upload/1408753200.jpg','77','����Ԫ','2014-11-09 00:00:00','1','114');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('16','��ǻ����VI�θΰ��г���','    ��ǻ�����г�������ڴ�ͳ�������г������������Եġ������п�С,����С,������������������ߡ�������ʹ����,���������ڻ,�Ӷ�����ػָ�����,����סԺʱ�䡣��ϸ���Ըΰ����󸴷��ʸ�, ����Ҫ��������, ������ˮ�ƾ�ע�䡢�ζ���˨����΢���̻����ٴ�����������ͳ���������ᵼ�±Ƚ����صĸ�ǻ��ճ�����⽫��Ӱ����һ�������ơ���ǻ�����������п�С,�γɵ�ճ����,Ϊ�Ժ�������ṩ���õ���������ǻ���������߹����𺦽���,�������������� ���и������ơ��Ժϲ���Ӳ�����ž�����ѹ�Ĳ���, ��ǻ�����г����Ը���������, ���ٸ��ڽ�֧ͨ���ƻ���','http://www.webles.cn/flv/��ǻ����VI�θΰ��г��� ����16���ӣ�.flv','','73','����','2014-12-12 13:24:56','0','19');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('17','��ǻ�����ɹ����޲�����TAPP��','    ���ɹ����������޲����ɷ�Ϊ��������ʽ����ǰ�޲�����˨�������͸�Ĥǰ�޲�����ǰ�����޲����ɹ��ܺ�ں��޻�ȱ�𣬺����޲����ɹ���λ�����б������򼴼��ܹǿס���Ĥǰ�޲�������ͨ������ʽ������ɣ�Ҳ��ͨ����ǻ����������ɡ���ʵ�ϣ���ǻ�����ɹ����޲������ڶูĤǰ�޲����е�һ�ַ�ʽ�����ص������á���ǻ����е����ͨ���������ĺ���·�����ڡ�ֱ���²����������еĸ�Ĥǰ���������ٴ������õ���Ⱥ��Ҫ�������ࣺ��1�����и�Ĥǰ�޲�ָ������Ⱥ���縹���Ĥ���������겡�ˡ�ֱ�޻򸴺��ޡ����ڸ���ѹ�������صĲ��ˡ���2����Ҫ����ָ�������Ĳ��ˡ���3�������޺�˫���ޡ� ��ǻ���Ϳ���ʽ���ɹ����޲������ǰ�ȫ��Ч���޲���ʽ�� ���л����ԣ�����ѡ����ʽ�ɻ����ѵ��ٴ�����������ѧЧ�档','http://www.webles.cn/flv/��ǻ�����ɹ����޲�����TAPP�� �Ź��� ��8���ӣ�.flv','upload/1418394143.jpg','75','�Ź���','2014-12-12 13:27:26','0','121');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('18','��ǻ�����ɹ����޲�����TEP��','    ���ɹ����������޲����ɷ�Ϊ��������ʽ����ǰ�޲�����˨�������͸�Ĥǰ�޲�����ǰ�����޲����ɹ��ܺ�ں��޻�ȱ�𣬺����޲����ɹ���λ�����б������򼴼��ܹǿס���Ĥǰ�޲�������ͨ������ʽ������ɣ�Ҳ��ͨ����ǻ����������ɡ���ʵ�ϣ���ǻ�����ɹ����޲������ڶูĤǰ�޲����е�һ�ַ�ʽ�����ص������á���ǻ����е����ͨ���������ĺ���·�����ڡ�ֱ���²����������еĸ�Ĥǰ���������ٴ������õ���Ⱥ��Ҫ�������ࣺ��1�����и�Ĥǰ�޲�ָ������Ⱥ���縹���Ĥ���������겡�ˡ�ֱ�޻򸴺��ޡ����ڸ���ѹ�������صĲ��ˡ���2����Ҫ����ָ�������Ĳ��ˡ���3�������޺�˫���ޡ� ��ǻ���Ϳ���ʽ���ɹ����޲������ǰ�ȫ��Ч���޲���ʽ�� ���л����ԣ�����ѡ����ʽ�ɻ����ѵ��ٴ�����������ѧЧ�档','http://www.webles.cn/flv/��ǻ�����ɹ����޲�����TEP�� �Ź��� ��10���ӣ�.flv','','75','�Ź���','2014-12-12 13:30:37','0','58');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('19','��ǻ�����Һ�Ҷ�г���','    ��ǻ�����г�������ڴ�ͳ�������г������������Եġ������п�С,����С,������������������ߡ�������ʹ����,���������ڻ,�Ӷ�����ػָ�����,����סԺʱ�䡣��ϸ���Ըΰ����󸴷��ʸ�, ����Ҫ��������, ������ˮ�ƾ�ע�䡢�ζ���˨����΢���̻����ٴ�����������ͳ���������ᵼ�±Ƚ����صĸ�ǻ��ճ�����⽫��Ӱ����һ�������ơ���ǻ�����������п�С,�γɵ�ճ����,Ϊ�Ժ�������ṩ���õ���������ǻ���������߹����𺦽���,�������������� ���и������ơ��Ժϲ���Ӳ�����ž�����ѹ�Ĳ���, ��ǻ�����г����Ը���������, ���ٸ��ڽ�֧ͨ���ƻ���','http://www.webles.cn/flv/��ǻ�����Һ�Ҷ�г��� ����13���ӣ�.flv','','73','����','2014-12-12 13:31:51','0','29');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('20','��ǻ������Ҷ�г���','    ��ǻ�����г�������ڴ�ͳ�������г������������Եġ������п�С,����С,������������������ߡ�������ʹ����,���������ڻ,�Ӷ�����ػָ�����,����סԺʱ�䡣��ϸ���Ըΰ����󸴷��ʸ�, ����Ҫ��������, ������ˮ�ƾ�ע�䡢�ζ���˨����΢���̻����ٴ�����������ͳ���������ᵼ�±Ƚ����صĸ�ǻ��ճ�����⽫��Ӱ����һ�������ơ���ǻ�����������п�С,�γɵ�ճ����,Ϊ�Ժ�������ṩ���õ���������ǻ���������߹����𺦽���,�������������� ���и������ơ��Ժϲ���Ӳ�����ž�����ѹ�Ĳ���, ��ǻ�����г����Ը���������, ���ٸ��ڽ�֧ͨ���ƻ���','http://www.webles.cn/flv/��ǻ������Ҷ�г��� ����13���ӣ�.flv','','73','����','2014-12-12 13:33:26','0','70');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('21','��ǻ���᳦ȫ�г���','    ��ǻ���᳦ֱ������������ѭ�뿪������ͬ������������ԭ�򣬰�������ǿ����������Χ��֯�������г��������������ķǽӴ�ԭ�򣻢��㹻����Ե ���ܳ��׵��ܰͽ���ɨ.Ϊ���õع淶��ǻ���᳦ֱ���������ڹ��ڵĿ�չ���ƹ㣬2006���л�ҽѧ�����ѧ�ֻḹǻ�����ھ����ѧ�����й����� Э��󳦰�רҵίԱ�ḹǻ�����ѧ�鹲ͬ�ƶ��ˡ���ǻ���᳦ֱ����������������ָ�ϡ����涨�˸�ǻ���᳦ֱ���������Ļ���ԭ��:���뿪���������г���Χ��ͬ���᳦��Ե���������� 10 cm��ֱ��Զ�ж˾���������2 cm����ͬԭ�����ϵĤ�������ܰͽ�һ���г���ֱ����λ������ѭȫϵ Ĥ�г���ԭ�򣻢���������ԭ���ڸ��ΰ����Ļ����Ͼ��� �ܱ������ܣ��ر��Ǹ�����Լ�����ܣ���������λ�����ڸ�ǻ������ȱ���ֵĴ�����ĳЩ����ױ����֣�����ǰ�����೦X����Ƭ��CT�����г����������ڶ�λ������ת�������������ڲ��˰�ȫ�Ŀ��Ƕ����п��������ߡ����з��������ڸ�ǻ���²����г���������Ե�������Ӧ��ʱ��ת�������ݱ걾ȡ��ʱӦ�����пڣ���ֹ����ϸ�����п���ֲ��','http://www.webles.cn/flv/��ǻ���᳦ȫ�г��� ����Ԫ(14����).flv','','74','����Ԫ','2014-12-12 13:35:01','0','19');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('22','��ǻ���п����޲���','    �����п���(VIH)�Ǹ���������������ҳ����Ĳ���֢֮һ��������5%��15%�����пڸ�Ⱦ���п��޷����ʿɸߴ�23% ���ϡ��п��������������޲�Ϊ�������޲���Ҫ��Ϊ��ͳ�����޲����븹ǻ���޲�������ǻ���п����޲���( LVH��)����С���ָ��죬����֢�ٵõ����Ͽɹ㷺�ƹ㡣 ','http://www.webles.cn/flv/��ǻ���п����޲��� �Ź��� ��5���ӣ�.flv','','75','�Ź���','2014-12-12 13:38:59','0','24');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('23','��ǻ��ʳ���ѿ����޲���','    ��ǻ��ʳ���ѿ����޲���θ���۵����ڹ����ѿ�չ���� ,��ʳ�ܷ���֢״������Ϊ91 % ��100% ,��ת������5 %����,���������� �����ٴ�������������ǻ����ʽ�ȿ�����������סԺ���� ����������֢,���߻ָ��� ,�����ߵĿ�����������Ч����ͬ�����鲡������ ,���ʱ��� ,���һ�����۾���,�����������������е�΢���Ժ���Ч��Ҳ�������� ,ѡ����ʵĲ��˺�Ӧ�����õ�������������ɸ�ǻ��ʳ���ѿ����޲����ǰ�ȫ���е� ,���н�һ����չ���ƹ�ļ�ֵ��','http://www.webles.cn/flv/��ǻ��ʳ���ѿ����޲��� �Ź��� ��8���ӣ�.flv','','75','�Ź���','2014-12-12 13:41:48','0','16');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('24','��ǻ���Ұ�᳦�г���','    ��ǻ���᳦ֱ������������ѭ�뿪������ͬ������������ԭ�򣬰�������ǿ����������Χ��֯�������г��������������ķǽӴ�ԭ�򣻢��㹻����Ե ���ܳ��׵��ܰͽ���ɨ.Ϊ���õع淶��ǻ���᳦ֱ���������ڹ��ڵĿ�չ���ƹ㣬2006���л�ҽѧ�����ѧ�ֻḹǻ�����ھ����ѧ�����й����� Э��󳦰�רҵίԱ�ḹǻ�����ѧ�鹲ͬ�ƶ��ˡ���ǻ���᳦ֱ����������������ָ�ϡ����涨�˸�ǻ���᳦ֱ���������Ļ���ԭ��:���뿪���������г���Χ��ͬ���᳦��Ե���������� 10 cm��ֱ��Զ�ж˾���������2 cm����ͬԭ�����ϵĤ�������ܰͽ�һ���г���ֱ����λ������ѭȫϵ Ĥ�г���ԭ�򣻢���������ԭ���ڸ��ΰ����Ļ����Ͼ��� �ܱ������ܣ��ر��Ǹ�����Լ�����ܣ���������λ�����ڸ�ǻ������ȱ���ֵĴ�����ĳЩ����ױ����֣�����ǰ�����೦X����Ƭ��CT�����г����������ڶ�λ������ת�������������ڲ��˰�ȫ�Ŀ��Ƕ����п��������ߡ����з��������ڸ�ǻ���²����г���������Ե�������Ӧ��ʱ��ת�������ݱ걾ȡ��ʱӦ�����пڣ���ֹ����ϸ�����п���ֲ��','http://www.webles.cn/flv/��ǻ���Ұ�᳦�г��� ����Ԫ��13���ӣ�.flv','','74','����Ԫ','2014-12-12 13:44:41','0','17');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('25','��ǻ�������������޲���','    ��������ǳ���������������֢���س�������޵ķ�����ԼΪ 28% �����᳦������޷����ʸ���ߴ� 48%�����������������һ���̶���Ӱ���˲��˵��������������ɵ���������Ƕ�١�������ȼ��Բ���֢����������޲�������Ҫ������Ĥ�޲����������ؽ�( ��λ)�������˹��ϳɲ�Ƭ�޲�����ǻ����������޲������ø�ǻ�ڲ�Ƭ���ü������봫ͳ�Ŀ�����������޲�����Ⱦ��лָ��졢����֢�ٺ͸����ʵ͵����ƣ����𲽵õ�Ӧ�á������� 2007��11�¡�2011 ��10�����13����ǻ����������޲������ֽ����ٴ���Ч��������ᱨ�����¡�','http://www.webles.cn/flv/��ǻ�������������޲��� �Ź��� ��7���ӣ�.flv','','75','�Ź���','2014-12-12 13:45:31','0','20');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('26','��ǻ��ֱ����������','    ��ǻ���᳦ֱ������������ѭ�뿪������ͬ������������ԭ�򣬰�������ǿ����������Χ��֯�������г��������������ķǽӴ�ԭ�򣻢��㹻����Ե ���ܳ��׵��ܰͽ���ɨ.Ϊ���õع淶��ǻ���᳦ֱ���������ڹ��ڵĿ�չ���ƹ㣬2006���л�ҽѧ�����ѧ�ֻḹǻ�����ھ����ѧ�����й����� Э��󳦰�רҵίԱ�ḹǻ�����ѧ�鹲ͬ�ƶ��ˡ���ǻ���᳦ֱ����������������ָ�ϡ����涨�˸�ǻ���᳦ֱ���������Ļ���ԭ��:���뿪���������г���Χ��ͬ���᳦��Ե���������� 10 cm��ֱ��Զ�ж˾���������2 cm����ͬԭ�����ϵĤ�������ܰͽ�һ���г���ֱ����λ������ѭȫϵ Ĥ�г���ԭ�򣻢���������ԭ���ڸ��ΰ����Ļ����Ͼ��� �ܱ������ܣ��ر��Ǹ�����Լ�����ܣ���������λ�����ڸ�ǻ������ȱ���ֵĴ�����ĳЩ����ױ����֣�����ǰ�����೦X����Ƭ��CT�����г����������ڶ�λ������ת�������������ڲ��˰�ȫ�Ŀ��Ƕ����п��������ߡ����з��������ڸ�ǻ���²����г���������Ե�������Ӧ��ʱ��ת�������ݱ걾ȡ��ʱӦ�����пڣ���ֹ����ϸ�����п���ֲ��','http://www.webles.cn/flv/��ǻ��ֱ��������������Ԫ��15���ӣ�.flv','','74','����Ԫ','2014-12-12 13:48:46','0','37');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('27','��ǻ�����᳦�г���','    ��ǻ���᳦ֱ������������ѭ�뿪������ͬ������������ԭ�򣬰�������ǿ����������Χ��֯�������г��������������ķǽӴ�ԭ�򣻢��㹻����Ե ���ܳ��׵��ܰͽ���ɨ.Ϊ���õع淶��ǻ���᳦ֱ���������ڹ��ڵĿ�չ���ƹ㣬2006���л�ҽѧ�����ѧ�ֻḹǻ�����ھ����ѧ�����й����� Э��󳦰�רҵίԱ�ḹǻ�����ѧ�鹲ͬ�ƶ��ˡ���ǻ���᳦ֱ����������������ָ�ϡ����涨�˸�ǻ���᳦ֱ���������Ļ���ԭ��:���뿪���������г���Χ��ͬ���᳦��Ե���������� 10 cm��ֱ��Զ�ж˾���������2 cm����ͬԭ�����ϵĤ�������ܰͽ�һ���г���ֱ����λ������ѭȫϵ Ĥ�г���ԭ�򣻢���������ԭ���ڸ��ΰ����Ļ����Ͼ��� �ܱ������ܣ��ر��Ǹ�����Լ�����ܣ���������λ�����ڸ�ǻ������ȱ���ֵĴ�����ĳЩ����ױ����֣�����ǰ�����೦X����Ƭ��CT�����г����������ڶ�λ������ת�������������ڲ��˰�ȫ�Ŀ��Ƕ����п��������ߡ����з��������ڸ�ǻ���²����г���������Ե�������Ӧ��ʱ��ת�������ݱ걾ȡ��ʱӦ�����пڣ���ֹ����ϸ�����п���ֲ��','http://www.webles.cn/flv/��ǻ�����᳦�г��� ���ı�(12��).flv','upload/1418394349.jpg','74','���ı�','2014-12-12 13:49:23','0','56');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('28','ǻ����״���г���','    ����΢����Ƽ����ķ�չ�� ���̶ȵؼ����������˺�ȡ�ø��õ�����Ч���ѳ�Ϊ���ҽʦ��׷�� ���꣬ ǻ����״�������ս����죬 ���������¶��λ���������пںͰ̺ۣ� �������ߵ������ʣ�ͬʱ��������������� ������������ġ� Ż�µȡ� ���Ÿ�ǻ��������·���򡰵��ס� �������ް̺ۡ� ����չ�� �ƶ��Ÿ�ǻ�����������΢���� �������۵�
����չ�� 
    ����ʽ���׼�״���������ŵ� �����������ŵ�������Ч���� ��Դ�ͳǻ����״�������� �����п�ת�����������εĲ�λ; ͬʱ�����豸��ʹ�� ��������������ز���֢�� ��­��ѹ���� �� ���ж� �� �Ķ����� �� �㷺Ƥ�����׵� �� ���ǵ��о����� �� �������� CO2�� ������һϵ�в����ڻ��������Ӧ��','http://www.webles.cn/flv/ǻ����״�� ���� �²���7���ӣ�.flv','','77','���� �²�','2014-12-12 13:50:20','0','24');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('29','���г���������ǻ���������г���','    ��ǻ�����г�������ڴ�ͳ�������г������������Եġ������п�С,����С,������������������ߡ�������ʹ����,���������ڻ,�Ӷ�����ػָ�����,����סԺʱ�䡣��ϸ���Ըΰ����󸴷��ʸ�, ����Ҫ��������, ������ˮ�ƾ�ע�䡢�ζ���˨����΢���̻����ٴ�����������ͳ���������ᵼ�±Ƚ����صĸ�ǻ��ճ�����⽫��Ӱ����һ�������ơ���ǻ�����������п�С,�γɵ�ճ����,Ϊ�Ժ�������ṩ���õ���������ǻ���������߹����𺦽���,�������������� ���и������ơ��Ժϲ���Ӳ�����ž�����ѹ�Ĳ���, ��ǻ�����г����Ը���������, ���ٸ��ڽ�֧ͨ���ƻ���','http://www.webles.cn/flv/���г���������ǻ���������г��� ����Ԫ��15���ӣ�.flv','','73','����Ԫ','2014-12-12 13:51:36','0','54');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('30','���г���������ǻ���ȵ������г���','    �ȵ�������һ���ټ���,���ٴ������������ò����µ�Ѫ�Ƿ�������,�����˴�������Σ��,�������������������������������ٴ�֢״���Ӷ��,��������,����Ҳ���������Ժ͸����ԡ����,�����ܽ������ξ�����ٴ�ʵ�ʹ���������Ҫ���塣50������,���Ŷ��ȵ�������ʶˮƽ�����,Ӱ��ѧ�����Ľ�����΢����Ƶķ�չ,�ȵ������ڶ�λ��Ϻ�������Ʒ���������������仯,��Ժ�����ȵ���������ʷ,����ȫ�淴ӳ�������ڲ�ͬ�׶δ���ü����Ľ�չ���̡�
','http://www.webles.cn/flv/���г���������ǻ���ȵ������г��� ����Ԫ��7���ӣ�.flv','upload/1418393959.jpg','76','����Ԫ','2015-03-16 13:52:33','1','74');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('32','�����п����޲���','  �����п��������ڸ����пڵĽ�Ĥ�ͣ��򣩼���δ����ȫ���ϣ��ڸ���ѹ���������¶��γɵ��ޣ������ҿ��������Ļ������ĸ�Ĥ��Ƥ���ڲ����пɴ�����Ӱ��ѧ����пɷ����п��µĸ��ڼ����Ĥȱ��ȱ�𴦿ɰ��л򲻰��и�ǻ��������ͻ������������޲�������С�п��ޡ��˲��ò����շ��ߣ�������ϣ����߳��ȣ��пڳ���Ϊ 4��1�� Ϊ�ˡ�����֤�ݱ������е�������޲�����5���ĸ����ʽϸߡ����ò�Ƭ���޲������ڸ���ȱ��Ϊ���п������ϵĲ��ˡ����ݲ�Ƭ�ڸ����ؽ�ʱ���õĲ�Σ����Է�Ϊ����1�����ڼ���ǰ���ã�onlay/overlay������2������ȱ�����ã�inlay������3�����ڼ���󣨸�Ĥǰ��϶�����ã�sublay������4����ǻ�ڽ�����Ĥ���ã�IPOM/underlay���� ��Ҫǿ�����ǣ����������޲�ʱ����Ƭ����Ӧ���з�ֹճ�����ԣ���ǻ�������п����޲���������෽�������ڼ�������ͬʱ���ò�Ƭ���ϵ��޲�����֯�ṹ���뼼����component separation technique�� �ò�Ƭ��ǿ���ڷ����� ���������߻�����ߵĸ��ڴ��п��޺;޴��п��޲��ˡ�','http://www.webles.cn/flv/�п���--�Ź���.flv','upload/1426481039.png','75','�Ź���','2015-03-16 10:39:00','1','78');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('31','��ǻ��θ��������','  ��ǻ��θ�������������������𽥿�չ������һ���µ�������ʽ������θ��ӦѪ�ܶࡢ���ʲ���ࡢ�ܰ���ɨ�Ѷȴ���Ǻϸ��ӵ����أ�ʹ�ø�ǻ������θ�����������Ѷȴ󡢼���Ҫ��ߣ�����ֻ������ҽԺ������ҽ���ܿ�չ�������������ּ���ͨ���ڸ��ڿ�5��0.5��1.0����Կ�׿���С��������ֱ��1���׵ĸ�ǻ��������ǻ��������ͼ����������ʾ�ڵ�����Ļ�ϣ�ҽ��һ�߿�������Ļ��һ��ͨ������С������΢С��е��������ɴ�ͳ������Ҫ20���������пڲ�����ɵ��������������ڸ�ǻ������Ƶ�Ŵ����ã����Զ�θ�ܰͽ����ɨ���ӳ��ף����г�����֯���ͨ��һ��3��6���׵�С�п�ȡ�������������д���С��θ��������С����Ѫ�٣������ϲ���Ҫ��Ѫ������������ʹ�ᡢ�����˻ָ��졢�п���С�����󲢷�֢�������ٵ��ŵ㡣','http://www.webles.cn/flv/��ǻ��θ������--������.flv','upload/1426478860.jpg','74','������','2015-03-16 09:45:06','1','80');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('33','ǻ����״�ٲ����г���','  ��״�������ͽ���Լ�״�����ǳ�����,�෢��������Ů��,����Ҫ�����ֶ��������г�,����ͳ�������������ھ����������Ե��ۡ�ǻ����״�����������Ƽ�����ͬʱ�ܻ������޶ȵ�����Ч��, ��������Ӧ֤������֤�������������䰲ȫ���������ױ������������ϵĸ�����������ǻ����״���������ƹ㡣','http://www.webles.cn/flv/��״��.flv','upload/1426496932.png','77','����','2015-03-16 08:54:28','1','66');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('34','��ǻ����״θ�г���','    2�����������֢������أ���T2DM���������������ɼ���������չ������Ŀǰ��չ�϶��T2DM������ʽ��Ҫ��Roux-en-Y θ��·����Roux-en-Y gastric bypass,RYGB�����ɵ���θ������adjustable gastric banding��AGB������״θ�г�����sleeve gastrectomy��SG�������ȷ�����ʮ��ָ����������biliopancreatic diversion with duodenal switch��BPD-DS���ȡ����Ÿ�ǻ�������ķ�չ��Ӧ�ã� Ŀǰ 90% ���ϵ� T2DM ��������ǻ������ɡ���ͬ������ʽ����Ч��ͬ��Buchwald�ȵ�һ��Ŀ��Meta���������ʾ���� T2DM ���ٴ���ȫ��������BPD-DS�ﵽ95.1%����RYGBΪ80.3%����SGΪ79.7%��LAGB ��ֻ��56.7%��SG���������Լ򵥣���Ч���ã�����֢���٣� �����Ӧ���ڼ��ȷ��ֲ��˵ļ������ƣ���ΪRYGB ��BPD��һ���������Խ�����������֢�����ʺ������ʡ��˺������𽥷��� SG �� T2DM Ҳ��������Ч����SG�� RYGB����T2DM ���ٴ��������൱���������� Leonetti�ȷ�����һ��ǰհ�Զ����о��ĳɹ������ǶԱ��˰�T2DM�ķ���֢������ LSG ��ҩ�����ƶ� T2DM ��������غϲ�֢��������Ч�������ʾ���� 18���µ�������У�LSG ���BMI���ո�Ѫ�ǡ�HbA 1c��ָ�����������ĸ��ƣ�80%���˵����򲡻����ȫ�ٴ����⣬������ص������ϲ�֢Ҳ�������Ը��ƣ���ҩ������������ǰ�����ָ��û�����Ը��ƣ����в����������ɣ���Ѫѹ���Ⱥϲ�֢���ɻ���ء�','http://www.webles.cn/flv/����.flv','','78','����Ԫ','2015-04-10 10:46:55','0','28');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('35','��ǻ��Ƣ�г�+�����г���','','http://www.webles.cn/flv/Ƣ+����.flv','','73','����Ԫ','2015-04-10 10:49:13','0','50');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('36','��״����������������','','http://www.webles.cn/flv/��״����������������.flv','','77','��ƽ��������Ժ��','2015-04-13 11:40:24','0','24');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('37','����³θ�������̳��ȫ��ǻ����Զ��θ�����������������ؽ�','','http://www.webles.cn/flv/��³θ����̳ ����.flv','','74','���������ҽԺ��','2015-05-20 14:07:18','0','7');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('38','����³θ�������̳��θ������л�������Ʒ���֢������','','http://www.webles.cn/flv/��³θ����̳ ����׳.flv','','74','����׳','2015-05-20 14:17:34','0','8');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('39','(��³θ�������̳)θ�������Ĺ淶������','','http://www.webles.cn/flv/��³θ����̳ ���ٵ�.flv','','74','���ٵ£���������ҽԺ��','2015-05-20 14:30:21','0','8');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('40','����³θ�������̳����ԭ����Ⱦ��θ��','','http://www.webles.cn/flv/��³θ����̳ �ּ̻�.flv','','74','�ּ̻�','2015-05-20 14:37:40','0','9');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('41','����³θ�������̳��������������Ʋ��Լ��½�չ','','http://www.webles.cn/flv/��³θ����̳ ëΰ��.flv','','74','ëΰ�����ൺ����ҽԺ��','2015-05-20 14:42:17','0','3');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('42','����³θ�������̳��θ����©��������֯�����ѧ','','http://www.webles.cn/flv/����θ����̳ �����.flv','','74','��������Ͼ�������ҽԺ��','2015-05-20 16:47:14','0','8');

