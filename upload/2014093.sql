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

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','admin','1','3008-08-27','#����û�##�༭�û�##�����Ŀ##�༭��Ŀ##�������##�༭����##�鿴����վ##������##�༭���##�������##�༭����##�����Ƶ##�༭��Ƶ##��ӽ���ͼƬ##�༭����ͼƬ##��ӹ���ͼƬ##�༭����ͼƬ##��Ӹ���ͼ��##�༭����ͼ��##�������ݿ�##�鿴����#','\'a\',\'64\',\'65\',\'73\',\'74\',\'75\',\'76\',\'77\',\'78\',\'79\',\'80\',\'66\',\'67\',\'81\',\'82\',\'83\',\'84\',\'85\',\'86\',\'87\',\'88\',\'68\',\'69\',\'b\'');

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
) ENGINE=MyISAM AUTO_INCREMENT=1710 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('64','��̬��Ѷ','0','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('65','��Ƶ����','0','1','2','video.php','4','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('66','�γ�����','0','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('67','ר�ҽ���','0','1','4','','1','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('68','��־Ͷ��','0','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('69','��������','0','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('73','�ε����','65','1','1','video.php?classid=1','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('74','θ�����','65','1','2','video.php?classid=2','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('75','���븹�����','65','1','3','video.php?classid=3','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('76','�������','65','1','4','video.php?classid=4','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('77','��״�����������','65','1','5','video.php?classid=5','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('78','�������������','65','1','6','video.php?classid=6','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('79','�������','65','1','7','video.php?classid=7','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('80','����','65','1','8','video.php?classid=8','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('81','�ε����','67','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('82','θ�����','67','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('83','���븹�����','67','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('84','�������','67','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('85','��״�����������','67','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('86','�������������','67','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('87','�������','67','1','7','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('88','����','67','1','8','','1','0');

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

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('24','�Ź���&#160;����','http://www.view.sdu.edu.cn/new/2014/0422/62732.html','upload/1408746637.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('25','���ı� ����','http://www.view.sdu.edu.cn/new/2014/0422/62698.html','upload/1408746599.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','����&#160;����','http://www.view.sdu.edu.cn/new/2014/0401/62100.html','upload/1408746574.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','����Ԫ ����','http://www.view.sdu.edu.cn/new/2014/0323/61732.html','upload/1408746524.jpg','');

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
  `text` text NOT NULL,
  `linkurl` text NOT NULL,
  `imgurl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('6','���׸�ǻ��θ�г��� ���ߺ���Ԫ����','    ��ǻ��������1992���ڹ��ڿ�չ���������䴴��С���ָ�����ŵ�õ�ҽ����Աϲ������һ�¼���Ѹ��Ӧ�õ����⡢�����ơ����⡢�����⡢����Ƶȿ��ң�Ϊ�ٽ�ѧ����������߼���ˮƽ�����Ǵ����ˡ���ǻ�������־����
    ����ǻ�������־��������1996��11�£�ɽ��ʡ��ʱ���ţ�³�ڿ���398�ţ���ΪС16������64��ҳ�룬������ɽ��ҽ�ƴ�ѧ����ҽԺ����ɽ����ѧ��³ҽԺ�����졣���ࣺ��ϣ�ꡢ��骺����༭�����κ���Ԫ����������˵�һ���ί�ᣬ��ί24�ˡ������������Կ�������־�ܵ��˹�����֪��ר�Һ͹��ǻ��ҽ�����ߵĺ�����2000��9�»�������ų�����ͿƼ�����׼����׼�ĺ�[2000]��310�ţ�������ֵ��У����־ע��Ϊ���������ܣ�ɽ����ѧ����Ĺ����⹫�����е�ѧ���ڿ�������CN 37-1361/R��ISSN 1009-6612����16����64ҳ�룬�������ÿ���ȫ��Ψһ�ĸ�ǻ�����רҵ���Ҳ���л�ҽѧ����Ʒֻḹǻ��-�ھ����ѧ���רҵ���ڿ�����־���ʣ���־ǿԺʿ��������Ժʿ�������Ժʿ������̪Ժʿ��֣��ɭԺʿ�����ϳ�Ժʿ�ȣ����ࣺ֣�񻪡�����Ԫ������֣��Ϊ�л�ҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤�������ࣺ���ܹ⡢��������󻪡������ȣ����Σ����ı������ڡ�2000��12�±����ڼ����ٿ��˵ڶ����ί�ᣬ��ί����70���ˣ����Թ�����30��Ҵ�ҽԺ����Լ��ί25�ˣ�������������Ա40���ˣ�������30�ˡ���Ϊ����������ǻ�����ר�ҡ�2005��12�±����༭�����Ϻ��ٿ��˵������ί�ᣬ��ί���Թ�����50��Ҵ�ҽԺ��110���ˣ���Լ��ί43�ˣ�������������Ա90���ˣ�������20���ˣ�˶ʿ����ʦ80���ˡ��ҹ���۵�����ί3�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ���Ϊ������������ǻ�����ר�ҡ�2010��9���ڼ����ٿ����Ľ��ί�ᣬ��ί���Թ�����90��Ҵ�ҽԺ��250���ˡ�������200���ˣ��ҹ���۵�����ί4�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ������1�ˣ���Ϊ������������ǻ�����ר�ҡ�
','http://www.cmxxw.net/fqjwkzz/flv/sssp1.flv','upload/1408753184.jpg');
insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('7','���׸�ǻ��Ƣ�г��� ���ߺ���Ԫ����','    ��ǻ��������1992���ڹ��ڿ�չ���������䴴��С���ָ�����ŵ�õ�ҽ����Աϲ������һ�¼���Ѹ��Ӧ�õ����⡢�����ơ����⡢�����⡢����Ƶȿ��ң�Ϊ�ٽ�ѧ����������߼���ˮƽ�����Ǵ����ˡ���ǻ�������־����
    ����ǻ�������־��������1996��11�£�ɽ��ʡ��ʱ���ţ�³�ڿ���398�ţ���ΪС16������64��ҳ�룬������ɽ��ҽ�ƴ�ѧ����ҽԺ����ɽ����ѧ��³ҽԺ�����졣���ࣺ��ϣ�ꡢ��骺����༭�����κ���Ԫ����������˵�һ���ί�ᣬ��ί24�ˡ������������Կ�������־�ܵ��˹�����֪��ר�Һ͹��ǻ��ҽ�����ߵĺ�����2000��9�»�������ų�����ͿƼ�����׼����׼�ĺ�[2000]��310�ţ�������ֵ��У����־ע��Ϊ���������ܣ�ɽ����ѧ����Ĺ����⹫�����е�ѧ���ڿ�������CN 37-1361/R��ISSN 1009-6612����16����64ҳ�룬�������ÿ���ȫ��Ψһ�ĸ�ǻ�����רҵ���Ҳ���л�ҽѧ����Ʒֻḹǻ��-�ھ����ѧ���רҵ���ڿ�����־���ʣ���־ǿԺʿ��������Ժʿ�������Ժʿ������̪Ժʿ��֣��ɭԺʿ�����ϳ�Ժʿ�ȣ����ࣺ֣�񻪡�����Ԫ������֣��Ϊ�л�ҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤�������ࣺ���ܹ⡢��������󻪡������ȣ����Σ����ı������ڡ�2000��12�±����ڼ����ٿ��˵ڶ����ί�ᣬ��ί����70���ˣ����Թ�����30��Ҵ�ҽԺ����Լ��ί25�ˣ�������������Ա40���ˣ�������30�ˡ���Ϊ����������ǻ�����ר�ҡ�2005��12�±����༭�����Ϻ��ٿ��˵������ί�ᣬ��ί���Թ�����50��Ҵ�ҽԺ��110���ˣ���Լ��ί43�ˣ�������������Ա90���ˣ�������20���ˣ�˶ʿ����ʦ80���ˡ��ҹ���۵�����ί3�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ���Ϊ������������ǻ�����ר�ҡ�2010��9���ڼ����ٿ����Ľ��ί�ᣬ��ί���Թ�����90��Ҵ�ҽԺ��250���ˡ�������200���ˣ��ҹ���۵�����ί4�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ������1�ˣ���Ϊ������������ǻ�����ר�ҡ�
','http://www.cmxxw.net/fqjwkzz/flv/sssp2.flv','upload/1408753039.jpg');
insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('8','mini-lap�������׵����г��� ���ߺ���Ԫ����','    ��ǻ��������1992���ڹ��ڿ�չ���������䴴��С���ָ�����ŵ�õ�ҽ����Աϲ������һ�¼���Ѹ��Ӧ�õ����⡢�����ơ����⡢�����⡢����Ƶȿ��ң�Ϊ�ٽ�ѧ����������߼���ˮƽ�����Ǵ����ˡ���ǻ�������־����
    ����ǻ�������־��������1996��11�£�ɽ��ʡ��ʱ���ţ�³�ڿ���398�ţ���ΪС16������64��ҳ�룬������ɽ��ҽ�ƴ�ѧ����ҽԺ����ɽ����ѧ��³ҽԺ�����졣���ࣺ��ϣ�ꡢ��骺����༭�����κ���Ԫ����������˵�һ���ί�ᣬ��ί24�ˡ������������Կ�������־�ܵ��˹�����֪��ר�Һ͹��ǻ��ҽ�����ߵĺ�����2000��9�»�������ų�����ͿƼ�����׼����׼�ĺ�[2000]��310�ţ�������ֵ��У����־ע��Ϊ���������ܣ�ɽ����ѧ����Ĺ����⹫�����е�ѧ���ڿ�������CN 37-1361/R��ISSN 1009-6612����16����64ҳ�룬�������ÿ���ȫ��Ψһ�ĸ�ǻ�����רҵ���Ҳ���л�ҽѧ����Ʒֻḹǻ��-�ھ����ѧ���רҵ���ڿ�����־���ʣ���־ǿԺʿ��������Ժʿ�������Ժʿ������̪Ժʿ��֣��ɭԺʿ�����ϳ�Ժʿ�ȣ����ࣺ֣�񻪡�����Ԫ������֣��Ϊ�л�ҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤�������ࣺ���ܹ⡢��������󻪡������ȣ����Σ����ı������ڡ�2000��12�±����ڼ����ٿ��˵ڶ����ί�ᣬ��ί����70���ˣ����Թ�����30��Ҵ�ҽԺ����Լ��ί25�ˣ�������������Ա40���ˣ�������30�ˡ���Ϊ����������ǻ�����ר�ҡ�2005��12�±����༭�����Ϻ��ٿ��˵������ί�ᣬ��ί���Թ�����50��Ҵ�ҽԺ��110���ˣ���Լ��ί43�ˣ�������������Ա90���ˣ�������20���ˣ�˶ʿ����ʦ80���ˡ��ҹ���۵�����ί3�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ���Ϊ������������ǻ�����ר�ҡ�2010��9���ڼ����ٿ����Ľ��ί�ᣬ��ί���Թ�����90��Ҵ�ҽԺ��250���ˡ�������200���ˣ��ҹ���۵�����ί4�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ������1�ˣ���Ϊ������������ǻ�����ר�ҡ�
','http://www.cmxxw.net/fqjwkzz/flv/sssp3.flv','upload/1408753116.jpg');
insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('9','��ǻ����״�ٴ�ȫ�г���  ���ߺ���Ԫ����','    ��ǻ��������1992���ڹ��ڿ�չ���������䴴��С���ָ�����ŵ�õ�ҽ����Աϲ������һ�¼���Ѹ��Ӧ�õ����⡢�����ơ����⡢�����⡢����Ƶȿ��ң�Ϊ�ٽ�ѧ����������߼���ˮƽ�����Ǵ����ˡ���ǻ�������־����
    ����ǻ�������־��������1996��11�£�ɽ��ʡ��ʱ���ţ�³�ڿ���398�ţ���ΪС16������64��ҳ�룬������ɽ��ҽ�ƴ�ѧ����ҽԺ����ɽ����ѧ��³ҽԺ�����졣���ࣺ��ϣ�ꡢ��骺����༭�����κ���Ԫ����������˵�һ���ί�ᣬ��ί24�ˡ������������Կ�������־�ܵ��˹�����֪��ר�Һ͹��ǻ��ҽ�����ߵĺ�����2000��9�»�������ų�����ͿƼ�����׼����׼�ĺ�[2000]��310�ţ�������ֵ��У����־ע��Ϊ���������ܣ�ɽ����ѧ����Ĺ����⹫�����е�ѧ���ڿ�������CN 37-1361/R��ISSN 1009-6612����16����64ҳ�룬�������ÿ���ȫ��Ψһ�ĸ�ǻ�����רҵ���Ҳ���л�ҽѧ����Ʒֻḹǻ��-�ھ����ѧ���רҵ���ڿ�����־���ʣ���־ǿԺʿ��������Ժʿ�������Ժʿ������̪Ժʿ��֣��ɭԺʿ�����ϳ�Ժʿ�ȣ����ࣺ֣�񻪡�����Ԫ������֣��Ϊ�л�ҽѧ����Ʒֻḹǻ���ھ����ѧ���鳤�������ࣺ���ܹ⡢��������󻪡������ȣ����Σ����ı������ڡ�2000��12�±����ڼ����ٿ��˵ڶ����ί�ᣬ��ί����70���ˣ����Թ�����30��Ҵ�ҽԺ����Լ��ί25�ˣ�������������Ա40���ˣ�������30�ˡ���Ϊ����������ǻ�����ר�ҡ�2005��12�±����༭�����Ϻ��ٿ��˵������ί�ᣬ��ί���Թ�����50��Ҵ�ҽԺ��110���ˣ���Լ��ί43�ˣ�������������Ա90���ˣ�������20���ˣ�˶ʿ����ʦ80���ˡ��ҹ���۵�����ί3�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ���Ϊ������������ǻ�����ר�ҡ�2010��9���ڼ����ٿ����Ľ��ί�ᣬ��ί���Թ�����90��Ҵ�ҽԺ��250���ˡ�������200���ˣ��ҹ���۵�����ί4�ˣ�̨��ʡ1�ˣ�����2�ˣ��ձ�1�ˣ������1�ˣ���Ϊ������������ǻ�����ר�ҡ�
','http://www.cmxxw.net/fqjwkzz/flv/sssp4.flv','upload/1408753200.jpg');

