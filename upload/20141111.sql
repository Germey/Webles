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

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','admin123','1','3008-08-27','#添加用户##编辑用户##添加栏目##编辑栏目##添加文章##编辑文章##查看回收站##添加类别##编辑类别##添加链接##编辑链接##添加视频##编辑视频##添加滚动图片##编辑滚动图片##添加浮动图标##编辑浮动图标##备份数据库##查看备份#','\'a\',\'64\',\'65\',\'73\',\'74\',\'75\',\'76\',\'77\',\'78\',\'79\',\'80\',\'66\',\'67\',\'81\',\'82\',\'83\',\'84\',\'85\',\'86\',\'87\',\'88\',\'68\',\'69\',\'89\',\'b\'');

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

insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1710','69','关于我们','','','admin','2014-11-08 06:51:37','','&nbsp; &nbsp; 腹腔镜技术于1992年在国内开展以来，以其创伤小、恢复快的优点得到医患人员喜爱，这一新技术迅速应用到普外、妇产科、胸外、泌尿外、神经外科等科室，为促进学术交流，提高技术水平，我们创办了《腹腔镜外科杂志》。<br />
&nbsp; &nbsp; 《腹腔镜外科杂志》创刊于1996年11月，山东省临时刊号（鲁内刊字398号），为小16开本，64个页码，季刊，山东医科大学附属医院（现山东大学齐鲁医院）主办。主编：姜希宏、寿楠海，编辑部主任胡三元。当年成立了第一届编委会，编委24人。经过三年多的试刊，该杂志受到了国内外知名专家和广大腹腔镜医务工作者的好评，2000年9月获国家新闻出版署和科技部批准（批准文号[2000]第310号），因正值合校，杂志注册为教育部主管，山东大学主办的国内外公开发行的学术期刊，刊号CN 37-1361/R，ISSN 1009-6612，大16开，64页码，季刊。该刊是全国唯一的腹腔镜外科专业刊物，也是中华医学会外科分会腹腔镜-内镜外科学组的专业性期刊。杂志顾问：黄志强院士、刘允怡院士、黎介寿院士、汤钊酞院士、郑树森院士、吴孟超院士等；主编：郑民华、胡三元，其中郑民华为中华医学会外科分会腹腔镜内镜外科学组组长；副主编：周总光、王国斌、徐大华、仇明等；主任：于文滨、王磊。2000年12月本刊在济南召开了第二届编委会，编委增至70余人，来自国内外30余家大医院，特约编委25人，正教授以上人员40余人，副教授30人。均为国内著名腹腔镜外科专家。2005年12月本刊编辑部在上海召开了第三届编委会，编委来自国内外50余家大医院，110余人，特约编委43人，正教授以上人员90余人，副教授20余人，硕士生导师80余人。我国香港地区编委3人，台湾省1人，美国2人，日本1人，均为国内外著名腹腔镜外科专家。2010年9月于济南召开第四届编委会，编委来自国内外90余家大医院，250余人。正教授200余人，我国香港地区编委4人，台湾省1人，美国2人，日本1人，意大利1人，均为国内外著名腹腔镜外科专家。<br />
&nbsp; &nbsp; 2001年度本刊被《中国期刊全文数据库（CJFD）、《中国科技核心期刊》、《中国科技期刊数据库》、《中国科技论文学引文数据库存（CSTPCD）》、《中文生物医学期刊文献数据库（CMCC）》、《中国生物医学文献检索分析系统光盘数据库（CBMdisc）》、《中国学术期刊综合评价数据库》等收录，通过Inter网或联机光盘检索均可查阅。2002年被评为第三届华东地区优秀期刊，2004年5月依托杂志成立了网站（http://www.fqjwkzz.cn），2006年本刊经过中国科技信息研究所综合评定，被收录为中国科技核心期刊（中国统计源期刊）。随着我国腹腔镜外科专业的不断发展，季刊已不能满足广大读者的需求，2004年经山东省新闻出版局批准改为双月刊，2006年页码增至90页，2009年变更为月刊，80页码。<br />
&nbsp; &nbsp; 杂志创刊至2011年4月底，共刊出75期，共约1120万字；共收稿件5443篇，刊出2431篇，其中述评33篇，专家笔谈52篇，专题研究340篇，论著1308篇，综述116篇，国外研究进展1篇，临床经验197篇，护理146篇，病例报告197篇，技术交流6篇，英文稿1篇，译文7篇。<br />
&nbsp; &nbsp; 本刊坚持“双百”方针，立足临床，贯彻理论与实践，临床与科研，普及与提高相结合的方针，实事求是，及时报道腹腔镜外科的新技术、新经验，推广腹腔镜外科的研究成果。本刊主要栏目有述评、专家笔谈、专题研究、论著、综述、英文稿、临床经验、病例报告等，每期均刊登全国知名腹腔镜专家的述评、专家笔谈、专题讲座，稿件来自包括香港在内的31个省、自治区、直辖市，面向各大医院、医学院的外科医师、腹腔镜医务工作者和图书馆发行，邮发代号24-171。<br />
&nbsp; &nbsp; 为扩大杂志在外科学界的影响，提高本刊知名度，1998年至2010年年底本刊成功主办了15次全国、10次山东省腹腔镜技术学习班及研讨会，2次国际腹腔镜内镜外科学术研讨会，与会人员5400余人，日本的Yugo Nagai教授，美国的Park教授及Frezza教授被聘为本刊的特邀编委，专程参观了《腹腔镜外科杂志》编辑部，并举行了专题学术报告，详细介绍了国外腹腔镜外科的发展情况，及手术适应证、禁忌证的选择与并发症的处理。这些活动很好地推动了我省腹腔镜外科与国际的交流与联系，并为我国腹腔镜外科医务工作者进行学术探讨、经验总结提供了良好的机会，对我国腹腔镜外科的发展和提高起到了巨大的推动作用。<br />
&nbsp; &nbsp; 2009年版中国科技期刊引证报告（核心版）中，本刊影响因子为0.381，总被引频次485，他引率0.78,平均引文数6.83。<br />
&nbsp; &nbsp; 本刊创刊以来一直受到广大读者的好评，读者范围不断扩大，历年来影响因子逐年上升，今后，本刊将改正自己的不足，不断完善和发展自我，竭尽全力将本刊办成国内一流的学术刊物。为全面提高我国腹腔镜外科医护人员的理论水平和技术水平，促进学术交流，发展我国腹腔镜外科服务。<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1711','89','招生简章','','','admin','2014-11-08 06:58:01','','&nbsp; &nbsp; 山东大学齐鲁医院“卫生部内镜诊疗技术培训基地”是山东省普通外科专业唯一的经卫生部认证的腹腔镜内镜医师培训基地，师资力量强大，具有多年的腹腔镜培训经验，以及腹腔镜医师学术交流平台——“中国科技核心期刊”《腹腔镜外科杂志》。基地培训面积400余平方米，配备中央空调、网络及有线电视，培训设备先进，功能完备，环境舒适优美，设有腹腔镜模拟训练室、动物（实验）手术室、计算机虚拟现实训练室、多媒体教室（可与齐鲁医院腹腔镜手术室同步直播手术）、图书室、茶歇室及浴室等场所。<br />
<br />
&nbsp; &nbsp; 培训基地每年面向全国举办6期腹腔镜医师培训班，每期18人，培训时间2周，严格按照卫生部内镜培训基地标准及培训要求管理和培训。学费4000元/人/期。食宿自理。报外时请带齐以下物品：单位介绍信、执业医师资格证、一寸及二寸照片各两张、山东大学齐鲁医院腹腔镜医师进修表。详情可在《腹腔镜外科杂志》网站查询，网址：http://www.fqjwkzz.cn。<br />
<br />
&nbsp; &nbsp; 报名电话：0531-82169442 E-mail：zlf8832@163.com<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1712','64','本刊一篇论文入选“2010年中国百篇最具影响国内学术论文”  ','','','admin','2012-01-06 08:42:08','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>2011年12月2日科技部中国科学技术信息研究所公布了中国科技期刊评价结果，2010年《腹腔镜外科杂志》总被引频次为983次，影响因子为0.714，在外科学类59种核心期刊中列第10位。更振奋人心的消息是，我国知名腹腔镜专家胡三元教授领导的研究小组发表在本刊2009年的论文——《经脐单孔腹腔镜胆囊切除术》入选“2010年中国百篇最具影响国内学术论文”（腹腔镜外科杂志，2009年第14卷第1期18~20页）。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次大会公布，2010年我国国内科技论文共发表53.06万篇，其中生物医药领域论文约为23.1万篇。“2010年中国百篇最具影响国内学术论文”是从2006~2010年中国科技论文与引文数据库（CSTPCD）中收录的论文中按照论文创新性、论文发表期刊水平、是否属于研究热点、论文被引证量等多项指标选取的，其中医学类共有29篇文章入选。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经脐单孔腹腔镜技术是近年腹腔镜领域的研究热点，胡三元教授领导的研究小组自制了经济、方便、可行的经脐单孔手术装置，经临床应用表明，应用该装置行经脐单孔腹腔镜胆囊切除术安全可行有效，并已在全国得到推广应用，该研究已获得山东省科技进步二等奖。此次论文入选百篇最具影响国内学术论文，不仅体现了该研究的创新性强，也表明《腹腔镜外科杂志》已初步成长为在国内具有一定影响力的医学类核心期刊。&nbsp;<br />
</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>二○一二年 一月六日 &nbsp;&nbsp;&nbsp;&nbsp;本刊编辑部 &nbsp; &nbsp;&nbsp;</span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1713','64','山东大学齐鲁医院卫生部 内镜诊疗技术普通外科培训班招生通知','','','admin','2012-02-07 08:43:43','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>山东大学齐鲁医院卫生部内镜诊疗技术普通外科第二十期培训班定于2012年3月开班，现开始报名，具体报名要求详见普通外科内镜诊疗技术培训基地招生简章。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://www.fqjwkzz.cn/doc/423423424242345666.doc\">附件：普通外科内镜诊疗技术培训基地招生简章</a></span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>张立</span><span>峰 &nbsp;&nbsp;供稿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>二○一二年 二月七日</span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1714','64','山东大学齐鲁医院卫生部 内镜诊疗技术普通外科培训班招生通知','','','admin','2012-04-08 08:44:40','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 山东大学齐鲁医院“第二十一期卫生部普通外科内镜诊疗技术培训班”定于2012年5月13日报到，5月14日开班。</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 联系电话:0531-82169441。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>张立</span><span>峰 &nbsp;&nbsp;供稿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>二○一二年 四月二十八日</span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1715','64','第二届山东省腔镜外科医师年会 暨第十九届全国腹腔镜手术演示研讨会会议通知','','','admin','2012-11-27 08:45:20','','<span style=\"background-color:#FFFFFF;\">
<p align=\"center\">
	<br />
