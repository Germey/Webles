CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user` varchar(25) NOT NULL DEFAULT '',
  `passwd` varchar(25) NOT NULL DEFAULT '',
  `class` int(4) NOT NULL DEFAULT '0',
  `expire` date NOT NULL DEFAULT '0000-00-00',
  `item` mediumtext NOT NULL,
  `classid` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','admin','1','3008-08-27','#����û�##�༭�û�##�����Ŀ##�༭��Ŀ##�������##�༭����##�鿴����վ##������##�༭���##�������##�༭����##��ӽ���ͼƬ##�༭����ͼƬ##��ӹ���ͼƬ##�༭����ͼƬ##��Ӹ���ͼ��##�༭����ͼ��##�������ݿ�##�鿴����#','\'a\',\'59\',\'60\',\'61\',\'27\',\'36\',\'37\',\'38\',\'39\',\'40\',\'41\',\'28\',\'42\',\'43\',\'44\',\'45\',\'46\',\'47\',\'29\',\'48\',\'49\',\'50\',\'30\',\'51\',\'52\',\'53\',\'54\',\'31\',\'55\',\'56\',\'32\',\'57\',\'58\',\'33\',\'34\',\'35\',\'b\'');

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
) ENGINE=MyISAM AUTO_INCREMENT=1710 DEFAULT CHARSET=latin1;

insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1691','60','��������2014��̩ɽѧ���ʵǼƻ��걨������֪ͨ','','','admin','2014-05-13 15:12:31','','һ��ѧУ֪ͨ������������2014��̩ɽѧ���ʵǼƻ��걨������֪ͨ<br />
<br />
����ѧԺ����֪ͨ���������걨�üƻ�����ʦ��5��22��ǰ���걨���ϱ�����ѧԺ��ϵ�˴������Ͻ��ύѧ��ίԱ������,ͨ���󽫱���ѧУ��<br />
����ѧԺ��ϵ�ˣ�����������ϵ�绰��88382565��Email��liuhaihua@sdu.edu.cn<br />
<br />
��<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ɽ����ѧҽѧԺ<br />
<div>
	<br />
</div>','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1690','60','�����걨�й���ʿ���ѧ�������ʮ��������������֪ͨ','','','admin','2014-05-13 14:58:42','','һ��ɽ����ѧ���²��������걨�й���ʿ���ѧ�������ʮ��������������֪ͨ<br />
<br />
����ѧԺ����֪ͨ<br />
<br />
1�����벩ʿ������걨ϵͳ��δ���Ʊ����걨�Ĳ�ʿ����Ա�������걨��<br />
2�����������ߴ�ӡ��ר���Ƽ������ģ�壬��������ʦ��ͬ��ר����д��<br />
3����������漰����վ��λ������д��ɽ����ѧ������ͨѶ��ַ������д������վ����ѧԺ�����ġ�������<br />
4�������걨����Ҫ�ύֽ�ʰ�ġ������顱���ɹ�֤���������򷢱�����µȸ������ϡ�<br />
5�����Ͳ������ݣ�<br />
��1����ר���Ƽ������ֽ�ʰ����ݣ�����һ�ݱ���Ϊԭ������<br />
��2�����й���ʿ���ѧ�����56�����ܱ��������������Ӱ淢����caohui@sdu.edu.cn��<br />
6������������2014��6��13��ǰ�����ϱ���������վ����6��15��-7��4���ڼ䣬���걨���������޸Ĳ�������ѧУ��ʿ��칫����ϵ��<br />
<br />
ҽѧԺ��ʿ������վ��ϵ�ˣ��ܻ� &nbsp; &nbsp;�칫�ص㣺�ۺ�¥204��<br />
��ϵ�绰��88382565 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;���䣺caohui@sdu.edu.cn<br />
��<br />
<br />
<a href=\"http://www.medicine.sdu.edu.cn/0tongzhixinwen/2014/5/caoy/56huizongbiao.xls\" target=\"_blank\">���������й���ʿ���ѧ�����56�����ܱ�</a><br />
<br />
��<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ɽ����ѧҽѧԺ<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2014.05.13<br />
<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1692','60','ת���������ٿ�2014���������ҵ���������Ŀ����Ȼ��ѧר��������û����֪ͨ','','','admin','2014-05-13 15:14:06','http://www.xsyjb.sdu.edu.cn/website/getNewsDetail.do?newsId=4562','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1693','60','���ڲμ�2014����ҹ��ɳ�����ѧ��ǰ��ѵ��Ƶ�����֪ͨ','','','admin','2014-05-13 15:15:09','http://portal.sdu.edu.cn/home/-/announcement/wW7u/4f7ad4d4-30c1-4510-ba1a-0a76f5068b17','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1694','60','��������2014�������������������Աѡ���Ƽ�������֪ͨ','','','admin','2014-05-13 15:17:45','','һ��ɽ����ѧ�˲Ź����칫�ҡ�����������2014�������������������Աѡ���Ƽ�������֪ͨ<br />
<br />
����ѧԺ����֪ͨ���������걨�����������������Ա��5��16��ǰ���걨��Ϣ������ѧԺ��ϵ�˴���ѧԺ��֯��������˲Ź����칫�ҡ�<br />
<br />
ѧԺ��ϵ�ˣ�������<br />
��ϵ�绰��88382565<br />
Email:liuhaihua@sdu.edu.cn<br />
<br />
��<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ɽ����ѧҽѧԺ<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2014.05.13<br />','1','0','0','0','0','','0','5','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1695','60','�����ٿ��������¹涨������֪ͨ','','','admin','2014-05-13 15:19:37','','һ��ɽ����ѧ�˲Ź����칫�ҡ�����������2014�������������������Աѡ���Ƽ�������֪ͨ<br />
<br />
����ѧԺ����֪ͨ���������걨�����������������Ա��5��16��ǰ���걨��Ϣ������ѧԺ��ϵ�˴���ѧԺ��֯��������˲Ź����칫�ҡ�<br />
<br />
ѧԺ��ϵ�ˣ�������<br />
��ϵ�绰��88382565<br />
Email:liuhaihua@sdu.edu.cn<br />
<br />
��<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ɽ����ѧҽѧԺ<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2014.05.13<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1696','60','ת��������������չ�о����Ĺ����ش��о������걨��֪ͨ','','','admin','2014-05-15 15:20:47','http://www.xsyjb.sdu.edu.cn/website/getNewsDetail.do?newsId=4566','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1697','60','ת�������ڹ������ʡ������е��й���ҵ�Ƽ������֪ͨ','','','admin','2014-05-16 15:21:28','http://www.xsyjb.sdu.edu.cn/website/getNewsDetail.do?newsId=4571','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1698','59','ҽѧԺ�䷢��̨��У���庮ѧ����ѧ��','','','admin','2014-04-22 15:22:11','http://www.view.sdu.edu.cn/new/2014/0422/62698.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1699','59','ҽѧԺ��ʮ��Ӣ���Ļ��ڿ�Ļʽ����','','','admin','2014-04-23 15:24:07','http://www.view.sdu.edu.cn/new/2014/0422/62732.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1700','59','V�������ʵ���Ŷ��߽��������ؿ�ҽԺ','','','admin','2014-04-29 15:24:48','http://www.view.sdu.edu.cn/new/2014/0428/62894.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1701','59','ɽ��а��Уҽѧ�������ʵ���ѧ���ֻ�','','','admin','2014-04-29 15:25:39','http://www.view.sdu.edu.cn/new/2014/0428/62900.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1702','59','ҽѧԺ����Ϊ�˶���ϵ�л����','','','admin','2014-04-29 15:26:38','http://www.view.sdu.edu.cn/new/2014/0429/62978.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1703','59','ҽѧԺ���С���������ѧ�𡱰佱��ʽ','','','admin','2014-05-04 15:28:01','http://www.view.sdu.edu.cn/new/2014/0430/63036.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1704','59','ɽ����ѧ����Ƭ������߽���ͻȪУ��','','','admin','2014-05-12 15:28:46','http://www.view.sdu.edu.cn/new/2014/0509/63235.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1705','59','ҽѧԺ����ѧԺְҵ���Ĺ滮����','','','admin','2014-05-12 15:29:20','http://www.view.sdu.edu.cn/new/2014/0511/63257.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1706','59','2014ɽ���ռǣ�ҽѧԺ����Ա ��Х��','','','admin','2014-05-12 15:29:51','http://www.sdrj.sdu.edu.cn/article.php?aid=1942','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1707','59','ҽѧԺ��־Э��ǩ������������У����','','','admin','2014-05-13 15:30:27','http://www.view.sdu.edu.cn/new/2014/0513/63326.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1708','59','ҽѧԺ����У��ͬʱ�ٰ�ĸ�׽�ϵ�л','','','admin','2014-05-13 15:30:59','http://www.view.sdu.edu.cn/new/2014/0513/63329.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1709','36','ɽ����ѧҽѧԺ���','','','admin','2014-05-18 15:32:33','','&nbsp; &nbsp; ɽ����ѧҽѧԺ���ҹ����罨����ҽѧԺУ֮һ��Ϊԭɽ��ҽ�ƴ�ѧ�����岿�֡����ƾõ���ʷ��׷����1864�괴���ڵ��ݵ��Ļ�ݣ�1911�꣬����ҽ��ѧ�ô����ڼ�����ʽ��ɣ���Ϊ����ɽ����ѧҽѧԺ����ʷԴͷ��1952������³��ѧҽѧԺ��ɽ��ʡ��ҽѧԺ�����������ҽѧԺ�ϲ�����ɽ��ҽѧԺ ��1985��ɽ��ҽѧԺ����Ϊɽ��ҽ�ƴ�ѧ��2000��7�£�ɽ����ѧ��ɽ��ҽ�ƴ�ѧ��ɽ����ҵ��ѧ�ϲ��齨Ϊ�µ�ɽ����ѧ��2001��1����ԭɽ��ҽ�ƴ�ѧ�Ļ���ҽѧԺ���ٴ�ҽѧ���齨�����ڵ�ɽ����ѧҽѧԺ��<br />
<br />
&nbsp; &nbsp; ����������ɽ����ѧҽѧԺ�����һ�������������������ר��ѧ�ߣ��罭����ڡ��谽��ڡ��ȼҿ����ڡ��Գ��ֽ��ڡ����������ڡ����Ȫ���ڡ�����Ȫ���ڡ��Ż�Ȫ���ڡ������Ľ��ڡ���Ӧ����ڡ���͢��Ժʿ���ƴ��Ժʿ������Ժʿ������Ժʿ��л����Ժʿ�������Ժʿ���ڽ���Ժʿ�ȣ����Ƿֱ����ҹ�ҽѧ���й�ѧ�Ƶĵ���˺Ϳ�����֮һ����һ������ʦ�Ľ���֮�£�ҽѧԺ��Ϊ�ҹ�������4�����������ҽ�������˲ţ���Ϊ�ҹ�ҽѧ����������<br />
<br />
&nbsp; &nbsp; ɽ����ѧҽѧԺ����30���������ٴ�ѧ���о���(�ң� ��8������ҽԺ�����н�ְ������815�ˣ����н�ʦ����712�ˣ���������322�ˣ�������316�ˡ���ʿ����ʦ334�ˣ�˶ʿ����ʦ702���ˣ��й�����ԺԺʿ3�ˣ���ǧ�˼ƻ�����ѡ��3�ˣ�������������ѧ�߽����ƻ�����Ƹ���ںͽ�������5�ˣ����Ҽ���ѧ��ʦ2�ˣ����ҽܳ������������3�ˣ����Ұ�ǧ���˲Ź�����ѡ��3�ˣ�ȫ����ƪ���㲩ʿ����ָ����ʦ4�ˣ�ɽ��ʡ��̩ɽѧ�ߡ���λ��Ƹ���� ��ר�ң�21�ˣ��������������������˲�֧�ּƻ�����ѡ��15�ˡ�<br />
<br />
&nbsp; &nbsp; ҽѧԺʮ������ѧ�ƽ��裬����3�����Ҽ��ص�ѧ�Ƽ������������֯��̥ѧ���ڿ�ѧ��������ѧ ��13��ʡ���ص�ѧ�ƣ��������������֯��̥ѧ������ѧ����ԭ����ѧ������ѧ�벡������ѧ���ڿ�ѧ��Ӱ��ҽѧ���ҽѧ�����ѧ��������ѧ�������ʺ��ѧ���Ŵ�ѧ�����겡ѧ���񾭲�ѧ��ҩ��ѧ��5��ʡ�����ص�ʵ���ң���ʵ�����ѧ�������ص�ʵ���ң���Ѫ���ع��빦���о����������������ص�ʵ���ң������ʺ��ѧ�������ص�ʵ���ң����񼲲��������ٴ�ɽ��ʡ�ص�ʵ���ң���Ⱦ����ɽ��ʡ�ص�ʵ���� ��1��ɽ��ʡ��У�ص�ʵ���ң����������Լ����ĵ����ʿ�ѧ�ص�ʵ�������ٴ�ҽѧ�ͻ���ҽѧ2����ʿ���������վ������ҽѧ���ٴ�ҽѧ������ѧ������ҽѧ����ѧ4��һ��ѧ�Ʋ�ʿѧλ��Ȩ�㣬29������ѧ�Ʋ�ʿѧλ��Ȩ�㡣<br />
<br />
&nbsp; &nbsp; ҽѧԺ�������е������ص�����о���չ�ƻ���973�ƻ��������Ҹ߼����о���չ�ƻ���863�ƻ��������ҿƼ�֧�żƻ������ҽܳ��������͹�����Ȼ��ѧ����ȹ��Ҽ�������Ŀ260���ʡ����������Ŀ400���ȡ�ù��ҿƼ��������Ƚ���ʡ�����Ƽ�����ɽ����У�Ƽ�����ר���ȿ��гɹ� 100 ����ڡ�Science������Nature Genetics������Cell������Blood������PNAS���ȹ�������ѧ���ڿ��Ϸ����˶�ƪ��ˮƽѧ�����ġ����й������õķ�չ��ͷ��ΪҽѧԺ�ɽ�ѧ������ѧԺ���о���ѧԺ��ת��춨�˻�����<br />
<br />
&nbsp; &nbsp; �˲�����ʼ����ҽѧԺ�����Ĺ������ٴ�ҽѧרҵ����Ժ�Ĵ�ͳ����רҵ��2007�걻��������׼Ϊ��һ���ߵ�ѧУ��ɫרҵ����㡣ѧԺ���и���ȫ����ѧ��4700���ˣ����������Ʊ���ѧ��1132�ˣ������Ʊ�˶����ѧ��952�ˣ������Ʊ�˶������ѧ��161�ˣ�˶ʿ�о���1427�ˣ���ʿ���о�682�ˣ��⼮�о���41�ˡ�ҽѧԺ�����е��ű�Ժѧ���Ļ����μ��ٴ��εĽ�ѧ���񣬶��һ��е��ſ�ǻҽѧԺ����������ѧԺ������ѧԺ��ҩѧԺ��ѧԺ����ѧ����ҽѧ�����κ��ٴ��εĽ�ѧ���񣬽�ѧ������ռ����ҽѧ���67%��<br />
<br />
&nbsp; &nbsp; ҽѧԺ���ӽ�ѧ�ĸ�е�����������̡���Ŀ���ٴ�ҽѧרҵ��Ϊ��������һ���ߵ�ѧУ��ɫרҵ����㣬����³ҽѧ�ࡱ����Ϊ���������˲�����ģʽ����ʵ��������������ҽѧ�ں���ʵ���ѧ�γ���ϵ�ĸ��ù��Ҽ���ѧ�ɹ����Ƚ���ҽѧ����ʵ�����ĳ�Ϊ�������Ҽ�ʵ���ѧʾ�����ģ����μⴴ��ҽѧ�˲�����ģʽ�ĸ��Ե㡱�� ���������ٴ�ҽѧ�˲�����ģʽ�ĸ��Ե㡱����Ϊ��������������һ��׿Խҽ�����������ƻ��Ե���Ŀ�������ѧ������ϵͳ����ѧ��������֯ѧ����̥ѧ������ҽѧ����ѧ�������ֲ�����ѧ�������ϲ����ѧ���������������ѧ������ҽѧ����ѧ������ҽѧ����ѧʵ�顷��Ϊ���Ҽ���Ʒ�γ̣����ϲ����ѧ������ϵͳ����ѧ����������ѧ������ҩ��ѧ����Ϊ������˫��ʾ���γ̣������������ѧ�������ֲ�����ѧ������ҽѧ����ѧ����Ϊ���Ҽ���Դ����γ̣���ϵͳ����ѧ���������������ѧ����Ϊ���Ҽ�������ѧӢ���ڿ�Ʒ�ƿγ̣�����ѧ���Խ�����������Ϊ�й���ѧ��Ƶ�����Ρ�<br />
<br />
&nbsp; &nbsp; ҽѧԺ������չ�뺣�����ˮƽҽѧԺУ��ʵ���Խ��������������������ҽѧԺ�ȶ���ҽѧԺУ��չ�˹���ʵ���ҡ���ѧ�о���Ա���á��о���������������������ѧ�������걨����Ⱥ�����Ŀ��������չҽѧ��ѧ���������������԰ͻ�˹̹��ӡ�ȡ��Ϸǵȶ�����ҵ�ҽѧ��ѧ��300���ˡ�<br />
<br />
&nbsp; &nbsp; ��������ķ���ϴ��ҽѧԺ�γ��ˡ���ʩ���ڡ��������桱���������󾫡���˽���ס���������ͳ�����µİ����У�ҽѧԺ������������һ������ͳ��������ҽ����տ��ҽ�¸��У����й�����Ұ��������θе�ҽѧ�˲���Ϊʱ���������ǵ���ʷʹ�����ڸ����������ٽ����񽡿���ҵ�����������µĹ��ס�<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1689','60','������У���в�ʿѧλ�򸱽�������ְ�Ƶ�ר�ν�ʦ����У��ʦ�ʸ�֤��Ľ���֪ͨ','','','admin','2014-05-08 14:56:33','http://www.rsc.sdu.edu.cn/2010new2/display.php?id=2781','','1','0','0','0','0','','0','2','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('48','��ѧ�о�','29','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('46','��ʿ������վ','28','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('44','��ѧ������','28','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('43','�о�������','28','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('42','���ƽ���','28','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('38','��������','27','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('47','ʵ������','28','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('45','��������','28','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('41','����Ժʷ��','27','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('40','�칫ָ��','27','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('39','ʦ�ʶ���','27','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('37','�����쵼','27','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('36','ѧԺ���','27','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('35','Ժ����Ϣ','0','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('34','Ժ������','0','1','8','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('33','У��֮��','0','1','7','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('32','��ҵ��Ƹ','0','1','6','','1','3');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('31','ѧ������','0','1','5','','1','2');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('30','��������','0','1','4','','1','4');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('29','ѧ������','0','1','3','','1','3');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('28','�˲�����','0','1','3','','1','6');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('27','ѧԺ�ſ�','0','1','1','','1','6');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('49','�ص�ѧ��','29','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('50','�ʲ��豸','29','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('51','��Ⱥ����','30','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('52','��������','30','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('53','���¹���','30','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('54','��������','30','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('55','������԰��','31','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('56','�о���֮��','31','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('57','��������Ƹ','32','1','1','http://msw.sdu.edu.cn/cms/plus/list.php?tid=71','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('58','�о�����Ƹ','32','1','2','http://www.msw.sdu.edu.cn/medgrade/plus/list.php?tid=3','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('59','ѧԺ����','0','0','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('60','֪ͨ����','0','0','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('61','ѧԺ������վ','0','0','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('62','ѧԺ��ѧҽԺ','0','0','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('63','��Ժ��Ƹ','32','1','3','http://www.msw.sdu.edu.cn/medgrade/plus/list.php?tid=3','1','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('24','ҽѧԺ�䷢��̨��У���庮ѧ����ѧ��','http://www.view.sdu.edu.cn/new/2014/0422/62732.html','focus/f1.jpg','���գ�ҽѧԺ�����ڡ�̨��У���庮ѧ����ѧ�𡱰佱��ʽ��Ȫ�Ǵ�Ƶ�˳������...');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('25','ҽѧԺ���С�ҽ���﷫������顱����','http://www.view.sdu.edu.cn/new/2014/0422/62698.html','focus/f2.jpg','3��30�գ���ҽѧԺ��ί���졢Ժѧ�������ղ��а�İ༶��ɴ�������ͻȪУ������...');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','ҽѧԺ��־Э�߽�ɽ��С��չ�����','http://www.view.sdu.edu.cn/new/2014/0401/62100.html','focus/f3.jpg','3��21�գ�ɽ����ѧҽѧԺ��־Э����ɽ����ѧ��һ����Сѧ��չ��˷�������...');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','ҽѧԺ�ٰ조����Ů����Ů����ϵ�л','http://www.view.sdu.edu.cn/new/2014/0323/61732.html','focus/f4.jpg','�������£�ů������,3��3����7��,��ҽѧԺѧ����Ů���������Ů����ϵ�л...');

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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;


CREATE TABLE `linkclass` (
  `classid` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `classorder` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;


CREATE TABLE `photo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `linkurl` mediumtext NOT NULL,
  `imgurl` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('2','','','img/left1.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('3','','','img/left2.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('4','','','img/left3.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('5','','','img/left4.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('6','','','img/left5.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('7','','','img/left6.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('8','','','img/left7.jpg');

