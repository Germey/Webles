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

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','admin','1','3008-08-27','#添加用户##编辑用户##添加栏目##编辑栏目##添加文章##编辑文章##查看回收站##添加类别##编辑类别##添加链接##编辑链接##添加视频##编辑视频##添加焦点图片##编辑焦点图片##添加滚动图片##编辑滚动图片##添加浮动图标##编辑浮动图标##备份数据库##查看备份#','\'a\',\'64\',\'65\',\'73\',\'74\',\'75\',\'76\',\'77\',\'78\',\'79\',\'80\',\'66\',\'67\',\'81\',\'82\',\'83\',\'84\',\'85\',\'86\',\'87\',\'88\',\'68\',\'69\',\'b\'');

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

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('64','动态资讯','0','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('65','视频中心','0','1','2','video.php','4','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('66','课程中心','0','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('67','专家介绍','0','1','4','','1','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('68','杂志投稿','0','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('69','关于我们','0','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('73','肝胆外科','65','1','1','video.php?classid=1','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('74','胃肠外科','65','1','2','video.php?classid=2','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('75','疝与腹壁外科','65','1','3','video.php?classid=3','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('76','胰腺外科','65','1','4','video.php?classid=4','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('77','甲状腺与乳腺外科','65','1','5','video.php?classid=5','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('78','减重与糖尿病外科','65','1','6','video.php?classid=6','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('79','泌尿外科','65','1','7','video.php?classid=7','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('80','妇科','65','1','8','video.php?classid=8','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('81','肝胆外科','67','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('82','胃肠外科','67','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('83','疝与腹壁外科','67','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('84','胰腺外科','67','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('85','甲状腺与乳腺外科','67','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('86','减重与糖尿病外科','67','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('87','泌尿外科','67','1','7','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('88','妇科','67','1','8','','1','0');

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

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('24','张光永&#160;教授','http://www.view.sdu.edu.cn/new/2014/0422/62732.html','upload/1408746637.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('25','于文滨 教授','http://www.view.sdu.edu.cn/new/2014/0422/62698.html','upload/1408746599.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','王磊&#160;教授','http://www.view.sdu.edu.cn/new/2014/0401/62100.html','upload/1408746574.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','胡三元 教授','http://www.view.sdu.edu.cn/new/2014/0323/61732.html','upload/1408746524.jpg','');

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

insert into `gbook`(`id`,`name`,`email`,`title`,`content`,`adddate`,`ip`,`reply`,`pass`,`hits`) values('6','wellans1979','博士报名缴费问题','博士报名缴费问题','老师，我（张伟）通过中国银行缴费的时候，由于时间紧张，我缴费之后，用我（张伟）的汇款名给另一个同学（朱萌）缴纳了报名费，在“附言”里面注明了“朱萌博士报名费，报名编号：11181”，我想咨询一下，这样能给她（朱萌）报名成功么？现在也没有看到更新的报名成功名单？所以有些着急。谢谢！','2009-11-03 11:31:53','127.0.0.1','明天上午请在研究生招生信息网上查询。','1','0');
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

insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('2','减重视频','','scroll/a7.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('3','减重视频','','scroll/a6.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('4','减重视频','','scroll/a5.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('5','减重视频','','scroll/a4.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('6','减重视频','','scroll/a3.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('7','减重视频','','scroll/a2.jpg');
insert into `photo`(`id`,`title`,`linkurl`,`imgurl`) values('8','减重视频','','scroll/a1.jpg');

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `linkurl` text NOT NULL,
  `imgurl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('6','单孔腹腔镜胃切除术 术者胡三元教授','    腹腔镜技术于1992年在国内开展以来，以其创伤小、恢复快的优点得到医患人员喜爱，这一新技术迅速应用到普外、妇产科、胸外、泌尿外、神经外科等科室，为促进学术交流，提高技术水平，我们创办了《腹腔镜外科杂志》。
    《腹腔镜外科杂志》创刊于1996年11月，山东省临时刊号（鲁内刊字398号），为小16开本，64个页码，季刊，山东医科大学附属医院（现山东大学齐鲁医院）主办。主编：姜希宏、寿楠海，编辑部主任胡三元。当年成立了第一届编委会，编委24人。经过三年多的试刊，该杂志受到了国内外知名专家和广大腹腔镜医务工作者的好评，2000年9月获国家新闻出版署和科技部批准（批准文号[2000]第310号），因正值合校，杂志注册为教育部主管，山东大学主办的国内外公开发行的学术期刊，刊号CN 37-1361/R，ISSN 1009-6612，大16开，64页码，季刊。该刊是全国唯一的腹腔镜外科专业刊物，也是中华医学会外科分会腹腔镜-内镜外科学组的专业性期刊。杂志顾问：黄志强院士、刘允怡院士、黎介寿院士、汤钊酞院士、郑树森院士、吴孟超院士等；主编：郑民华、胡三元，其中郑民华为中华医学会外科分会腹腔镜内镜外科学组组长；副主编：周总光、王国斌、徐大华、仇明等；主任：于文滨、王磊。2000年12月本刊在济南召开了第二届编委会，编委增至70余人，来自国内外30余家大医院，特约编委25人，正教授以上人员40余人，副教授30人。均为国内著名腹腔镜外科专家。2005年12月本刊编辑部在上海召开了第三届编委会，编委来自国内外50余家大医院，110余人，特约编委43人，正教授以上人员90余人，副教授20余人，硕士生导师80余人。我国香港地区编委3人，台湾省1人，美国2人，日本1人，均为国内外著名腹腔镜外科专家。2010年9月于济南召开第四届编委会，编委来自国内外90余家大医院，250余人。正教授200余人，我国香港地区编委4人，台湾省1人，美国2人，日本1人，意大利1人，均为国内外著名腹腔镜外科专家。
','http://www.cmxxw.net/fqjwkzz/flv/sssp1.flv','upload/1408753184.jpg');
insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('7','单孔腹腔镜脾切除术 术者胡三元教授','    腹腔镜技术于1992年在国内开展以来，以其创伤小、恢复快的优点得到医患人员喜爱，这一新技术迅速应用到普外、妇产科、胸外、泌尿外、神经外科等科室，为促进学术交流，提高技术水平，我们创办了《腹腔镜外科杂志》。
    《腹腔镜外科杂志》创刊于1996年11月，山东省临时刊号（鲁内刊字398号），为小16开本，64个页码，季刊，山东医科大学附属医院（现山东大学齐鲁医院）主办。主编：姜希宏、寿楠海，编辑部主任胡三元。当年成立了第一届编委会，编委24人。经过三年多的试刊，该杂志受到了国内外知名专家和广大腹腔镜医务工作者的好评，2000年9月获国家新闻出版署和科技部批准（批准文号[2000]第310号），因正值合校，杂志注册为教育部主管，山东大学主办的国内外公开发行的学术期刊，刊号CN 37-1361/R，ISSN 1009-6612，大16开，64页码，季刊。该刊是全国唯一的腹腔镜外科专业刊物，也是中华医学会外科分会腹腔镜-内镜外科学组的专业性期刊。杂志顾问：黄志强院士、刘允怡院士、黎介寿院士、汤钊酞院士、郑树森院士、吴孟超院士等；主编：郑民华、胡三元，其中郑民华为中华医学会外科分会腹腔镜内镜外科学组组长；副主编：周总光、王国斌、徐大华、仇明等；主任：于文滨、王磊。2000年12月本刊在济南召开了第二届编委会，编委增至70余人，来自国内外30余家大医院，特约编委25人，正教授以上人员40余人，副教授30人。均为国内著名腹腔镜外科专家。2005年12月本刊编辑部在上海召开了第三届编委会，编委来自国内外50余家大医院，110余人，特约编委43人，正教授以上人员90余人，副教授20余人，硕士生导师80余人。我国香港地区编委3人，台湾省1人，美国2人，日本1人，均为国内外著名腹腔镜外科专家。2010年9月于济南召开第四届编委会，编委来自国内外90余家大医院，250余人。正教授200余人，我国香港地区编委4人，台湾省1人，美国2人，日本1人，意大利1人，均为国内外著名腹腔镜外科专家。
','http://www.cmxxw.net/fqjwkzz/flv/sssp2.flv','upload/1408753039.jpg');
insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('8','mini-lap辅助单孔胆囊切除术 术者胡三元教授','    腹腔镜技术于1992年在国内开展以来，以其创伤小、恢复快的优点得到医患人员喜爱，这一新技术迅速应用到普外、妇产科、胸外、泌尿外、神经外科等科室，为促进学术交流，提高技术水平，我们创办了《腹腔镜外科杂志》。
    《腹腔镜外科杂志》创刊于1996年11月，山东省临时刊号（鲁内刊字398号），为小16开本，64个页码，季刊，山东医科大学附属医院（现山东大学齐鲁医院）主办。主编：姜希宏、寿楠海，编辑部主任胡三元。当年成立了第一届编委会，编委24人。经过三年多的试刊，该杂志受到了国内外知名专家和广大腹腔镜医务工作者的好评，2000年9月获国家新闻出版署和科技部批准（批准文号[2000]第310号），因正值合校，杂志注册为教育部主管，山东大学主办的国内外公开发行的学术期刊，刊号CN 37-1361/R，ISSN 1009-6612，大16开，64页码，季刊。该刊是全国唯一的腹腔镜外科专业刊物，也是中华医学会外科分会腹腔镜-内镜外科学组的专业性期刊。杂志顾问：黄志强院士、刘允怡院士、黎介寿院士、汤钊酞院士、郑树森院士、吴孟超院士等；主编：郑民华、胡三元，其中郑民华为中华医学会外科分会腹腔镜内镜外科学组组长；副主编：周总光、王国斌、徐大华、仇明等；主任：于文滨、王磊。2000年12月本刊在济南召开了第二届编委会，编委增至70余人，来自国内外30余家大医院，特约编委25人，正教授以上人员40余人，副教授30人。均为国内著名腹腔镜外科专家。2005年12月本刊编辑部在上海召开了第三届编委会，编委来自国内外50余家大医院，110余人，特约编委43人，正教授以上人员90余人，副教授20余人，硕士生导师80余人。我国香港地区编委3人，台湾省1人，美国2人，日本1人，均为国内外著名腹腔镜外科专家。2010年9月于济南召开第四届编委会，编委来自国内外90余家大医院，250余人。正教授200余人，我国香港地区编委4人，台湾省1人，美国2人，日本1人，意大利1人，均为国内外著名腹腔镜外科专家。
','http://www.cmxxw.net/fqjwkzz/flv/sssp3.flv','upload/1408753116.jpg');
insert into `video`(`id`,`title`,`text`,`linkurl`,`imgurl`) values('9','腹腔镜甲状腺次全切除术  术者胡三元教授','    腹腔镜技术于1992年在国内开展以来，以其创伤小、恢复快的优点得到医患人员喜爱，这一新技术迅速应用到普外、妇产科、胸外、泌尿外、神经外科等科室，为促进学术交流，提高技术水平，我们创办了《腹腔镜外科杂志》。
    《腹腔镜外科杂志》创刊于1996年11月，山东省临时刊号（鲁内刊字398号），为小16开本，64个页码，季刊，山东医科大学附属医院（现山东大学齐鲁医院）主办。主编：姜希宏、寿楠海，编辑部主任胡三元。当年成立了第一届编委会，编委24人。经过三年多的试刊，该杂志受到了国内外知名专家和广大腹腔镜医务工作者的好评，2000年9月获国家新闻出版署和科技部批准（批准文号[2000]第310号），因正值合校，杂志注册为教育部主管，山东大学主办的国内外公开发行的学术期刊，刊号CN 37-1361/R，ISSN 1009-6612，大16开，64页码，季刊。该刊是全国唯一的腹腔镜外科专业刊物，也是中华医学会外科分会腹腔镜-内镜外科学组的专业性期刊。杂志顾问：黄志强院士、刘允怡院士、黎介寿院士、汤钊酞院士、郑树森院士、吴孟超院士等；主编：郑民华、胡三元，其中郑民华为中华医学会外科分会腹腔镜内镜外科学组组长；副主编：周总光、王国斌、徐大华、仇明等；主任：于文滨、王磊。2000年12月本刊在济南召开了第二届编委会，编委增至70余人，来自国内外30余家大医院，特约编委25人，正教授以上人员40余人，副教授30人。均为国内著名腹腔镜外科专家。2005年12月本刊编辑部在上海召开了第三届编委会，编委来自国内外50余家大医院，110余人，特约编委43人，正教授以上人员90余人，副教授20余人，硕士生导师80余人。我国香港地区编委3人，台湾省1人，美国2人，日本1人，均为国内外著名腹腔镜外科专家。2010年9月于济南召开第四届编委会，编委来自国内外90余家大医院，250余人。正教授200余人，我国香港地区编委4人，台湾省1人，美国2人，日本1人，意大利1人，均为国内外著名腹腔镜外科专家。
','http://www.cmxxw.net/fqjwkzz/flv/sssp4.flv','upload/1408753200.jpg');