<strong>欢迎辞</strong>
</p>
<p>
	尊敬的各位同道和朋友：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为进一步加强我省腔镜外科医师的学术交流与合作，全面展示普外、泌尿外、胸外、小儿外、骨外等多学科腔镜外科的最新进展，推动先进腔镜技术的临床应用，提高我省腔镜外科医师的技术和学术水平，由山东省医师协会腔镜外科医师分会主办，山东大学齐鲁医院、《腹腔镜外科杂志》、《临床实用外科杂志》承办的“第二届山东省腔镜外科医师年会暨第19届全国腹腔镜手术演示研讨会”将于2012年12月7～9日在山东济南隆重召开，届时将由我国著名腔镜外科专家到会做多项场学术讲座和手术演示。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;群星荟萃，精英云集，领略我国重量级腔镜外科大师的风采，实况观摩我国先进的腔镜外科手术，与大师面对面接受外科技艺的传授，是广大腔镜医师一次难得的机会。相信本次会议的召开势必对我省多学科腔镜外科的发展和应用起到巨大的推动作用，使广大的同行能够共享新理论、新技术、新方法。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们衷心地期待与您相聚在济南，共度一个愉快而又有收获的周末，携手开创我省腔镜外科领域的美好未来！欢迎各位同道踊跃参与，亮观点、谈体会，展现同道们取得的优秀成果！
</p>
<p align=\"right\">
	大会主席&nbsp;<img src=\"http://www.fqjwkzz.cn/images/2011112901.jpg\" alt=\"\" width=\"100\" height=\"40\" />
</p>
<p align=\"center\">
	<strong>组织机构</strong>
</p>
<p align=\"left\">
	<strong>大会主席</strong>
</p>
<p align=\"left\">
	胡三元
</p>
<p align=\"left\">
	<strong>共同主席（以拼音为序）<br />
</strong>戴国锋 金讯波 李 杰 李 杨 刘 君 孟 龙 亓玉忠 孙 水 田 辉 吴荣德 徐忠华 张建立 智绪亭
</p>
<p align=\"left\">
	<strong>特邀知名专家（以拼音为序）<br />
</strong>普 外：蔡建强 蔡秀军 陈孝平 杜燕夫 龚建平 黄昌明 贾宝庆 姜可伟 任建安 唐健雄 修典荣 张太平 张忠涛 周总光&nbsp;<br />
泌尿外：李汉忠 王东文 王共先 邢念增 熊元林 殷长军 张 旭&nbsp;<br />
胸 外：高树梗 何建行 胡 坚 李 辉 李单清 佟宏峰 张 逊 朱成楚&nbsp;<br />
关节镜：陈百成 崔国庆 刘玉杰&nbsp;<br />
小儿外：毕允力 黄格元 李 龙 李索林
</p>
<p align=\"left\">
	<strong>大会学术委员会：（以拼音为序）<br />
</strong>白正武 毕海勇 毕允力 蔡建强 蔡秀军 藏 琦 陈百成 陈宏坤 陈强谱 陈孝平 陈新国 陈志涛 褚海波 丛 波 崔国庆 戴国锋 杜燕夫 付志厚 高 峰 高树梗 高振利 龚建平 郭 澎 郭丰富 郭洪敏 郭培明 何建行 侯四川 胡 坚 胡德宏 胡三元 黄昌明 黄格元 贾宝庆 菅凤国 姜可伟 姜立新 姜先敏 姜 鑫 姜志娥 金讯波 井绪坤 阚金庆 李 辉 李 杰 李 龙 李 杨 李爱武 李单清 李汉忠 李恒平 李洪洲 李庆浩 李索林 李新华 梁继刚 刘 君 刘桂海 刘明廷 刘伟光 刘文广 刘月忠 刘玉杰 刘志民 路春雷 路红领 伦增军 马心健 孟 琳 孟 龙 聂清生 潘昭勋 亓玉忠 乔 森 乔一泽 秦成坤 邱增华 任建安 沈 毅 司四同 宋 飞 宋贯杰 宋 华 宋世德 隋永领 孙 磊 孙 茸 孙 水 孙福涛 孙立江 孙启栋 孙小兵 孙晓东 汤义军 唐健雄 滕学仁 田 虎 田 辉 田 涛 佟宏峰 王 健 王 军 王 磊 王 鹏 王 伟 王大伟 王东文 王共先 王国新 王建宁 王林忠 王庆安 王韶山 王英振 王昭法 温新元 吴荣德 邢念增 邢茂青 熊元林 修典荣 徐 虹 徐 建 徐东潭 徐忠华 杨国涛 杨临洪 尹长军 于 戈 于启海 于文滨 于文涛 袁庆忠 张 迪 张 康 张 蕾 张 明 张 旭 张 逊 张 勇 张 哲 张爱民 张冠宏 张光永 张怀强 张焕虎 张建立 张龙洋 张启文 张太平 张为迪 张卫华 张小桥 张益民 张忠涛 赵 斌 赵永伟 智绪亭 周 健 周总光 周尊林 朱成楚 庄 岩 邹志强
</p>
<p align=\"left\">
	<strong>组织委员会（以拼音为序）<br />
</strong>毕冬松 曾庆东 陈 波 高海东 何庆泗 江立玉 姜剑军 姜金波 姜润德 姜旭生 靳 斌 李 波 李 涛 李光新 刘崇忠 刘凤军 刘海滨 刘佳宁 刘少壮 逯景辉 吕 斌 马 榕 曲 辉 苏庆波 孙国瑞 孙启龙 王成刚 王可新 王甜甜 吴 清 轩诗进 杨其峰 禹化龙 展翰翔 张 凯 张 雷 张光永 张海峰 张秀国 张宗利 朱 民 朱健康
</p>
<p align=\"left\">
	<strong>大会秘书组<br />
</strong>于文滨 王磊 张光永
</p>
<p align=\"left\">
	<strong>会务组<br />
</strong>《腹腔镜外科杂志》编辑部<br />
地址：济南市文化西路107号（邮编250012）<br />
Email：<a href=\"mailto:fqjbjb@163.com\">fqjbjb@163.com</a><br />
电话/传真：0531-86920598<br />
<strong>会议日期<br />
</strong>2012年12月7-9日<br />
<strong>报到日期<br />
</strong>2012年12月7日全天<br />
<strong>报到地点<br />
</strong>山东省济南市南郊宾馆（济南市马鞍山路2号）<br />
<strong>会议地点<br />
</strong>山东省济南市南郊宾馆<br />
<strong>会务费<br />
</strong>300元/人，学术委员会委员免收会务费<br />
<strong>住宿标准<br />
</strong>190元/床位/天
</p>
<p>
	<strong>交通信息：<br />
</strong>①火车站：乘34或43路公交车到植物园站下车，十字路口向东即是南郊宾馆；乘出租车约20元。<br />
②济南机场：乘机场大巴到长途汽车站，转乘32路公交车到植物园站下车或到泉城广场站转乘K54路公交车到植物园站下车，十字路口向东即是；乘出租车约150元。
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img height=\"280\" alt=\"\" src=\"http://www.fqjwkzz.cn/images/ditu.jpg\" width=\"700\" />
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 详细日程安排，请点击&nbsp;<a href=\"http://www.fqjwkzz.cn/yaoqinghan.PDF\">下载附件---《邀请函》</a></span>
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1716','64','我院承办第二届山东省腔镜外科医师年会 暨第十九届全国腹腔镜手术演讨会','','','admin','2012-12-20 08:46:15','','<p style=\"color:#008000;font-family:arial, serif;background-color:#FFFFFF;\">
	&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#000000;\">第二届山东省腔镜外科医师年会暨第十九届全国腹腔镜手术演示研讨会于2012年12月8日至10日在济南南郊宾馆召开，本次会议由山东省医师协会主办，我院普外科、泌尿外科、胸外科、骨科、小儿外科和《腹腔镜外科杂志》编辑部、《临床实用外科杂志》编辑部联合承办，来自天津、河北、安徽、河南、山东等多个省市的代表共700余人参会。山东省医师协会会长刘玉芹同志出席开幕式并致辞，我院胡三元副院长作为山东省医师协会腔镜外科医师分会主任委员出席开幕式并致开幕词。</span><br />
<span style=\"color:#000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大会邀请到来自北京大学、复旦大学、301医院、浙江大学、首都医科大学、河北医科大学、山西医科大学等20余名国内知名腔镜外科专家和省内腔镜外科专家就相关领域的最新研究进展进行了46场精彩的学术讲座，并在我院手术室进行了27台腔镜手术演示，我院胡三元教授、徐忠华教授、田辉教授、智绪亭教授、戴国锋教授、曾庆东教授、于文滨教授、毕冬松教授、王磊副教授、张光永副教授等均进行了学术讲座或手术演示。各位专家教授的精彩手术演示及我院一体化手术间、先进的腔镜设备平台受到代表们的好评及称赞。</span><br />
<span style=\"color:#000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我院普外科自20世纪90年代在国际上率先开展了腹腔镜胆总管切开取石术，后在胆道疾病、脾脏疾病、结直肠癌、胃癌、肥胖症、甲状腺疾病、腹壁疝等疾病的腹腔镜手术治疗方面，在全国和山东开创了多个第一，同时把腹腔镜技术在其他学科进行了进一步推广，目前腹腔镜手术在我院各个手术科室常规开展，多项技术达到了国内领先水平。本次会议的召开为推动我省多学科腔镜外科的发展起到积极作用，同时也充分展示了我院腔镜外科的雄厚实力。</span> 
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1717','64','山东大学齐鲁医院卫生部内镜诊疗技术 普通外科培训班招生通知','','','admin','2013-03-06 08:47:28','','<span style=\"background-color:#FFFFFF;\">
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; 山东大学齐鲁医院卫生部内镜诊疗技术普通外科第二十四期培训班定于2013年4月上旬开班，现开始报名，具体报名要求详见普通外科内镜诊疗技术培训基地招生简章。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;附件：<a href=\"http://www.qlpw.net/fujian/201303zhaoshengjianzhang.doc\">普通外科内镜诊疗技术培训基地招生简章</a>
</p>
<br />
<p align=\"right\">
	山东大学齐鲁医院医师培训处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
二零一三年三月六日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	&nbsp;
</p>','1','0','0','0','0','','0','4','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1718','64','第二十届全国腹腔镜手术演示研讨会通知','','','admin','2013-04-22 08:48:29','','<span style=\"background-color:#FFFFFF;\"> 
<p align=\"center\">
	<strong>欢迎辞</strong> 
</p>
<p>
	尊敬的各位同道和朋友：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《腹腔镜外科杂志》自1996年创刊以来，不断致力于我国腹腔镜外科事业的推广，为国内广大腹腔镜内镜外科医师提供了良好的学术交流平台。自1998年举办\"首届全国腹腔镜学术研讨会\"以来，《腹腔镜外科杂志》编辑部已举办十九届全国腹腔镜学术研讨会。为进一步加强我国腔镜外科医师的学术交流与合作，全面展示腹腔镜外科的最新进展，推动先进腹腔镜技术的临床应用，提高我省腹腔镜外科医师的技术和学术水平，由山东大学齐鲁医院、《腹腔镜外科杂志》、《临床实用外科杂志》主办的\"第二十届全国腹腔镜手术演示研讨会\"将于2013年7月5～7日在山东济南隆重召开。届时将由我国著名腹腔镜外科专家到会做多项场学术讲座和手术演示。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;群星荟萃，精英云集，领略我国重量级腔镜外科大师的风采，实况观摩我国先进的腔镜外科手术，与大师面对面接受外科技艺的传授，是广大腹腔镜医师一次难得的机会。相信本次会议的召开将对我国腹腔镜外科的发展和应用起到较大的推动作用，使广大的同行能够共享新理论、新技术、新方法。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们衷心地期待与您相聚在济南，共度一个愉快而又有收获的周末，携手开创腹腔镜外科领域的美好未来！欢迎各位同道踊跃参与，亮观点、谈体会，展现同道们取得的优秀成果！
</p>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span><span style=\"background-color:#FFFFFF;\"> 
<p align=\"right\">
	大会主席&nbsp;<img src=\"http://www.fqjwkzz.cn/images/2011112901.jpg\" alt=\"\" width=\"100\" height=\"40\" /> 
</p>
<p>
	<strong>手术演示内容</strong> 
</p>
<p>
	1.腹腔镜直肠癌根治术（低位保肛）&nbsp;<br />
2.腹腔镜结肠癌根治术(左半/右半结肠手术)<br />
3.腹腔镜远/近端胃癌D2根治术<br />
4.腹腔镜袖状胃切除术<br />
5.经脐单孔腹腔镜手术（气腹法、悬吊式免气腹法，胆囊切除术、脾切除术等）<br />
6.腹腔镜保留脾脏的胰体尾切除术<br />
7.腹腔镜胰岛素瘤切除术<br />
8.腹腔镜左半肝切除术<br />
9.腹腔镜腹膜后肿瘤切除术<br />
10.腹腔镜食管裂孔疝修补术<br />
11.腹腔镜腹股沟疝修补术（TAPP/TEP）<br />
12.腹腔镜切口疝修补术<br />
13.腹腔镜造瘘口旁疝修补术<br />
14.腔镜甲状腺腺叶切除术<br />
15.腔镜辅助小切口甲状腺近全切除术（Miccoli术）<br />
16.腹腔镜保胆取石术<br />
17.腹腔镜胆总管切开取石、T型管引流术<br />
18.腹腔镜经胆囊管胆总管取石术
</p>
<p>
	*具体术式与术者根据当时情况会作适当调整
</p>
<br />
<p>
	<strong>学术讲座内容</strong> 
</p>
<p>
	<strong>主会场</strong><br />
1.国际腹腔镜技术研究热点<br />
2.中国腹腔镜外科的发展现状和方向<br />
3.腹腔镜技术：能与不能<br />
4.腹腔镜外科医生的培养
</p>
<p>
	<br />
<strong>胃肠外科专题</strong><br />
1.腹腔镜胃癌D2根治术：血管解剖及淋巴结清扫<br />
2.腹腔镜下胃肠道吻合技巧<br />
3.胃食管反流病的外科治疗<br />
4.腹腔镜结肠癌根治术：中间入路&amp;侧方入路<br />
5.NOTES和LESS结直肠手术<br />
6.腹腔镜胃癌根治术学习曲线
</p>
<p>
	<br />
<strong>肝胆胰脾外科专题</strong><br />
1.腹腔镜肝脏切除术中出血的处理<br />
2.腹腔镜肝脏左外叶切除术：标准术式<br />
3.完美腹腔镜胆囊切除术<br />
4.单孔腹腔镜脾切除术的探讨<br />
5.保留脾脏的胰体尾切除术<br />
6.腹腔镜胰腺肿瘤切除：手术技巧
</p>
<p>
	<br />
<strong>疝内分泌外科专题</strong><br />
1.LESS甲状腺手术<br />
2.乳腔镜腋窝淋巴结清扫的解剖与技巧<br />
3.腹腔镜胃旁路术手术技巧<br />
4.胃肠道代谢手术治疗2型糖尿病：手术适应症与术式选择<br />
5.腹腔镜、开腹杂交式腹壁切口疝修补术<br />
6.腹腔镜腹股沟疝修补术：解剖要点与精索腹壁化<br />
<span><br />
&nbsp;&nbsp;有关会议的详细情况&nbsp;<a href=\"http://www.fqjwkzz.cn/news/yaoqinghan-20th.pdf\">请点击此处下载相关文档</a></span> 
</p>
<div>
	<br />
</div>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1719','64','2013年大中华腔镜疝外科学院专家巡演讲 暨山东大学齐鲁医院腹腔镜疝修补高级研讨班 邀请函','','','admin','2013-04-22 08:49:05','','<span style=\"background-color:#FFFFFF;\">
<p align=\"left\">
	<strong>尊敬的专家：</strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为进一步推广规范化的腔镜疝修补技术，由大中华腔镜疝外科学院、山东大学齐鲁医院及巴德疝发展研究院联合举办的\"2013年大中华腔镜疝外科学院专家巡演暨山东大学齐鲁医院腹腔镜疝修补高级研讨班\"将于2013年4月26日-27日在山东济南举办。本次会议特别邀请唐健雄教授、李健文教授、胡三元教授、嵇振岭教授、王明刚教授、姚干教授、曾冬竹教授等进行手术演示及讲座。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会议目标：对于有腔镜基础的老师在课程结束后，能够初步掌握规范的TAPP手术技术，并且能够在TAPP技术熟练后尝试开展TEP手术。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 课程设置：课时1天，四台手术演示与讲座穿插进行。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会议时间：2013年4月27日&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会议地点：山东大学趵突泉校区综合楼三层学术报告厅&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 适值大中华腔镜疝外科学院年度工作会议在济南召开，因此本次会议群星荟萃，精英云集，领略我国腔镜疝修补大师的风采，实况观摩我国规范的腔镜疝修补手术，是广大腹腔镜医师一次很好的交流的机会。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们衷心地期待与您相聚在美丽的泉城，共度一个愉快而又有收获的周末，携手开创腔镜疝修补领域的美好未来！
</p>
<br />
<p align=\"left\">
	<strong><br />
会议日程</strong>
</p>
</span><span style=\"background-color:#FFFFFF;\">
<p>
	时间 主题 讲者
</p>
<p>
	7:50---8:10 签到
</p>
<p>
	8:10---8:40 开幕式 胡三元
</p>
<p>
	8:40---9:05 疝与腹壁外科发展的现在和未来（20+5’） 唐健雄
</p>
<p>
	9:05---9:30 腔镜切口疝修补的技术要点（20+5’） 胡三元
</p>
<p>
	9:30---9:55 造口旁疝修补的技术要点（20+5’） 嵇振岭
</p>
<p>
	10:00-10:40 TEP手术演示（手术室1）　　　　　　　　　　李健文
</p>
<p>
	10:40-11:20 TAPP手术演示（手术室2）　　　　　　　 　 张光永
</p>
<p>
	11:20-12:00 TEP手术演示（手术室1） 李健文
</p>
<p>
	12:10--12:30 腹腔镜下腹股沟区域的解剖 姚干
</p>
<p>
	12:30--13:10 TEP的手术流程和要点分析
</p>
<p>
	腹腔镜腹股沟疝修补术并发症的预防和处理 李健文
</p>
<p>
	13:10-13:50 TAPP的手术流程和要点分析
</p>
<p>
	TAPP在复发疝手术中的应用 王明刚
</p>
<p>
	13:50-14:10 腹腔镜腹股沟疝修补手术中的疝囊的处理 曾冬竹
</p>
<p>
	14:10-14:50 TAPP手术演示（手术室2） 王明刚
</p>
<p>
	14:50-15:10 问答与讨论<span></span>
</p>
</span><span style=\"background-color:#FFFFFF;\">
<p align=\"left\">
	<span><br />
<strong><a href=\"http://www.qlpw.net/news/4-27-yanjiubantongzhi.docx\">点击此处可下载详细文档资料</a></strong></span>
</p>
<div>
	<span><br />
</span>
</div>
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1720','64','我院主办大中华腔镜疝外科学院第一届年会暨全国腔镜疝研讨会','','','admin','2013-05-03 08:49:37','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 4月27日，大中华腔镜疝外科学院第一届年会暨全国腔镜疝学术研讨会在我院举行，来自湖南、湖北、四川、重庆、河南、山东等多个省市的290余名代表参会。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次会议由我院普外科主办，大会邀请到中华医学会外科学分会疝与腹壁外科学组组长、复旦大学附属华东医院唐健雄教授，瑞金医院李健文教授，东南大学嵇振岭教授，西南医院曾冬竹教授，北京朝阳医院王明刚副教授等国内相关领域知名专家。会议采用手术转播与学术讲座相结合的方式，向与会代表介绍腹腔镜疝修补的进展及手术要点。会议期间，大会主席、我院胡三元教授介绍我院院史和疝与腹壁外科发展情况，并作了精彩学术报告，大中华腔镜疝外科学院讲师、李健文教授、王明刚副教授及我院张光永副教授进行了腹腔镜下腹股沟疝修补的手术演示，代表们就腔镜疝修补相关热点及手术细节等问题同各位专家进行互动交流，专家们精彩的手术演示及学术报告使各位参会代表更加了解腔镜疝修补盲点及难点问题，对促进手术规范化起到重要作用。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我院普外科自2007年开始实施腹腔镜疝修补手术，目前常规开展腔镜腹股沟疝、切口疝、食管裂孔疝、造瘘口旁疝、脐疝修补等手术，已累计完成600余例。&nbsp;<br />
【作者：展翰翔 刘少壮 来自：普外科 责编：程晓林】</span>
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/DEFAD7F55FBABF25F762DC51C2FDCA8B.jpg\" alt=\"大中华腔镜疝外科学院1\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/2EA95E2643CCB2A825757E06E01BA0F4.jpg\" alt=\"大中华腔镜疝外科学院2\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/BB369C5EFFE0203713950B54ED1DF32E.jpg\" alt=\"大中华腔镜疝外科学院3\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<span style=\"background-color:#FFFFFF;\"></span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1721','64','我院主办大中华腔镜疝外科学院第一届年会暨全国腔镜疝研讨会','','','admin','2013-05-03 08:49:37','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 4月27日，大中华腔镜疝外科学院第一届年会暨全国腔镜疝学术研讨会在我院举行，来自湖南、湖北、四川、重庆、河南、山东等多个省市的290余名代表参会。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次会议由我院普外科主办，大会邀请到中华医学会外科学分会疝与腹壁外科学组组长、复旦大学附属华东医院唐健雄教授，瑞金医院李健文教授，东南大学嵇振岭教授，西南医院曾冬竹教授，北京朝阳医院王明刚副教授等国内相关领域知名专家。会议采用手术转播与学术讲座相结合的方式，向与会代表介绍腹腔镜疝修补的进展及手术要点。会议期间，大会主席、我院胡三元教授介绍我院院史和疝与腹壁外科发展情况，并作了精彩学术报告，大中华腔镜疝外科学院讲师、李健文教授、王明刚副教授及我院张光永副教授进行了腹腔镜下腹股沟疝修补的手术演示，代表们就腔镜疝修补相关热点及手术细节等问题同各位专家进行互动交流，专家们精彩的手术演示及学术报告使各位参会代表更加了解腔镜疝修补盲点及难点问题，对促进手术规范化起到重要作用。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我院普外科自2007年开始实施腹腔镜疝修补手术，目前常规开展腔镜腹股沟疝、切口疝、食管裂孔疝、造瘘口旁疝、脐疝修补等手术，已累计完成600余例。&nbsp;<br />
【作者：展翰翔 刘少壮 来自：普外科 责编：程晓林】</span>
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/DEFAD7F55FBABF25F762DC51C2FDCA8B.jpg\" alt=\"大中华腔镜疝外科学院1\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/2EA95E2643CCB2A825757E06E01BA0F4.jpg\" alt=\"大中华腔镜疝外科学院2\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<br />
<br />
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.qiluhospital.com/site2/images/xwdt/yydt/2013/05/03/BB369C5EFFE0203713950B54ED1DF32E.jpg\" alt=\"大中华腔镜疝外科学院3\" width=\"600\" height=\"400\" />&nbsp;&nbsp;
</p>
<span style=\"background-color:#FFFFFF;\"></span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1722','64','胡三元再次当选中国医师协会外科医师分会 微创外科医师委员会副主任委员','','','admin','2013-06-20 08:50:48','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 6月14日，中国医师协会外科医师分会微创外科医师委员会换届选举会议在北京国际会议中心召开。来自全国各省市自治区各级、各类医疗机构的76名微创外科专家作为第二届委员会委员参加了会议，经大会民主选举，我院副院长胡三元教授再次当选副主任委员。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次会议由北京大学人民医院、中国医师协会外科医师分会总干事姜可伟教授主持，中国医师协会副会长、外科医师分会会长王杉教授，中国医师协会副会长、内镜医师分会会长张阳德教授，中国医师协会外科医师分会副会长周总光教授，陈孝平教授出席会议。王杉教授充分肯定了微创外科医师委员会第一届委员会成立3年来所取得的成绩。3年来，微创外科医师委员会一直以团结全国从事微创外科专业的同道，共同致力我国微创外科的推广和发展，扶持薄弱地区开展微创手术，提高我国微创外科的学术水平，振兴我国的微创外科事业为宗旨，做了大量卓有成效的工作，对微创外科技术在全国的推广及微创外科学术水平的提高做出了巨大贡献。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 同期，第六届中国外科医师年会在北京国际会议中心召开，胡三元教授应邀主持会议，并作了\"迷你杂交单孔腹腔镜手术\"的大会发言。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【作者：刘崇忠 责编：程晓林】</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1723','64','普外科主办第20届全国腹腔镜手术演示研讨会','','','admin','2013-07-12 08:51:19','','<span style=\"background-color:#FFFFFF;\">
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7月5-7日，第20届全国腹腔镜手术演示研讨会在济南召开，本次会议由我院普外科主办，《腹腔镜外科杂志》编辑部、《中华疝与腹壁外科杂志（电子版）》、《临床实用外科杂志》编辑部联合承办，来自北京、上海、广东、福建、江苏、河北、山西、甘肃、陕西、贵州、云南、黑龙江、山东等24个省市的代表共700余人参会。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我院副院长、大会执行主席胡三元教授出席开幕式并致开幕词。大会开幕式首先播放我院宣传片及历届腹腔镜手术研讨会的纪录片。胡三元教授介绍了我院的发展历史和现状，回顾了自1996年《腹腔镜外科杂志》创刊后杂志发展的风雨历程，总结历届腹腔镜研讨会的概况，并请中华医学会外科学分会肝脏学组组长，华中科技大学同济医院陈孝平教授、中华医学会外科学分会腹腔镜内镜外科学组组长上海瑞金医院郑民华教授、中华医学会外科学分会疝与腹壁外科学组组长上海华东医院唐健雄教授、中国医师协会外科医师分会总干事北大人民医院姜可伟教授等国内普外科知名专家向历届腹腔镜会议承办单位颁发感谢状。开幕式结束后由来自瑞金医院、武汉同济医院、上海华东医院、北大人民医院、上海中山医院、南京军区总医院、北京朝阳医院、北京宣武医院、广州南方医院等42名国内知名专家就普外科各领域疾病微创治疗的最新进展进行了精彩学术讲座，并在我院手术室进行了14台腔镜手术演示，我院胡三元教授、何庆泗教授、智绪亭教授、张宗利教授、戴勇教授、曾庆东教授、刘凤军教授、于文滨教授、王磊副教授、吕斌副教授、张光永副教授等进行了学术主持、讲座和手术演示。各位专家教授的精彩手术演示及我院一体化手术间、先进的腔镜设备平台受到代表们的好评及称赞。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本次会议共邀请到省外专家63人，省内专家32人，为历届腹腔镜手术演示会参会人数最多、规模最大的一次会议。会议全面介绍普外科疾病的微创治疗新理念及新术式，对普及、规范普外科腔镜手术，促进学科发展起到积极作用，同时也充分展示了我院普外科20年来在腹腔镜手术方面所做的工作及雄厚实力。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【作者：展翰翔 刘少壮 来自：普外科 责编：程晓林】
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1724','64','胡三元当选中国医师协会内镜医师分会无气腹腹腔镜医师委员会主任委员','','','admin','2013-07-12 08:52:20','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2014年6月8日中国医师协会内镜医师分会无气腹腹腔镜医师委员会成立大会在济南举办，我院普外科胡三元教授高票当选该委员会首届主任委员，泌尿外科徐忠华教授当选副主任委员。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\"该专业委员会为中国医师协会内镜医师分会的二级分支机构，旨在规范、推广无气腹腹腔镜技术，加强专科医师培养，为广大微创外科医师提供学术交流平台。专业委员会设主任委员1名，副主任委员8名，秘书1名。共有委员57人，来自全国19个省的42家医院，其中普外科42人，妇产科12人，泌尿外科3人。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 与传统气腹腹腔镜手术相比，无气腹腹腔镜手术可避免气腹相关并发症，减少对心肺等器官功能的影响，而且可获得理想的手术视野，在日本等国家应用非常广泛，但我国目前尚未推广应用。我院普外科在胡三元教授带领下，在国内外率先完成悬吊免气腹经脐单孔胆囊切除、经腋入路悬吊单孔甲状腺次全切除等多项手术，发表SCI及国内核心期刊论文4篇，获山东省科技进步二等奖1项。</span> 
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【作者：卢明霞】<br />
</span> 
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/20140616.jpg\" width=\"552\" height=\"349\" /> 
</p>','1','0','0','0','0','','0','3','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1725','64','胡三元当选中国医师协会内镜医师分会无气腹腹腔镜医师委员会主任委员','','','admin','2014-06-16 08:53:14','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2014年6月8日中国医师协会内镜医师分会无气腹腹腔镜医师委员会成立大会在济南举办，我院普外科胡三元教授高票当选该委员会首届主任委员，泌尿外科徐忠华教授当选副主任委员。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\"该专业委员会为中国医师协会内镜医师分会的二级分支机构，旨在规范、推广无气腹腹腔镜技术，加强专科医师培养，为广大微创外科医师提供学术交流平台。专业委员会设主任委员1名，副主任委员8名，秘书1名。共有委员57人，来自全国19个省的42家医院，其中普外科42人，妇产科12人，泌尿外科3人。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 与传统气腹腹腔镜手术相比，无气腹腹腔镜手术可避免气腹相关并发症，减少对心肺等器官功能的影响，而且可获得理想的手术视野，在日本等国家应用非常广泛，但我国目前尚未推广应用。我院普外科在胡三元教授带领下，在国内外率先完成悬吊免气腹经脐单孔胆囊切除、经腋入路悬吊单孔甲状腺次全切除等多项手术，发表SCI及国内核心期刊论文4篇，获山东省科技进步二等奖1项。</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【作者：卢明霞】<br />
</span>
</p>
<p align=\"center\" style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<img src=\"http://www.fqjwkzz.cn/news/images/20140616.jpg\" width=\"552\" height=\"349\" />
</p>','1','0','0','0','0','','0','6','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1726','64','\"第二十一届全国腹腔镜手术演示研讨会\"会议通知','','','admin','2014-09-09 08:53:58','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;《腹腔镜外科杂志》自1996年创刊，一直致力于我国腹腔镜外科事业的推广，为国内广大腹腔镜内镜外科医师提供了良好的学术交流平台。自1998年举办\"首届全国腹腔镜学术研讨会\"以来，《腹腔镜外科杂志》编辑部已举办二十届全国腹腔镜学术研讨会。为进一步加强我国腔镜外科医师的学术交流与合作，全面展示腹腔镜外科的最新进展，推动先进腹腔镜技术的临床应用，由山东大学齐鲁医院、《腹腔镜外科杂志》、《临床实用外科杂志》主办的\"第二十一届全国腹腔镜手术演示研讨会\"将于2014年11月14日～16日在山东济南（山东大厦）隆重召开。</span>
</p>
<br />
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;群星荟萃，精英云集，本次会议特邀我国多位重量级腔镜外科大师进行手术演示与讲座，会议将紧扣临床实践，内容集中反映近年国内外腔镜外科的新知识、新理念、新技术、新进展，相信本次会议会为广大腹腔镜外科医师提供一个了解、把握学科发展方向及技术交流的平台。</span>
</p>
<br />
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们衷心期待与您相聚在济南，共度一个愉快而又有收获的周末，携手开创腹腔镜外科领域的美好未来！欢迎各位同道踊跃参与，亮观点、谈体会，展现同道们取得的优秀成果！</span>
</p>
<br />
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会务组：《腹腔镜外科杂志》编辑部（济南市文化西路107号，邮编250012）<br />
</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail：fqjbjb@163.com<br />
</span>
</p>
<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话/传真：0531-86920598 82169293</span>
</p>','1','0','0','0','0','','0','6','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1727','81','胡三元','','','admin','2014-11-09 09:14:58','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109062138_32280.jpg\" alt=\"\" /> 
</p>
<p>
	　　胡三元 ，1962年生于山东汶上县，现任山东大学齐鲁医院外科主任、普外科主任、外科教研室副主任，齐鲁医院内镜诊疗技术培训基地主任、杰出学术带头人，主任医师、教授、博士生导师，山东省卫生系统中青年重点科技人才。《中华临床医学实践杂志》总编、《腹腔镜外科杂志》执行主编、编辑部主任，《临床实践外科杂志》主编，《中华医学杂志英文版》特约审稿专家，教育部《Frontiers of Medicine in China》杂志、《中华消化外科杂志》、《中华普外科手术学杂志》、《中华医学文献杂志》、《中华内镜外科杂志》、《中华内镜外科杂志》、《中国普外基础与临床》、《中国实用外科杂志》、《山东大学学报 （医学版） 》、《中国现代手术学杂志》、《中国实验诊断学》、《中国内镜杂志》、《外科理论与实践》、《山东医药》、《临床外科杂志》、《中华肿瘤防治杂志》编委，《中国微创外科杂志》常务编委，卫生部内镜医师准入资格指导教材《内镜医学》编委、卫生部《外科学（药理专业）》教材编委，中国医师协会外科分会常委兼内镜医师分会常务理事、中华医学会外科分会委员兼腹腔镜—内镜外科学组副组长、中华医学会山东分会普外专业委员会副主任委员、山东医师协会外科医师分会副主任委员、山东医学会普外专业委员会腹腔镜内镜外科学组组长、山东省抗癌协会普外肿瘤委员会副主任委员。
</p>
<br />
　　1991年开始从事腹腔镜手术的动物实验和临床应用研究，1992年4月参与完成了山东省首例腹腔镜胆囊切除术，同年6月在国内率先参与开展了腹腔镜胆总管切开取石T形管引流术。1993年实施了山东省首例腹腔镜阑尾切除术、腹腔镜疝修补术。1994年在我国率先开展了腹腔镜小儿脾切除术。同时跨学科开创性地应用到妇产科、泌尿外科、神经外科、胸外科，开展了许多高难度腹腔镜手术如腔镜甲状腺手术、腹腔镜结直肠癌根治术、腹腔镜小肝癌切除术、腹腔镜食管裂孔疝修补术、腹腔镜脑室腹腔分流术、经腹腔或后腹膜腔腹腔镜肾切除、肾上腺切除、腹腔镜输尿管切开取石、腹腔镜子宫切除术等，到目前为止已完成各种腹腔镜手术62种5900余例。创建了“全国腹腔镜医师培训中心”，并对来自22个省、市、自治区103家医院267名医生进行了腹腔镜培训。1996年创办了全国唯一的腹腔镜外科专业刊物----《腹腔镜外科杂志》，国内统一刊号：CN37—1361/R ，国内外公开发行。为了推广腹腔镜技术，组织了10次全国、10次山东省腹腔镜技术学习班及研讨会，被省内83家医院、22个省外92家医院、60余次全国腹腔镜学术会议邀请做手术表演和专题讲座，由于对全国的腹腔镜内镜医学事业发展做出了巨大贡献，2005、2006年连续获两届恩德思奖（Endoscopics Award）。2003年对肝脏移植工作进行了重点支持，完全依靠自身科室力量组织成立了普外科肝脏移植中心，至2007年成功完成了50余例原位及改良背驮肝移植手术，取得了良好的疗效，已经成为我院的常规手术之一。肝移植手术开展的数量、质量均在山东地区居领先地位。<br />
<br />
　　目前承担山东省科技攻关计划1项，山东省自然科学基金1项，省卫生厅科研课题2项，横向联合课题2项，现在对腹腔镜虚拟现实训练软件开发及应用和腹腔镜机器人开发与应用进行了重点研究，并取得了一定的成果。招收从事腹腔镜技术博士研究生9人，硕士研究生17人。已完成的课题“电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用研究” 1993年获“卫生部科技进步三等奖”、“ 山东省科技进步二等奖”。1997年课题“腹腔镜在腹部外科中的临床应用研究” 获山东省科技进步三等奖，1998年课题“腹腔镜在泌尿外科中的临床应用研究” 获山东省科技进步二等奖，1999年课题“腹部腹腔镜手术的临床推广应用” 获山东省医学科技进步一等奖，2000年课题“腹腔镜胆道手术腹腔残石转归的动物实验研究” 获山东省教委科技进步二等奖。2003年课题“腹腔镜手术对红细胞CR1基因活性及免疫相关因素影响的研究”获山东省教育厅科技进步二等奖，“腹腔镜甲状腺手术的动物实验及临床应用研究”获山东省教育厅科技进步三等奖，2004年“手术不能切除胰腺癌区域性动脉化疗的基础和临床研究”分别获山东省科委科技进步三等奖、山东省卫生厅科技进步三等奖，课题“腹腔镜手术腹腔留置钛夹转归的动物实验研究” 2005年获“山东省高校优秀科研成果一等奖”。专著《腹腔镜外科手术彩色图谱》获2005年“山东省高校优秀科研成果二等奖”。2006年课题“《电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用》获教育部高等学校科技进步二等奖，课题“腹腔镜脾脏手术的基础与临床应用研究”获山东省科学技术进步二等奖”。<br />
<br />
　　已在Annals of Surgery（美国，影响因子7.678）、《Surgical Endoscopy》（美国）、《Minimally Invasive Therapy &amp; Allied Technologies》（德国）、《Surgical Laparoscopy, Endoscopy &amp; Percutaneous Techniques》（美国）、《Chir Gastroenterol》（德国）、《Chinese Medical Journal》等SCI收录杂志发表论文10篇。在《中华普通外科杂志》、《中华肝胆外科杂志》、《中华消化内镜杂志》、《中华实验外科杂志》等15种杂志上发表论文90余篇，主编了《临床导管诊治学》、《腹腔镜临床诊治技术》、《腹腔镜外科手术彩色图谱》、《腹部外科临床解剖学图谱》，主译KARL A. ZUCKER《腹腔镜外科学》（第二版），主译《机器人和远程机器人外科精要》，副主译《内镜—腹腔镜外科学》，参编《腹腔镜外科学》、《普通外科内镜手术学》、《脾脏外科学》、《现代微创外科学》《十二指肠外科》、《胃癌》、《戚仁铎诊断学》等著作。1996年制作了中华医学影像出版社出版的《腹腔镜与腹腔镜手术》录像带。2005年10月-2006年11月，完成了人民卫生出版社和中华医学会组织的腹腔镜手术教学片7部，由中华医学电子音像出版社向全国发行。2003年主讲的《腹腔镜外科学》经山东大学批准成为山东大学本科生、七年制硕士选修课程,《内镜外科学》2004年批准为山东大学医学院博硕士选修课课程。<br />','1','0','0','1','0','upload/1415514140.jpg','0','10','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1728','81','王磊','','','admin','2014-11-09 07:22:33','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109062922_11200.jpg\" alt=\"\" /> 
</p>
<p>
	　　中国协和医科大学胰腺外科博士，副教授，山东大学腔镜外科博士后。2009年赴美国hartford医院进修学习糖尿病和肥胖症的外科治疗。中华医学会外科学会青年委员，山东省医师协会腔镜医师分会秘书，山东省医学会手术学组成员,&#171; 腹腔镜外科杂志&#187;编辑部主任。
</p>
<br />
　　从师于著名外科专家赵玉沛教授、胡三元教授、李占元教授；对于胰腺脾脏外科、腔镜外科有深入研究，将微创外科理念应用于胰腺脾脏等复杂疾病的治疗，成功开展坏死性胰腺炎经皮肾镜腹膜后清创术、腹腔镜巨脾切除术等高难手术。擅长胰腺良恶性肿瘤切除手术、微创保胆手术、颈部无瘢痕腔镜甲状腺手术、腹腔镜直肠癌保肛手术；与消化内科联合开展了大量腹腔镜与内镜联合胃、肠间质肿瘤切除手术，取得了良好的疗效。每年完成腔镜手术约250例，协助省内多家医院开展腔镜手术，获得山东省科技进步一等奖、二等奖及教育部科技成果推广二等奖各一项。<br />
<br />
　　联系电话：0531-82169426，13605313603<br />
<div>
	<br />
</div>','1','0','0','0','0','upload/1415514575.jpg','0','5','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1729','81','靳斌','','','admin','2014-11-09 06:29:49','','<p>
	<span style=\"line-height:1.5;\">　　靳斌，男，医学博士后，副主任医师，副教授，硕士研究生导师，山东省医学会脾脏与门脉高压学组委员。师从中国著名的肝脏移植专家，活体肝移植的奠基人王学浩院士，独立完成肝脏移植，肝切除手术八百余例。能熟练掌握供肝的切取，病肝切除，新肝植入及术后监护等肝脏移植的全过程。可独立完成肝脏移植手术，左右半肝切除，肝门部胆管癌根治术，胰十二指肠切除术，胆囊切除，胆总管探查T管引流术，脾脏切除术，胃大部切除，结肠部分切除，腹腔镜肝切除，胆囊切除术等普外科大中型手术。</span>
</p>
<br />
　　在《Transplantation proceeding》《Heptalogy》《中华外科杂志》《中华普通外科杂志》，《中华肝胆外科杂志》，《中华实验外科杂志》，《中国普通外科杂志》，《中国现代普通外科进展》，《中国普外基础与临床杂志》，《山东大学学报》《外科理论与实践》等SCI及核心期刊发表第一作者论文28篇。参编《活体肝脏移植学》。目前承担省级课题2项，科研经费9万元。<br />
<br />
　　门诊时间：周三全天。<br />
　　联系电话：0531－82169455； 13573106158。<br />
　　E-mail:jinglewei@yahoo.com.cn<br />','1','0','0','0','0','','0','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1730','82','何庆泗','','','admin','2014-11-09 06:32:13','','　　何庆泗，医学硕士，主任医师，教授，硕士生导师，普外科副主任，胃肠外科学术带头人，山东省普通外科抗癌协会会员，山东省普通外科胃肠专业副主任委员。《中国现代普通外科进展》杂志编委，《山东大学学报》医学版特邀审稿员。1993－1995参加中国援坦桑尼亚医疗队在其首都医院工作。对普外科疑难疾病，尤其胃肠道肿瘤的外科治疗有独到见解。对胃癌、结肠癌侵犯胰腺、十二指肠的病人开展了胃癌、结肠癌根治加胰十二指肠切除术，低位直肠癌保肛治疗有深入细致的研究。<br />
<br />
　　门诊时间：周三全天<br />
　　联系电话：13791122955<br />','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1731','82','于文滨','','','admin','2014-11-09 06:33:44','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109063753_91499.jpg\" width=\"200\" alt=\"\" /> 
</p>
<p>
	　　1992年毕业于山东大学医学院，从事普外专业13年，2002年获得医学硕士学位。擅长普外科疾病的诊治，胜任常见胃肠疾病、肝胆疾病、甲状腺及周围血管疾病的外科治疗。参与腹腔镜微创手术新技术的临床研究、开发和应用，独立完成腹腔镜胆囊切除术、阑尾切除术、腹腔镜探查等微创手术。参与多个医学课题的研究工作，是卫生厅青年科学基金课题《腹腔镜甲状腺手术中CO2气体对机体呼吸循环功能的影响》的负责人。参与编写著作多部，论文多篇。有较丰富的临床工作、科研和教学经验。
</p>','1','0','0','0','0','upload/1415515110.jpg','0','5','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1732','82','刘凤军','','','admin','2014-11-09 06:39:32','','<p>
	<span style=\"line-height:1.5;\">　　刘凤军，医学博士，主任医师，博士研究生导师。专业特长：胃肠道肿瘤和微创外科，尤擅长胃癌、结直肠癌等消化道疾病的诊断和治疗，有丰富的临床经验，能解决复杂疑难病症或重大技术问题，现任中华医学会山东普外分会胃肠学组委员兼学组秘书，山东省造口协会委员，多家专业学术杂志编委。</span>
</p>
<br />
　　门诊时间：每周二全天。<br />
　　联系电话：0531－82169425； 13791122686。<br />
　　E-mail: lfj6671@163.com；<br />','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1733','82','王可新','','','admin','2014-11-09 06:41:05','','&nbsp; 王可新，医学博士，副主任医师，山东省医学会外科分会腹腔镜内镜学组委员兼秘书，曾在美国佛罗里达大学SHANDS医院研修。主要专业方向为胃肠外科、减重与糖尿病外科，尤其擅长胃癌、结直肠癌等消化道肿瘤及糖尿病的微创手术治疗，对肿瘤术前新辅助化疗及术后综合性治疗有较深造诣。<br />
<br />
&nbsp; 门诊时间：周一全天<br />
&nbsp; 联系电话：82166331 &nbsp;18560085126<br />
<div>
	<br />
</div>','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1734','83','张光永','','','admin','2014-11-09 06:42:13','','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141109/20141109073530_15927.jpg\" alt=\"\" />
</p>
<p>
	　　张光永，副主任医师、硕士生导师，中国医师协会外科医师分会疝与腹壁外科委员会委员，中华医学会疝与腹壁外科学组和腔镜外科学组“大中华腔镜疝外科学院”讲师，山东省医学会疝与腹壁外科学组委员，山东省医师协会外科医师分会秘书兼腔镜外科医师分会秘书，《中国内镜外科杂志》、《腹腔镜外科杂志》、《临床实用外科杂志》编委。从事普外科疾病的微创治疗，擅长腹腔镜技术、胆道镜技术、肝胆良恶性疾病和各种腹壁疝的诊断和治疗。2007年开始从事腹腔镜技术的基础和临床应用研究，到目前为止完成各种腔镜腹壁疝手术900余例，主办全国腔镜疝高级技术培训班3期，以第一作者发表SCI论文6篇，承担省级课题2项，参与完成国家级课题2项，作为主要完成人获山东省科技进步一等奖及二等奖各1项，参编腹腔镜著作4部，副主译1部。
</p>','1','0','0','0','0','','0','3','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1735','84','王磊','','','admin','2014-11-09 06:44:01','','<p style=\"text-align:center;\">
	<img src=\"http://www.webles.cn/attached/image/20141109/20141109062922_11200.jpg\" alt=\"\" />
</p>
<p>
	　　中国协和医科大学胰腺外科博士，副教授，山东大学腔镜外科博士后。2009年赴美国hartford医院进修学习糖尿病和肥胖症的外科治疗。中华医学会外科学会青年委员，山东省医师协会腔镜医师分会秘书，山东省医学会手术学组成员,&#171; 腹腔镜外科杂志&#187;编辑部主任。
</p>
<span></span><br />
<span>　　从师于著名外科专家赵玉沛教授、胡三元教授、李占元教授；对于胰腺脾脏外科、腔镜外科有深入研究，将微创外科理念应用于胰腺脾脏等复杂疾病的治疗，成功开展坏死性胰腺炎经皮肾镜腹膜后清创术、腹腔镜巨脾切除术等高难手术。擅长胰腺良恶性肿瘤切除手术、微创保胆手术、颈部无瘢痕腔镜甲状腺手术、腹腔镜直肠癌保肛手术；与消化内科联合开展了大量腹腔镜与内镜联合胃、肠间质肿瘤切除手术，取得了良好的疗效。每年完成腔镜手术约250例，协助省内多家医院开展腔镜手术，获得山东省科技进步一等奖、二等奖及教育部科技成果推广二等奖各一项。</span><br />
<br />
<span>　　联系电话：0531-82169426，13605313603</span><br />
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1736','85','曾庆东','','','admin','2014-11-09 06:44:22','','　　曾庆东，医学硕士，现任山东医科大学齐鲁医院普通外科主任医师、教授，研究生导师，甲状腺学科的带头人。中国医师协会外科分会委员,中国医师协会甲状腺医师委员会委员，山东医师协会普外科分会两腺医师分会常委委员,山东省医学会胰腺及兩腺学组、中青年学会委员。1995年至997年参加了援助坦桑尼亚医疗队。兼任《中国医师进修杂志》、《中国普通外科进展》、《消化外科》和《中华腹部疾病杂志》的编委。<br />
<br />
　　目前主要从事甲状腺疾病、胰腺疾病以及直肠恶性肿瘤的诊治，每年在院内的手术超过600例。在省内率先开展了腔镜辅助小切口甲状腺手术，即得到了美容效果，又达到了同样治疗效果；率先开展了保留盆腔神经丛的直肠系膜全切除术治疗直肠癌，既提高了治愈率，又提高了生活质量；率先开展了小切口胆囊切除术，减轻了病人的痛苦；率先开展了髙选迷走神经切断的贲门周围血管离断术，减少了术后胃蠕动无力的发生。尤其在甲状腺的二次手术，甲状腺癌的根治及颈部解剖；因胰头癌致黄疸的传统胰十二指肠切除和改良胰十二指肠切除；保留脾脏的胰体尾切除；胰腺内分泌肿瘤的处理；急慢性胰腺炎的处理；直肠癌根治等疾病有自己的独到的处理方法和策略。在国家级核心期刊发表学术论文50余篇，主编《实用胰腺肿瘤外科》1部，参编2部。获省科技进步奖1项，省教委科技成果奖2项，省医学会科技成果奖1项。现承担省科技厅科研项目2项，参与2项，院级科研项目1项。培养硕士研究生12名，协助培养博士研究生3名。承担山东大学医学院本科生教学任务。<br />
<br />
　　门诊时间：周三全天<br />
　　联系电话：0531-82169425　13605315569<br />
　　E-mail: zengyijia@medmail.com.cn<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1737','85','吕斌','','','admin','2014-11-09 06:45:42','','　　吕斌，2003年毕业于上海第二医科大学，获外科学博士学位。现任山东大学医学院手术学研究室副主任，山东大学齐鲁医院普外科副主任医师。国家执业医师资格考试试题开发专家委员会委员，山东省医学会外科分会实验外科学组委员。<br />
<br />
　　一直工作在临床，教学第一线。擅长甲状腺良、恶性肿瘤，甲状旁腺疾病等的诊断及治疗。在省内率先开展了完全腔镜及腔镜辅助的小切口甲状腺切除术，使微创与美容在甲状腺手术中得以最佳的结合。开展了术中神经监测技术用以避免甲状腺手术中喉返神经的损伤。承担“手术学”及“外科学”两门课程的理论及实验教学工作。在国内外期刊发表学术论文10余篇，获省科技进步奖1项，省医学会科技成果奖1项。承担省科技厅科研项目3项，卫生厅科研项目1项。<br />
<br />
　　门诊时间：周五全天<br />
　　联系电话：0531-82169425<br />
　　E-mail: doclvbin@163.com<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1738','86','胡三元','','','admin','2014-11-09 06:54:58','','<p style=\"text-align:center;\">
	<img src=\"http://www.webles.cn/attached/image/20141109/20141109062138_32280.jpg\" alt=\"\" />
</p>
<p>
	　　胡三元 ，1962年生于山东汶上县，现任山东大学齐鲁医院外科主任、普外科主任、外科教研室副主任，齐鲁医院内镜诊疗技术培训基地主任、杰出学术带头人，主任医师、教授、博士生导师，山东省卫生系统中青年重点科技人才。《中华临床医学实践杂志》总编、《腹腔镜外科杂志》执行主编、编辑部主任，《临床实践外科杂志》主编，《中华医学杂志英文版》特约审稿专家，教育部《Frontiers of Medicine in China》杂志、《中华消化外科杂志》、《中华普外科手术学杂志》、《中华医学文献杂志》、《中华内镜外科杂志》、《中华内镜外科杂志》、《中国普外基础与临床》、《中国实用外科杂志》、《山东大学学报 （医学版） 》、《中国现代手术学杂志》、《中国实验诊断学》、《中国内镜杂志》、《外科理论与实践》、《山东医药》、《临床外科杂志》、《中华肿瘤防治杂志》编委，《中国微创外科杂志》常务编委，卫生部内镜医师准入资格指导教材《内镜医学》编委、卫生部《外科学（药理专业）》教材编委，中国医师协会外科分会常委兼内镜医师分会常务理事、中华医学会外科分会委员兼腹腔镜—内镜外科学组副组长、中华医学会山东分会普外专业委员会副主任委员、山东医师协会外科医师分会副主任委员、山东医学会普外专业委员会腹腔镜内镜外科学组组长、山东省抗癌协会普外肿瘤委员会副主任委员。
</p>
<br />
<span>　　1991年开始从事腹腔镜手术的动物实验和临床应用研究，1992年4月参与完成了山东省首例腹腔镜胆囊切除术，同年6月在国内率先参与开展了腹腔镜胆总管切开取石T形管引流术。1993年实施了山东省首例腹腔镜阑尾切除术、腹腔镜疝修补术。1994年在我国率先开展了腹腔镜小儿脾切除术。同时跨学科开创性地应用到妇产科、泌尿外科、神经外科、胸外科，开展了许多高难度腹腔镜手术如腔镜甲状腺手术、腹腔镜结直肠癌根治术、腹腔镜小肝癌切除术、腹腔镜食管裂孔疝修补术、腹腔镜脑室腹腔分流术、经腹腔或后腹膜腔腹腔镜肾切除、肾上腺切除、腹腔镜输尿管切开取石、腹腔镜子宫切除术等，到目前为止已完成各种腹腔镜手术62种5900余例。创建了“全国腹腔镜医师培训中心”，并对来自22个省、市、自治区103家医院267名医生进行了腹腔镜培训。1996年创办了全国唯一的腹腔镜外科专业刊物----《腹腔镜外科杂志》，国内统一刊号：CN37—1361/R ，国内外公开发行。为了推广腹腔镜技术，组织了10次全国、10次山东省腹腔镜技术学习班及研讨会，被省内83家医院、22个省外92家医院、60余次全国腹腔镜学术会议邀请做手术表演和专题讲座，由于对全国的腹腔镜内镜医学事业发展做出了巨大贡献，2005、2006年连续获两届恩德思奖（Endoscopics Award）。2003年对肝脏移植工作进行了重点支持，完全依靠自身科室力量组织成立了普外科肝脏移植中心，至2007年成功完成了50余例原位及改良背驮肝移植手术，取得了良好的疗效，已经成为我院的常规手术之一。肝移植手术开展的数量、质量均在山东地区居领先地位。</span><br />
<br />
<span>　　目前承担山东省科技攻关计划1项，山东省自然科学基金1项，省卫生厅科研课题2项，横向联合课题2项，现在对腹腔镜虚拟现实训练软件开发及应用和腹腔镜机器人开发与应用进行了重点研究，并取得了一定的成果。招收从事腹腔镜技术博士研究生9人，硕士研究生17人。已完成的课题“电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用研究” 1993年获“卫生部科技进步三等奖”、“ 山东省科技进步二等奖”。1997年课题“腹腔镜在腹部外科中的临床应用研究” 获山东省科技进步三等奖，1998年课题“腹腔镜在泌尿外科中的临床应用研究” 获山东省科技进步二等奖，1999年课题“腹部腹腔镜手术的临床推广应用” 获山东省医学科技进步一等奖，2000年课题“腹腔镜胆道手术腹腔残石转归的动物实验研究” 获山东省教委科技进步二等奖。2003年课题“腹腔镜手术对红细胞CR1基因活性及免疫相关因素影响的研究”获山东省教育厅科技进步二等奖，“腹腔镜甲状腺手术的动物实验及临床应用研究”获山东省教育厅科技进步三等奖，2004年“手术不能切除胰腺癌区域性动脉化疗的基础和临床研究”分别获山东省科委科技进步三等奖、山东省卫生厅科技进步三等奖，课题“腹腔镜手术腹腔留置钛夹转归的动物实验研究” 2005年获“山东省高校优秀科研成果一等奖”。专著《腹腔镜外科手术彩色图谱》获2005年“山东省高校优秀科研成果二等奖”。2006年课题“《电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用》获教育部高等学校科技进步二等奖，课题“腹腔镜脾脏手术的基础与临床应用研究”获山东省科学技术进步二等奖”。</span><br />
<br />
<span>　　已在Annals of Surgery（美国，影响因子7.678）、《Surgical Endoscopy》（美国）、《Minimally Invasive Therapy &amp; Allied Technologies》（德国）、《Surgical Laparoscopy, Endoscopy &amp; Percutaneous Techniques》（美国）、《Chir Gastroenterol》（德国）、《Chinese Medical Journal》等SCI收录杂志发表论文10篇。在《中华普通外科杂志》、《中华肝胆外科杂志》、《中华消化内镜杂志》、《中华实验外科杂志》等15种杂志上发表论文90余篇，主编了《临床导管诊治学》、《腹腔镜临床诊治技术》、《腹腔镜外科手术彩色图谱》、《腹部外科临床解剖学图谱》，主译KARL A. ZUCKER《腹腔镜外科学》（第二版），主译《机器人和远程机器人外科精要》，副主译《内镜—腹腔镜外科学》，参编《腹腔镜外科学》、《普通外科内镜手术学》、《脾脏外科学》、《现代微创外科学》《十二指肠外科》、《胃癌》、《戚仁铎诊断学》等著作。1996年制作了中华医学影像出版社出版的《腹腔镜与腹腔镜手术》录像带。2005年10月-2006年11月，完成了人民卫生出版社和中华医学会组织的腹腔镜手术教学片7部，由中华医学电子音像出版社向全国发行。2003年主讲的《腹腔镜外科学》经山东大学批准成为山东大学本科生、七年制硕士选修课程,《内镜外科学》2004年批准为山东大学医学院博硕士选修课课程。</span>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1739','87','戴勇','','','admin','2014-11-09 06:58:20','','　　戴勇，主任医师、教授、硕士研究生导师。主要从事胃肠特别是结直肠、肛门良、恶性疾病的诊治。对低位直肠癌保肛手术、结直肠癌规范化治疗、大肠癌肝转移的规范化治疗、胃肠间质瘤的诊断及治疗、胃肠神经内分泌肿瘤治疗、慢性便秘的外科治疗、炎症性肠病的外科治疗、痔的外科治疗、各种腹壁疝的外科治疗等方面均有深入研究。承担胃肠间质瘤患者中华慈善总会临床援助药品格列卫及中国癌症基金会临床援助药品索坦的医学认证工作。<br />
<br />
　　门诊时间：周四全天<br />','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1740','87','毕冬松','','','admin','2014-11-09 06:59:25','','　　毕冬松，副主任医师，医学博士，曾在日本和歌山县立医科大学研修。致力于胃肠外科疾病，特别是肛门直肠疾病的诊断与治疗，于省内率先开展了经肛门、内外括约肌间直肠切除、结肠肛管吻合术，取得较好效果。对结直肠恶性肿瘤和肛门直肠的良性病变（如痔、肛门直肠周围脓肿、肛瘘、直肠脱垂、直肠前突、顽固性便秘等）有深入研究。<br />
<br />
　　门诊时间：周五全天。<br />
　　联系电话：82169425 13964066366<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1741','87','姜金波','','','admin','2014-11-09 07:00:21','','　　姜金波，医学博士，副主任医师。主要专业方向为胃肠外科、肛肠外科、腹壁疝外科。熟练掌握普通外科常见病、多发病、危急重症的诊断治疗和手术；在腹部外科良恶性疾病，特别是胃肠道肿瘤的标准化根治操作、综合治疗以及胃肠道疑难重症的手术治疗、围手术期处理等方面积累了丰富的临床经验；特别是对低位直肠癌保肛手术、肛周良性疾病及顽固性便秘的的外科治疗、难治复发疝外科治疗等方面也有较深造诣。<br />
<br />
　　门诊时间：周一全天<br />
　　联系电话：0531-82169425，13705318112<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1742','66','The current status and prospect of endoscopic thyroid operation','','','admin','2014-11-10 13:22:18','kczx/kczx1.ppt','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1743','66','Laparoscopic Surgery','','','admin','2014-11-10 13:22:18','kczx/kczx2.ppt','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1744','66','Laparoscopic Cholecystectomy, LC','','','admin','2014-11-10 13:23:57','kczx/kczx3.pptx','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1745','64','网站模板页','','','admin','2014-11-11 09:21:04','','<table cellspacing=\"10\" width=\"100%\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img alt=\"\" src=\"/attached/image/20141111/20141111092627_94147.jpg\" /> 
				</p>
				<p align=\"center\">
					胡三元 教授、博士生导师
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					　　胡三元 ，1962年生于山东汶上县，现任山东大学齐鲁医院外科主任、普外科主任、外科教研室副主任，齐鲁医院内镜诊疗技术培训基地主任、杰出学术带头人，主任医师、教授、博士生导师，山东省卫生系统中青年重点科技人才。《中华临床医学实践杂志》总编、《腹腔镜外科杂志》执行主编、编辑部主任，《临床实践外科杂志》主编，《中华医学杂志英文版》特约审稿专家，教育部《Frontiers of Medicine in China》杂志、《中华消化外科杂志》、《中华普外科手术学杂志》、《中华医学文献杂志》、《中华内镜外科杂志》、《中华内镜外科杂志》、《中国普外基础与临床》、《中国实用外科杂志》、《山东大学学报 （医学版） 》、《中国现代手术学杂志》、《中国实验诊断学》、《中国内镜杂志》、《外科理论与实践》、《山东医药》、《临床外科杂志》、《中华肿瘤防治杂志》编委，《中国微创外科杂志》常务编委，卫生部内镜医师准入资格指导教材《内镜医学》编委、卫生部《外科学（药理专业）》教材编委，中国医师协会外科分会常委兼内镜医师分会常务理事、中华医学会外科分会委员兼腹腔镜—内镜外科学组副组长、中华医学会山东分会普外专业委员会副主任委员、山东医师协会外科医师分会副主任委员、山东医学会普外专业委员会腹腔镜内镜外科学组组长、山东省抗癌协会普外肿瘤委员会副主任委员。
				</p>
				<p>
					　　1991年开始从事腹腔镜手术的动物实验和临床应用研究，1992年4月参与完成了山东省首例腹腔镜胆囊切除术，同年6月在国内率先参与开展了腹腔镜胆总管切开取石T形管引流术。1993年实施了山东省首例腹腔镜阑尾切除术、腹腔镜疝修补术。1994年在我国率先开展了腹腔镜小儿脾切除术。同时跨学科开创性地应用到妇产科、泌尿外科、神经外科、胸外科，开展了许多高难度腹腔镜手术如腔镜甲状腺手术、腹腔镜结直肠癌根治术、腹腔镜小肝癌切除术、腹腔镜食管裂孔疝修补术、腹腔镜脑室腹腔分流术、经腹腔或后腹膜腔腹腔镜肾切除、肾上腺切除、腹腔镜输尿管切开取石、腹腔镜子宫切除术等，到目前为止已完成各种腹腔镜手术62种5900余例。创建了“全国腹腔镜医师培训中心”，并对来自22个省、市、自治区103家医院267名医生进行了腹腔镜培训。1996年创办了全国唯一的腹腔镜外科专业刊物----《腹腔镜外科杂志》，国内统一刊号：CN37—1361/R ，国内外公开发行。为了推广腹腔镜技术，组织了10次全国、10次山东省腹腔镜技术学习班及研讨会，被省内83家医院、22个省外92家医院、60余次全国腹腔镜学术会议邀请做手术表演和专题讲座，由于对全国的腹腔镜内镜医学事业发展做出了巨大贡献，2005、2006年连续获两届恩德思奖（Endoscopics Award）。2003年对肝脏移植工作进行了重点支持，完全依靠自身科室力量组织成立了普外科肝脏移植中心，至2007年成功完成了50余例原位及改良背驮肝移植手术，取得了良好的疗效，已经成为我院的常规手术之一。肝移植手术开展的数量、质量均在山东地区居领先地位。
				</p>
				<p>
					　　目前承担山东省科技攻关计划1项，山东省自然科学基金1项，省卫生厅科研课题2项，横向联合课题2项，现在对腹腔镜虚拟现实训练软件开发及应用和腹腔镜机器人开发与应用进行了重点研究，并取得了一定的成果。招收从事腹腔镜技术博士研究生9人，硕士研究生17人。已完成的课题“电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用研究” 1993年获“卫生部科技进步三等奖”、“ 山东省科技进步二等奖”。1997年课题“腹腔镜在腹部外科中的临床应用研究” 获山东省科技进步三等奖，1998年课题“腹腔镜在泌尿外科中的临床应用研究” 获山东省科技进步二等奖，1999年课题“腹部腹腔镜手术的临床推广应用” 获山东省医学科技进步一等奖，2000年课题“腹腔镜胆道手术腹腔残石转归的动物实验研究” 获山东省教委科技进步二等奖。2003年课题“腹腔镜手术对红细胞CR1基因活性及免疫相关因素影响的研究”获山东省教育厅科技进步二等奖，“腹腔镜甲状腺手术的动物实验及临床应用研究”获山东省教育厅科技进步三等奖，2004年“手术不能切除胰腺癌区域性动脉化疗的基础和临床研究”分别获山东省科委科技进步三等奖、山东省卫生厅科技进步三等奖，课题“腹腔镜手术腹腔留置钛夹转归的动物实验研究” 2005年获“山东省高校优秀科研成果一等奖”。专著《腹腔镜外科手术彩色图谱》获2005年“山东省高校优秀科研成果二等奖”。2006年课题“《电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用》获教育部高等学校科技进步二等奖，课题“腹腔镜脾脏手术的基础与临床应用研究”获山东省科学技术进步二等奖”。
				</p>
				<p>
					　　已在Annals of Surgery（美国，影响因子7.678）、《Surgical Endoscopy》（美国）、《Minimally Invasive Therapy &amp; Allied Technologies》（德国）、《Surgical Laparoscopy, Endoscopy &amp; Percutaneous Techniques》（美国）、《Chir Gastroenterol》（德国）、《Chinese Medical Journal》等SCI收录杂志发表论文10篇。在《中华普通外科杂志》、《中华肝胆外科杂志》、《中华消化内镜杂志》、《中华实验外科杂志》等15种杂志上发表论文90余篇，主编了《临床导管诊治学》、《腹腔镜临床诊治技术》、《腹腔镜外科手术彩色图谱》、《腹部外科临床解剖学图谱》，主译KARL A. ZUCKER《腹腔镜外科学》（第二版），主译《机器人和远程机器人外科精要》，副主译《内镜—腹腔镜外科学》，参编《腹腔镜外科学》、《普通外科内镜手术学》、《脾脏外科学》、《现代微创外科学》《十二指肠外科》、《胃癌》、《戚仁铎诊断学》等著作。1996年制作了中华医学影像出版社出版的《腹腔镜与腹腔镜手术》录像带。2005年10月-2006年11月，完成了人民卫生出版社和中华医学会组织的腹腔镜手术教学片7部，由中华医学电子音像出版社向全国发行。2003年主讲的《腹腔镜外科学》经山东大学批准成为山东大学本科生、七年制硕士选修课程,《内镜外科学》2004年批准为山东大学医学院博硕士选修课课程。
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
					胡三元 教授、博士生导师
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span style=\"background-color:#ffffff;color:#000000;\">　　张光永，副主任医师、硕士生导师，中国医师协会外科医师分会疝与腹壁外科委员会委员，中华医学会疝与腹壁外科学组和腔镜外科学组“大中华腔镜疝外科学院”讲师，山东省医学会疝与腹壁外科学组委员，山东省医师协会外科医师分会秘书兼腔镜外科医师分会秘书，《中国内镜外科杂志》、《腹腔镜外科杂志》、《临床实用外科杂志》编委。从事普外科疾病的微创治疗，擅长腹腔镜技术、胆道镜技术、肝胆良恶性疾病和各种腹壁疝的诊断和治疗。2007年开始从事腹腔镜技术的基础和临床应用研究，到目前为止完成各种腔镜腹壁疝手术900余例，主办全国腔镜疝高级技术培训班3期，以第一作者发表SCI论文6篇，承担省级课题2项，参与完成国家级课题2项，作为主要完成人获山东省科技进步一等奖及二等奖各1项，参编腹腔镜著作4部，副主译1部。</span>
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

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('64','动态资讯','0','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('65','视频中心','0','1','2','video.php','4','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('66','课程中心','0','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('67','专家介绍','0','1','4','','1','7');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('68','杂志投稿','0','1','5','http://fqjw.cbpt.cnki.net/WKB2/WebPublication/index.aspx?mid=FQJW','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('69','关于我们','0','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('73','肝胆外科','65','1','1','video.php?classid=73','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('74','胃肠外科','65','1','2','video.php?classid=74','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('75','疝与腹壁外科','65','1','3','video.php?classid=75','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('76','胰腺外科','65','1','4','video.php?classid=76','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('77','甲状腺与乳腺外科','65','1','5','video.php?classid=77','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('78','减重与糖尿病外科','65','1','6','video.php?classid=78','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('79','泌尿外科','65','1','7','video.php?classid=79','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('80','妇科','65','1','8','video.php?classid=80','4','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('81','肝胆外科','67','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('82','胃肠外科','67','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('83','疝与腹壁外科','67','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('84','胰腺外科','67','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('85','甲状腺与乳腺外科','67','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('86','减重与糖尿病外科','67','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('87','肛肠外科','67','1','7','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('89','招生简章','0','4','1','','1','0');

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

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('24','张光永&#160;教授','http://www.webles.cn/showarticle.php?articleid=1734','upload/1408746637.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('25','于文滨 教授','http://www.webles.cn/showarticle.php?articleid=1731','upload/1408746599.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','王磊&#160;教授','http://www.webles.cn/showarticle.php?articleid=1728','upload/1408746574.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','胡三元 教授','http://www.webles.cn/showarticle.php?articleid=1727','upload/1408746524.jpg','');

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

insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('6','经脐腹腔镜单孔胆囊切除术','随着微创外科技术的发展 , 最大程度的减少手术创伤和美容效果成为外科医师的追求 。经自然腔道内 镜 手术 ( natural orifice transluminal endoscopic surgery, NOTES)应运而生 , 即通过一条长的可弯曲的内镜 , 经患者的口 、 阴道 、尿道 、肛门等自 然腔道进入体内 , 穿刺胃 、 阴道 、 膀胱 、 结直肠 、 食道等脏器进入腹腔和胸腔进行手术 , 术后患者腹壁无手术切口和疤痕 , 实现了 “无疤痕 ” (No Scar)和微创 、 更加美观的效果 。 但由 于受设备 、器械所限 , 加之技术难度高 , 存在腹腔感染和脏器穿孔的风险 , NOTES技术难以在临床广泛开展 。 我们自 2008年 1 1月 开展了经脐入路单孔腹腔镜技术 ( embryonic naturalorifice transumbilicalendoscopic surgery, E-NOTES), 同样达到了腹壁无瘢痕和较好的美容效果 , 但较 NOTES技术难度和手术风险大为降低 , 可望成为有前途的新型腹腔镜技术 。
','http://www.cmxxw.net/fqjwkzz/flv/sssp1.flv','upload/1408753184.jpg','73','胡三元','2014-11-09 00:00:00','1','11');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('7','单孔腹腔镜脾切除术','腹腔镜脾切除术( laparoscopic splenectomy， LS)于 1992 年开始见诸报道 ， 此后在世界范围内迅速开展 。 本课题组于 1994 年在国内较早开展了LS， 此后相继开展了手助腹腔 镜脾切除术 、 腹腔镜脾部分切除术等， 手术效果满意 。 LESS 技术是现阶段最可行的体表“无疤痕 ”技术， 是目前国际微创外科学界的研究热点之一， 代表着微创外科医生面临的新挑战及患者对美容效果的进一步追求 。','http://www.cmxxw.net/fqjwkzz/flv/sssp2.flv','upload/1408753039.jpg','76','胡三元','2014-11-09 00:00:00','1','10');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('8','minilap辅助单孔胆囊切除术','minilap辅助单孔胆囊切除术  类别 肝胆外科
Minilap器械直径在3mm以下，属于超细器械，其针状箭头可直接经皮刺入，取出后皮肤切口细小、愈合后疤痕难以发现，因此，并不牺牲LESS技术体表无明显手术疤痕的优点。与LESS技术不是一个新鲜的技术类似，“Minilap”也不是一个全新的概念。早在1997年，“针形腹腔镜手术”或“迷你腹腔镜手术”的概念被引入了国内外微创外科学界。该手术使用专用针形套管和器械进行操作，寻求更小的手术创伤和组织破坏，增加手术美容效果。虽然该技术具有创伤小、美容效果好等优点，但是针形器械过于细小、抓持力弱、刚性差、易损坏，因此该技术没有得到很好的推广和延续。Minilap器械可以视为在针形器械基础上的发展，具有以下优点：（1）通过经皮穿刺，避免使用套管针；（2）直径2.3mm，创伤小，术后不留疤痕；（3）硬度高，不易折损；（4）开口大，抓持力强。本组患者均使用Minilap抓钳协助牵拉胆囊和显露，手术均获得成功，表明该技术是安全、可行的。使用Minilap大大降低了单孔腹腔镜手术同轴直线视野带来的操作难度，手术器械的分离也减轻了器械在腹腔内外的相互干扰、碰撞，同时术后不留明显疤痕亦不牺牲LESS手术的美容优势，使LESS技术的广泛推广应用成为可能。
','http://www.cmxxw.net/fqjwkzz/flv/sssp3.flv','upload/1408753116.jpg','73','胡三元','2014-11-09 00:00:00','1','6');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('9','腹腔镜甲状腺次全切除术','随着微创外科技术的发展， 最大程度地减少手术创伤和取得更好地美容效果已成为外科医师的追求。 近年， 腔镜甲状腺手术日渐成熟， 但体表易显露部位仍有手术切口和疤痕， 易引起患者的心理不适，同时由于术中需充气， 术后易引起恶心、 呕吐等。 随着腹腔镜手术入路逐渐向“单孔” 甚至“无疤痕” 方向发展， 推动着腹腔镜手术向更加微创、 更加美观的
方向发展。 
悬吊式单孔甲状腺手术的优点 此手术最大的优点是美容效果， 相对传统腔镜甲状腺手术， 手术切口转移至更加隐蔽的部位; 同时悬吊设备的使用 ，避免了气腹相关并发症， 如颅内压升高 、 酸中毒 、 心动过速 、 广泛皮下气肿等 。 我们的研究表明 ， 颈部充入 CO2， 可引起一系列不利于机体的生理反应。
','http://www.cmxxw.net/fqjwkzz/flv/sssp4.flv','upload/1408753200.jpg','77','胡三元','2014-11-09 00:00:00','1','6');

