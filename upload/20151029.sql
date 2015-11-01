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

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','6851189','1','3008-08-27','#添加用户##编辑用户##添加栏目##编辑栏目##添加文章##编辑文章##查看回收站##添加类别##编辑类别##添加链接##编辑链接##添加视频##编辑视频##添加滚动图片##编辑滚动图片##添加浮动图标##编辑浮动图标##备份数据库##查看备份#','\'a\',\'64\',\'65\',\'73\',\'74\',\'75\',\'76\',\'77\',\'78\',\'79\',\'80\',\'66\',\'67\',\'81\',\'82\',\'83\',\'84\',\'85\',\'86\',\'87\',\'88\',\'68\',\'69\',\'89\',\'b\'');

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

insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1710','69','关于我们','','','admin','2014-11-08 06:51:37','','<p style=\"text-align:center;\">
	&nbsp; &nbsp;&nbsp;<img src=\"/attached/image/20141113/20141113121458_21038.jpg\" width=\"400\" height=\"257\" alt=\"\" />
</p>
<p>
	&nbsp; &nbsp; 腹腔镜技术于1992年在国内开展以来，以其创伤小、恢复快的优点得到医患人员喜爱，这一新技术迅速应用到普外、妇产科、胸外、泌尿外、神经外科等科室，为促进学术交流，提高技术水平，我们创办了《腹腔镜外科杂志》。
</p>
&nbsp; &nbsp; 《腹腔镜外科杂志》创刊于1996年11月，山东省临时刊号（鲁内刊字398号），为小16开本，64个页码，季刊，山东医科大学附属医院（现山东大学齐鲁医院）主办。主编：姜希宏、寿楠海，编辑部主任胡三元。当年成立了第一届编委会，编委24人。经过三年多的试刊，该杂志受到了国内外知名专家和广大腹腔镜医务工作者的好评，2000年9月获国家新闻出版署和科技部批准（批准文号[2000]第310号），因正值合校，杂志注册为教育部主管，山东大学主办的国内外公开发行的学术期刊，刊号CN 37-1361/R，ISSN 1009-6612，大16开，64页码，季刊。该刊是全国唯一的腹腔镜外科专业刊物，也是中华医学会外科分会腹腔镜-内镜外科学组的专业性期刊。杂志顾问：黄志强院士、刘允怡院士、黎介寿院士、汤钊酞院士、郑树森院士、吴孟超院士等；主编：郑民华、胡三元，其中郑民华为中华医学会外科分会腹腔镜内镜外科学组组长；副主编：周总光、王国斌、徐大华、仇明等；主任：于文滨、王磊。2000年12月本刊在济南召开了第二届编委会，编委增至70余人，来自国内外30余家大医院，特约编委25人，正教授以上人员40余人，副教授30人。均为国内著名腹腔镜外科专家。2005年12月本刊编辑部在上海召开了第三届编委会，编委来自国内外50余家大医院，110余人，特约编委43人，正教授以上人员90余人，副教授20余人，硕士生导师80余人。我国香港地区编委3人，台湾省1人，美国2人，日本1人，均为国内外著名腹腔镜外科专家。2010年9月于济南召开第四届编委会，编委来自国内外90余家大医院，250余人。正教授200余人，我国香港地区编委4人，台湾省1人，美国2人，日本1人，意大利1人，均为国内外著名腹腔镜外科专家。<br />
&nbsp; &nbsp; 2001年度本刊被《中国期刊全文数据库（CJFD）、《中国科技核心期刊》、《中国科技期刊数据库》、《中国科技论文学引文数据库存（CSTPCD）》、《中文生物医学期刊文献数据库（CMCC）》、《中国生物医学文献检索分析系统光盘数据库（CBMdisc）》、《中国学术期刊综合评价数据库》等收录，通过Inter网或联机光盘检索均可查阅。2002年被评为第三届华东地区优秀期刊，2004年5月依托杂志成立了网站（http://www.fqjwkzz.cn），2006年本刊经过中国科技信息研究所综合评定，被收录为中国科技核心期刊（中国统计源期刊）。随着我国腹腔镜外科专业的不断发展，季刊已不能满足广大读者的需求，2004年经山东省新闻出版局批准改为双月刊，2006年页码增至90页，2009年变更为月刊，80页码。<br />
&nbsp; &nbsp; 杂志创刊至2011年4月底，共刊出75期，共约1120万字；共收稿件5443篇，刊出2431篇，其中述评33篇，专家笔谈52篇，专题研究340篇，论著1308篇，综述116篇，国外研究进展1篇，临床经验197篇，护理146篇，病例报告197篇，技术交流6篇，英文稿1篇，译文7篇。<br />
&nbsp; &nbsp; 本刊坚持“双百”方针，立足临床，贯彻理论与实践，临床与科研，普及与提高相结合的方针，实事求是，及时报道腹腔镜外科的新技术、新经验，推广腹腔镜外科的研究成果。本刊主要栏目有述评、专家笔谈、专题研究、论著、综述、英文稿、临床经验、病例报告等，每期均刊登全国知名腹腔镜专家的述评、专家笔谈、专题讲座，稿件来自包括香港在内的31个省、自治区、直辖市，面向各大医院、医学院的外科医师、腹腔镜医务工作者和图书馆发行，邮发代号24-171。<br />
&nbsp; &nbsp; 为扩大杂志在外科学界的影响，提高本刊知名度，1998年至2010年年底本刊成功主办了15次全国、10次山东省腹腔镜技术学习班及研讨会，2次国际腹腔镜内镜外科学术研讨会，与会人员5400余人，日本的Yugo Nagai教授，美国的Park教授及Frezza教授被聘为本刊的特邀编委，专程参观了《腹腔镜外科杂志》编辑部，并举行了专题学术报告，详细介绍了国外腹腔镜外科的发展情况，及手术适应证、禁忌证的选择与并发症的处理。这些活动很好地推动了我省腹腔镜外科与国际的交流与联系，并为我国腹腔镜外科医务工作者进行学术探讨、经验总结提供了良好的机会，对我国腹腔镜外科的发展和提高起到了巨大的推动作用。<br />
&nbsp; &nbsp; 2009年版中国科技期刊引证报告（核心版）中，本刊影响因子为0.381，总被引频次485，他引率0.78,平均引文数6.83。<br />
&nbsp; &nbsp; 本刊创刊以来一直受到广大读者的好评，读者范围不断扩大，历年来影响因子逐年上升，今后，本刊将改正自己的不足，不断完善和发展自我，竭尽全力将本刊办成国内一流的学术刊物。为全面提高我国腹腔镜外科医护人员的理论水平和技术水平，促进学术交流，发展我国腹腔镜外科服务。<br />','1','0','0','0','0','','0','9','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1711','89','招生简章','','','admin','2014-11-08 06:58:01','upload/1415877914.doc','<p style=\"text-align:center;\">
	<img src=\"/attached/image/20141113/20141113112212_58078.jpg\" width=\"700\" height=\"167\" alt=\"\" /> 
</p>
<p>
	<br />
</p>
<p>
	&nbsp; &nbsp; 山东大学齐鲁医院“卫生部内镜诊疗技术培训基地”是山东省普通外科专业唯一的经卫生部认证的腹腔镜内镜医师培训基地，师资力量强大，具有多年的腹腔镜培训经验，以及腹腔镜医师学术交流平台——“中国科技核心期刊”《腹腔镜外科杂志》。基地培训面积400余平方米，配备中央空调、网络及有线电视，培训设备先进，功能完备，环境舒适优美，设有腹腔镜模拟训练室、动物（实验）手术室、计算机虚拟现实训练室、多媒体教室（可与齐鲁医院腹腔镜手术室同步直播手术）、图书室、茶歇室及浴室等场所。
</p>
<p>
	<br />
</p>
<p>
	&nbsp; &nbsp; <strong>一、招收对象</strong><br />
&nbsp; &nbsp; 培训基地每年面向全国举办6期腹腔镜医师培训班，每期18人，培训时间2周。培训班面向全国招生，凡从事临床工作、已经取得医师资格证书和医师执业证书，拟从事内镜诊疗技术工作的专科医师均可报名参加。<br />
&nbsp; &nbsp; <strong>二、培训形式</strong><br />
&nbsp; &nbsp; 培训严格按照卫生部有关要求，采用理论授课、手术演示、模拟训练、动物实验等培训项目，以分阶段、分步骤的形式进行。学员经培训、考核合格后颁发《山东大学齐鲁医院内镜诊疗技术培训合格证书》。<br />
&nbsp; &nbsp;<strong> 三、 &nbsp; 学员报名</strong><br />
&nbsp; &nbsp; （一） &nbsp; &nbsp;报名时间<br />
&nbsp; &nbsp; 全年接受报名。<br />
&nbsp; &nbsp; （二） &nbsp; &nbsp;报名材料<br />
&nbsp; &nbsp;&nbsp;1．单位推荐信<br />
&nbsp; &nbsp; 2. 粘贴好照片的《山东大学齐鲁医院内镜诊疗技术培训班报名表》（见附件）一份<br />
&nbsp; &nbsp; 3.《执业医师执业证书》原件及复印件各一份<br />
&nbsp; &nbsp; 4. 一寸和二寸正面免冠彩色照片各二张<br />
&nbsp; &nbsp;&nbsp;（三）报名方式<br />
&nbsp; &nbsp; 下载并填写《山东大学齐鲁医院内镜诊疗技术培训班报名表》，电子版发送至qlyynjpx@163.com，并将加盖单位公章的报名表原件邮寄至规定地址（未及时寄出的报名表原件请于报到时交于联系人）。<br />
&nbsp; &nbsp; <strong>四、相关说明</strong><br />
&nbsp; &nbsp; 每期招收学员18人，按照报名先后顺序进行资格审查，符合报名条件者以电话方式通知为准。<br />
&nbsp; &nbsp; 报到地点：山东大学趵突泉校区槐荫路西首“卫生部内镜诊疗技术培训基地”（山东大学齐鲁医院对面）。<br />
&nbsp; &nbsp; 学习费用：4500元／人，食宿自理。<br />
&nbsp; &nbsp;&nbsp;邮寄地址：济南市文化西路107号，山东大学齐鲁医院内镜诊疗技术培训基地 ， 邮编：250012 。<br />
&nbsp; &nbsp; 联系人：张立峰 &nbsp;0531－82169442
</p>
<p>
	<br />
</p>
<p>
	<span>&nbsp; &nbsp; 点击下载：<a href=\"upload/1415877914.doc\" target=\"_blank\"><span style=\"color:#E53333;\">山东大学齐鲁医院内镜诊疗技术培训班报名表</span></a></span><a href=\"upload/1415877914.doc\" target=\"_blank\"></a> 
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1712','64','本刊一篇论文入选“2010年中国百篇最具影响国内学术论文”  ','','','admin','2012-01-06 08:42:08','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>2011年12月2日科技部中国科学技术信息研究所公布了中国科技期刊评价结果，2010年《腹腔镜外科杂志》总被引频次为983次，影响因子为0.714，在外科学类59种核心期刊中列第10位。更振奋人心的消息是，我国知名腹腔镜专家胡三元教授领导的研究小组发表在本刊2009年的论文——《经脐单孔腹腔镜胆囊切除术》入选“2010年中国百篇最具影响国内学术论文”（腹腔镜外科杂志，2009年第14卷第1期18~20页）。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次大会公布，2010年我国国内科技论文共发表53.06万篇，其中生物医药领域论文约为23.1万篇。“2010年中国百篇最具影响国内学术论文”是从2006~2010年中国科技论文与引文数据库（CSTPCD）中收录的论文中按照论文创新性、论文发表期刊水平、是否属于研究热点、论文被引证量等多项指标选取的，其中医学类共有29篇文章入选。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经脐单孔腹腔镜技术是近年腹腔镜领域的研究热点，胡三元教授领导的研究小组自制了经济、方便、可行的经脐单孔手术装置，经临床应用表明，应用该装置行经脐单孔腹腔镜胆囊切除术安全可行有效，并已在全国得到推广应用，该研究已获得山东省科技进步二等奖。此次论文入选百篇最具影响国内学术论文，不仅体现了该研究的创新性强，也表明《腹腔镜外科杂志》已初步成长为在国内具有一定影响力的医学类核心期刊。&nbsp;<br />
</span>
</p>
<p style=\"font-family:arial, serif;text-align:right;background-color:#FFFFFF;\">
	<span>二○一二年 一月六日 &nbsp;&nbsp;&nbsp;&nbsp;本刊编辑部 &nbsp; &nbsp;&nbsp;</span>
</p>','1','0','0','0','0','','0','139','0');
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
</p>','1','0','0','0','0','','0','141','0');
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
</p>','1','0','0','0','0','','0','144','0');
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
</p>','1','0','0','0','0','','0','165','0');
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
</p>','1','0','0','0','0','','0','204','0');
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
</p>','1','0','0','0','0','','0','292','0');
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
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','236','0');
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
</span><span style=\"font-family:arial, serif;line-height:normal;background-color:#FFFFFF;\"></span>','1','0','0','0','0','','0','274','0');
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
</div>','1','0','0','0','0','','0','231','0');
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
</div>','1','0','0','0','0','','0','257','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1722','64','胡三元再次当选中国医师协会外科医师分会 微创外科医师委员会副主任委员','','','admin','2013-06-20 08:50:48','','<p style=\"font-family:arial, serif;background-color:#FFFFFF;\">
	<span>&nbsp; &nbsp; &nbsp; &nbsp; 6月14日，中国医师协会外科医师分会微创外科医师委员会换届选举会议在北京国际会议中心召开。来自全国各省市自治区各级、各类医疗机构的76名微创外科专家作为第二届委员会委员参加了会议，经大会民主选举，我院副院长胡三元教授再次当选副主任委员。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次会议由北京大学人民医院、中国医师协会外科医师分会总干事姜可伟教授主持，中国医师协会副会长、外科医师分会会长王杉教授，中国医师协会副会长、内镜医师分会会长张阳德教授，中国医师协会外科医师分会副会长周总光教授，陈孝平教授出席会议。王杉教授充分肯定了微创外科医师委员会第一届委员会成立3年来所取得的成绩。3年来，微创外科医师委员会一直以团结全国从事微创外科专业的同道，共同致力我国微创外科的推广和发展，扶持薄弱地区开展微创手术，提高我国微创外科的学术水平，振兴我国的微创外科事业为宗旨，做了大量卓有成效的工作，对微创外科技术在全国的推广及微创外科学术水平的提高做出了巨大贡献。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 同期，第六届中国外科医师年会在北京国际会议中心召开，胡三元教授应邀主持会议，并作了\"迷你杂交单孔腹腔镜手术\"的大会发言。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【作者：刘崇忠 责编：程晓林】</span>
</p>
<div>
	<span><br />
</span>
</div>','1','0','0','0','0','','0','255','0');
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
</p>','1','0','0','0','0','','0','261','0');
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
</p>','1','0','0','0','0','','1','34','0');
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
</p>','1','0','0','0','0','','0','286','0');
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
</p>','1','0','0','0','0','','0','316','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1727','81','胡三元','','','admin','2014-11-09 09:14:58','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"http://www.webles.cn/upload/1415881234.jpg\" width=\"200\" height=\"274\" alt=\"\" /> 
				</p>
				<p align=\"center\">
					<strong><span style=\"font-size:16px;\">胡三元</span></strong><strong>&nbsp;</strong> 
				</p>
				<p align=\"center\">
					<strong>主任医师 二级教授&nbsp;</strong> 
				</p>
				<p align=\"center\">
					<strong>博士研究生导师</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; <strong>专业</strong>：普通外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<strong>&nbsp; 门诊时间</strong><span style=\"line-height:1.5;\">：周二上午 &nbsp;&nbsp;</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; <strong>研究领域</strong>：腹腔镜技术的基础与临床应用，主要包括：
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					（1）腹腔镜胃肠道代谢手术治疗肥胖和<span>2</span>型糖尿病的基础与临床研究
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					（2）经脐单孔腹腔镜技术和经自然腔道内镜手术
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					（3）腹腔镜机器人和虚拟现实腹腔镜训练系统
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					（4）腹腔镜技术在普外科疾病治疗中的规范化应用
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; <strong>邮箱</strong>：husanyuan1962<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@hotmail.com</span>
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:21.0pt;\">
					普外科学术带头人，博士研究生学历、博士学位、主任医师、山东大学二级教授、博士生导师。现任山东大学齐鲁医院副院长，“泰山学者”特聘教授（<span>2012</span>）、卫生部有突出贡献中青年专家（<span>2012</span>）、山东省有突出贡献中青年专家（<span>2011</span>）、山东省医学领军人才（<span>2010</span>）、山东省卫生系统杰出学术带头人（<span>2005</span>）、山东省医疗技术能手（<span>2006</span>）、<a name=\"undefined\"></a><a name=\"undefined\"></a>山东大学优秀博士生指导教师、中国医师协会<span>“</span>中国内镜杰出领袖奖<span>”</span>、<span>“</span>恩德思医学科学技术奖<span>”</span>杰出成就奖获得者、享受国务院政府特殊津贴（<span>2010</span>）。
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>【重要学术团体任职与学术兼职】</b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--中华医学会外科学分会委员、腹腔镜内镜外科学组副组长
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--中华医学会消化内镜学分会经自然腔道内镜手术学组副组长
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--中国医师协会外科医师分会常委、微创外科专业委员会副主任委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--中国医师协会内镜医师分会常委、无气腹腹腔镜委员会主任委员、普外内镜专业委员会副主任委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--卫生部内镜与微创专业技术全国考评委员会、中国医师协会内镜医师分会、世界内镜医师协会中国协会经自然腔道内镜外科专业委员会副主席
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东省医学会理事、外科分会副主任委员、腹腔镜内镜外科学组组长
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东省医师协会外科医师分会主任委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东省医师协会腔镜外科医师分会主任委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东省医师协会器官移植医师分会副主任委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东省抗癌协会普外肿瘤委员会副主任委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东大学齐鲁医院卫生部内镜诊疗技术培训基地主任
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--“腹腔镜技术基础与临床应用”山东省“十二五”高校重点实验室主任
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东大学齐鲁医院临床医学虚拟现实实验室主任
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					&nbsp;--美国胃肠内镜外科学会（SAGES）会员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--山东大学医学院学位委员会委员
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--《腹腔镜外科杂志》、《临床实用外科杂志》主编
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--《中国内镜杂志》、《中国现代医学杂志》副主编
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					--《中华普通外科杂志》、《中华消化外科杂志》、《国际外科杂志》、《中国实用外科杂志》等26种杂志常务编委或编委
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>【承担课题与基金资助情况】</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. &nbsp;胃旁路术后下丘脑POMC/CART神经元和NPY/AgRP神经元对肝 脏葡萄糖输出的调控研究（81471019）.国家自然科学基金. 2015-2018.&nbsp;&nbsp;
73万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. &nbsp;肠-脑-肝轴对2 型糖尿病大鼠胃旁路术后早期肝胰岛素敏感性的调控研究.(81270888/H0713) .国家自然科学基金. 2013-2016.&nbsp;&nbsp; 70万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					3. &nbsp;胃肠道旁路术治疗2型糖尿病的机制研究 (81070642/H0713). 国家自然科学基金. 2011-2013. &nbsp;&nbsp;38万
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					4. &nbsp;高分辨率魔角旋转核磁共振仪精确诊断甲状腺癌联合研究.山东省科技厅国际合作项目.2013.12-2015.11. 30万
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					5. &nbsp;连环蛋白P120在炎性肺损伤中的作用. 山东省科技厅国际科技合作项目.2012-2014.15万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					6. &nbsp;小肠在胃肠道旁路术缓解2型糖尿病中的作用机制(20100131110049).教育部博士点基金. 2011-2013.&nbsp; &nbsp;6万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					7. &nbsp;双亲性复合靶向控释纳米药物对结肠癌的治疗及其作用机制研究(2007AA021802).
863子课题（双亲性复合靶向控释纳米药物制剂）. 2008-2010.&nbsp; &nbsp;24万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					8. &nbsp;腹腔镜机器人开发与应用研究(2005GG3202061).山东省科技攻关计划重点项目. 2005-2008. &nbsp;&nbsp;10万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					9. &nbsp;腹腔镜虚拟现实训练软件开发及应用(Y2005C05).山东省自然科学基金.2005-2008. 7万
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>【主要获奖与课题鉴定情况】</b> 
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					1. &nbsp;刘荣，胡三元，秦鸣放，黄志强，安力春，胡明根，张光永，赵宏志，赵国栋，于文斌，吴瑜，许勇，陈波，孙向宇、许大彬. 肝胆胰微创外科技术研究及其推广应用.国家科技进步二等奖.2013
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					2. &nbsp;刘荣，胡三元，秦鸣放，黄志强，安力春，胡明根，张光永，赵宏志，赵国栋，于文斌，吴瑜，许勇，陈波，孙向宇、许大彬.肝胆胰微创外科技术研究及其推广应用.中华医学科技奖一等奖（201301080U0302）.2013
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					3. &nbsp;胡三元,智绪亭,王磊,徐忠华,张光永,王可新,张海峰,李波,亓玉忠,于文滨,陈波,刘崇忠.腹腔镜技术基础及临床应用系列研究.山东省科技进步一等奖(JB2008-1-20-1). 2008.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					4. &nbsp;胡三元,张光永,刘少壮,刘南,于文滨,王可新,李峰,杨庆芸,肖思建.自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用研究. 山东省科技进步二等奖(JB2011-2-113-1). 2011.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					5. &nbsp;胡三元,智绪亭,王磊,张光永,刘崇忠,陈波,刘凤军,姜希宏.电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用.教育部高等学校科技进步二等奖(2006-307). 2006.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					6. &nbsp;胡三元,王磊,刘庆,王可新,陈波,亓玉忠,王连臣,刘崇忠,王培林,于文滨,张光永,李　波.腹腔镜脾脏手术的基础与临床应用研究. 山东省科技进步二等奖(JB2006-2-32-1). 2006.
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					7. &nbsp;胡三元等.腹部腹腔镜手术的临床推广应用.山东省医学科技进步一等奖. 1999
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					8. &nbsp;胡三元、张光永、李波、付勤烨、于文滨.腹腔镜手术腹腔留置钛夹转归的动物实验研究.山东省教育厅高校奖自然科学类一等奖(2004310050).2004
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					9. &nbsp;胡三元等.腹腔镜胆道手术腹腔残石转归的动物实验研究.山东省教委科技进步二等奖(2000Y0134). 2000
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					10. &nbsp;胡三元等.《腹腔镜外科手术彩色图谱》.山东省高校优秀科研成果二等奖.2005
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					11.胡三元，等.腹腔镜甲状腺手术的动物实验及临床应用研究.山东省教育厅科技进步奖三等奖(2003010551).2003
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					12. 胡三元等.《腹腔镜甲状腺瘤切除术》视听教材.山东省医学会医学教育一等奖.2006
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;margin-left:21pt;text-indent:-21pt;\">
					13. 胡三元等.《腹腔镜手术系列教学DVD》4部.山东省医学会教学一等奖.2006
				</p>
				<p class=\"MsoNormal\" style=\"text-align:left;text-indent:21.1pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>【获得专利】</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. 胡三元，陈伟杰，闫治波，张光永，刘崇忠. 载重组人血管内皮抑制素的PEG-PLGA纳米粒及其制备方法（申请号：201010211937.5）.发明专利（公开号：CN101889983A）.2010
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. 胡三元，薛瑞华，霍志璞. 一种腹腔镜手术训练仪（申请号：200420097475.9）.实用新型专利（公开号：&nbsp;CN2742515）.2005
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					3. 胡三元，霍志璞，薛瑞华. 腹腔镜手术训练仪（申请号：200430089421.3）.外观设计专利（公开号：CN3457409）.2005
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\" style=\"text-align:justify;\">
					<b>【论文发表】</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. &nbsp;Liu S, Zhang G,
Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>The entire small
intestine mediates the changes in glucose homeostasis after intestinal surgery
in Goto-Kakizaki rats. Ann Surg.2012,256(6):1049-58（IF= 7.492）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. &nbsp;Wang TT, Hu SY,
Gao HD, Zhang GY, Liu CZ, Feng JB, Frezza EE.Ileal transposition controls
diabetes as well as modified duodenal jejunal bypass with better lipid lowering
in a nonobese rat model of type II diabetes by increasing GLP-1.Ann
Surg.2008,247(6):968-75.（IF=8.46）
				</p>
				<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					3. &nbsp;Chen W, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a> Suitable carriers for encapsulation and distribution of endostar: comparison of
endostar-loaded particulate carriers. Int J Nanomedicine.
2011;6:1535-41. （IF= 4.976）
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
Nuclear β-catenin Overexpression at Invasive Front in Colorectal Cancer for
Synchronous Liver Metastasis. Ann Surg Oncol. 2011;18(6):1553-9.（IF=
4.182）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					7. &nbsp;Jiang J, Ding X,
Zhang G, Su Q, Wang Z, Hu S.&nbsp; Spontaneous
retroperitoneal hematoma associated with iliac vein rupture. J Vasc
Surg.2010;52(5):1278-82（IF=3.851）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					8. &nbsp;Zhang G, Liu S, Yu
W, Wang L, Liu N, Li F, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Gasless laparoendoscopic single-site surgery
with abdominal wall lift in general surgery: initial experience.
Surg Endosc. 2011;25(1):298-304.&nbsp;（IF=3.436）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					9. &nbsp;Yu W, Li F, Wang
Z, Qi X, Li B, Zhang G, Hao X, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a> Effects of CO(2)
insufflation on cerebrum during endoscopic thyroidectomy in a porcine model.
Surg Endosc. 2011 25(5):1495-504（IF=3.436）
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
Using Sleeve Gastrectomy with Duodenal–Jejunal Bypass (SGDJB) <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012.DOI
10.1007/s11695-012-0744-7（IF=3.283）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					13. Yan Z, Chen W, Liu
S, Zhang G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Myocardial Insulin Signaling and Glucose
Transport Are Up-regulated in Goto-Kakizaki Type 2 Diabetic Rats After Ileal
Transposition. Obes Surg. 2012;22(3):493-501 （IF=3.283）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					14. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Ding X</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang K</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang H</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Zhang G</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Liu Y</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Yang Q</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Chen W</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Hu S</a>. <a name=\"undefined\"></a><a name=\"undefined\"></a>High
expression of CCL20 is associated with poor prognosis in patients with
hepatocellular carcinoma after curative resection. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303##\">J
Gastrointest Surg.</a> 2012 Apr;16(4):828-36. （IF=2.733）.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					15. Chen W, Yan Z, Liu
S, Zhang G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>The Changes of Pro-opiomelanocortin Neurons in
Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC
Neurons. J Gastrointest Surg 2011; 15(9):1618-24.（IF=2.733）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					16. Ding X, Zhu J, Zhu
M, Li C, Jian W, Jiang J, Wang Z, Hu S, Jiang X. Therapeutic Management of
Hemorrhage from Visceral Artery Pseudoaneurysms after Pancreatic Surgery. J
Gastrointest Surg. 2011 May 17. [Epub ahead of print] （IF=2.733）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					17. Zhu J, Yang Y, Ma
C, Zhang G, Wang K, Hu S.CEACAM1 Cytoplastic Expression is Closely Related to
Tumor Angiogenesis and Poorer Relapse-free Survival After Curative Resection of
Hepatocellular Carcinoma. World J Surg. 2011 Apr 26. [Epub ahead of print] （IF=2.693）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					18. Sun NF, Meng QY,
Hu SY, Tian AL, Wang RH, Liu ZX, Xu L. Correlation between the expression of
the BAG-1 gene and clinicopathologic factors in colorectal cancer. J Cancer Res
Clin Oncol. 2011;137(10):1419-24. （IF= 2.485）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					19. Wang L, Wang L, Yu
W, Zhang G, Zhang L, Tian G, Hu S. Association between age and synchronous
liver metastasis in female colorectal cancer patients. J Cancer Res Clin Oncol.
2011 Jun;137(6):959-64 （IF= 2.485）
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
Gastrointest Surg. 2009,13(12):2302-8. （IF=2.311）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					23. Zhang HF, Hu SY,
Zhang GY, Wang KX, Chen B, Li B. Laparoscopic primary choledochorrhaphy over
endonasobiliary drainage tubes. Surg Endosc.2007,21(11):2115-7.（IF=2.242）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					24. Wang L, Li CL,
Wang L, Yu WB, Yin HP, Zhang GY, Zhang LF, Li S, Hu SY.Influence of CXCR4/SDF-1
axis on E-cadherin/β-catenin complex expression in HT29 colon cancer cells.
World J Gastroenterol. 2011;17(5):625-32. (IF=2.240)
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					25. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20QY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Yang QY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang L</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20ZG%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang ZG</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20F%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li F</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20YQ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li YQ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20XJ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Ding XJ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Hu SY</a>.
Infection during transgastric and transvaginal natural orifice transluminal
endoscopic surgery in a live porcine model. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/21362281##\">Chin Med J (Engl).</a> 2011 Feb;124(4):556-61.
（IF=0.858）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					26. Wen-Bin Yu,
Guang-Yong Zhang, Feng Li, Qing-Yun Yang, San-Yuan HuTransumblical single port
laparoscopic cholecystectomy with a simple technique: Initial experience of 33
cases. Minim Invasive Ther Allied Technol. 2010;19(6):340-344（IF=1.330）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					27. Wang YL, Zhang GY,
Wang L, Wang KX, Hu SY. Endoscopic thyroidectomy by a modified anterior chest
approach: A single institution;s 5-year experience.Minim Invasive Ther Allied
Technol. 2009,18(5):297-301. （IF=1.611）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					28. Zhang H, Hu S,
Zhang G, Wang K, Chen B, Li B, Frezza EE. Laparoscopic versus open
proctocolectomy with ileal pouch-anal anastomosis. Minim Invasive Ther Allied
Technol.2007,16(3):187-91.（IF=0.978）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					29. &nbsp;Zhang GY, Hu SY,
Zhang HF, Wang KX, Wang L.A novel therapeutic approach to non-parasitic splenic
cysts: laparoscopic fenestration and endothelium obliteration.Minim Invasive
Ther Allied Technol.2007,16(5):314-6.（IF=0.978）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					30. &nbsp;Li B, Zhang Q, Liu
J, Yu H, Hu S.Clinical application of a laparoscope in ventri-peritoneal
shunting.Minim Invasive Ther Allied Technol.2007,16(6):367-9.（IF=0.978）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					31. &nbsp;Yu W, Hu S, Qi Y,
Li B.The correlation between sonographic diagnosis and laparoscopic
observations on fatty liver. J Laparoendosc Adv Surg Tech A. 2009,19(2):163-9.（IF=0.912）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					32.&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20SZ%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu SZ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun D</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Wang L</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20T%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu T</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun Y</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20MX%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Li MX</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Hu SY</a>.
A high-fat diet reverses improvement in glucose tolerance induced by
duodenal-jejunal bypass in type 2 diabetic rats. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22490596##\">Chin Med J (Engl).</a> 2012 Mar;125(5):912-9. （IF=0.858）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					33.&nbsp;&nbsp; <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sui%20GD%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Sui GD</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Zhang GY</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Niu%20ZJ%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Niu ZJ</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Hu SY</a>.
Expression of farnesyltransferase in primary liver cancer. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22882915##\">Chin Med J (Engl).</a> 2012
Jul;125(14):2427-31. （IF=0.858）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					34. &nbsp;Chen B, Hu SY,
Wang L, Wang KX, Zhang GY, Zhang HF, Xuan SJ, Wachtel MS, Frezza
EE.Laparoscopic splenectomy: a 12-year single-center experience.Chin Med J
(Engl).2008,121(8):766-8.（IF=0.858）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					35.&nbsp;&nbsp; Wang TT, Frezza
EE, Ma R, Hu SY, Liu CZ, Zhang GY, Wachtel MS, Lü XM, Feng JB, Lü CX.Loss
expression of active fragile sites genes associated with the severity of breast
epithelial abnormalities.Chin Med J (Engl).2008,121(20):1969-74. （IF=0.858）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					36. &nbsp;Wang KX, Hu SY,
Jiang XS, Zhu M, Jin B, Zhang GY, Chen B.Protective effects of ischaemic
postconditioning on warm/cold ischaemic reperfusion injury in rat liver: a
comparative study with ischaemic preconditioning.Chin Med J
(Engl).2008,121(20):2004-9. （IF=0.858）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					37. &nbsp;Zhang
GY, Wang TT, Cheng ZQ, Feng JB, Hu SY. Resolution of diabetes mellitus by ileal
transposition compared with biliopancreatic diversion in a nonobese animal
model of type 2 diabetes. Can J Surg. 2011 Aug;54(4):243-51. （IF=0.850）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					38.&nbsp;&nbsp; Jin B, Liu CZ, Hu
SY, Wang TT, Wang L, Jiang XS, Frezza EE.Influence of estrogen and androgen on
the outcome of liver transplantation. Hepatogastroenterology.
2008,55(81):207-11. （IF=0.68）
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
					<b>【出版的主要专著、译著】</b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					1. &nbsp; 《临床导管诊治学》山东科技出版社 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1996主编
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					2. &nbsp; 《腹腔镜临床诊治技术》.山东科学技术出版社. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2002.主编
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					3. &nbsp; 《腹腔镜外科手术彩色图谱》.山东科学技术出版社.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2004.主编
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					4. &nbsp; 《腹部外科临床解剖学图谱》.山东科学技术出版社.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2006.主编
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					5. &nbsp; 《腹腔镜外科学（第二版）》.山东科学技术出版社.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2005.主译
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					6. &nbsp; 《机器人和远程机器人外科精要》.山东科学技术出版社. &nbsp; &nbsp;2006.主译
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-align:justify;text-indent:-21.0pt;\">
					7. &nbsp; 《普通外科学手术图谱》 山东科技出版社. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 2010.主译
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1728','84','王磊','','','admin','2014-11-08 07:22:33','','<p style=\"text-align:center;\">
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
</div>','1','0','0','0','0','upload/1415514575.jpg','0','275','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1729','81','靳斌','','','admin','2014-11-09 06:29:49','','<p>
	<span style=\"line-height:1.5;\">
	<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td width=\"20%\" height=\"400\" valign=\"top\">
					<p align=\"center\">
						<img src=\"/attached/image/20141113/20141113095742_65384.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">靳 &nbsp;斌 &nbsp;</span></strong>
					</p>
					<p align=\"center\">
						<strong>副主任医<strong>师</strong></strong><span style=\"line-height:1.5;\"><strong>&nbsp;硕士研究生导师</strong></span>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>专业</strong>：肝胆外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>门诊时间</strong>：周三全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究领域</strong>：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>邮箱：</strong><span style=\"line-height:1.5;\"><span>jinglewei@yahoo.com.cn</span></span>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085136<br />
</span>
					</p>
					<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; 山东省医学会脾脏与门脉高压学组委员。师从中国著名的肝脏移植专家，活体肝移植的奠基人王学浩院士，独立完成肝脏移植，肝切除手术八百余例。能熟练掌握供肝的切取，病肝切除，新肝植入及术后监护等肝脏移植的全过程。可独立完成肝脏移植手术，左右半肝切除，肝门部胆管癌根治术，胰十二指肠切除术，胆囊切除，胆总管探查T管引流术，脾脏切除术，胃大部切除，结肠部分切除，腹腔镜肝切除，胆囊切除术等普外科大中型手术。</span><br />
<span style=\"line-height:1.5;\"><br />
<span>&nbsp; &nbsp; 在《Transplantation proceeding》《Heptalogy》《中华外科杂志》《中华普通外科杂志》，《中华肝胆外科杂志》，《中华实验外科杂志》，《中国普通外科杂志》，《中国现代普通外科进展》，《中国普外基础与临床杂志》，《山东大学学报》《外科理论与实践》等SCI及核心期刊发表第一作者论文28篇。参编《活体肝脏移植学》。目前承担省级课题2项，科研经费9万元。</span></span>
					</p>
					<p>
						<br />
					</p>
					<p>
						【&nbsp;教育背景】
					</p>
					<p>
						<br />
					</p>
					<p>
						【学术兼职】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【承担和参与课题情况】
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【发表的学术论文】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【获奖与成果】
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</span>
</p>
<br />','1','0','0','0','0','','0','213','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1730','82','何庆泗','','','admin','2014-11-09 06:32:13','','　　何庆泗，医学硕士，主任医师，教授，硕士生导师，普外科副主任，胃肠外科学术带头人，山东省普通外科抗癌协会会员，山东省普通外科胃肠专业副主任委员。《中国现代普通外科进展》杂志编委，《山东大学学报》医学版特邀审稿员。1993－1995参加中国援坦桑尼亚医疗队在其首都医院工作。对普外科疑难疾病，尤其胃肠道肿瘤的外科治疗有独到见解。对胃癌、结肠癌侵犯胰腺、十二指肠的病人开展了胃癌、结肠癌根治加胰十二指肠切除术，低位直肠癌保肛治疗有深入细致的研究。<br />
<br />
　　门诊时间：周三全天<br />
　　联系电话：13791122955<br />','1','0','0','0','0','','0','194','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1731','82','于文滨','','','admin','2014-11-09 06:33:44','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<img alt=\"\" src=\"/attached/image/20141113/20141113072236_33241.jpg\" /><strong><span style=\"font-size:16px;\">于文滨</span> </strong> 
				</p>
				<p align=\"center\">
					<strong>主任医师&nbsp; 硕士研究生导师</strong>&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>专业</strong>：胃肠外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; &nbsp;减重与糖尿病外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp; <strong>门诊时间</strong>：周五全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp; <strong>研究领域</strong>：胃肠道代谢手术治疗2型糖尿病的机制
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085155</span> 
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
					&nbsp; &nbsp; 现任山东大学齐鲁医院胃肠外科副主任。
				</p>
				<p>
					&nbsp; &nbsp; 1992年毕业于山东大学医学院，从事普外专业13年，2002年获得医学硕士学位。擅长普外科疾病的诊治，胜任常见胃肠疾病、肝胆疾病、甲状腺及周围血管疾病的外科治疗。参与腹腔镜微创手术新技术的临床研究、开发和应用，独立完成腹腔镜胆囊切除术、阑尾切除术、腹腔镜探查等微创手术。参与多个医学课题的研究工作，是卫生厅青年科学基金课题《腹腔镜甲状腺手术中CO2气体对机体呼吸循环功能的影响》的负责人。参与编写著作多部，论文多篇。有较丰富的临床工作、科研和教学经验。
				</p>
				<p>
					<br />
				</p>
				<p>
					【&nbsp;教育背景】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【承担和参与课题情况】
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【发表的学术论文】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【获奖与成果】
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1732','82','刘凤军','','','admin','2014-11-09 06:39:32','','<p>
	<span style=\"line-height:1.5;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113093353_44008.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;刘凤军</strong></span>&nbsp;
					</p>
					<p align=\"center\">
						<strong>主任医师 &nbsp;博士研究生导师</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;专业：胃肠外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;门诊时间：周二全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;研究领域：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;邮箱：<span>lfj6671@163.com</span>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;电话：18560085119
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;</span><span style=\"line-height:1.5;\">专业特长：胃肠道肿瘤和微创外科，尤擅长胃癌、结直肠癌等消化道疾病的诊断和治疗，有丰富的临床经验，能解决复杂疑难病症或重大技术问题，现任中华医学会山东普外分会胃肠学组委员兼学组秘书，山东省造口协会委员，多家专业学术杂志编委。</span>
					</p>
					<div>
						<br />
					</div>
					<p>
						【&nbsp;教育背景】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【承担和参与课题情况】
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【发表的学术论文】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【获奖与成果】
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1733','82','王可新','','','admin','2014-11-09 06:41:05','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141113/20141113075158_56738.jpg\" alt=\"\" /> 
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp;&nbsp;<strong><span style=\"font-size:16px;\">王可新</span>&nbsp;副主任医师</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>专业</strong>：胃肠外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; &nbsp;减重与糖尿病外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>门诊时间</strong>：周一全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>研究领域</strong>：胃肠道代谢手术治疗2型糖尿病的机制
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>邮箱</strong>：<span id=\"__kindeditor_bookmark_start_111__\"></span>wkx3726@163.com<span style=\"line-height:1.5;\"><span id=\"__kindeditor_bookmark_end_112__\"></span></span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085126</span> 
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<b><strong>【</strong>主要工作经历<strong>】</strong></b> 
				</p>
				<p class=\"MsoNormal\">
					<b></b> 
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2007.08-2008.01&nbsp; 山东大学齐鲁医院普通外科住院医师<span></span> 
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					<span style=\"background-color:#FFFFFF;\">2008.04-2009.03&nbsp; 山东大学齐鲁医院普通外科住院总医师</span>
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2008.02-2013.12 &nbsp;山东大学齐鲁医院普通外科主治医师
				</p>
				<p class=\"MsoNormal\">
					2011.12-2012.02&nbsp; 美国佛罗里达大学<span>SHANDS</span>医院学习
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>【</strong></b>学术兼职<strong>】</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\">
					中国医师协会会员<span></span> 
				</p>
				<p class=\"MsoNormal\">
					山东省医师协会外科医师分会腹腔镜内镜学组 委员兼秘书<span></span> 
				</p>
				<p class=\"MsoNormal\">
					《腹腔镜外科杂志》责任编辑<span></span> 
				</p>
				<p class=\"MsoNormal\">
					<b>&nbsp;</b> 
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>【</strong></b>发表的学术论文<strong>】</strong></b><b></b> 
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
diabetic Goto-Kakizaki rats. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a> 2013;23(11):1734-1742. <b>（共同第一）</b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(3)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Ding X</a>, <b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang K</a></b>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang H</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Zhang G</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Liu Y</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Yang Q</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Chen W</a>, <a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Hu S</a>. High
expression of CCL20 is associated with poor prognosis in patients with
hepatocellular carcinoma after curative resection <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303\">J Gastrointest
Surg.</a> 2012;16(4):828-836. <b>（共同第一）</b> 
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
					<b><b><strong>【</strong></b>承担和参与课题情况<strong>】</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b><b>(1) &nbsp;</b></b><span style=\"font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;line-height:30px;background-color:#FFFFFF;\">袖状胃切除术后小肠和下丘脑营养感受对肝脏葡萄糖输出 的调节（81471020）．国家自然科学基金（面上项目）．2015-2018．65万元．<strong>项目负责人</strong></span>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b>(2) &nbsp;</b><span style=\"line-height:1.5;\">缺血后处理对肝移植术后肝脏及小肠组织缺血再灌注损伤的保护作用</span><b>。 </b><span style=\"line-height:1.5;\">山东省优秀中青年科学家科研奖励基金计划</span><span style=\"line-height:1.5;\">. 2008-2011. &nbsp;6</span><span style=\"line-height:1.5;\">万元</span><span style=\"line-height:1.5;\">. </span><b>项目负责人</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b>(3) &nbsp;</b>Wnt蛋白促成骨髓间充质干细胞向胰岛β细胞分化的机制研究<b>。 </b>山东大学自主创新基金<span>. 2009-2012.
10</span>万元<span>. </span><b>项目组成员（第二位）<span></span></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4) &nbsp;自身抗原<span>Pdx1</span>小肽联合骨髓源性不成熟树突状细胞移植免疫治疗糖尿病。青年科技明星计划<span>.2012-2014. 5</span>万元<span>.<b> </b></span><b>项目组成员（第二位）</b><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>【</strong></b>获奖与成果<strong>】</strong></b><b></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) &nbsp;自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<b>山东省科技进步二等奖</b>.
2011. 第六位
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2) &nbsp;腹腔镜技术基础及临床应用系列研究.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<b>山东省科技进步一等奖</b>. 2008. 第六位
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(3) &nbsp;腹腔镜脾脏手术基础及临床应用系列研究.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
					<b>山东省科技进步二等奖</b>. 2007.
第四位
				</p>
			</td>
		</tr>
	</tbody>
</table>
<div>
	<br />
</div>','1','0','0','0','0','','0','405','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1734','83','张光永','','','admin','2014-11-09 06:42:13','','<p style=\"text-align:center;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113053347_22873.jpg\" alt=\"\" /> 
					</p>
					<p align=\"center\">
						&nbsp; &nbsp; &nbsp; <strong><span style=\"font-size:16px;\">张光永</span>&nbsp;</strong> 
					</p>
					<p align=\"center\">
						<strong>副主任医师 硕士研究生导师</strong> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>专业</strong>：疝与腹壁外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>门诊时间</strong>：周二全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>研究领域</strong>：胃肠道代谢手术治疗2型糖尿病的机制
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>邮箱</strong>：guangyongzhang<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@hotmail.com</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085157</span> 
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
						<strong>&nbsp; &nbsp; &nbsp;</strong><span style=\"line-height:1.5;\">现任山东大学齐鲁医院普外科副主任、疝与腹壁外科主任</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<strong>【社会兼职】</strong> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(1) &nbsp; &nbsp;中华医学会外科分会疝与腹壁外科学组委员
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(2) &nbsp; &nbsp;中国医师协会外科医师分会疝与腹壁外科委员会委员
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(3) &nbsp; &nbsp;中国医师协会内镜医师分会无气腹腹腔镜专业委员会委员
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(4) &nbsp; &nbsp;大中华腔镜疝外科学院讲师
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(5) &nbsp; &nbsp;山东省医师协会外科医师分会 秘书
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(6) &nbsp; &nbsp;山东省医师协会腔镜外科医师分会 秘书
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(7) &nbsp; &nbsp;山东省医学会疝与腹壁外科学组 委员
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						(8) &nbsp; &nbsp;《中国内镜外科杂志》、《腹腔镜外科杂志》编委
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:6.0pt;\">
						<strong>【临床专业特长】</strong><span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">
						2002年开始从事腹腔镜的动物实验、基础及临床研究，2007年开始从事腹腹壁疝的临床应用和基础研究，到目前为止完成腹腔镜腹股沟疝TAPP手术883例、TEP手术297例
，切口疝修补术126例，造瘘口旁疝修补术64例，食道裂孔疝单纯修补术62例，膈疝修补术3例,主办全国腔镜疝高级技术培训班4期，被全国40余家医院、60余次全国疝与腹壁外科会议和培训班邀请作手术演示和专题讲座，共培训全国从事腔镜疝修补术的800余名.
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">
						<strong>【承担和参与课题情况】</strong> 
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:30.0pt;\">
						<span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(1) &nbsp;肠-肝胆汁酸感受在胃旁路术后早期胰岛素敏感性改善中的作用及机制研究(81370496).国家自然科学基金（面上项目）.2014-2017.70万元.<b><u>项目负责人</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(2) &nbsp;胃和小肠在胃旁路术缓解<span>2</span>型糖尿病中的作用和机制<span>(ZR2012HQ030).</span>山东省自然科学基金（青年基金）<span>.2012-2014.6</span>万元.<b><u>项目负责人</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(3) &nbsp;胃肠道重组对糖尿病治疗作用及机制的动物实验研究（2008BS03022）.山东省优秀中青年科学家科研奖励基金计划.2008-2011. 6万元.<b><u>项目负责人</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(4) &nbsp;腹腔镜手术机器人人机交互系统的设计和实现.山东大学自主创新基金（自由探索项目第二类）.2012-2015. 20万元.<b><u>项目负责人</u></b>.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(5) &nbsp;<a><span>胃肠道旁路术治疗</span>2<span>型糖尿病</span><span>的机制研究</span></a> (81070642/H0713). 国家自然科学基金. 2011—2013. 38万.<b><u> </u></b><b><u>项目组成员（第</u></b><b><u>3</u></b><b><u>位）</u></b> <span>&nbsp;</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(6) &nbsp;小肠在胃肠道旁路术缓解<span>2</span>型糖尿病中的作用机制<span>(20100131110049). </span>教育部博士点基金<span>.</span>2011—2013. 6万.<b><u> </u></b><b><u>项目组成员（第</u></b><b><u>3</u></b><b><u>位）</u></b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:6.0pt;\">
						<strong>【发表的学术论文】</strong><span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(1) &nbsp;Liu S, <b><u>Zhang G</u></b>, Wang L, Sun
D, Chen W, Yan Z, Sun Y, Hu S. The entire small intestine mediates the changes
in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats. Ann Surg.2012,<span>256(6):104</span>9-58<b>（</b><b>SCI</b><b>，共同第一作者，</b><b> <span>IF= 7.474</span></b><b>）</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(2) &nbsp;<b><u>Zhang G</u></b>, Liu S, Yu W, Wang L, Liu N, Li F, Hu S. Gasless
laparoendoscopic single-site surgery with abdominal wall lift in general
surgery: initial experience. Surg Endosc. 2011;25(1):298-304.<b>（</b><b>SCI</b><b>，</b><b>IF=3.436</b><b>）</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(3) &nbsp;<b><u>Zhang GY</u></b>, Wang TT, Cheng ZQ, Feng
JB, Hu SY. Resolution of diabetes mellitus by ileal transposition compared with
biliopancreatic diversion in a nonobese animal model of type 2 diabetes. Can J
Surg. 2011;54(4):243-51.<b>（</b><b>SCI</b><b>，</b><b>IF=0.850</b><b>）</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(4) &nbsp;<b><u>Zhang
GY</u></b>,
Hu SY, Zhang HF, Wang KX, Wang L. A novel therapeutic approach to non-parasitic
splenic cysts: laparoscopic fenestration and endothelium obliteration.Minim
Invasive Ther Allied Technol. 2007;16(5):314-6. <b>（</b><b>SCI</b><b>，</b><b>IF=1.330</b><b>）</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(5) &nbsp;<b><u>张光永</u></b>,胡三元,智绪亭,等. <a name=\"undefined\"></a><a name=\"undefined\"></a>腹腔镜技术在肝内外胆管结石治疗中的应用:附682例临床分析 [J]. 中华外科杂志, 2008, 46 (23):1787-1788.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(6) &nbsp;<b><u>张光永</u></b>,胡三元,智绪亭,等.腹腔镜技术治疗胰腺囊肿七例报告.中华肝胆外科杂志.2007,13(8): 531-532.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(7) &nbsp;<b><u>张光永</u></b><b><u>,</u></b>胡三元,李峰等. <a name=\"undefined\"></a><a name=\"undefined\"></a>经脐单孔腹腔镜胆囊切除术.腹腔镜外科杂志,2009,14
(1):18-20 .（<b>2010</b><b>年中国百篇最具影响力国内论文</b>）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(8) &nbsp;<b><u>张光永</u></b><b><u>,</u></b>杨庆芸,胡三元等. 经脐单孔腹腔镜外科技术的现状与展望.腹腔镜外科杂志,
2009,14 (1):78-80 .
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:6.0pt;\">
						<strong>【获奖与成果】</strong><span></span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(1) &nbsp;刘荣，胡三元，秦鸣放，黄志强，安力春，胡明根，<b><u>张光永</u></b>，赵宏志，赵国栋，于文滨，吴瑜，许勇，陈波，孙向宇，许大彬. 肝胆胰微创外科技术研究及其推广应用.中华医学科技奖一等奖（201301080U0302）.2013
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						(2) &nbsp;胡三元，<b><u>张光永</u></b><b>，</b>刘少壮，刘南，于文滨，王可新，李峰，杨庆芸，肖思建<span>. </span>自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用<span>. </span><b>山东省科技进步二等奖</b><span>. 2011.</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						<span>(3) &nbsp;</span>胡三元，智绪亭，王磊，徐忠华，<b><u>张光永</u></b>，王可新，张海峰，李波，亓玉忠，于文滨，陈波，刘崇忠<span>. </span>腹腔镜技术基础及临床应用系列研究<span>. </span>山东省科技进步一等奖<span>. 2008.</span> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
						<span>(4) &nbsp;</span>胡三元，<b><u>张光永</u></b>，李波，付勤烨，于文滨<span>. </span>腹腔镜手术腹腔留置钛夹转归的动物实验研究<span>.</span>山东省教育厅高校奖自然科学类一等奖<span>.2004.</span> 
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:12.0pt;\">
						<strong>【出版著作】</strong><span></span> 
					</p>
					<p class=\"MsoNormal\">
						《普通外科手术图谱》.山东科技出版社.2010.副主译
					</p>
					<p class=\"MsoNormal\">
						《腹部外科临床解剖学图谱》.山东科学技术出版社.2006.编委
					</p>
					<p class=\"MsoNormal\">
						《机器人和远程机器人外科精要》.山东科学技术出版社. 2006.编委
					</p>
					<p class=\"MsoNormal\">
						《腹腔镜外科学（第二版）》.山东科学技术出版社. 2005.编委
					</p>
					<p class=\"MsoNormal\">
						《腹腔镜外科手术彩色图谱》.山东科学技术出版社. 2004.编委
					</p>
					<p class=\"MsoNormal\">
						《腹腔镜临床诊疗技术》.山东科学技术出版社. 2004.编委
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1735','84','王磊','','','admin','2014-11-09 06:44:01','','<p style=\"text-align:center;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113084916_35397.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;王 &nbsp; &nbsp;磊</strong></span>&nbsp;
					</p>
					<p align=\"center\">
						<strong>副主任医师 &nbsp;硕士研究生导师</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;专业：胰腺外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;门诊时间：周一、周五全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;研究领域：胰腺肿瘤、胰岛干细胞移植
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;邮箱：wkx3726@163.com
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;电话：18560083669
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; 现为山东大学齐鲁医院胰腺外科主任，<span style=\"background-color:#FFFFFF;\">中华医学会外科学分会青年委员，山东省医师协会腔镜医师分会秘书，山东省医学会手术学组成员,&#171; 腹腔镜外科杂志&#187;编辑部主任。</span></span>
					</p>
					<p>
						<span style=\"line-height:1.5;\">
						<p>
							&nbsp; &nbsp; 中国协和医科大学胰腺外科博士，副教授，山东大学腔镜外科博士后。2009年赴美国hartford医院进修学习糖尿病和肥胖症的外科治疗。
						</p>
<span>　　从师于著名外科专家赵玉沛教授、胡三元教授、李占元教授；对于胰腺脾脏外科、腔镜外科有深入研究，将微创外科理念应用于胰腺脾脏等复杂疾病的治疗，成功开展坏死性胰腺炎经皮肾镜腹膜后清创术、腹腔镜巨脾切除术等高难手术。擅长胰腺良恶性肿瘤切除手术、微创保胆手术、颈部无瘢痕腔镜甲状腺手术、腹腔镜直肠癌保肛手术；与消化内科联合开展了大量腹腔镜与内镜联合胃、肠间质肿瘤切除手术，取得了良好的疗效。每年完成腔镜手术约250例，协助省内多家医院开展腔镜手术，获得山东省科技进步一等奖、二等奖及教育部科技成果推广二等奖各一项。</span></span>
					</p>
					<p>
						<br />
					</p>
					<p>
						【&nbsp;教育背景】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【承担和参与课题情况】
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【发表的学术论文】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【获奖与成果】
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1736','85','曾庆东','','','admin','2014-11-09 06:44:22','','<p>
	<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td width=\"20%\" height=\"400\" valign=\"top\">
					<p align=\"center\">
						<img src=\"/attached/image/20141113/20141113090652_22117.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">曾庆东</span></strong> 
					</p>
					<p align=\"center\">
						<strong>主任医师&nbsp; 硕士研究生导师</strong>&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp; <strong>工作单位</strong>：山东大学齐鲁医院
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<strong>&nbsp; &nbsp;&nbsp;专业</strong>：甲状腺外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>门诊时间</strong>：周三上午 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究领域</strong>：甲状腺疾病的基础与临床研究
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp; <strong>邮箱：</strong><span style=\"line-height:1.5;\">zengyijia@medmail.com.cn</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：<span>13605315569</span><br />
</span> 
					</p>
					<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
						&nbsp; &nbsp; 现任山东大学齐鲁医院甲状腺外科主任。
					</p>
					<p>
						<br />
<span>　　目前主要从事甲状腺疾病、胰腺疾病以及直肠恶性肿瘤的诊治，每年在院内的手术超过600例。在省内率先开展了腔镜辅助小切口甲状腺手术，即得到了美容效果，又达到了同样治疗效果；率先开展了保留盆腔神经丛的直肠系膜全切除术治疗直肠癌，既提高了治愈率，又提高了生活质量；率先开展了小切口胆囊切除术，减轻了病人的痛苦；率先开展了髙选迷走神经切断的贲门周围血管离断术，减少了术后胃蠕动无力的发生。尤其在甲状腺的二次手术，甲状腺癌的根治及颈部解剖；因胰头癌致黄疸的传统胰十二指肠切除和改良胰十二指肠切除；保留脾脏的胰体尾切除；胰腺内分泌肿瘤的处理；急慢性胰腺炎的处理；直肠癌根治等疾病有自己的独到的处理方法和策略。在国家级核心期刊发表学术论文50余篇，主编《实用胰腺肿瘤外科》1部，参编2部。获省科技进步奖1项，省教委科技成果奖2项，省医学会科技成果奖1项。现承担省科技厅科研项目2项，参与2项，院级科研项目1项。培养硕士研究生12名，协助培养博士研究生3名。承担山东大学医学院本科生教学任务。</span> 
					</p>
					<p>
						<span style=\"line-height:1.5;\"><br />
</span>
					</p>
					<p>
						<span style=\"line-height:1.5;\">【学术兼职】</span>
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<span style=\"line-height:1.5;\">中国医师协会外科分会委员</span>
					</p>
					<p style=\"background-color:#FFFFFF;\">
						中国医师协会甲状腺医师委员会委员
					</p>
					<p style=\"background-color:#FFFFFF;\">
						中国抗癌协会甲状腺癌委员会委员
					</p>
					<p style=\"background-color:#FFFFFF;\">
						美敦力大学甲状腺外科学院教授
					</p>
					<p style=\"background-color:#FFFFFF;\">
						山东省老年病研究会常务理事
					</p>
					<p style=\"background-color:#FFFFFF;\">
						山东医师协会两腺医师分会常务委员
					</p>
					<p style=\"background-color:#FFFFFF;\">
						山东省医学会胰腺及兩腺学组、中青年学会委员
					</p>
					<p style=\"background-color:#FFFFFF;\">
						山东省保健医师
					</p>
					<p style=\"background-color:#FFFFFF;\">
						1995年至997年参加了援助坦桑尼亚医疗队
					</p>
					<p style=\"background-color:#FFFFFF;\">
						《中国医师进修杂志》、《中国普通外科进展》、《消化外科》和《中华腹部疾病杂志》的编委。
					</p>
					<p style=\"background-color:#FFFFFF;\">
						<br />
					</p>
					<p style=\"background-color:#FFFFFF;\">
						<span style=\"line-height:1.5;\">【代表性学术论文】</span>
					</p>
					<div>
						1.细胞因子多态性与胃腺癌关系的探讨 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 中华医学杂志<br />
2.高能聚焦超声联合健择治疗晚期胰腺癌的临床研究 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;中华肝胆外科杂志.<br />
3.5-LOXmRNA和COX-2mRNA在胰腺癌中的表达及其临床意义 &nbsp;中国普通外科杂志 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
4.胃泌素瘤2例报告 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 中国普通外科杂志 &nbsp;<br />
5.U形管引流用于晚期肝门部胆管癌25例疗效分析 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 中国实用外科杂志<br />
6.仿真内窥镜CT和多平面重建对直肠癌术前分期的判断 &nbsp; &nbsp; &nbsp; &nbsp; 中国普通外科杂志 &nbsp;<br />
7.5-LOX mRNA和VEGF mRNA在胰腺癌中的表达及其临床意义 &nbsp; &nbsp; &nbsp;中国普通外科杂志 &nbsp; &nbsp;&nbsp;<br />
8.保留骶前神经和下腹下神经的直肠系膜全切除术 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 中国普通外科杂志 &nbsp;<br />
9.高选迷走神经切断贲门周围血管离断术对胃功能的影响） &nbsp; &nbsp; &nbsp; 中华肝胆外科杂志 &nbsp; &nbsp;<br />
10.胆胰液分流预防胰十二指肠切除术后胰瘘的价值 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;中国现代普通外科进展 &nbsp;&nbsp;<br />
11.直肠系膜全切除加双吻合器在低位直肠癌中的应用 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;中国普通外科杂志 &nbsp;<br />
12.胆胰液分流预防胰十二指肠切除术后胰瘘 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 山东医药 &nbsp;<br />
13.立止血在腹部外科围手术期的应用观察 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 中国药房&nbsp;<br />
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1737','85','吕斌','','','admin','2014-11-09 06:45:42','','<p>
	<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td width=\"20%\" height=\"400\" valign=\"top\">
					<p align=\"center\">
						<img src=\"/attached/image/20141113/20141113094913_12406.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">吕 &nbsp;斌 &nbsp;</span></strong><strong>副主任医师</strong><span style=\"line-height:1.5;\">&nbsp;</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>专业</strong>：甲状腺外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>门诊时间</strong>：周五全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究领域</strong>：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;<strong>邮箱：</strong><span style=\"line-height:1.5;\"><span>doclvbin@163.com</span></span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085107<br />
</span> 
					</p>
					<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
						&nbsp;&nbsp;<span style=\"line-height:1.5;\">2003年毕业于上海第二医科大学，获外科学博士学位。现任山东大学医学院手术学研究室副主任，山东大学齐鲁医院普外科副主任医师。国家执业医师资格考试试题开发专家委员会委员，山东省医学会外科分会实验外科学组委员。</span>
					</p>
<span>　　一直工作在临床，教学第一线。擅长甲状腺良、恶性肿瘤，甲状旁腺疾病等的诊断及治疗。在省内率先开展了完全腔镜及腔镜辅助的小切口甲状腺切除术，使微创与美容在甲状腺手术中得以最佳的结合。开展了术中神经监测技术用以避免甲状腺手术中喉返神经的损伤。承担“手术学”及“外科学”两门课程的理论及实验教学工作。在国内外期刊发表学术论文10余篇，获省科技进步奖1项，省医学会科技成果奖1项。承担省科技厅科研项目3项，卫生厅科研项目1项。</span> 
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
						【&nbsp;教育背景】
					</p>
					<p>
						<br />
					</p>
					<p>
						【学术兼职】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【承担和参与课题情况】
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【发表的学术论文】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【获奖与成果】
					</p>
					<div>
						<br />
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</p>','1','0','0','0','0','','0','190','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1738','86','胡三元','','','admin','2014-11-09 06:54:58','','<p style=\"text-align:center;\">
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"http://www.webles.cn/upload/1415881234.jpg\" width=\"200\" height=\"274\" alt=\"\" /> 
					</p>
					<p align=\"center\">
						<strong><span style=\"font-size:16px;\">胡三元</span></strong><strong>&nbsp;</strong> 
					</p>
					<p align=\"center\">
						<strong>主任医师 二级教授&nbsp;</strong> 
					</p>
					<p align=\"center\">
						<strong>博士研究生导师</strong> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp;&nbsp;<strong>工作单位</strong><span style=\"background-color:#FFFFFF;\">：山东大学齐鲁医院</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<strong>&nbsp; 专业</strong>：普通外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<strong>&nbsp; 门诊时间</strong><span style=\"line-height:1.5;\">：周二上午 &nbsp;&nbsp;</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; <strong>研究领域</strong>：腹腔镜技术的基础与临床应用，主要包括：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						（1）腹腔镜胃肠道代谢手术治疗肥胖和2型糖尿病的基础与临床研究
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						（2）经脐单孔腹腔镜技术和经自然腔道内镜手术
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						（3）腹腔镜机器人和虚拟现实腹腔镜训练系统
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						（4）腹腔镜技术在普外科疾病治疗中的规范化应用
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; <strong>邮箱</strong>：husanyuan1962<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@hotmail.com</span> 
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						<span style=\"line-height:1.5;\">&nbsp;&nbsp;</span> 
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:21pt;\">
						普外科学术带头人，博士研究生学历、博士学位、主任医师、山东大学二级教授、博士生导师。现任山东大学齐鲁医院副院长，“泰山学者”特聘教授（2012）、卫生部有突出贡献中青年专家（2012）、山东省有突出贡献中青年专家（2011）、山东省医学领军人才（2010）、山东省卫生系统杰出学术带头人（2005）、山东省医疗技术能手（2006）、<a name=\"undefined\"></a><a name=\"undefined\"></a>山东大学优秀博士生指导教师、中国医师协会“中国内镜杰出领袖奖”、“恩德思医学科学技术奖”杰出成就奖获得者、享受国务院政府特殊津贴（2010）。
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>【重要学术团体任职与学术兼职】</b><b></b> 
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--中华医学会外科学分会委员、腹腔镜内镜外科学组副组长
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--中华医学会消化内镜学分会经自然腔道内镜手术学组副组长
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--中国医师协会外科医师分会常委、微创外科专业委员会副主任委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--中国医师协会内镜医师分会常委、无气腹腹腔镜委员会主任委员、普外内镜专业委员会副主任委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--卫生部内镜与微创专业技术全国考评委员会、中国医师协会内镜医师分会、世界内镜医师协会中国协会经自然腔道内镜外科专业委员会副主席
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东省医学会理事、外科分会副主任委员、腹腔镜内镜外科学组组长
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东省医师协会外科医师分会主任委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东省医师协会腔镜外科医师分会主任委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东省医师协会器官移植医师分会副主任委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东省抗癌协会普外肿瘤委员会副主任委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东大学齐鲁医院卫生部内镜诊疗技术培训基地主任
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--“腹腔镜技术基础与临床应用”山东省“十二五”高校重点实验室主任
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东大学齐鲁医院临床医学虚拟现实实验室主任
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						&nbsp;--美国胃肠内镜外科学会（SAGES）会员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--山东大学医学院学位委员会委员
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--《腹腔镜外科杂志》、《临床实用外科杂志》主编
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--《中国内镜杂志》、《中国现代医学杂志》副主编
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						--《中华普通外科杂志》、《中华消化外科杂志》、《国际外科杂志》、《中国实用外科杂志》等26种杂志常务编委或编委
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>【承担课题与基金资助情况】</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. &nbsp;胃旁路术后下丘脑POMC/CART神经元和NPY/AgRP神经元对肝 脏葡萄糖输出的调控研究（81471019）.国家自然科学基金. 2015-2018.&nbsp;&nbsp; 73万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. &nbsp;肠-脑-肝轴对2 型糖尿病大鼠胃旁路术后早期肝胰岛素敏感性的调控研究.(81270888/H0713) .国家自然科学基金. 2013-2016.&nbsp;&nbsp; 70万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						3. &nbsp;胃肠道旁路术治疗2型糖尿病的机制研究 (81070642/H0713). 国家自然科学基金. 2011-2013. &nbsp;&nbsp;38万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						4. &nbsp;高分辨率魔角旋转核磁共振仪精确诊断甲状腺癌联合研究.山东省科技厅国际合作项目.2013.12-2015.11. 30万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						5. &nbsp;连环蛋白P120在炎性肺损伤中的作用. 山东省科技厅国际科技合作项目.2012-2014.15万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						6. &nbsp;小肠在胃肠道旁路术缓解2型糖尿病中的作用机制(20100131110049).教育部博士点基金. 2011-2013.&nbsp; &nbsp;6万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						7. &nbsp;双亲性复合靶向控释纳米药物对结肠癌的治疗及其作用机制研究(2007AA021802). 863子课题（双亲性复合靶向控释纳米药物制剂）. 2008-2010.&nbsp; &nbsp;24万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						8. &nbsp;腹腔镜机器人开发与应用研究(2005GG3202061).山东省科技攻关计划重点项目. 2005-2008. &nbsp;&nbsp;10万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						9. &nbsp;腹腔镜虚拟现实训练软件开发及应用(Y2005C05).山东省自然科学基金.2005-2008. 7万
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>【主要获奖与课题鉴定情况】</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						1. &nbsp;刘荣，胡三元，秦鸣放，黄志强，安力春，胡明根，张光永，赵宏志，赵国栋，于文斌，吴瑜，许勇，陈波，孙向宇、许大彬. 肝胆胰微创外科技术研究及其推广应用.国家科技进步二等奖.2013
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						2. &nbsp;刘荣，胡三元，秦鸣放，黄志强，安力春，胡明根，张光永，赵宏志，赵国栋，于文斌，吴瑜，许勇，陈波，孙向宇、许大彬.肝胆胰微创外科技术研究及其推广应用.中华医学科技奖一等奖（201301080U0302）.2013
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						3. &nbsp;胡三元,智绪亭,王磊,徐忠华,张光永,王可新,张海峰,李波,亓玉忠,于文滨,陈波,刘崇忠.腹腔镜技术基础及临床应用系列研究.山东省科技进步一等奖(JB2008-1-20-1). 2008.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						4. &nbsp;胡三元,张光永,刘少壮,刘南,于文滨,王可新,李峰,杨庆芸,肖思建.自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用研究. 山东省科技进步二等奖(JB2011-2-113-1). 2011.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						5. &nbsp;胡三元,智绪亭,王磊,张光永,刘崇忠,陈波,刘凤军,姜希宏.电视腹腔镜联合纤维胆道镜在肝内外胆管结石治疗中的应用.教育部高等学校科技进步二等奖(2006-307). 2006.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						6. &nbsp;胡三元,王磊,刘庆,王可新,陈波,亓玉忠,王连臣,刘崇忠,王培林,于文滨,张光永,李　波.腹腔镜脾脏手术的基础与临床应用研究. 山东省科技进步二等奖(JB2006-2-32-1). 2006.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						7. &nbsp;胡三元等.腹部腹腔镜手术的临床推广应用.山东省医学科技进步一等奖. 1999
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						8. &nbsp;胡三元、张光永、李波、付勤烨、于文滨.腹腔镜手术腹腔留置钛夹转归的动物实验研究.山东省教育厅高校奖自然科学类一等奖(2004310050).2004
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						9. &nbsp;胡三元等.腹腔镜胆道手术腹腔残石转归的动物实验研究.山东省教委科技进步二等奖(2000Y0134). 2000
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						10. &nbsp;胡三元等.《腹腔镜外科手术彩色图谱》.山东省高校优秀科研成果二等奖.2005
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						11.胡三元，等.腹腔镜甲状腺手术的动物实验及临床应用研究.山东省教育厅科技进步奖三等奖(2003010551).2003
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						12. 胡三元等.《腹腔镜甲状腺瘤切除术》视听教材.山东省医学会医学教育一等奖.2006
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						13. 胡三元等.《腹腔镜手术系列教学DVD》4部.山东省医学会教学一等奖.2006
					</p>
					<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>【获得专利】</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. 胡三元，陈伟杰，闫治波，张光永，刘崇忠. 载重组人血管内皮抑制素的PEG-PLGA纳米粒及其制备方法（申请号：201010211937.5）.发明专利（公开号：CN101889983A）.2010
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. 胡三元，薛瑞华，霍志璞. 一种腹腔镜手术训练仪（申请号：200420097475.9）.实用新型专利（公开号：&nbsp;CN2742515）.2005
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						3. 胡三元，霍志璞，薛瑞华. 腹腔镜手术训练仪（申请号：200430089421.3）.外观设计专利（公开号：CN3457409）.2005
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\" style=\"text-align:justify;\">
						<b>【论文发表】</b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. &nbsp;Liu S, Zhang G, Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>The entire small intestine mediates the changes in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats. Ann Surg.2012,256(6):1049-58（IF= 7.492）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. &nbsp;Wang TT, Hu SY, Gao HD, Zhang GY, Liu CZ, Feng JB, Frezza EE.Ileal transposition controls diabetes as well as modified duodenal jejunal bypass with better lipid lowering in a nonobese rat model of type II diabetes by increasing GLP-1.Ann Surg.2008,247(6):968-75.（IF=8.46）
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						3. &nbsp;Chen W, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a>&nbsp;Suitable carriers for encapsulation and distribution of endostar: comparison of endostar-loaded particulate carriers. Int J Nanomedicine. 2011;6:1535-41. （IF= 4.976）
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						4. &nbsp;Sanyuan Hu, Yangde Zhang.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Endostar-loaded PEG-PLGA nanoparticles: in vitro and in vivo evaluation. Int J Nanomedicine.2010;5:1039-1048 (IF=4.976)
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						5. &nbsp;Sun NF, Meng QY, Tian AL, Hu SY, Wang RH, Liu ZX, Xu L.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Nanoliposome-mediated FL/TRAIL double-gene therapy for colon cancer: in vitro and in vivo evaluation. Cancer Lett. 2012;315(1):69-77. (IF=4.863)
					</p>
					<p class=\"MsoListParagraph\" style=\"margin-left:21pt;text-indent:-21pt;\">
						6. &nbsp;Wang L, Cheng H, Liu Y, Wang L, Yu W, Zhang G, Chen B, Yu Z, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Prognostic Value of Nuclear β-catenin Overexpression at Invasive Front in Colorectal Cancer for Synchronous Liver Metastasis. Ann Surg Oncol. 2011;18(6):1553-9.（IF= 4.182）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						7. &nbsp;Jiang J, Ding X, Zhang G, Su Q, Wang Z, Hu S.&nbsp; Spontaneous retroperitoneal hematoma associated with iliac vein rupture. J Vasc Surg.2010;52(5):1278-82（IF=3.851）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						8. &nbsp;Zhang G, Liu S, Yu W, Wang L, Liu N, Li F, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Gasless laparoendoscopic single-site surgery with abdominal wall lift in general surgery: initial experience. Surg Endosc. 2011;25(1):298-304.&nbsp;（IF=3.436）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						9. &nbsp;Yu W, Li F, Wang Z, Qi X, Li B, Zhang G, Hao X, Hu S.<a name=\"undefined\"></a><a name=\"undefined\"></a>&nbsp;Effects of CO(2) insufflation on cerebrum during endoscopic thyroidectomy in a porcine model. Surg Endosc. 2011 25(5):1495-504（IF=3.436）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						10.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Wang K</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Liu S</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20F%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Liu F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20C%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Hu C</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=23700236\">Hu S</a>.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Duodenal-Jejunal Bypass Surgery Up-Regulates the Expression of the Hepatic Insulin Signaling Proteins and the Key Regulatory Enzymes of Intestinal Gluconeogenesis in Diabetic Goto-Kakizaki Rats.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a>&nbsp;2013 May 23. [Epub ahead of print]
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						11. Hu C, Zhang G, Sun D, Han H, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a><a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23636998\">Duodenal-jejunal bypass improves glucose metabolism and adipokine expression independently of weight loss in a diabetic rat model.</a>&nbsp;Obes Surg. 2013 Sep;23(9):1436-44. doi: 10.1007/s11695-013-0976-1.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						12. Sun D,Yan Z, Chen W, Liu S, Zhang G,&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Type 2 Diabetes Control in a Nonobese Rat Model Using Sleeve Gastrectomy with Duodenal–Jejunal Bypass (SGDJB)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012.DOI 10.1007/s11695-012-0744-7（IF=3.283）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						13. Yan Z, Chen W, Liu S, Zhang G, Sun D, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>Myocardial Insulin Signaling and Glucose Transport Are Up-regulated in Goto-Kakizaki Type 2 Diabetic Rats After Ileal Transposition. Obes Surg. 2012;22(3):493-501 （IF=3.283）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						14.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Ding X</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang K</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Wang H</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Liu Y</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Yang Q</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22072303\">Hu S</a>.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>High expression of CCL20 is associated with poor prognosis in patients with hepatocellular carcinoma after curative resection.<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303##\">J Gastrointest Surg.</a>&nbsp;2012 Apr;16(4):828-36. （IF=2.733）.
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						15. Chen W, Yan Z, Liu S, Zhang G, Sun D, Hu S.&nbsp;<a name=\"undefined\"></a><a name=\"undefined\"></a>The Changes of Pro-opiomelanocortin Neurons in Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC Neurons. J Gastrointest Surg 2011; 15(9):1618-24.（IF=2.733）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						16. Ding X, Zhu J, Zhu M, Li C, Jian W, Jiang J, Wang Z, Hu S, Jiang X. Therapeutic Management of Hemorrhage from Visceral Artery Pseudoaneurysms after Pancreatic Surgery. J Gastrointest Surg. 2011 May 17. [Epub ahead of print] （IF=2.733）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						17. Zhu J, Yang Y, Ma C, Zhang G, Wang K, Hu S.CEACAM1 Cytoplastic Expression is Closely Related to Tumor Angiogenesis and Poorer Relapse-free Survival After Curative Resection of Hepatocellular Carcinoma. World J Surg. 2011 Apr 26. [Epub ahead of print] （IF=2.693）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						18. Sun NF, Meng QY, Hu SY, Tian AL, Wang RH, Liu ZX, Xu L. Correlation between the expression of the BAG-1 gene and clinicopathologic factors in colorectal cancer. J Cancer Res Clin Oncol. 2011;137(10):1419-24. （IF= 2.485）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						19. Wang L, Wang L, Yu W, Zhang G, Zhang L, Tian G, Hu S. Association between age and synchronous liver metastasis in female colorectal cancer patients. J Cancer Res Clin Oncol. 2011 Jun;137(6):959-64 （IF= 2.485）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						20. Su Q, Hu S, Gao H, Ma R, Yang Q, Pan Z, Wang T, Li F.Role of AIB1 for tamoxifen resistance in estrogen receptor-positive breast cancer cells.Oncology.2008,75(3-4):159-68. (IF=2.444)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						21. Zhu J, Feng A, Sun J, Jiang Z, Zhang G, Wang K, Hu S, Qu X.Increased CD4(+) CD69(+) CD25(-) T cells in patients with hepatocellular carcinoma are associated with tumor progression. J Gastroenterol Hepatol. 2011 May 9. doi: 10.1111/j.1440-1746.2011.06765.x. [Epub ahead of print] (IF=2.410)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						22. Li F, Zhang G, Liang J, Ding X, Cheng Z, Hu S.Sleeve gastrectomy provides a better control of diabetes by decreasing ghrelin in the diabetic Goto-Kakizaki rats. J Gastrointest Surg. 2009,13(12):2302-8. （IF=2.311）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						23. Zhang HF, Hu SY, Zhang GY, Wang KX, Chen B, Li B. Laparoscopic primary choledochorrhaphy over endonasobiliary drainage tubes. Surg Endosc.2007,21(11):2115-7.（IF=2.242）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						24. Wang L, Li CL, Wang L, Yu WB, Yin HP, Zhang GY, Zhang LF, Li S, Hu SY.Influence of CXCR4/SDF-1 axis on E-cadherin/β-catenin complex expression in HT29 colon cancer cells. World J Gastroenterol. 2011;17(5):625-32. (IF=2.240)
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						25.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20QY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Yang QY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang L</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20ZG%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Wang ZG</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20F%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20YQ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Li YQ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20XJ%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Ding XJ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=21362281\">Hu SY</a>. Infection during transgastric and transvaginal natural orifice transluminal endoscopic surgery in a live porcine model.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/21362281##\">Chin Med J (Engl).</a>&nbsp;2011 Feb;124(4):556-61. （IF=0.858）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						26. Wen-Bin Yu, Guang-Yong Zhang, Feng Li, Qing-Yun Yang, San-Yuan HuTransumblical single port laparoscopic cholecystectomy with a simple technique: Initial experience of 33 cases. Minim Invasive Ther Allied Technol. 2010;19(6):340-344（IF=1.330）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						27. Wang YL, Zhang GY, Wang L, Wang KX, Hu SY. Endoscopic thyroidectomy by a modified anterior chest approach: A single institution;s 5-year experience.Minim Invasive Ther Allied Technol. 2009,18(5):297-301. （IF=1.611）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						28. Zhang H, Hu S, Zhang G, Wang K, Chen B, Li B, Frezza EE. Laparoscopic versus open proctocolectomy with ileal pouch-anal anastomosis. Minim Invasive Ther Allied Technol.2007,16(3):187-91.（IF=0.978）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						29. &nbsp;Zhang GY, Hu SY, Zhang HF, Wang KX, Wang L.A novel therapeutic approach to non-parasitic splenic cysts: laparoscopic fenestration and endothelium obliteration.Minim Invasive Ther Allied Technol.2007,16(5):314-6.（IF=0.978）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						30. &nbsp;Li B, Zhang Q, Liu J, Yu H, Hu S.Clinical application of a laparoscope in ventri-peritoneal shunting.Minim Invasive Ther Allied Technol.2007,16(6):367-9.（IF=0.978）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						31. &nbsp;Yu W, Hu S, Qi Y, Li B.The correlation between sonographic diagnosis and laparoscopic observations on fatty liver. J Laparoendosc Adv Surg Tech A. 2009,19(2):163-9.（IF=0.912）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						32.&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20SZ%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu SZ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20L%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Wang L</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20T%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Liu T</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20Y%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Sun Y</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Li%20MX%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Li MX</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22490596\">Hu SY</a>. A high-fat diet reverses improvement in glucose tolerance induced by duodenal-jejunal bypass in type 2 diabetic rats.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22490596##\">Chin Med J (Engl).</a>&nbsp;2012 Mar;125(5):912-9. （IF=0.858）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						33.&nbsp;&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sui%20GD%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Sui GD</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Niu%20ZJ%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Niu ZJ</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&cauthor=true&cauthor_uid=22882915\">Hu SY</a>. Expression of farnesyltransferase in primary liver cancer.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22882915##\">Chin Med J (Engl).</a>&nbsp;2012 Jul;125(14):2427-31. （IF=0.858）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						34. &nbsp;Chen B, Hu SY, Wang L, Wang KX, Zhang GY, Zhang HF, Xuan SJ, Wachtel MS, Frezza EE.Laparoscopic splenectomy: a 12-year single-center experience.Chin Med J (Engl).2008,121(8):766-8.（IF=0.858）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						35.&nbsp;&nbsp; Wang TT, Frezza EE, Ma R, Hu SY, Liu CZ, Zhang GY, Wachtel MS, Lü XM, Feng JB, Lü CX.Loss expression of active fragile sites genes associated with the severity of breast epithelial abnormalities.Chin Med J (Engl).2008,121(20):1969-74. （IF=0.858）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						36. &nbsp;Wang KX, Hu SY, Jiang XS, Zhu M, Jin B, Zhang GY, Chen B.Protective effects of ischaemic postconditioning on warm/cold ischaemic reperfusion injury in rat liver: a comparative study with ischaemic preconditioning.Chin Med J (Engl).2008,121(20):2004-9. （IF=0.858）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						37. &nbsp;Zhang GY, Wang TT, Cheng ZQ, Feng JB, Hu SY. Resolution of diabetes mellitus by ileal transposition compared with biliopancreatic diversion in a nonobese animal model of type 2 diabetes. Can J Surg. 2011 Aug;54(4):243-51. （IF=0.850）
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						38.&nbsp;&nbsp; Jin B, Liu CZ, Hu SY, Wang TT, Wang L, Jiang XS, Frezza EE.Influence of estrogen and androgen on the outcome of liver transplantation. Hepatogastroenterology. 2008,55(81):207-11. （IF=0.68）
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
						<b>【出版的主要专著、译著】</b><b></b> 
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						1. &nbsp; 《临床导管诊治学》山东科技出版社 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1996主编
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						2. &nbsp; 《腹腔镜临床诊治技术》.山东科学技术出版社. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2002.主编
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						3. &nbsp; 《腹腔镜外科手术彩色图谱》.山东科学技术出版社.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2004.主编
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						4. &nbsp; 《腹部外科临床解剖学图谱》.山东科学技术出版社.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2006.主编
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						5. &nbsp; 《腹腔镜外科学（第二版）》.山东科学技术出版社.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2005.主译
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						6. &nbsp; 《机器人和远程机器人外科精要》.山东科学技术出版社. &nbsp; &nbsp;2006.主译
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-align:justify;text-indent:-21pt;\">
						7. &nbsp; 《普通外科学手术图谱》 山东科技出版社. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 2010.主译
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<span></span>','1','0','0','0','0','','0','232','1');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1739','87','戴勇','','','admin','2014-11-09 06:58:20','','<p>
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113083640_13935.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;戴 &nbsp;勇</strong></span>&nbsp;
					</p>
					<p align=\"center\">
						<strong>主任医师 &nbsp;硕士研究生导师</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;专业：肛肠外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;门诊时间：周四全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;研究领域：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;邮箱：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;电话：18560085117
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; 现为山东大学齐鲁医院普外科副主任、肛肠外科主任</span>
					</p>
					<p>
						<span style=\"line-height:1.5;\">&nbsp; &nbsp; 主要从事胃肠特别是结直肠、肛门良、恶性疾病的诊治。对低位直肠癌保肛手术、结直肠癌规范化治疗、大肠癌肝转移的规范化治疗、胃肠间质瘤的诊断及治疗、胃肠神经内分泌肿瘤治疗、慢性便秘的外科治疗、炎症性肠病的外科治疗、痔的外科治疗、各种腹壁疝的外科治疗等方面均有深入研究。承担胃肠间质瘤患者中华慈善总会临床援助药品格列卫及中国癌症基金会临床援助药品索坦的医学认证工作。</span>
					</p>
					<div>
						<br />
					</div>
					<p>
						【&nbsp;教育背景】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【承担和参与课题情况】
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【发表的学术论文】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【获奖与成果】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
				</td>
			</tr>
		</tbody>
	</table>
</p>','1','0','0','0','0','','0','183','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1740','87','毕冬松','','','admin','2014-11-09 06:59:25','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141113/20141113082956_30901.jpg\" alt=\"\" />
				</p>
				<p align=\"center\">
					&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;毕冬松</strong></span>&nbsp;<strong>主任医师</strong>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;专业：肛肠外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;门诊时间：周五全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;研究领域：
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;邮箱：
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;电话：18560085118
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span>&nbsp; &nbsp; 现为山东大学齐鲁医院肛肠外科副主任，曾在日本和歌山县立医科大学研修。致力于胃肠外科疾病，特别是肛门直肠疾病的诊断与治疗，于省内率先开展了经肛门、内外括约肌间直肠切除、结肠肛管吻合术，取得较好效果。对结直肠恶性肿瘤和肛门直肠的良性病变（如痔、肛门直肠周围脓肿、肛瘘、直肠脱垂、直肠前突、顽固性便秘等）有深入研究。</span>
				</p>
				<p>
					<br />
【&nbsp;教育背景】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【承担和参与课题情况】
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【发表的学术论文】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【获奖与成果】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>
<br />','1','0','0','0','0','','0','158','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1741','87','姜金波','','','admin','2014-11-09 07:00:21','','<p>
	<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
		<tbody>
			<tr>
				<td height=\"400\" valign=\"top\" width=\"20%\">
					<p>
						<img src=\"/attached/image/20141113/20141113082613_74506.jpg\" alt=\"\" />
					</p>
					<p align=\"center\">
						&nbsp; &nbsp;&nbsp;<span style=\"font-size:16px;\"><strong>&nbsp;姜金波</strong></span><strong>&nbsp;副主任</strong><strong>医师</strong>
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;专业：<span>胃肠外科、</span>肛肠外科
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;门诊时间：周一全天 &nbsp; &nbsp;&nbsp;
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;研究领域：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;邮箱：
					</p>
					<p align=\"center\" style=\"text-align:left;\">
						&nbsp; &nbsp;&nbsp;电话：18560085115
					</p>
					<p align=\"center\">
						<br />
					</p>
				</td>
				<td valign=\"top\" width=\"80%\">
					<p>
						<span>&nbsp; &nbsp; 熟练掌握普通外科常见病、多发病、危急重症的诊断治疗和手术；在腹部外科良恶性疾病，特别是胃肠道肿瘤的标准化根治操作、综合治疗以及胃肠道疑难重症的手术治疗、围手术期处理等方面积累了丰富的临床经验；特别是对低位直肠癌保肛手术、肛周良性疾病及顽固性便秘的的外科治疗、难治复发疝外科治疗等方面也有较深造诣。</span>
					</p>
					<p>
						<br />
					</p>
					<p>
						【&nbsp;教育背景】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【承担和参与课题情况】
					</p>
					<p class=\"MsoNormal\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【发表的学术论文】
					</p>
					<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
						<br />
					</p>
					<p class=\"MsoNormal\">
						【获奖与成果】
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
</table>','1','0','0','0','0','','1','9','0');
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1747','86','刘少壮','','','admin','2014-11-13 03:32:19','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141208/20141208022516_22225.jpg\" width=\"200\" height=\"281\" alt=\"\" /> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; <strong><span style=\"font-size:16px;\">刘少壮</span> 主治医师</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>工作单位</strong><span style=\"background-color:#FFFFFF;\">：山东大学齐鲁医院</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<strong>&nbsp;专业</strong>：胃肠外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp; &nbsp; &nbsp;减重与糖尿病外科</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>门诊时间</strong>：周四全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>研究领域</strong>：
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 1、胃肠道代谢手术治疗2型糖尿病的基础与临床应用</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 2、肠道菌群与2型糖尿病的关系</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 3、小肠调节糖稳态的作用和机制</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; 4、胃癌发病中的代谢问题</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>邮箱</strong>：liushaozhuang<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@sdu</span><span style=\"line-height:1.5;\">.edu.cn</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp;<strong>电话</strong>：18560085165</span> 
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span style=\"line-height:1.5;\"><strong>【</strong></span><strong> 教育背景</strong><span style=\"line-height:1.5;\"><strong>】</strong></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2000–2005 就读于原山东大学医学院，获得医学学士学位；<span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2005–2007 就职于山东大学医学院，从事学生管理、科研和外事工作；
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2007–2012 &nbsp;就读于山东大学医学院（硕博连读），获普通外科学博士学位；<span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					2012.08至今 就职于山东大学齐鲁医院普通外科。
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>【承担和参与课题情况】</strong><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) &nbsp;胃旁路术后小肠脂质感受对肝脏葡萄糖产生的调节（81300286)．国家自然科学基金（青年基金．2014-2016．23万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2) &nbsp;胃旁路术后下丘脑脂质感受对肝脏葡萄糖产生的调节（20130131120069）．教育部博士点基金（新教师类）．2014-2016．4万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					<b>(3) &nbsp;</b>胃旁路术后下丘脑POMC/CART神经元和NPY/AgRP神经元营养感受对肝脏葡萄糖输出的调控（2014GSF118170）．山东省科技发展计划．2014-2016．8万元．<b><u>项目负责人</u></b><b><u></u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4) &nbsp;小肠在胃旁路术后早期肝胰岛素敏感性改善中的作用和机制（BS2013YY031）<a name=\"undefined\"></a><a name=\"undefined\"></a>．山东省优秀中青年科学家科研奖励基金计划．2013-2015．5万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(5) &nbsp;近、远端小肠在胃肠道旁路术治疗2型糖尿病中的作用与机制（yzc09094）．山东大学研究生自主创新基金．2010-2011．1万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(6) &nbsp;胃旁路术后下丘脑POMC/CART神经元和NPY/AgRP神经元对肝脏葡萄糖输出的调控研究（81471019）．国家自然科学基金（面上项目）．2015-2018．73万元．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(7) &nbsp;袖状胃切除术后小肠和下丘脑营养感受对肝脏葡萄糖输出 的调节（81471020）．国家自然科学基金（面上项目）．2015-2018．65万元．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(8) &nbsp;肠-肝胆汁酸感受在胃旁路术后早期胰岛素敏感性改善中的作用及机制研究(81370496).国家自然科学基金（面上项目）．2014-2017．70万元．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(9) &nbsp;肠-脑-肝轴对2 型糖尿病大鼠胃旁路术后早期肝胰岛素敏感性的调控研究(81270888)．国家自然科学基金．2013-2016．70万．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(10) 胃肠道旁路术治疗2型糖尿病的机制研究 (81070642)．国家自然科学基金．2011-2013．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>【发表的学术论文】</strong><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1)&nbsp;<b><u>Liu
S,</u></b> Zhang
G, Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S. The entire small intestine
mediates the changes in glucose homeostasis after intestinal surgery in
Goto-Kakizaki rats. Ann Surg.2012,<span>256(6):104</span>9-58（IF=
6.329）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(2) Zhang
G, <b><u>Liu S</u></b>, Yu W, Wang L, Liu N, Li F, Hu S. Gasless laparoendoscopic
single-site surgery with abdominal wall lift in general surgery: initial
experience. Surg Endosc. 2011;25(1):298-304.（共同第一作者，IF=4.013）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(3) Sun D, <b><u>Liu
S</u></b>, Zhang G, Colonne
P, Hu C, Han H, Li M, Hu S. Sub-sleeve gastrectomy achieves good diabetes control
without weight loss in anon-obese diabetic rat model. Surg Endosc. 2014 Mar;28(3):1010-8.
（共同第一作者，IF=3.427）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(4)&nbsp;<b><u>Liu SZ</u></b>, Sun D, Zhang GY, Wang L, Liu T, Sun Y, Li MX, Hu SY. A
high-fat diet reverses improvement in glucose tolerance induced by
duodenal-jejunal bypass in type 2 diabetic rats. Chin Med J (Engl). 2012;125(5):912-9.（IF: 0.864）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(5) 刘少壮,张光永,程志强,展翰翔,李国勇,郭炜,胡三元.Minilap杂交式经脐单孔腹腔镜胆囊切除术12例报告.腹腔镜外科杂志.2013;18(11):834-7
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(6)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Sun D</a>,<b><u>&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Hu S</a>. <a name=\"undefined\"></a><a name=\"undefined\"></a>Type
2 Diabetes Control in a Nonobese Rat Model Using Sleeve Gastrectomy with
Duodenal–Jejunal Bypass (SGDJB) <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012; 22(12):1865-73.&nbsp; DOI
10.1007/s11695-012-0744-7（IF=3.283）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(7) Yan Z, Chen W, <b><u>Liu S</u></b>, Zhang G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>Myocardial Insulin
Signaling and Glucose Transport Are Up-regulated in Goto-Kakizaki Type 2
Diabetic Rats After Ileal Transposition. Obes Surg.
2012;22(3):493-501 （IF=3.283）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(8) Chen W, Yan Z,<b><u> Liu S</u></b>, Zhang
G, Sun D, Hu S. <a name=\"undefined\"></a><a name=\"undefined\"></a>The Changes of Pro-opiomelanocortin Neurons in
Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC
Neurons. J Gastrointest Surg 2011; 15(9):1618-24.（IF=2.733）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(9)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Yan Z</a>,&nbsp;<b><u><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Hu S</a>.
The better effect of Roux-en-Y gastrointestinal reconstruction on blood glucose
of&nbsp;nonobese&nbsp;type&nbsp;2&nbsp;diabetesmellitus patients. <a href=\"http://www.ncbi.nlm.nih.gov/pubmed/24139553\">Am J Surg.</a>&nbsp;2013 Oct 15. doi:
10.1016/j.amjsurg.2013.06.011. [Epub ahead of print] （IF=2.516）
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>【获奖与成果】</strong><span></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">
					(1) 胡三元，张光永，<b><u>刘少壮</u></b>，刘南，于文滨，王可新，李峰，杨庆芸，肖思建<span>. </span>自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用<span>. </span><b>山东省科技进步二等奖</b><span>. 2011.</span> 
				</p>
				<p>
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','365','2');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1748','82','刘少壮','','','admin','2014-11-13 05:29:02','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"/attached/image/20141208/20141208022516_22225.jpg\" width=\"200\" height=\"280\" alt=\"\" /> 
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp;&nbsp;<strong><span style=\"font-size:16px;\">刘少壮</span>&nbsp;主治医师</strong> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<strong>&nbsp;工作单位</strong>：山东大学齐鲁医院
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<strong>&nbsp;专业</strong>：胃肠外科
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp; &nbsp; &nbsp;减重与糖尿病外科</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					&nbsp;<strong>门诊时间</strong>：周四全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					&nbsp;<strong>研究领域</strong>：
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 1、胃肠道代谢手术治疗2型糖尿病的基础与临床应用</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 2、肠道菌群与2型糖尿病的关系</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 3、小肠调节糖稳态的作用和机制</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;background-color:#FFFFFF;\">
					<span style=\"line-height:1.5;\">&nbsp; 4、胃癌发病中的代谢问题</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;<strong>邮箱</strong>：liushaozhuang<span style=\"line-height:1.5;\"></span><span style=\"line-height:1.5;\">@sdu</span><span style=\"line-height:1.5;\">.edu.cn</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp;<strong>电话</strong>：18560085165</span> 
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<span style=\"line-height:1.5;\"><strong>【</strong></span><strong>&nbsp;教育背景</strong><span style=\"line-height:1.5;\"><strong>】</strong></span> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2000–2005 就读于原山东大学医学院，获得医学学士学位；
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2005–2007 就职于山东大学医学院，从事学生管理、科研和外事工作；
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2007–2012 &nbsp;就读于山东大学医学院（硕博连读），获普通外科学博士学位；
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					2012.08至今 就职于山东大学齐鲁医院普通外科。
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>【承担和参与课题情况】</strong> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) &nbsp;胃旁路术后小肠脂质感受对肝脏葡萄糖产生的调节（81300286)．国家自然科学基金（青年基金．2014-2016．23万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2) &nbsp;胃旁路术后下丘脑脂质感受对肝脏葡萄糖产生的调节（20130131120069）．教育部博士点基金（新教师类）．2014-2016．4万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(3) &nbsp;</b>胃旁路术后下丘脑POMC/CART神经元和NPY/AgRP神经元营养感受对肝脏葡萄糖输出的调控（2014GSF118170）．山东省科技发展计划．2014-2016．8万元．<b><u>项目负责人</u></b><b><u></u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4) &nbsp;小肠在胃旁路术后早期肝胰岛素敏感性改善中的作用和机制（BS2013YY031）．山东省优秀中青年科学家科研奖励基金计划．2013-2015．5万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(5) &nbsp;近、远端小肠在胃肠道旁路术治疗2型糖尿病中的作用与机制（yzc09094）．山东大学研究生自主创新基金．2010-2011．1万元．<b><u>项目负责人</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(6) &nbsp;胃旁路术后下丘脑POMC/CART神经元和NPY/AgRP神经元对肝脏葡萄糖输出的调控研究（81471019）．国家自然科学基金（面上项目）．2015-2018．73万元．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(7) &nbsp;袖状胃切除术后小肠和下丘脑营养感受对肝脏葡萄糖输出 的调节（81471020）．国家自然科学基金（面上项目）．2015-2018．65万元．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(8) &nbsp;肠-肝胆汁酸感受在胃旁路术后早期胰岛素敏感性改善中的作用及机制研究(81370496).国家自然科学基金（面上项目）．2014-2017．70万元．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(9) &nbsp;肠-脑-肝轴对2 型糖尿病大鼠胃旁路术后早期肝胰岛素敏感性的调控研究(81270888)．国家自然科学基金．2013-2016．70万．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(10) 胃肠道旁路术治疗2型糖尿病的机制研究 (81070642)．国家自然科学基金．2011-2013．<b><u>项目组成员</u></b> 
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>【发表的学术论文】</strong> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1)&nbsp;<b><u>Liu S,</u></b>&nbsp;Zhang G, Wang L, Sun D, Chen W, Yan Z, Sun Y, Hu S. The entire small intestine mediates the changes in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats. Ann Surg.2012,256(6):1049-58（IF= 6.329）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2) Zhang G,&nbsp;<b><u>Liu S</u></b>, Yu W, Wang L, Liu N, Li F, Hu S. Gasless laparoendoscopic single-site surgery with abdominal wall lift in general surgery: initial experience. Surg Endosc. 2011;25(1):298-304.（共同第一作者，IF=4.013）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(3) Sun D,&nbsp;<b><u>Liu S</u></b>, Zhang G, Colonne P, Hu C, Han H, Li M, Hu S. Sub-sleeve gastrectomy achieves good diabetes control without weight loss in anon-obese diabetic rat model. Surg Endosc. 2014 Mar;28(3):1010-8. （共同第一作者，IF=3.427）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4)&nbsp;<b><u>Liu SZ</u></b>, Sun D, Zhang GY, Wang L, Liu T, Sun Y, Li MX, Hu SY. A high-fat diet reverses improvement in glucose tolerance induced by duodenal-jejunal bypass in type 2 diabetic rats. Chin Med J (Engl). 2012;125(5):912-9.（IF: 0.864）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(5) 刘少壮,张光永,程志强,展翰翔,李国勇,郭炜,胡三元.Minilap杂交式经脐单孔腹腔镜胆囊切除术12例报告.腹腔镜外科杂志.2013;18(11):834-7
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(6)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Sun D</a>,<b><u>&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=22911149\">Hu S</a>.&nbsp;Type 2 Diabetes Control in a Nonobese Rat Model Using Sleeve Gastrectomy with Duodenal–Jejunal Bypass (SGDJB)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22249887##\">Obes Surg.</a>2012; 22(12):1865-73.&nbsp; DOI 10.1007/s11695-012-0744-7（IF=3.283）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(7) Yan Z, Chen W,&nbsp;<b><u>Liu S</u></b>, Zhang G, Sun D, Hu S.&nbsp;Myocardial Insulin Signaling and Glucose Transport Are Up-regulated in Goto-Kakizaki Type 2 Diabetic Rats After Ileal Transposition. Obes Surg. 2012;22(3):493-501 （IF=3.283）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(8) Chen W, Yan Z,<b><u>&nbsp;Liu S</u></b>, Zhang G, Sun D, Hu S.&nbsp;The Changes of Pro-opiomelanocortin Neurons in Type 2 Diabetes Mellitus Rats After Ileal Transposition: The Role of POMC Neurons. J Gastrointest Surg 2011; 15(9):1618-24.（IF=2.733）
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(9)&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Yan Z</a>,&nbsp;<b><u><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Liu S</a></u></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Sun D</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&cauthor=true&cauthor_uid=24139553\">Hu S</a>. The better effect of Roux-en-Y gastrointestinal reconstruction on blood glucose of&nbsp;nonobese&nbsp;type&nbsp;2&nbsp;diabetesmellitus patients.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/24139553\">Am J Surg.</a>&nbsp;2013 Oct 15. doi: 10.1016/j.amjsurg.2013.06.011. [Epub ahead of print] （IF=2.516）
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<strong>【获奖与成果】</strong> 
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) 胡三元，张光永，<b><u>刘少壮</u></b>，刘南，于文滨，王可新，李峰，杨庆芸，肖思建.&nbsp;自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用.&nbsp;<b>山东省科技进步二等奖</b>. 2011.
				</p>
				<p>
					<br />
				</p>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','278','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1749','83','闫治波','','','admin','2014-11-13 05:42:00','','<table width=\"100%\" style=\"color: rgb(0, 0, 0); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\" cellspacing=\"10\"><tbody><tr class=\"firstRow\"><td width=\"20%\" height=\"400\" valign=\"top\"><p><img alt=\"\" src=\"/attached/image/20141113/20141113082319_31722.jpg\"/><span style=\"font-size: 16px;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;闫治波</strong></span>&nbsp;<strong>主治医师</strong></p><p style=\"text-align: center;\">&nbsp;&nbsp;专业：<span style=\"line-height: 1.5;\">疝与腹壁外科</span></p><p style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;门诊时间：周五全天&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>研究领域：</p><p style=\"background: white; line-height: 150%;\"><span style=\"color: black; font-family:;\" new=\"\" times=\"\">&nbsp;1</span><span style=\"color: black;\"><span style=\"font-family: 宋体;\">、胃肠道代谢手术治疗</span></span><span style=\"color: black; font-family:;\" new=\"\" times=\"\">2</span><span style=\"color: black;\"><span style=\"font-family: 宋体;\">型糖尿病的机制</span></span></p><p style=\"background: white; line-height: 150%;\"><span style=\"color: black; font-family:;\" new=\"\" times=\"\">&nbsp; 2</span><span style=\"color: black;\"><span style=\"font-family: 宋体;\">、炎症与内质网应激及自噬作用</span></span></p><p style=\"background: white; line-height: 150%;\">邮箱：zhibo6531@163.com&nbsp;&nbsp;&nbsp;	电话：18560085166&nbsp;&nbsp;&nbsp;	</p><p style=\"text-align: center;\">&nbsp;</p></td><td width=\"80%\" valign=\"top\"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">【教育背景】</span></strong></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2003–2009</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">山东大学</span> <span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">临床医学七年制；</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2009–2013 </span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">山东大学医学院外科学</span> <span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">博士；</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2010.10-2013.03 </span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">美国伊利诺伊大学</span> <span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">联合培养博士；</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">2013.08</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">至今</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp; </span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">就职于山东大学齐鲁医院普外科。</span></p><p style=\"background: white; margin: 0px 0px 0px 28px; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp;</span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">【承担和参与课题情况】</span></strong></p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">承担省部级课题一项</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">: </span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp; </span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">巨噬细胞</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">NLRP3</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">炎性体在胃旁路术后胰岛β细胞功能改善中作用机制研究</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">.(2014ZRE27521).</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">山东省自然科学基金</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">(</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">青年基金</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">). 2014</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">年</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">-2016.&nbsp; 12</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">万元</span> </p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">项目负责人</span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">参与国家自然基金课题</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">3</span><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">项</span><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">.</span></p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">【发表的学术论文】</span></strong></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp;</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1. <strong>Yan, Zhibo(</strong>#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Myocardial insulin signaling and glucose transport are up-regulated in Goto-Kakizaki type 2 diabetic rats after ileal transposition.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Obesity Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">22</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">3</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">493-501</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wu, Jianbo(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Schwartz, David E.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yu, Jingui</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Malik, Asrar B.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Activatio n of NLRP3 inflammasome in alveolar macrophages contributes to mechanical stretch-induced lunginflammation and injury.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Immunology</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2013</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">190</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">7</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">3590-3599</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span> <span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">共同第一作者。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">3</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The changes of pro-opiomelanocortin neurons in type 2 diabetes mellitus rats after ileal transposition: the role of POMC neurons.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Journal of Gastrointestinal Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2011</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">15</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">9</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1618-1624</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span> </p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">4</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Weijie Chen(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhibo Yan</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Shaozhuang Liu</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Guangyong Zhang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Dong Sun</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sanyuan Hu(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The better effect of Roux-en-Y gastrointestinal reconstruction on blood glucose of nonobese type 2 diabetes mellitus </span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">patients.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">American Journal of Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">207</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">877-881</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">5</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Dejie(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Minshall, Richard D</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Schwartz, David E</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Yuguo</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Activati on of calpains mediates early lung neutrophilic inflammation in ventilator-induced lung injury.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">American Journal of Physiology - Lung Cellular and Molecular </span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Physiology</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">302</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">4</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">L370-L379</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chuanzhen Liu(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhibo Yan</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Changcun Fang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Guangqing Cao</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Biao Wang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sijie Li</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Shuming Wu(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Establishment and comparison of two reliable hyperkinetic pulmonary hypertension models in rabbits.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Thoracic and Cardiovascular Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">148</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">5</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2353-2359</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">7</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Jiao, Hao(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Yang(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wang, Zhen-Guo</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Gongjian</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Minshall, Richard D</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Malik, Asrar B</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Caveolin-1 Tyr14 phosphorylation induces interaction with TLR4 in endothelial cells and mediates MyD88-dependent signaling and sepsis-induced lung inflammation.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Immunology</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2013</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">191</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">12</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6191-6199</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">8</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yang, Zhiyong(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Reynolds, Albert B</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Christman, John W</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Minshall, Richard D</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Malik, Asrar B</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Yang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Guochang(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Differential role for p120-catenin in regulation of TLR4 signaling in macrophages.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The Journal of Immunology</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">193</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">4</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1931-1941</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">9</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Maimaitiyusufu, Wubulikasimu(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Han, Haifeng</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Xiang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang Guangyong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Kasimu, Aimaiti</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Duodenal-jejunal bypass surgery on type 2 diabetic rats reduces the expression of matrix metalloproteinase-9 and tissue inhibitor of matrix metalloproteinase-1 in the thoracic aorta.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chinese Medical Journal</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">127</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">13</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2423-2428</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">10</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wang, Kexin(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Fengjun</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Chunxiao</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Duodenal-jejunal bypass surgery up-regulates the expression of the hepatic insulin signaling proteins and the key regulatory enzymes of intestinal gluconeogenesis in diabetic Goto-Kakizaki rats.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Obesity Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2013</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">23</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">11</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1734-1742</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">11</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Wang, Lei</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Yu</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">The entire small intestine mediates the changes in glucose homeostasis after intestinal surgery in Goto-Kakizaki rats.</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Annals of Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">256</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">6</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1049-1058</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">12</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Sun, Dong(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Liu, Shaozhuang</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Zhang, Guangyong</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Chen, Weijie</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><strong><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Yan, Zhibo</span></strong><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Hu, Sanyuan(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Type 2 diabetes control in a nonobese rat model using sleeve gastrectomy with duodenal-jejunal bypass (SGDJB).</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">Obesity Surgery</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2012</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">22</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">12</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1865-1873</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">13</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、张翔</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，张光永，刘少壮，王琰珉，刘腾，仲明惟，<strong>闫治波</strong>，胡三元</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，胆汁酸、代谢手术与</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">型糖尿病，腹腔镜外科杂志，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">01</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">71-76</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span> </p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">14</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、王琰珉</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，刘少壮，张光永，张翔，刘腾，仲明惟，<strong>闫治波</strong>，胡三元</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，肠</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">-</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">脑</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">-</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">肝轴在</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">型糖尿病及减重手术中的作用，腹腔镜外科杂志，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">01</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">61-65</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span> </p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">15</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">、仲明惟</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(#)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，刘少壮，张光永，王琰珉，张翔，刘腾，<strong>闫治波</strong>，胡三元</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">(*)</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，袖状胃切除术后减重及</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">型糖尿病缓解的机制，腹腔镜外科杂志，</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">2014</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">，（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">01</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）：</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">54-60</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">。</span> </p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family:;\" new=\"\" times=\"\">&nbsp;</span></strong></p><p style=\"background: white; text-align: left; line-height: 150%;\"><strong><span style=\"color: black; line-height: 150%; font-family: 宋体; font-size: 16px;\">参编译著</span></strong></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">（</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">）</span> <span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">普通外科手术图谱，山东科学技术出版社</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">; </span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">第</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">版</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\"> (2010</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">年</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">8</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">月</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">1</span><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\">日</span><span style=\"line-height: 150%; font-family:;\" new=\"\" times=\"\">)</span></p><p style=\"text-align: left; line-height: 150%;\"><span style=\"line-height: 150%; font-family: 宋体; font-size: 16px;\"><br/></span></p><p>&nbsp;&nbsp;	</p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\">&nbsp;</p></td></tr></tbody></table>','1','0','0','0','0','','0','229','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1750','84','展翰翔','','','admin','2014-11-13 05:42:37','','','1','0','0','0','0','','1','2','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1751','86','王可新','','','admin','2014-11-08 08:06:59','','<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td height=\"400\" valign=\"top\" width=\"20%\">
				<p>
					<img src=\"http://www.webles.cn/attached/image/20141113/20141113075158_56738.jpg\" alt=\"\" />
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp;&nbsp;<strong><span style=\"font-size:16px;\">王可新</span>&nbsp;副主任医师</strong>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>专业</strong>：胃肠外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp; &nbsp; &nbsp;减重与糖尿病外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>门诊时间</strong>：周一全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>研究领域</strong>：胃肠道代谢手术治疗2型糖尿病的机制
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>邮箱</strong>：<span id=\"__kindeditor_bookmark_start_111__\"></span>wkx3726@163.com<span style=\"line-height:1.5;\"><span id=\"__kindeditor_bookmark_end_112__\"></span></span>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085126</span>
				</p>
				<p align=\"center\">
					<br />
				</p>
			</td>
			<td valign=\"top\" width=\"80%\">
				<p>
					<b><strong>【</strong>主要工作经历<strong>】</strong></b>
				</p>
				<p class=\"MsoNormal\">
					<b></b>
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2007.08-2008.01&nbsp; 山东大学齐鲁医院普通外科住院医师
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2008.04-2009.03&nbsp; 山东大学齐鲁医院普通外科住院总医师
				</p>
				<p class=\"MsoNormal\" align=\"left\">
					2008.02-2013.12 &nbsp;山东大学齐鲁医院普通外科主治医师
				</p>
				<p class=\"MsoNormal\">
					2011.12-2012.02&nbsp; 美国佛罗里达大学SHANDS医院学习
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>【</strong></b>学术兼职<strong>】</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\">
					中国医师协会会员
				</p>
				<p class=\"MsoNormal\">
					山东省医师协会外科医师分会腹腔镜内镜学组 委员兼秘书
				</p>
				<p class=\"MsoNormal\">
					《腹腔镜外科杂志》责任编辑
				</p>
				<p class=\"MsoNormal\">
					<b>&nbsp;</b>
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>【</strong></b>发表的学术论文<strong>】</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) &nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20KX%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Wang KX</a>,&nbsp;</b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20SY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Hu SY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jiang%20XS%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Jiang XS</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhu%20M%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Zhu M</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Jin%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Jin B</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20GY%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Zhang GY</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20B%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=19080265\">Chen B</a>. Protective effects of ischaemicpostconditioning on warm/cold ischaemic reperfusion injury in rat liver: a comparative study withischaemic preconditioning. &nbsp;Chin Med J. 2008 20;121(20):2004-2009.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Sun%20D%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Sun D</a>,&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Wang K</a></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yan%20Z%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Yan Z</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Liu S</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20F%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Liu F</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20C%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Hu C</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=23700236\">Hu S</a>. Duodenal-jejunal bypass surgery up-regulates the expression of the hepatic insulin signaling proteins and the key regulatory enzymesof intestinal gluconeogenesis in diabetic Goto-Kakizaki rats.&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/23700236\">Obes Surg.</a>&nbsp;2013;23(11):1734-1742.<b>（共同第一）</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(3)&nbsp;&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Ding%20X%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Ding X</a>,&nbsp;<b><a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20K%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang K</a></b>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Wang%20H%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Wang H</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Zhang%20G%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Zhang G</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Liu%20Y%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Liu Y</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Yang%20Q%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Yang Q</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Chen%20W%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Chen W</a>,&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed?term=Hu%20S%5BAuthor%5D&amp;cauthor=true&amp;cauthor_uid=22072303\">Hu S</a>. High expression of CCL20 isassociated with poor prognosis in patients with hepatocellular carcinoma after curative resection&nbsp;<a href=\"http://www.ncbi.nlm.nih.gov/pubmed/22072303\">JGastrointest Surg.</a>&nbsp;2012;16(4):828-836.&nbsp;<b>（共同第一）</b>
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
					<b><b><strong>【</strong></b>承担和参与课题情况<strong>】</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(1) &nbsp;</b><span style=\"font-family:宋体, Arial, Helvetica, sans-serif;line-height:30px;\">袖状胃切除术后小肠和下丘脑营养感受对肝脏葡萄糖输出 的调节（81471020）．国家自然科学基金（面上项目）．2015-2018．65万元．<strong>项目负责人</strong></span>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(2) &nbsp;</b><span style=\"line-height:1.5;\">缺血后处理对肝移植术后肝脏及小肠组织缺血再灌注损伤的保护作用</span><b>。&nbsp;</b><span style=\"line-height:1.5;\">山东省优秀中青年科学家科研奖励基金计划</span><span style=\"line-height:1.5;\">. 2008-2011. &nbsp;6</span><span style=\"line-height:1.5;\">万元</span><span style=\"line-height:1.5;\">.&nbsp;</span><b>项目负责人</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<b>(3) &nbsp;</b>Wnt蛋白促成骨髓间充质干细胞向胰岛β细胞分化的机制研究<b>。&nbsp;</b>山东大学自主创新基金. 2009-2012. 10万元.&nbsp;<b>项目组成员（第二位）</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(4) &nbsp;自身抗原Pdx1小肽联合骨髓源性不成熟树突状细胞移植免疫治疗糖尿病。青年科技明星计划.2012-2014. 5万元.<b>&nbsp;</b><b>项目组成员（第二位）</b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					<b><b><strong>【</strong></b>获奖与成果<strong>】</strong></b><b></b>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(1) &nbsp;自制手套装置和悬吊式免气腹经脐单孔腹腔镜技术的临床应用.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<b>山东省科技进步二等奖</b>. 2011. 第六位
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(2) &nbsp;腹腔镜技术基础及临床应用系列研究.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<b>山东省科技进步一等奖</b>. 2008. 第六位
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					(3) &nbsp;腹腔镜脾脏手术基础及临床应用系列研究.
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;\">
					<b>山东省科技进步二等奖</b>. 2007. 第四位
				</p>
				<div>
					<br />
				</div>
			</td>
		</tr>
	</tbody>
</table>
<br />','1','0','0','0','0','','0','265','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1752','84','展翰翔','','','admin','2014-11-13 08:17:16','','<table width=\"100%\" style=\"color: rgb(0, 0, 0); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\" cellspacing=\"10\"><tbody><tr class=\"firstRow\"><td width=\"20%\" height=\"400\" valign=\"top\"><p><img alt=\"\" src=\"/attached/image/20141113/20141113081734_65458.jpg\"/> 
				</p><p style=\"text-align: center;\">&nbsp; &nbsp; <span style=\"font-size: 16px;\"><strong>&nbsp;展翰翔</strong></span>&nbsp;<strong>主治医师</strong> 
				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;专业：胰腺外科				</p><p style=\"text-align: center;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 疝与腹壁外科				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;门诊时间：周四全天 &nbsp; &nbsp;&nbsp;				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;研究领域：胰腺肿瘤				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;邮箱：zhanhanxiang@126.com				</p><p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;电话：18560085156				</p><p style=\"text-align: center;\"><br/> 
				</p></td><td width=\"80%\" valign=\"top\"><p>&nbsp;</p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><span style=\"line-height: 1.5;\">展翰翔，男，普外科主治医师，外科学博士（肝胆胰外科），腔镜外科博士后，中国医师协会内镜医师分会无气腹腹腔镜医师委员会委员兼秘书。2011年博士毕业于北京协和医院，师从我国著名胰腺外科专家赵玉沛院士，后分配至山东大学齐鲁医院普外科工作，师从我国著名腔镜外科专家胡三元教授，擅长胰腺癌、胰腺神经内分泌肿瘤、胰腺囊性肿瘤、急性重症胰腺炎、肝胆疾病及各类腹壁疝的外科治疗，熟练掌握普外科常见疾病的微创手术。主持科研课题3项，参与国家十一五科技支撑计划1项、国家自然科学基金2项，共撰写发表论文20</span><a name=\"undefined\"></a><span style=\"line-height: 1.5;\">篇，其中SCI收录9篇，参编译著2部。</span></p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><br/></p><p class=\"MsoNormal\"><strong>主持课题</strong> 
				</p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">1. &nbsp;基于肿瘤干细胞理论探索miR-497调控胰腺癌转移机制（2013M531606），中国博士后基金面上项目，20013/7-2015/7				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					2. &nbsp;MircoRNA-146a调控EGFR/mTOR通路活性对胰腺内分泌肿瘤增殖及侵袭的影响及机制研究（ZR2013HQ049），山东省自然基金青年基金项目，2014/1-2015/12.				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					3. &nbsp;miR-146a在脓毒症早期诊断、病情评估及对乌司他丁治疗效果评价中的作用研究，天普基金，2012/12-2013/12.&nbsp;	</span></p><p class=\"MsoListParagraph\" style=\"text-indent: 0cm; margin-left: 18pt;\"><br/></p><p class=\"MsoNormal\"><strong>发表文章：</strong> </p><p class=\"MsoNormal\"><br/></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">(1) <strong>Zhan HX</strong>, Xu JW, Wu D,Zhang TP,Hu SY. Pancreatic cancer stem cells: new insight into a&nbsp;stubborn disease. Cancer Letters,2015,357(2):429-37.</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">(2) <strong>Zhan HX</strong>, Xu JW, Wang L, Wu D, Zhang GY, Hu SY. FoxQ1 is a Novel Molecular Target for Pancreatic Cancer and is Associated with Poor Prognosis.&nbsp;Curr Molecular Medicine,2015;15(5):469-77&nbsp;.</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">(3) <strong>Zhan HX</strong>, Xu JW, Wang L, Zhang GY, Hu SY. Lymph node ratio is an&nbsp;independent prognostic factor for patients after resection of pancreatic cancer.World Journal of Surgical Oncology,2015, 13:105.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: left; text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">(4) &nbsp;<strong>Zhan HX</strong>,
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
					(10) &nbsp;<strong>展翰翔</strong>,赵玉沛,张太平,丛林，廖泉，戴梦华.胰岛素瘤患者围手术期血糖变化规律及处理.中华肝胆外科杂志,2011,17(1):13-16.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(11) &nbsp;<strong>展翰翔</strong>,张太平,赵玉沛. 核受体FXR在胆汁代谢相关脏器疾病中的调控机制及研究进展.国际外科学杂志,2010,37（11）:777-780.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(12) &nbsp;<strong>展翰翔</strong>,郭俊超,张太平,赵玉沛.胰腺腺泡细胞癌的临床及病理特点分析.外科理论与实践,2009,14 (5):516-518.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(13) <strong>展翰翔</strong>,姚波,刘昌,刘亚雄，贺健康，李涤尘，吕毅.一种新型肝组织工程支架的制备及生物相容性评价.第四军医大学学报,2009,30(19):1853-1856.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(14) <strong>展翰翔</strong>,吕毅,刘昌,艾红，刘学民.彩色多普勒超声在动态监测移植肝及其并发症中的应用.西安交通大学学报（医学版）,2008,29(1):102-106.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(15) 张太平,<strong>展翰翔</strong>,赵玉沛. 以规范化手术及综合治疗为策略改善胰腺癌预后.中华肝胆外科杂志，2011,17(6):441-446.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(16) 张太平,<strong>展翰翔</strong>,赵玉沛,丛林，廖泉，戴梦华，郭俊超.Ⅰ型多发内分泌肿瘤综合症相关胰岛素瘤诊治分析.中国实用外科杂志,2010,30(9):769-772.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(17) 张太平,<strong>展翰翔</strong>,赵玉沛.做好胰腺癌的术前可切除性评估.中华肝胆外科杂志，2010,16(2):81-84.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(18) 张光永,<strong>展翰翔</strong>,刘少壮,郭炜,程志强,张翔,胡三元. 腹腔镜下经腹腔腹膜前疝修补术中子宫圆韧带的处理体会.腹腔镜外科杂志，2013,18(10):72-724.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(19) 张太平,<strong>展翰翔</strong>,谢勇,赵玉沛.胰头部肿块手术方式选择及评价.中国实用外科杂志，2009,29(8):639-641.				</span></p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><span style=\"font-family: times new roman;\">
					(20) 张太平,<strong>展翰翔</strong>,赵玉沛.如何提高胰腺癌的早期诊断率.中华消化外科杂志，2009,8(4):251-254.				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\"><strong>参编译著</strong> 
				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					1．Glisson蒂横断式肝切除术，人民卫生出版社（2008）				</span></p><p class=\"MsoListParagraph\" style=\"text-indent: -18pt; margin-left: 18pt;\"><span style=\"font-family: times new roman;\">
					2．手术解剖学，世界图书出版公司（2008）				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p class=\"MsoNormal\"><span style=\"font-family: times new roman;\">&nbsp; 
				</span></p><p><br/></p><p class=\"MsoNormal\"> 
				</p><p class=\"MsoNormal\" style=\"text-indent: -21pt; margin-left: 21pt;\"><br/></p></td></tr></tbody></table>','1','0','0','0','0','','0','298','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1753','86','于文滨','','','admin','2014-11-11 09:03:17','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<img alt=\"\" src=\"http://www.webles.cn/attached/image/20141113/20141113072236_33241.jpg\" /><strong><span style=\"font-size:16px;\">于文滨</span></strong>
				</p>
				<p align=\"center\">
					<strong>主任医师&nbsp; 硕士研究生导师</strong>&nbsp;
				</p>
				<p align=\"center\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>专业</strong>：胃肠外科
				</p>
				<p align=\"center\">
					&nbsp; &nbsp; &nbsp; &nbsp;减重与糖尿病外科
				</p>
				<p align=\"center\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>门诊时间</strong>：周五全天 &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究领域</strong>：胃肠道代谢手术治疗2型糖尿病的机制
				</p>
				<p align=\"center\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085155</span>
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
					&nbsp; &nbsp; 现任山东大学齐鲁医院胃肠外科副主任。
				</p>
				<p>
					&nbsp; &nbsp; 1992年毕业于山东大学医学院，从事普外专业13年，2002年获得医学硕士学位。擅长普外科疾病的诊治，胜任常见胃肠疾病、肝胆疾病、甲状腺及周围血管疾病的外科治疗。参与腹腔镜微创手术新技术的临床研究、开发和应用，独立完成腹腔镜胆囊切除术、阑尾切除术、腹腔镜探查等微创手术。参与多个医学课题的研究工作，是卫生厅青年科学基金课题《腹腔镜甲状腺手术中CO2气体对机体呼吸循环功能的影响》的负责人。参与编写著作多部，论文多篇。有较丰富的临床工作、科研和教学经验。
				</p>
				<p>
					<br />
				</p>
				<p>
					【&nbsp;教育背景】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【承担和参与课题情况】
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【发表的学术论文】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【获奖与成果】
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1754','85','陈波','','','admin','2014-11-10 09:53:33','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<img src=\"/attached/image/20141113/20141113095429_95720.jpg\" alt=\"\" /><strong><span style=\"font-size:16px;\">陈 &nbsp;波 &nbsp;</span></strong><strong>主治医师</strong><span style=\"line-height:1.5;\">&nbsp;</span>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>专业</strong>：甲状腺外科
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>门诊时间</strong>： &nbsp; &nbsp;&nbsp;
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究领域</strong>：
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					&nbsp; &nbsp;&nbsp;<strong>邮箱：</strong>
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span style=\"line-height:1.5;\">&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085112<br />
</span>
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
					&nbsp;<span style=\"line-height:1.5;\">【&nbsp;教育背景】</span>
				</p>
				<p>
					<br />
				</p>
				<p>
					【学术兼职】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【承担和参与课题情况】
				</p>
				<p class=\"MsoNormal\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【发表的学术论文】
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<br />
				</p>
				<p class=\"MsoNormal\">
					【获奖与成果】
				</p>
				<div>
					<br />
				</div>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','168','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1755','81','李涛','','','admin','2014-11-13 10:01:28','','<table width=\"100%\" cellspacing=\"10\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<tbody>
		<tr>
			<td width=\"20%\" height=\"400\" valign=\"top\">
				<p align=\"center\">
					<span><img src=\"/attached/image/20141113/20141113100627_40783.jpg\" alt=\"\" /></span> 
				</p>
				<p align=\"center\">
					<span><span><strong>&nbsp;</strong></span><strong><span style=\"font-size:16px;\">李 &nbsp;涛</span></strong><strong><span style=\"font-size:16px;\">&nbsp;</span></strong></span> 
				</p>
				<p align=\"center\">
					<span><span><strong>副教授 硕士生导师</strong></span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span>&nbsp; &nbsp; <strong>工作单位</strong>：山东大学齐鲁医院</span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp; &nbsp; <strong>专业</strong>：肝胆外科</span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp;&nbsp;&nbsp;&nbsp;<strong>门诊时间</strong>：周一全天 &nbsp; &nbsp;&nbsp;</span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究领域</strong>：肝癌的发病机制</span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp; &nbsp;&nbsp;<strong>邮箱</strong>：litao7706@163.com </span> </span> 
				</p>
				<p align=\"center\" style=\"text-align:left;\">
					<span><span>&nbsp; &nbsp;&nbsp;<strong>电话</strong>：18560085138<br />
</span> </span> 
				</p>
				<table cellspacing=\"10\" width=\"100%\" style=\"color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;\">
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
					<span style=\"line-height:1.5;\">&nbsp; &nbsp; 李涛，医学博士、外科博士后、副主任医师、副教授、硕士生导师。</span> 
				</p>
				<p>
					<strong>【学术兼职】</strong>
				</p>
				<p class=\"MsoNormal\" style=\"margin-left:21pt;text-indent:-21pt;\">
					<span><span></span> </span> 
				</p>
				<p class=\"MsoNormal\">
					<span>中华临床医师杂志特约编委<br />
山东省普外学会外科手术学分会委员</span> 
				</p>
				<p class=\"MsoNormal\" style=\"background:white;\">
					<span> </span> 
				</p>
				<p>
					<span><br />
</span> 
				</p>
				<p class=\"MsoNormal\">
					<span><span><strong>【承担和参与课题情况】</strong></span> </span> 
				</p>
				<p class=\"MsoNormal\">
					<span><span>1.国家自然科学基金（2009-2012） 1项 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20万<br />
2.教育部博士点基金（2010-2013） 1项 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5万<br />
3.中国博士后科学基金面上项目（一等）（2013-2016） 1项 &nbsp; 8万<br />
4.中国博士后科学基金特别资助项目（2014-2017） 1项 &nbsp; &nbsp; &nbsp; 15万<br />
5.山东省自然科学基金重点项目（2015-2018）1项 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;30万<br />
6.山东大学自主创新基金（2010-2012） 1项 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5万<br />
<br />
</span> </span> 
				</p>
				<p class=\"MsoNormal\">
					<span><span><strong>【发表的学术论文】</strong></span></span>
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
10.	Li T, Qin LX, Zhou J, Sun HC, Qiu SJ, Ye QH, Wang L, Tang ZY, Fan J. Staging, prognostic factors and adjuvant therapy of intrahepatic cholangiocarcinoma after curative resection. Liver Int &nbsp;2014;34:953-960.（Corresponding author, SCI, IF:4.4）<br />
11.	 Li T, Wang L, Chen RX, Ye QH, Sun HC, Qin LX, Tang ZY. Hepatocellular carcinoma with situs inversus totalis and polysplenia syndrome. Liver Int, 2007;27:1431-1432（SCI, IF:4.4）<br />
12.	Li T, Yang XY, Tang ZY. Intrahepatic and intraperitoneal splenosis mimicking HCC with abdominal wall metastasis in a patient with hepatitis C cirrhotic liver. Surgery 2014; Epub ahead of print.( Corresponding author, SCI, IF:3.4)<br />
13.	Li T, Qin LX, Ji Y, Sun HC, Ye QH, Wang L, Pan Q, Fan J, Tang ZY. Atypical hepatic focal nodular hyperplasia presenting as acute abdomen and misdiagnosed as hepatocellular carcinoma. Hepatol Res, 2007;37:1110-1116.（SCI, IF:2.1）<br />
14.	Li T, Wang L, Yu HH, Sun HC, Qin LX, Ye QH, Fan J, Tang ZY. Hepatic Angiomyolipoma: A retrospective study of 25 cases. Surg Today 2008,38:529-535（SCI, IF:1.0）<br />
15.	Li T, Qin LX, Gong X, Zhou J, Sun HC, Wang L, Qiu SJ, Ye QH, Fan J. Clinical Characteristics, Outcome and Risk Factors for Early and Late Intrahepatic Recurrence of Female Patients after Curative Resection of Hepatocellular Carcinoma. Surgery 2014;156:651-660 ( Corresponding author, SCI, IF:3.4)<br />
16.	Li T, Dong ZR, Guo ZY, Wang CH, Zhi XT, Zhou JW, Li DK, Chen ZT, Chen ZQ, Hu SY. Mannose-mediated inhibitory effects of PA-MSHA on invasion and metastasis of hepatocellular carcinoma via EGFR/Akt/IκBβ/NF-κB pathway. Liver Int 2014. doi: 10.1111/liv.12644. [Epub ahead of print] （SCI, IF:4.4）<br />
17.	Li T, Luo LX, Zhang C, Wang GP, Chen ZT, Jiang ZC, Wang XY, Zhi XT. End-to-End Invaginated Pancreaticojejunostomy with Three Overlapping U-Sutures--A Safe and Simple Method of Pancreaticoenteric Anastomosis. J Invest Surg. 2014 Dec 1. [Epub ahead of print] （SCI, IF:1.2）<br />
18.	Ding B, Li T, Zhang J, Zhao LX, Zhai GX. Advances in Liver-Directed Gene Therapy for Hepatocellular Carcinoma by Non-Viral Delivery Systems. Curr Gene Therapy, 2012, 12, 92-102（SCI, IF:5.3）.<br />
19.	Yu HH*, Li T*, Wu ZQ, Liu L, Ju MJ, Tang ZY. Intrahepatic splenosis mimicking hepatoma. BMJ Case Reports 2009; doi:10.1136/bcr.06.2008.0230 corr1（co-first author）<br />
20.	Bi DS, Li T,Wang KX, Huan SY. The Parasympathetic Supply to the Distal Colon—One Marker for Precisely Locating the Posterior Dissection Plane in the Operation of TME. J Surg Oncol 2010;05:1-3 (SCI, IF:2.6）<br />
21.	Chen ZQ, Wang L, Li T, Hu SY, Zhi XT. Supraclavicular Lateral Collar Incision Versus Conventional Approach for Thyroidectomy: Supplement for Minimally Invasive Techniques with Extended Indications. J Laparoendosc Adv Surg Tech AA &nbsp;2011;21:45-50 (SCI, IF:1.0）<br />
22.	李涛,乔筱玲，王敏，董兆如，李登科，陈泽婷，陈阳，陈志强，智绪亭. 阿斯匹林促进干扰素-a诱导肝癌凋亡的作用研究. 中华肝胆外科杂志，2014, 20:670-674 (核心A)<br />
23.	李涛, 智绪亭, 周建炜, 董兆如, 曲辉, 于海华, 王鲁, 汤钊猷. 小剂量阿司匹林协同干扰素-α抑制肝细胞肝癌生长转移的实验研究. 中华肝胆外科杂志，2012, 18: 50-53. (核心A)<br />
24.	李涛, 樊嘉, 胡三元, 汤钊猷, 智绪亭. 胆管内乳头状肿瘤的临床病理分析. 中华外科杂志, 2010, 48:488-490. (核心A)<br />
25.	李涛, 汤钊猷，周健伟，樊嘉，胡三元，智绪亭.甘露糖敏感性绿脓杆菌制剂诱导肝细胞肝癌凋亡的机制研究.中华肝胆外科杂志,2011,17:838-841. (核心A)<br />
26.	李涛, 曾昭冲, 王鲁, 邱双键, 智绪亭, 周健炜, 于海华, 汤钊猷. 跨膜丝氨酸蛋白酶4诱导放疗后肝细胞肝癌转移的机制研究.中华肝胆外科杂志, 2011,17:1009-1013 (核心A)<br />
27.	李涛,樊嘉,钦伦秀,周俭,孙惠川,叶青海,邱双键,王鲁,汤钊猷.透明细胞型肝癌术后早期及晚期复发的多因素分析.中华肝胆外科杂志，2012, 18: 578-581. (核心A)<br />
28.	李涛, 樊嘉, 钦伦秀, 周俭, 孙惠川, 王鲁, 叶青海, 邱双键, 汤钊猷. 透明细胞型肝癌的临床病理特点及预后分析. 中华普通外科杂志, 2012; 27: 96-99. (核心A)<br />
29.	李涛, 樊嘉, 钦伦秀, 周俭, 孙惠川, 王鲁, 叶青海, 邱双键, 汤钊猷. 肝脏血管平滑肌脂肪瘤临床病理分析. 中华外科杂志, 2009, 47:1536-1539 (核心A)<br />
30.	李涛, 薛琼, 周健炜, 王鲁, 高冬梅, 陈军, 汤钊猷. 绿脓杆菌制剂抑制肝细胞肝癌生长转移的实验研究. 中华肝胆外科杂志, 2009, 15:848-850. (核心A)&nbsp;<br />
31.	王程浩, 曲思凤, 智绪亭, 董兆如, 郭忠义, 陈泽婷, 李小玮, 姜志超, 王翔宇, 李涛. 跨膜丝氨酸蛋白酶4对肝细胞肝癌增殖侵袭作用的实验研究. 中华肝胆外科杂志, 2013; 19:220-224.(通讯作者，核心A)<br />
32.	李涛, 樊嘉, 钦伦秀, 周俭, 胡三元, 智绪亭, 汤钊猷. 透明细胞型肝癌术后复发的治疗及预后分析. 中华肝胆外科杂志, 2013;19:742-745.(核心A)<br />
33.	李涛, 钦伦秀, 潘奇, 逄锦忠, 王鲁, 孙惠川, 叶青海, 樊嘉, 汤钊猷. 肝脏原发性类癌的诊断与治疗. 中华外科杂志, 2007, 45:1335-1337. (核心A)<br />
34.	李涛,曾昭冲,王鲁,张振宇,于海华,邱双键,汤钊猷. 放射后肝癌细胞MMP-2表达、活性的变化及其对侵袭性影响的实验研究. 中华实验外科杂志, 2007, 24:14-16. (核心B)<br />
35.	李涛,钦伦秀,林国领,纪元,孙惠川,叶青海,王鲁,潘奇,樊嘉,汤钊猷.肝脏局灶性结节性增生自发破裂出血一例. 中华普通外科杂志, 2007, 22:764-765. (核心A)<br />
36.	李涛,汤钊猷. 肝脏局灶性结节性增生研究进展. 中华肝胆外科杂志, 2007, 13: 643-645. (核心A)<br />
37.	李涛,汤钊猷,曾昭冲.放疗后残存癌细胞侵袭性变化及其机制研究进展. 中华放射肿瘤学杂志, 2007, 16: 238-240. (核心A)<br />
38.	李涛，智绪亭. 梗阻性黄疽引起肾脏功能衰竭机制的研究进展.中国现代普通外科进展 2004, 7:136-138.<br />
39.	郭忠义,董兆如,智绪亭,王程浩,陈泽婷,李小玮,姜志超,王翔宇,陈志强,李涛.甘露糖敏感型绿脓杆菌制剂对肝癌细胞周期的作用机制研究. 中华肝胆外科杂志, 2013; 19:452-455.(通讯作者，核心A)<br />
40.	周钦华,吕荣芬,张翠娟,智绪亭,陈泽婷,陈阳,侯金坪,毕建坤,陈志强,李涛. 肝脏胆管内乳头状肿瘤与肝脏粘液性囊性肿瘤的鉴别诊断. 中华肝胆外科杂志，2014 (通讯作者，核心A)<br />
41.	李登科,肖宇,黄涛,智绪亭,陈泽婷,陈阳,毕建坤,侯金坪,陈志强,李涛. 甘露糖敏感性绿脓杆菌制剂抑制肝癌上皮间质转化的作用研究. 中华实验外科杂志，2014 (通讯作者，核心A)<br />
42.	李登科, 肖宇, 黄涛, 智绪亭, 陈泽婷, 陈阳, 毕建坤, 侯金坪, 陈志强, 李涛. 甘露糖敏感性绿脓杆菌制剂通过Akt/IκBβ/NF-κB通路抑制肝癌上皮间质转化. 中华肝胆外科杂志, 2014.(通讯作者，核心A)<br />
43.	董兆如, 李涛, 曲思凤, 罗黎希, 张春, 王钢普, 陈泽婷, 李小玮, 智绪亭. 小剂量阿司匹林协同干扰素-α诱导肝癌BEL-7402细胞凋亡的实验研究.中华肝胆外科杂志, 2012; 18: 292-295. (核心A)<br />
44.	周建炜, 李涛, 任正刚, 刘彬彬, 黄修燕, 居旻杰, 汤钊猷. 绿脓杆菌制剂对人肝癌MHCC97L细胞增殖和侵袭能力的影响. 中华肝胆外科杂志, 2010; 16: 643-645. (核心A)<br />
45.	张春, 李涛, 董兆如, 罗黎希, 王钢普, 姜志超, 王翔宇, 智绪亭. 肝内胆管结石合并肝内胆管癌的临床病理特点及预后分析. 中华肝胆外科杂志, 2012; 18: 893-896. (核心A)<br />
46.	曲思凤,李涛,张翠娟,胡三元,智绪亭. 胰腺实性假乳头状肿瘤的诊断与治疗. 中国现代普通外科进展, 2010,10:418-420.<br />
47.	曲思凤,李涛,赵蒙,董兆如,智绪亭.原发性腹膜后肿瘤的诊断与治疗. 中国现代普通外科进展, 2011,14:116-118<br />
48.	董兆如,李涛,智绪亭.非甾体类抗炎药抗肿瘤作用的研究进展. 中国现代普通外科进展,2010,13:562-566<br />
49.	王 飞,李 涛,卢 奕,褚仁远.绿色荧光蛋白标记的人肝癌细胞在Balb/c鼠前房成瘤的观察. 中国眼耳鼻喉杂志, 2008, 8:82-83.<br />
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
					<span><span>【获奖与成果】</span> </span> 
				</p>
				<div>
					<span><span> 
					<p class=\"MsoNormal\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;background:white;\">
						1.&nbsp; D8S298位点杂合性缺失在肝细胞癌根治术后预测中的价值<span>. </span>青岛市科技进步三等奖<span>. 2013</span> 
					</p>
					<p class=\"MsoNormal\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;background:white;\">
						2.&nbsp; 肝脏肿瘤的诊治、预后及其遗传学与表观遗传学机制研究<span>.</span>山东省自然科学三等奖<span>.2014&nbsp;</span> 
					</p>
<br />
</span> </span> 
				</div>
			</td>
		</tr>
	</tbody>
</table>','1','0','0','0','0','','0','361','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1759','64','山东大学齐鲁医院实施山东省首例经脐单孔腹腔镜肝切除术','','','admin','2015-03-20 08:29:20','','&nbsp;&nbsp;&nbsp; 近日，我院普外科F5C病房成功实施经脐单孔腹腔镜肝左外叶切除术，经教育部科技查新工作站查新为山东省首例经脐单孔腹腔镜肝切除术。<br />
&nbsp;&nbsp;&nbsp; 患者因查体发现肝占位1月余入院，查体：腹部稍膨隆，腹软，无明显压痛及反跳痛，腹部未触及明显异常包块，肝肾区无叩痛，移动性浊音阴性，肠鸣音可。腹部超声示肝左叶不均质回声团块，腹部强化CT示：肝左外叶占位。结合患者病史、体征、辅助检查等，术前诊断考虑为肝血管瘤。该例患者经过普外科F5C病房科室讨论，积极术前准备后，决定行经脐单孔腹腔镜肝左外叶切除术。手术由胡三元教授、靳斌副教授、杜刚主治医师实施，取脐下横弧形切口，长约3cm，依次切开各层，置入单孔腹腔镜器械，探查：腹腔内无腹水，腹壁、盆腔未见异常结节，胆囊大小正常，肝脏未见明显结节性肝硬化表现，肝脏左外叶可见1枚血管瘤，约8×6cm，右肝表面未见明显异常，首先以超声刀离断肝圆韧带，游离肝镰状韧带、左冠状韧带、左三角韧带，距肝镰状韧带左侧约0.5cm以超声刀离断肝脏脏面及膈面各约1cm肝组织，使用切割闭合器于第一、二肝门处离断，将肝脏左外叶切除，氩气刀烧灼肝创面，将标本放入取物袋内，自脐下切口将其取出，术中出血约50ml。术后病理示：（肝脏）海绵状血管瘤，术后第一天患者进饮食，下床活动，恢复良好。<br />
&nbsp;&nbsp;&nbsp; 经脐单孔腹腔镜手术是近几年来在国内外开展的一种腹腔镜技术，是在多孔腹腔镜手术的基础上进一步提升，不仅要求手术者精通开腹手术的技术，而且要有良好的腹腔镜技巧，目前国内单孔腹腔镜肝切除手术相对开展较少，山东省目前尚无此类报道。我院普外科有着丰富的肝脏切除经验，并且已开展了经脐单孔腹腔镜胆囊切除、多孔腹腔镜肝切除，有着丰富的腹腔镜技术储备，此次成功实施了山东省首例经脐单孔腹腔镜肝左外叶切除术。该手术的成功，为我院单孔腹腔镜技术的进一步开展积累了宝贵的经验。单孔腹腔镜手术创伤小，腹腔暴露时间短，患者恢复快，痛苦小，并发症较少，住院时间短，更容易为患者接受。
<p align=\"center\">
	<img alt=\"\" src=\"/attached/image/20150413/20150413083305_62822.png\" />
</p>','1','0','0','0','0','','0','144','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1756','64','群英荟萃，医术畅享---第二十一届全国腹腔镜手术研讨会圆满举办','','','admin','2014-11-17 10:41:15','','<p align=\"left\" style=\"text-align:left;text-indent:30pt;\">
	<br />
</p>
<p style=\"background:white;text-indent:30pt;\">
	<span>2014</span>年<span>11</span>月<span>14-16</span>日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、<span>3D</span>腹腔镜手术专场、<span>Video</span>手术视频演示专场等多个主题会场，邀请到了<span>41</span>位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了<span>48</span>场学术讲座和<span>17</span>场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的<span>600</span>余名代表到场参会研讨。
</p>
<p style=\"background:white;text-indent:30pt;\">
	本次研讨会开幕式在记录短片“前进中的齐鲁腔镜外科”中拉开帷幕，回顾了山东大学齐鲁医院普外科腔镜技术的发展历程，向与会专家和代表介绍了我院腔镜外科发展<span>22</span>年来取得的技术进步、建立的一支技术过硬的腔镜医师队伍和四个腔镜技术创新、推广的平台。开幕式由我院普外科副主任、疝与腹壁外科主任张光永副教授主持。大会主席、中华医学会外科学分会腹腔镜内镜外科学组副组长、消化内镜学分会经自然腔道内镜手术学组副组长、中国医师协会外科医师分会常委兼微创外科专业委员会副主任委员、中国医师协会内镜医师分会常委、无气腹腹腔镜委员会主任委员、我院普外科学术带头人胡三元教授致开幕词，对来自全国各地的与会专家表示诚挚欢迎，概括总结了国内腹腔镜的发展现状并对腔镜外科的未来前景做出展望。<span></span> 
</p>
<p style=\"background:white;text-indent:30pt;\">
	开幕式后，中华医学会外科学分会腹腔镜内镜外科学组组长、上海交通大学附属瑞金医院的郑民华教授，中国医师协会外科医师分会微创外科专业委员会主任委员、中华医学会外科学分会结直肠肛门外科学组副组长、四川大学华西医院的周总光教授，中华医学会外科学分会疝与腹壁外科学组组长、上海交通大学附属华东医院的唐健雄教授，中国医师协会外科医师分会疝和腹壁外科专业委员会主任委员、中山大学附属孙逸仙医院的陈双教授等出席开幕式并做大会主会场学术讲座，对腹腔镜右半结肠完整结肠系膜切除术等专题进行了全面的阐释。之后，各分会场分专题就胃肠、肝胆、等普外科各领域疾病微创治疗的最新进展进行了精彩的学术讲座。<span></span> 
</p>
<p style=\"background:white;text-indent:30pt;\">
	本次会议共进行了<span>17</span>场腹腔镜手术直播，<span>4</span>个手术间同时向会场传输信号，包括普通高清腹腔镜信号和<span>3D</span>腹腔镜信号，所有手术均由我院医师主刀完成。胡三元教授、智绪亭教授、何庆泗教授、戴勇教授、于文滨教授、曾庆东教授、张光永副教授、王磊副教授、靳斌教授、吕斌副教授等分别向与会代表演示了袖状胃切除术、脾切除术、肝肿瘤切除术、单孔腹腔镜胆囊切除术、胃癌根治术<span>D2</span>淋巴结清扫、直肠癌根治术、切口疝修补术、腹股沟疝修补术、甲状腺部分切除术等手术，各位医师精湛的技艺得到了与会专家、代表的一致好评，彰显了我院普外科各亚专科腹腔镜技术的全面进步和成熟。
</p>
<p style=\"background:white;text-indent:6pt;\">
	<span>&nbsp;<span class=\"apple-converted-space\">&nbsp;&nbsp;&nbsp;</span></span>此次会议是腹腔镜外科领域的又一次学术盛会，会议不但全面介绍了普外科疾病的微创治疗新理念及新术式，还引入、介绍和展示了<span>3D</span>腔镜手术，对普及、规范普外科腔镜手术，促进学科发展起到积极作用，同时也集中展示了我院腹腔镜外科的发展成果，进一步提高了我院及腹腔镜外科在全国的影响力和学术地位。
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1757','66','内镜外科学练习题及参考答案','','','admin','2014-11-21 14:07:32','','<p>
	1.什么是微创外科？腹腔镜技术有哪些优点？列举至少3种腹腔镜器械。<br />
答案：（1）微创外科：是指在尽可能准确去除病变的同时（2’），使手术引起机体局部创伤和全身反应降到最小程度外科理念和技术体系（2’）。<br />
（2）优点：1.手术视野清晰，有放大效果，可以观察到开腹手术不易观察到的部位（3’）；2.创伤小，疼痛轻，手术在密闭的盆、腹腔内进行，内环境干扰小，术后恢复快（3’）；<br />
3.减少了病人住院时间，从而减轻了病人负担(2’)；<br />
4.腹部切口小、美容效果好（2’），减少了刀口感染及切口疝等腹壁疾病发生的可能性（3’）<br />
（3）器械：1.腹腔镜显示系统：腹腔镜，微型摄像头及数模转换器，显示器，冷光源，录像机等；2.CO2气腹系统：气腹机，气腹针等；3.手术设备与器械：超声刀，冲洗吸引器，穿刺针，电凝装置等。（3’）
</p>
<p>
	2.腹腔镜的基本技术有哪些？ <br />
答案：<br />
(1)建立气腹：1.闭合法：在脐下缘作弧形或纵行切口，长约10mm至皮下。（1’）在切口两侧用巾钳或手提起腹壁，将气腹针经切口垂直或向盆腔斜行刺入腹腔，枕头穿过筋膜和腹膜时有两层突破感（2’），穿刺进腹后可采用抽吸实验、负压试验或容量试验证实气腹针已进入腹腔（1’）。将含有生理盐水的注射器连接上气腹针，先抽吸看有否肠液或血液，再看注射器内的生理盐水，如缓慢下降，则证实气腹针头位于腹腔（2’）。向腹腔内注入二氧化碳气体，至预设压力15mmHg（2’）。待腹部呈对称性膨隆，叩诊鼓音时，气腹即告完成。（2’）2.开放法：在脐下缘作弧形或纵行切口，长约10mm达深筋膜（1’），在直视下打开腹膜，先以手指进入明确腹腔及腹壁下无粘连后，置入套管连接充气管建立气腹（1’）<br />
(2)腹腔镜下止血：主要采用电凝止血，有单极和双极电凝两种。其余有钛夹、超声刀等方式（2’）<br />
(3)腹腔镜下组织分离与切开：有电凝切割、剪刀锐性分离、超声刀凝固切割等（2’）<br />
(4)腹腔镜下缝合：缝线打结方法有腔内打结及腔外打结（1’）；<br />
(5)标本取出：小于或略大于套管鞘的标本可以直接从套管鞘内取出；如标本过大，可将操作孔扩大后取出标本（1’）；切除的组织巨大，又是良性病变者，可借助器械或组织粉碎机将组织缩小、粉碎后取出，亦可作一小切口取出组织；（1’）恶性肿瘤标本处处后必须使用标本袋，以免造成肿瘤的播散。（1’）
</p>
<p>
	3.腹腔镜结直肠手术的适应证及一般禁忌症？<br />
答案：1.适应证：（1）结直肠的慢性、良性疾病；（2’）<br />
（2）结直肠的早中期肿瘤；（2’）<br />
（3）&nbsp;结直肠的功能性疾病，如慢传输性便秘、直肠脱垂等。（4’）<br />
2.禁忌症：（1）无法耐受麻醉与腹腔镜手术者（2’）；<br />
（2）恶性肿瘤伴腹腔内转移（2’）；<br />
（3）肿瘤过大（2’）；<br />
（4）急性肠梗阻（2’）；<br />
（5）相对禁忌症：肿瘤直径大于6CM或肿瘤周围组织被广泛浸润如右半结肠肿瘤浸润输尿管。（4’）
</p>
<p>
	4.腹腔镜胆囊切除术的基本步骤及注意事项？<br />
答案：1.常见手术步骤： （1）体位多采用头高脚低位，右侧略抬高（1’）；脐下作一10mm纵行切口，建立气腹至15mmHg，伸入腹腔镜探查腹腔（1’）；腔镜直视下剑突下穿入10mm套管作为主操作孔，用于置入分离钳等器械（1’）；右锁骨中线肋下缘及右腋前线肋下水平分别作5mm切口，刺入套管（1’）；<br />
（2）用抓钳将胆囊底部向头部牵拉，另一抓钳将胆囊颈向右下方牵拉，是胆囊管有张力并与胆总管成垂直角度，以显露Calot三角（2’）；<br />
（3）先用分离钳或电钩解剖后三角，再通过前三角解剖出胆囊管与胆囊动脉，分别用钛夹夹闭两端并用剪刀剪断（3’）；<br />
（4）顺行或逆行将胆囊从胆囊床上玻璃下来，于戳孔处取出（1’）；<br />
（5）胆囊床如有渗血，应予以止血（1’）；<br />
（6）生理盐水冲洗腹腔，观察有否渗血和胆汁渗出（1’）。<br />
2.注意事项：（1）腹壁穿刺应轻柔，显露需良好；（2’）<br />
（2）所有的热源均会导致不易被察觉的胆管损伤，破裂的胆囊应予以闭合以防胆结石遗落，掉落的胆结石应尽可能找回；（2’）<br />
（3）放宽术中胆道造影指征，尤其有重要的胆道畸形、胆道解剖困难或作胆总管结石的探查时；（2’）<br />
（4）手术者在手术困难、解剖不清或解剖异常（特别是急性胆囊炎时）应及时中转开腹。（2’）
</p>
<p>
	5.根据长径腹壁切口疝可分为几类？腹壁切口疝修补术的常见并发症？<br />
答案：1.分类：小切口疝: &lt; 3cm（2’）；<br />
中切口疝: 3～5cm（2’）； <br />
大切口疝: 5～10cm（2’）； <br />
巨大切口疝: ≥10cm或疝囊容积与腹腔容积的比值&gt;15%(不论其疝环最大距离为多少)（4’）；<br />
2.并发症：1.复发（2’）；2.感染(2’)；3.慢性疼痛（2’）；4.血清肿（2’）；5.肠瘘（2’）
</p>
<p>
	6.腹腔镜供肾取出术的绝对禁忌症与相对禁忌症？<br />
答案：绝对禁忌症：1.对侧肾功能不良（1’）；<br />
2.肾缺失（1’）；<br />
3.肾实质异常（如多囊肾和马蹄肾）（1’）；<br />
4.恶性肿瘤（1’）；<br />
5.凝血障碍性疾病（1’）；<br />
6.肾功能不全（1’）；<br />
7.伴有活动性感染、脓尿或遗传性肾病等的双侧肾动脉阻塞性疾病（3’）。<br />
相对禁忌症：1.不伴脓尿、活动性感染或遗传性肾病等的双侧肾动脉阻塞性疾病（2’）；<br />
2.全麻或气腹过程中可能出现意外者，如慢阻肺（2’）；<br />
3.既往结肠手术或炎症病史（1’）；<br />
4.腹膜后纤维化、肝硬化、腹水或慢性肾盂肾炎等（3’）；<br />
5.将来残肾功能可能发生损害者：如糖尿病、高血压等（3’）
</p>
<p>
	7．试阐述腹腔镜子宫剔除术的适应症和禁忌症。<br />
答案：适应证：1.明显出血、疼痛或由于子宫肌瘤所致的压迫症状（2’）;<br />
2.肌瘤引起的不孕症（2’）；<br />
3.习惯性流产（2’）；<br />
4.盆腔包块，子宫大于12周孕龄（2’）；<br />
5.肌瘤外突，且增长迅速（2’）。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 禁忌症：1.弥漫性子宫肌瘤或子宫腺肌病（2.5’）；<br />
2.粘膜下肌瘤突入宫腔50%以上（2.5’）；<br />
3.肌瘤直径大于10cm（2.5’）；<br />
4.患者要求行子宫切除术（2.5’）。
</p>
<p>
	8.结合你自己的腹腔镜理论知识和临床经验，简述腹腔镜外科未来的发展方向和趋势（外科理念、手术方式、医师培训等方面）(20’)<br />
参考答案：自从２０世纪末腹腔镜与外科历史性结合以来，腹腔镜手术以患者创伤小、康复快、术后疼痛轻等优势在外科疾病诊治中起着越来越重要的作用，大有取代传统开放手术之势。近年腹腔镜技术的发展日新月异，手术方式层出不穷，手术适应证不断拓宽，其发展前景令人振奋。<br />
随着外科腹腔镜技术的发展，术者将借助腹腔镜的放大优势对人梯各系统的解剖进行新的认识，这将使腹腔镜操作变得更为微创、精细、准确。各种腹腔镜解剖性手术（如腹壁疝腹腔镜修补术、肾上腺和前列腺切除等）的崭露头角，是这种发展趋势的充分体现。<br />
以腹腔镜手术为代表的微创技术是今后外科的发展方向。随着科学技术的进步，越来越多的先进设备和材料将整合到腹腔镜技术中，新的培训模式也会应运而生，腹腔镜技术将变得更简单、更普及，手术方式也将变得更加规范。因此，未来腹腔镜技术的发展可以概括为：应用设备微型化，复杂手术简单化，简单手术普及化，常规手术规范化。在广大泌尿外科同仁的共同努力下泌尿外科腹腔镜手术将会有更加美好的应用前景。
</p>
<p>
	<br />
</p>','1','0','0','0','0','','0','176','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1758','66','Test and answer for foreign students','','','admin','2014-11-22 16:44:11','upload/1416674772.doc','<p class=\"p15\" style=\"margin-left:18.0000pt;text-indent:-18.0000pt;\">
	<br />
</p>','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1760','64','胡三元获国家科学技术进步奖二等奖','','','admin','2015-03-19 08:34:40','','<p style=\"color:#000000;text-align:left;background-color:#ffffff;text-indent:0px;\">
	<span style=\"background-color:#ffffff;\"><span style=\"line-height:1.5;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日前，由我院副院长胡三元教授、普外科副主任张光永副教授和中国人民总医院、天津南开医院共同完成的“肝胆胰腹腔镜手术技术体系及应用”项目荣获2014年国家科学技术进步奖二等奖。
</p>
<p>
	　　该项目在国内首先倡导“外科微创化”理念，国际最早提出腹腔镜解剖性肝切除理论，攻克了腹腔镜肝切除关键性技术难题;开展了腹腔镜胰腺手术入路研究，解决了胰腺微创手术中显露的难题，创立了基于腹腔镜的肝内外胆管结石、胆道肿瘤微创治疗技术新体系;从而构建了以技术简洁、方法安全、恢复良好为鲜明特色的腹腔镜肝胆胰手术技术体系，改变了肝胆胰疾病外科治疗的策略和模式，惠及患者众多。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p align=\"center\">
	<img alt=\"\" src=\"/attached/image/20150413/20150413084408_86533.png\" />
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 山东大学齐鲁医院获奖者胡三元教授自1992年起开始致力于腹腔镜基础与临床技术的应用研究。对肝内外胆管结石用腹腔镜技术治疗进行了多种方法探索和动物实验研究，如：腹腔内残留胆道结石转归的实验研究，腹腔内留置钛夹转归的实验研究，腹腔镜手术电刀切开胆总管对其愈合影响的动物实验研究，腹腔镜胆总管切开取石T形管引流术技巧及并发症防治，腹腔镜胆总管切开取石胆总管一期缝合术、腹腔镜下经胆囊管胆总管结石取石术、开腹胆总管手术后腹腔镜胆总管切开取石术等手术。总结出了上述方法各自的适应证和禁忌证，建立了肝内外胆管结石腹腔镜治疗技术体系。在国内外核心期刊发表论文19篇，其中SCI收录2篇，数十次在全国学术会议上进行专题学术讲座和手术演示，对腹腔镜技术在肝内外胆管结石治疗中的应用起了较大的推动作用。 <br />
　　为进一步体现腹腔镜技术的优点，胡三元教授对腹腔镜技术进行了改良创新。2008年开创性地用现有的设备和器械进行了全国首例真正意义上的经脐单孔腹腔镜胆囊切除术，随后又创新性地用无菌手术手套制作了经脐单孔腹腔镜手术入路装置，并应用临床，获得巨大成功。该方法简便实用，经济，易推广，在国内受到同行极大好评。为了降低该技术手术难度，扩大技术应用适应证，创造性地将经脐单孔腹腔镜手术与悬吊式腹腔镜相结合，开展了国际领先水平的悬吊式经脐单孔腹腔镜技术。该项技术在国内外核心期刊发表论文9篇，被SCI收录3篇，参加国际会议交流2次，举办全国学习班及研讨会23次，应邀在广州、甘肃、吉林、云南、新疆、黑龙江等全国学术会议上进行手术演示和专题讲座20余次，发表在《腹腔镜外科杂志》上的“经脐单孔腹腔镜胆囊切除术”论文分别入选2010年度和2013年度中国百篇最具影响国内学术论文。对经脐单孔腹腔镜技术在我国的发展和推广做出了较大贡献。
</p>
</span> 
<p>
	&nbsp;
</p>
</span>','1','0','0','0','0','','0','152','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1761','64','山东大学齐鲁医院普外科实施腹腔镜左半肝切除术一例','','','admin','2015-04-01 08:46:44','','<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 近日，山东大学齐鲁医院普外科F5C病房成功实施一例腹腔镜左半肝切除术。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 患者因上腹部不适8年，加重3月入院，腹部强化CT示肝左叶低密度灶（胆管占位可能性大），胆囊多发结石伴胆囊炎，患者有手术指征，但是手术范围较大，腹腔镜手术技术要求较高，普外科F5C病房经过科室讨论，积极术前准备后，决定行腹腔镜左半肝切除、胆囊切除术。在胡三元教授、张宗利教授指导下，由靳斌副教授、杜刚主治医师、刘炎峰主治医师、李佳医师实施手术。探查：腹腔无腹水，胆囊大小可，肝脏未见明显结节性肝硬化表现，肝脏表面未见明显肿块，首先切除胆囊，然后以超声刀离断肝圆韧带、肝镰状韧带，解剖第一肝门，解剖出左肝动脉通向肝脏第II、III、IV段的分支，以hem-o-lock夹、可吸收夹将其分别夹闭后离断，解剖出门静脉左支，将其以可吸收夹夹闭，可见半肝缺血线出现，注意保护右肝动脉、门静脉右支、胆总管，然后游离第二肝门，显露出左肝静脉，游离左冠状韧带、左三角韧带、肝胃韧带，距半肝缺血线左侧约1cm以电刀划出预切线，沿预切线钝性分离左半肝脏面、膈面肝组织，大的管道以hem-o-lock夹夹闭后切断，使用切割闭合器于第一、二肝门处离断，将左半肝切除，氩气刀烧灼肝创面，延长脐下切口，将标本完整取出。手术顺利，术后剖开标本，可见胆囊多发黑色结石，左半肝肝内胆管扩张，内可见多枚黑色结石。术后病理示：（肝脏）肝硬化伴慢性炎细胞浸润（以淋巴细胞为主），肝内胆管扩张伴胆管结石，术后患者第一天下床活动，早期恢复饮食。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 传统的手术方式腹部开口长约25-30cm，手术刀口长，腹腔暴露时间长，创伤大，恢复慢，住院时间长，并发症相对较多，相比较传统的手术方式，腹腔镜手术最长的切口仅约6cm（延长脐下切口取出标本用），手术创伤小，腹腔暴露时间短，腹膜完整性好，患者恢复快、痛苦小、住院时间短、并发症较少。当然，腹腔镜手术技术要求较高，不仅要求手术者精通开腹手术的技术，而且要求手术者有良好的腹腔镜技巧，目前腹腔镜肝左外叶切除、左肝部分切除相对开展广泛，腹腔镜右肝部分切除也得到进一步推广，但是半肝切除手术难度较大，开展相对较少，随着经验的不断积累，手术技术的不断提高，此类手术方式会成为医生及患者理想的手术方式。
</p>
<p align=\"center\">
	<img alt=\"\" src=\"/attached/image/20150413/20150413084920_37152.png\" /> 
</p>
<p>
	&nbsp;
</p>','1','0','0','0','0','','0','158','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1762','64','2015齐鲁胃肠外科论坛暨卓越外科胃癌巡讲圆满举办','','','admin','2015-04-27 00:43:51','','<p class=\"MsoNormal\" style=\"text-indent:22.0pt;\">
	<span> </span> 
</p>
<p class=\"MsoNormal\" style=\"text-indent:22.0pt;\">
	<span>
	<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:22.0pt;\">
		2015年4月25至26日，山东大学齐鲁医院与《腹腔镜外科杂志》主办了“2015齐鲁胃肠外科论坛暨卓越外科胃癌巡讲” 于济南市南郊宾馆成功举办。本次会议邀请到24位国内知名胃肠外科专家到会进行学术讲座，会议期间还进行了两台腹腔镜胃肠手术演示。来自全国的共200余名普外科专家代表到会参与研讨。
	</p>
	<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:22.0pt;\">
		会议首先由山东省医师协会副会长、山东省医师协会外科分会主任委员、山东大学齐鲁医院李新钢院长致开幕词，介绍了山东省外科蓬勃发展的现状并向与会专家致以欢迎和问候。开幕式结束后的学术报告环节从多个角度阐释了胃癌肠癌的发生发展与治疗。由北京肿瘤医院步召德教授、上海交通大学附属瑞金医院燕敏教授、中国医学科学院肿瘤医院田艳涛教授、南京军区总医院李国立教授、吉林大学中日联谊医院房学东教授、天津肿瘤医院梁寒教授、北京人民医院叶颖江教授、中国人民解放军总医院陈凛教授、山东省临沂市人民医院陆春雷教授、青岛大学医学院附属医院周岩冰教授、山东大学医学院贾继辉教授等14名国内知名专家及齐鲁医院何庆泗教授、刘凤军教授等10名我院专家就胃癌的发生发展及治疗的最新进展进行了精彩的学术汇报。手术演示环节，由山东省普通外科胃肠专业副主任委员、山东大学齐鲁医院普外科副主任、胃肠外科主任何庆泗教授演示腹腔镜胃癌根治术，山东大学齐鲁医院胃肠外科副主任于文滨教授演示腹腔镜左半结肠切除术，精彩的手术演示获得了与会专家的一致好评。
	</p>
	<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:22.0pt;\">
		<span style=\"line-height:1.5;\">本次会议的顺利召开，不仅就胃癌发生发展的最新研究及治疗的最新进展进行了精彩的学术研讨，同时也集中展示了我院在腹腔镜胃肠外科方面的发展成果，进一步提高了我院胃肠外科在全国的影响力和学术地位。</span>
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
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1763','64','减重我做主，爱让我苗条——5.11山东大学齐鲁医院世界肥胖日大型义诊','','','admin','2015-05-09 02:12:51','','<p style=\"margin-left:0cm;background:white;\">
	&nbsp; &nbsp;&nbsp;5月<span>11</span>日是由世界卫生组织确定的世界防治肥胖日。肥胖是世界卫生组织确定的十大慢性疾病之一。目前中国人体重超重人群达<span>2</span>亿，肥胖者超过<span>9000</span>万。目前中国肥胖人群超过<span>9000</span>万，“好日子”给我们带来越来越多的“水桶腰、将军肚”，和日益增多的高血压、高血脂、脂肪肝、冠心病等疾病。因超重和肥胖引发的糖尿病<span style=\"background-color:#FFFFFF;\">、高血压、</span>心血管病等疾病也在逐年增加且呈年轻化趋势。因超重和肥胖引起的代谢综合症——糖尿病、高血压、多囊卵巢综合征、睡眠呼吸暂停等疾病逐年增加，已成为当今社会仅次于吸烟的致死原因。国家每年为肥胖所导致的疾病对医药费的投入更是数以百亿人民币计。<span></span>
</p>
<p style=\"margin-left:0cm;background:white;\">
	&nbsp;&nbsp;&nbsp; 今年<span>5</span>月<span>11</span>日，山东大学齐鲁医院将于华美楼举行世界肥胖日大型义诊活动。假如您觉得身边的人体重无法控制<span style=\"color:#000000;\">（</span><span style=\"color:#000000;\">BMI</span><span style=\"color:#000000;\">≥</span><span style=\"color:#000000;\">27.5</span><span style=\"color:#000000;\">）</span>，假如您身边有人患有关于肥胖的代谢综合征（例：高血压、高血糖、高血脂、糖尿病、脂肪肝、多囊卵巢综合症、冠心病、关节炎等…）。欢迎在<span>5</span>月<span>11</span>日世界防治肥胖日前来山东大学齐鲁医院咨询了解。<span></span>
</p>
<p style=\"margin-left:0cm;background:white;\">
	　　胡三元，主任医师，山东大学齐鲁医院副院长，是我国最早从事腹腔镜专业的专家之一，在腹腔镜领域担任中华医学会外科分会委员兼腹腔镜内镜外科学组副组长，中华医学会外科分会委员兼腹腔镜内镜外科学组副组长，中国医师协会外科医师分会常委兼微创外科专业委员会副主任委员、中国医师协会外科分会常委兼内镜医师分会常务理事，中国医师协会外科医师分会微创外科专业委员会副主任委员，山东省医学会外科分会腹腔镜内镜外科学组组长，山东省医师协会外科医师分会主任委员，山东省医师协会腔镜外科医师分会主任委员，山东省医学会外科分会副主任委员，山东省医学会普外科副主任委员，山东省抗癌协会普外肿瘤委员会副主任委员。<span></span>
</p>
<p style=\"margin-left:0cm;background:white;\">
	&nbsp;&nbsp;&nbsp; 陈丽，主任医师，教授，现任山东大学齐鲁医院内分泌科主任，医学学士，博士生导师，山东大学内分泌与代谢研究所所长，山东大学杰出学科带头人，山东省卫生系统杰出学科带头人，兼任中国医师协会内分泌学分会副总干事长，中华医学会糖尿病学分会常务委员，山东省医学会内分泌学分会主任委员，山东省医学会糖尿病学分会副主任委员，《中华糖尿病杂志》、《国外医学内分泌学分册》等杂志编委，《<span>Journal of Cellular and Molecular Medicine</span>》等杂志审稿专家。从医<span>30</span>余年，临床经验丰富，专业知识面广，擅长诊治各种内分泌代谢系统疾患，特别是在糖尿病及其并发症的防治上造诣深厚，在国内率先开展了自身骨髓干细胞移植治疗糖尿病工作。<img src=\"/attached/image/20150509/20150509023149_64819.jpeg\" alt=\"\" /><span><img src=\"/attached/image/20150509/20150509023212_66955.jpeg\" alt=\"\" /></span>
</p>','1','0','0','0','0','','0','139','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1764','64','我院举行5.11世界防治肥胖日义诊活动','','','admin','2015-05-15 03:30:09','','<p style=\"text-indent:21.0pt;\">
	5月<span>11</span>日是由世界卫生组织确定的“世界防治肥胖日”。当天，山东大学齐鲁医院普外科减重与糖尿病外科团队联合内分泌科专家在华美楼前开展肥胖与糖尿病外科治疗义诊咨询活动，为前来咨询的肥胖症患者传授“瘦身”秘笈。<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	离义诊开始还有半小时，医院华美楼前已经热闹非凡，一早就聚集了许多前来义诊的患者。胡三元教授、陈丽教授、侯新国副教授、孙宇副教授、王可新副教授、刘少壮主治医师、李文娟主治医师、李玉芹护士长等参加了义诊活动。在当天的活动现场，医护专家与前来咨询的肥胖症患者开展一对一交流，在指导其进行科学减重的同时，还通过免费测血糖、血压、发放科普宣传资料开展义诊宣教。<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	肥胖是世界卫生组织确定的十大慢性疾病之一。目前中国人体重超重人群达<span>2</span>亿，肥胖者超过<span>9000</span>万。因超重和肥胖引发的糖尿病、高血压、心血管病等疾病也在逐年增加且呈年轻化趋势。相关统计数据显示，中国每年为肥胖所导致的疾病投入经费高达数百亿人民币。<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	&nbsp;“肥胖不仅影响美观，还会导致一系列相关疾病，严重影响身体健康。”山东大学齐鲁医院内分泌科主任陈丽教授介绍，与肥胖相关的健康问题很多，像糖尿病、高血压、高血脂、冠心病、呼吸睡眠暂停综合征等，都与肥胖有着密不可分的关系。<span></span> 
</p>
<p style=\"text-indent:21.0pt;\">
	减肥是一项艰难、长期、科学的工程。要控制体重，需要长期保持能量摄入均衡，加强运动锻炼，改变静坐少动的生活方式。对于受重度肥胖严重困扰的人，可在医生的指导下配合药物治疗，药物治疗效果欠佳者或伴有糖尿病、高血压等疾病者可选择手术治疗。<span></span> 
</p>
<p style=\"text-indent:10.5pt;\">
	　山东大学齐鲁医院副院长，全国知名腹腔镜外科专家胡三元教授介绍，在医疗技术日新月异的今天，代谢手术已经成为治疗重度肥胖和糖尿病的重要选择并写入指南，代谢手术治疗糖尿病被评选为<span>2013</span>年十大医学创新、位列首位；手术主要通过腹腔镜技术来完成，通常可以减掉多余体重的<span>60%-70%</span>，并能在数周内缓解或改善糖尿病，缓解率超过<span>60%</span>、有效率<span>90%</span>以上；我院是国内最早开展减重和糖尿病手术的医院之一，目前已经建立由普外科、内分泌科、麻醉科、<span>ICU</span>等科室多位医生组成的减重团队，成功治愈多例重度肥胖患者和糖尿病患者，积累了丰富的经验。<img src=\"http://www.gims.com.cn/attached/image/20150515/20150515040843_85871.jpg\" alt=\"\" /><img src=\"/attached/image/20150515/20150515040023_46180.jpg\" alt=\"\" /><img src=\"/attached/image/20150515/20150515040054_44483.jpg\" alt=\"\" /><img src=\"/attached/image/20150515/20150515040113_45455.jpg\" alt=\"\" /><img src=\"http://www.gims.com.cn/attached/image/20150515/20150515040041_28643.jpg\" alt=\"\" /><img src=\"http://www.gims.com.cn/attached/image/20150515/20150515040002_27473.jpg\" alt=\"\" /> 
</p>','1','0','0','0','0','','0','137','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1765','64','“山东省减重与糖尿病外科规范诊疗研讨会”在济召开','','','admin','2015-07-21 02:36:24','','<p style=\"text-align:justify;color:#535353;font-family:Verdana, Geneva, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<p style=\"margin-left:0cm;text-align:justify;background:white;\">
		&nbsp; &nbsp; 7月12日，“山东省减重与糖尿病外科规范诊疗研讨会”在济南举办。
	</p>
	<p style=\"text-align:justify;background:white;\">
		&nbsp;
&nbsp; 来自于济南市中心医院、济南军区总医院、聊城市人民医院、潍坊市人民医院、烟台毓璜顶医院、淄博市中心医院、青岛大学附属医院等多家医院和我院的30余位普外科和内分泌科专家齐聚研讨会，共同探讨我省减重与糖尿病外科的规范诊疗。根据最新的流行病学统计，我国糖尿病和肥胖患者总量目前分别位居国际第一和第二，山东省是我国的肥胖和糖尿病大省。减重和糖尿病手术是目前唯一可以治愈糖尿病、有效减重并维持体重不反弹的治疗方法，目前包括美国糖尿病协会、国际糖尿病联盟、中华医学会糖尿病学会、中国医师协会外科医师分会肥胖和糖尿病医师专业委员会均已形成多种指南和共识指导糖尿病和肥胖症的外科治疗。我国的减重和糖尿病外科发展较晚，目前尚存在手术适应证把握不严格、手术切除范围和胃肠道重建不规范、术后随访和患者指导不到位、采用开放手术的方法、患者宣传教育差和接受度低等问题。基于此，我院减重和糖尿病外科团队召集并举办此次研讨会。
	</p>
	<p style=\"text-align:justify;background:white;\">
		&nbsp;
&nbsp; &nbsp;研讨会上，我院减重和糖尿病外科团队向与会专家详细介绍了我国和我院的诊疗规范，胡三元教授和陈丽教授分别作了“中国肥胖和糖尿病外科治疗指南（2014）”和“减重和糖尿病手术带给肥胖2型糖尿病患者的希望”的学术报告，刘少壮主治医师和孙宇副教授向与会专家介绍了“减重和糖尿病手术术式选择”和“减重和糖尿病手术患者术前筛查及术后管理”，来自济南市中心医院的孙少川教授介绍了济南市中心医院的减重和糖尿病外科发展和成绩。会上，与会专家进行讨论，就严格遵循指南开展减重和糖尿病手术、加强内外科等多学科协作、积极开展患者教育、建立山东省减重和糖尿病外科协作组、定期开展规范诊疗研讨会等问题达成共识，并制定了下一步活动方案。
	</p>
	<p style=\"text-align:justify;background:white;\">
		&nbsp;
&nbsp;我院减重与糖尿病外科是普外科重点发展专业之一，于2006年12月开展了我国首例腹腔镜袖状胃切除术，目前已建立起包括普外科、内分泌科、麻醉科等学科在内的多学科“减重与糖尿病外科团队”，在减重和糖尿病外科的临床应用推广方面处于山东省领先地位，相关临床和基础研究处于我国的领先水平。
	</p>
</p>
<p style=\"text-align:center;color:#535353;font-family:Verdana, Geneva, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	<img src=\"/attached/image/20150721/20150721024446_98041.jpg\" alt=\"\" /> 
</p>
<br />
<p>
	<br />
</p>','1','0','0','0','0','','0','103','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1766','64','山东大学齐鲁医院普外科成功实施巨大腹膜后肉瘤切除术，随访8月无复发','','','admin','2015-07-21 02:45:51','','<p style=\"text-align:justify;color:#535353;font-family:Verdana, Geneva, sans-serif;font-size:14px;background-color:#FFFFFF;\">
	&nbsp; &nbsp; 日前，我院普外科F5D病房成功实施一例巨大腹膜后脂肪肉瘤切除术，肿瘤大小约30cm×25cm×10cm，肿瘤重达8斤。术后随访至今8个月，患者无明显不适，复查CT未见肿瘤复发。<br />
&nbsp; &nbsp; 患者女性，47岁，因“腹痛半月余”入院，查体：腹部膨隆，右上腹触及一巨大肿物，大小约25×15cm，边界较清，质韧，压痛明显。腹部CT显示右侧腹腔内巨大肿物，与周围脏器及血管关系密切。患者有手术指征，但肿瘤较大，与周围脏器及大血管关系密切，手术风险极大。患者入院后积极术前准备，排除禁忌后由王磊主任医师，李峰、刘晗主治医师，徐建威医师等实施手术，术中探查见：肿瘤位于右侧腹腔，大小约30×25×10cm，呈实性，向上顶压右肝下缘，并将右肝压向左侧，右肝萎缩。同时肿瘤将升结肠、横结肠推向左侧。进一步探查肿瘤位于腹膜后，有较完整包膜，囊壁较厚，表面可见丰富的供血血管。肿瘤将右肾挤压至腹中线位置，与肾脏关系密切。肿瘤与下腔静脉、十二指肠关系密切。整个手术过程顺利，肿瘤完整切除，术中出血约200ml，切除肿瘤称重达8斤，手术时间为2小时35分，术中术后患者生命体征平稳。术后病理示：腹膜后粘液样脂肪肉瘤，免疫组化：S100局灶阳性，Ki67阳性率7-8%。患者术后第1天流质饮食，术后恢复良好，于术后第9天出院。<br />
&nbsp; &nbsp; 腹膜后脂肪肉瘤( retroperitoneal liposarcoma, RPLS) 是一种罕见的恶性肿瘤，发病率占全部恶性肿瘤的1%以下，在40-60 岁人群中多发，男性多于女性。 RPLS早期无典型症状，病人通常以腹部巨大包块就诊。此外，可有腹胀、腹痛、排便、排尿困难、下肢肿胀等症状及发热、乏力、消瘦等慢性消耗症状。偶有因肿瘤破裂、出血导致急腹症和休克。腹膜后脂肪肉瘤的治疗以手术为主，但由于腹膜后脂肪肉瘤部位深，通常发现较晚，手术不易完整切除。与其它部位的脂肪肉瘤相比，腹膜后脂肪肉瘤不易完整切除，局部复发率高，容易远地转移，预后最差。RPLS病人预后与手术切除彻底性有密切关系，该病人术后随访8个月肿瘤无复发。<br />
	<div style=\"text-align:center;\">
		<span style=\"line-height:1.5;\"></span><img src=\"/attached/image/20150721/20150721024724_71229.jpg\" alt=\"\" />
	</div>
</p>','1','0','0','0','0','','0','87','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1767','64','mini-lap辅助腹腔镜胆囊切除术（术者：胡三元教授）','','','admin','2015-07-21 03:22:03','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI4OTA0MDk3Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; minilap辅助单孔胆囊切除术 类别 肝胆外科 Minilap器械直径在3mm以下，属于超细器械，其针状箭头可直接经皮刺入，取出后皮肤切口细小、愈合后疤痕难以发现，因此，并不牺牲LESS技术体表无明显手术疤痕的优点。与LESS技术不是一个新鲜的技术类似，“Minilap”也不是一个全新的概念。早在1997年，“针形腹腔镜手术”或“迷你腹腔镜手术”的概念被引入了国内外微创外科学界。该手术使用专用针形套管和器械进行操作，寻求更小的手术创伤和组织破坏，增加手术美容效果。虽然该技术具有创伤小、美容效果好等优点，但是针形器械过于细小、抓持力弱、刚性差、易损坏，因此该技术没有得到很好的推广和延续。Minilap器械可以视为在针形器械基础上的发展，具有以下优点：（1）通过经皮穿刺，避免使用套管针；（2）直径2.3mm，创伤小，术后不留疤痕；（3）硬度高，不易折损；（4）开口大，抓持力强。本组患者均使用Minilap抓钳协助牵拉胆囊和显露，手术均获得成功，表明该技术是安全、可行的。使用Minilap大大降低了单孔腹腔镜手术同轴直线视野带来的操作难度，手术器械的分离也减轻了器械在腹腔内外的相互干扰、碰撞，同时术后不留明显疤痕亦不牺牲LESS手术的美容优势，使LESS技术的广泛推广应用成为可能。
</p>','1','0','0','0','0','','0','106','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1795','64','山东省医师协会各分会委员候选人推荐表','','','admin','2015-09-07 12:56:05','','<p><br/></p><p style=\"line-height: 2em; margin-bottom: 10px;\">请点击以下链接下载候选人推荐表。</p><p><br/></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp;<strong><span style=\"font-family: 黑体; font-size: 24px;\">山东省</span></strong><strong><span style=\"font-family: 黑体; font-size: 24px;\">医师协会胃肠外科医师分会委员候选人推荐表</span></strong></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"山东省医师协会胃肠外科医师分会委员候选人推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151027/1445918675842863.doc\">山东省医师协会胃肠外科医师分会委员候选人推荐表.doc</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><span style=\"font-size: 24px;\"><strong><span style=\"font-family: 黑体;\">山东省医师协会腔镜外科医师分会小儿外科内镜委</span></strong><strong><span style=\"font-family: 黑体;\">员会委员候选人推荐表</span></strong></span></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"山东省医师协会腔镜外科医师分会小儿外科内镜委员会委员候选人推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151027/1445918693773582.doc\">山东省医师协会腔镜外科医师分会小儿外科内镜委员会委员候选人推荐表.doc</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><span style=\"font-size: 24px;\"><strong><span style=\"font-family: 黑体;\">山东省医师协会腔镜外科医师分会胸腔镜委员会委员候选人推荐表</span></strong></span></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"山东省医师协会腔镜外科医师分会胸腔镜委员会委员候选人推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151027/1445918708505322.doc\">山东省医师协会腔镜外科医师分会胸腔镜委员会委员候选人推荐表.doc</a></p><p><br/></p><h1><span style=\"background-color: rgb(255, 153, 0);\"></span></h1>','1','1','0','0','0','','0','367','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1768','66','中国肥胖和糖尿病外科治疗指南2014（讲者：胡三元教授）','','','admin','2015-07-29 03:55:45','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDk4MTg0MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 7月12日，“山东省减重与糖尿病外科规范诊疗研讨会”在济南举办。来自于济南市中心医院、济南军区总医院、聊城市人民医院、潍坊市人民医院、烟台毓璜顶医院、淄博市中心医院、青岛大学附属医院等多家医院和我院的30余位普外科和内分泌科专家齐聚研讨会，共同探讨我省减重与糖尿病外科的规范诊疗。根据最新的流行病学统计，我国糖尿病和肥胖患者总量目前分别位居国际第一和第二，山东省是我国的肥胖和糖尿病大省。减重和糖尿病手术是目前唯一可以治愈糖尿病、有效减重并维持体重不反弹的治疗方法，目前包括美国糖尿病协会、国际糖尿病联盟、中华医学会糖尿病学会、中国医师协会外科医师分会肥胖和糖尿病医师专业委员会均已形成多种指南和共识指导糖尿病和肥胖症的外科治疗。我国的减重和糖尿病外科发展较晚，目前尚存在手术适应证把握不严格、手术切除范围和胃肠道重建不规范、术后随访和患者指导不到位、采用开放手术的方法、患者宣传教育差和接受度低等问题。基于此，我院减重和糖尿病外科团队召集并举办此次研讨会。<span style=\"line-height:1.5;\"></span>
</p>
<p>
	<br />
</p>','1','0','0','1','0','upload/1438142115.jpg','0','64','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1769','66','减重和糖尿病手术带给肥胖2型糖尿病患者的希望（讲者：陈丽教授）','','','admin','2015-07-29 04:02:13','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDk3NzU4MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 7月12日，“山东省减重与糖尿病外科规范诊疗研讨会”在济南举办。来自于济南市中心医院、济南军区总医院、聊城市人民医院、潍坊市人民医院、烟台毓璜顶医院、淄博市中心医院、青岛大学附属医院等多家医院和我院的30余位普外科和内分泌科专家齐聚研讨会，共同探讨我省减重与糖尿病外科的规范诊疗。根据最新的流行病学统计，我国糖尿病和肥胖患者总量目前分别位居国际第一和第二，山东省是我国的肥胖和糖尿病大省。减重和糖尿病手术是目前唯一可以治愈糖尿病、有效减重并维持体重不反弹的治疗方法，目前包括美国糖尿病协会、国际糖尿病联盟、中华医学会糖尿病学会、中国医师协会外科医师分会肥胖和糖尿病医师专业委员会均已形成多种指南和共识指导糖尿病和肥胖症的外科治疗。我国的减重和糖尿病外科发展较晚，目前尚存在手术适应证把握不严格、手术切除范围和胃肠道重建不规范、术后随访和患者指导不到位、采用开放手术的方法、患者宣传教育差和接受度低等问题。基于此，我院减重和糖尿病外科团队召集并举办此次研讨会。
</p>','1','0','0','1','0','upload/1438142747.jpg','0','64','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1770','66','起步减重与糖尿病外科诊疗（讲者：孙少川教授）','','','admin','2015-07-29 04:06:29','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NjA1OTM4MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 7月12日，“山东省减重与糖尿病外科规范诊疗研讨会”在济南举办。来自于济南市中心医院、济南军区总医院、聊城市人民医院、潍坊市人民医院、烟台毓璜顶医院、淄博市中心医院、青岛大学附属医院等多家医院和我院的30余位普外科和内分泌科专家齐聚研讨会，共同探讨我省减重与糖尿病外科的规范诊疗。根据最新的流行病学统计，我国糖尿病和肥胖患者总量目前分别位居国际第一和第二，山东省是我国的肥胖和糖尿病大省。减重和糖尿病手术是目前唯一可以治愈糖尿病、有效减重并维持体重不反弹的治疗方法，目前包括美国糖尿病协会、国际糖尿病联盟、中华医学会糖尿病学会、中国医师协会外科医师分会肥胖和糖尿病医师专业委员会均已形成多种指南和共识指导糖尿病和肥胖症的外科治疗。我国的减重和糖尿病外科发展较晚，目前尚存在手术适应证把握不严格、手术切除范围和胃肠道重建不规范、术后随访和患者指导不到位、采用开放手术的方法、患者宣传教育差和接受度低等问题。基于此，我院减重和糖尿病外科团队召集并举办此次研讨会。
</p>','1','0','0','1','0','upload/1438143013.jpg','0','80','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1771','66','减重代谢手术患者术前筛查与术后管理（讲者：孙宇教授）','','','admin','2015-07-29 04:12:35','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NjA2OTc0OA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 7月12日，“山东省减重与糖尿病外科规范诊疗研讨会”在济南举办。来自于济南市中心医院、济南军区总医院、聊城市人民医院、潍坊市人民医院、烟台毓璜顶医院、淄博市中心医院、青岛大学附属医院等多家医院和我院的30余位普外科和内分泌科专家齐聚研讨会，共同探讨我省减重与糖尿病外科的规范诊疗。根据最新的流行病学统计，我国糖尿病和肥胖患者总量目前分别位居国际第一和第二，山东省是我国的肥胖和糖尿病大省。减重和糖尿病手术是目前唯一可以治愈糖尿病、有效减重并维持体重不反弹的治疗方法，目前包括美国糖尿病协会、国际糖尿病联盟、中华医学会糖尿病学会、中国医师协会外科医师分会肥胖和糖尿病医师专业委员会均已形成多种指南和共识指导糖尿病和肥胖症的外科治疗。我国的减重和糖尿病外科发展较晚，目前尚存在手术适应证把握不严格、手术切除范围和胃肠道重建不规范、术后随访和患者指导不到位、采用开放手术的方法、患者宣传教育差和接受度低等问题。基于此，我院减重和糖尿病外科团队召集并举办此次研讨会。
</p>','1','0','0','1','0','upload/1438143335.jpg','0','66','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1772','66','2015齐鲁胃肠外科论坛暨卓越外科胃癌巡讲（周岩冰教授）','','','admin','2015-07-28 04:23:22','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDI5NzIyNA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 2015年4月25至26日，山东大学齐鲁医院与《腹腔镜外科杂志》主办了“2015齐鲁胃肠外科论坛暨卓越外科胃癌巡讲” 于济南市南郊宾馆成功举办。本次会议邀请到24位国内知名胃肠外科专家到会进行学术讲座，会议期间还进行了两台腹腔镜胃肠手术演示。来自全国的共200余名普外科专家代表到会参与研讨。由北京肿瘤医院步召德教授、上海交通大学附属瑞金医院燕敏教授、中国医学科学院肿瘤医院田艳涛教授、南京军区总医院李国立教授、吉林大学中日联谊医院房学东教授、天津肿瘤医院梁寒教授、北京人民医院叶颖江教授、中国人民解放军总医院陈凛教授、山东省临沂市人民医院陆春雷教授、青岛大学医学院附属医院周岩冰教授、山东大学医学院贾继辉教授等14名国内知名专家及齐鲁医院何庆泗教授、刘凤军教授等10名我院专家就胃癌的发生发展及治疗的最新进展进行了精彩的学术汇报。手术演示环节，由山东省普通外科胃肠专业副主任委员、山东大学齐鲁医院普外科副主任、胃肠外科主任何庆泗教授演示腹腔镜胃癌根治术，山东大学齐鲁医院胃肠外科副主任于文滨教授演示腹腔镜左半结肠切除术，精彩的手术演示获得了与会专家的一致好评。
</p>','1','0','0','0','0','','0','38','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1773','66','胃癌的术前分期（主讲：夏立建教授）','','','admin','2015-07-28 04:39:01','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDE3NDk4NA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 2015年4月25至26日，山东大学齐鲁医院与《腹腔镜外科杂志》主办了“2015齐鲁胃肠外科论坛暨卓越外科胃癌巡讲” 于济南市南郊宾馆成功举办。本次会议邀请到24位国内知名胃肠外科专家到会进行学术讲座，会议期间还进行了两台腹腔镜胃肠手术演示。来自全国的共200余名普外科专家代表到会参与研讨。由北京肿瘤医院步召德教授、上海交通大学附属瑞金医院燕敏教授、中国医学科学院肿瘤医院田艳涛教授、南京军区总医院李国立教授、吉林大学中日联谊医院房学东教授、天津肿瘤医院梁寒教授、北京人民医院叶颖江教授、中国人民解放军总医院陈凛教授、山东省临沂市人民医院陆春雷教授、青岛大学医学院附属医院周岩冰教授、山东大学医学院贾继辉教授等14名国内知名专家及齐鲁医院何庆泗教授、刘凤军教授等10名我院专家就胃癌的发生发展及治疗的最新进展进行了精彩的学术汇报。手术演示环节，由山东省普通外科胃肠专业副主任委员、山东大学齐鲁医院普外科副主任、胃肠外科主任何庆泗教授演示腹腔镜胃癌根治术，山东大学齐鲁医院胃肠外科副主任于文滨教授演示腹腔镜左半结肠切除术，精彩的手术演示获得了与会专家的一致好评。
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1774','66','腹腔镜直肠癌根治术的神经保护（主讲：路春雷教授）','','','admin','2015-07-28 04:40:48','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTI5NDE2MDE2MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p style=\"text-align:left;\">
	&nbsp; &nbsp; 2015年4月25至26日，山东大学齐鲁医院与《腹腔镜外科杂志》主办了“2015齐鲁胃肠外科论坛暨卓越外科胃癌巡讲” 于济南市南郊宾馆成功举办。本次会议邀请到24位国内知名胃肠外科专家到会进行学术讲座，会议期间还进行了两台腹腔镜胃肠手术演示。来自全国的共200余名普外科专家代表到会参与研讨。由北京肿瘤医院步召德教授、上海交通大学附属瑞金医院燕敏教授、中国医学科学院肿瘤医院田艳涛教授、南京军区总医院李国立教授、吉林大学中日联谊医院房学东教授、天津肿瘤医院梁寒教授、北京人民医院叶颖江教授、中国人民解放军总医院陈凛教授、山东省临沂市人民医院陆春雷教授、青岛大学医学院附属医院周岩冰教授、山东大学医学院贾继辉教授等14名国内知名专家及齐鲁医院何庆泗教授、刘凤军教授等10名我院专家就胃癌的发生发展及治疗的最新进展进行了精彩的学术汇报。手术演示环节，由山东省普通外科胃肠专业副主任委员、山东大学齐鲁医院普外科副主任、胃肠外科主任何庆泗教授演示腹腔镜胃癌根治术，山东大学齐鲁医院胃肠外科副主任于文滨教授演示腹腔镜左半结肠切除术，精彩的手术演示获得了与会专家的一致好评。
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1775','64','山东大学齐鲁医院主办“2015齐鲁结直肠与疝外科论坛”','','','admin','2015-07-20 18:31:22','','<p>
	&nbsp; &nbsp; 7月17-19日，2015齐鲁结直肠与疝外科论坛在济南举办。
</p>
<p>
	&nbsp; &nbsp; 会议由山东大学齐鲁医院、《腹腔外科杂志》编辑部主办。山东大学齐鲁医院副院长、山东大学外科学系主任胡三元教授担任大会主席并致开幕词，普外科副主任、结直肠外科主任戴勇教授以及普外科副主任、疝与腹壁外科主任张光永副教授担任执行主席。大会吸引三百余名省内外同道参加，就结直肠外科和疝外科等专业的新技术及临床应用新进展进行广泛深入的交流和探讨。
</p>
&nbsp; &nbsp; 大会在7月18日安排学术讲座，特别邀请哈尔滨医科大学附属第二医院王锡山教授、复旦大学附属华山医院姚琪远教授、首都医科大学附属北京朝阳医院王明刚教授、复旦大学附属中山医院韦烨教授、重庆医科大学附属第一医院程勇教授等20余位国内及省内著名专家，就腹腔镜结直肠与疝外科领域的热点问题进行专题讲解和讨论。会议于7月19日安排手术演示。王明刚教授演示了腹腔镜腹股沟疝修补术（TEP术式）；张光永副教授演示了腹腔镜腹股沟疝修补术（TAPP术式）；戴勇教授演示腹腔镜直肠癌低位前切除术。三位专家就手术的要点难点、注意事项和自己的经验心得与大会现场的专家代表进行交流，各位医师精湛的技艺得到与会专家、代表的一致好评。<br />','1','0','0','0','0','','0','59','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1776','66','腹腔镜胃癌根治术之体会（第二十一届全国腹腔镜手术演示研讨会，王琛）','','','admin','2015-08-10 18:36:16','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1MjIyMA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','37','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1777','66','完全腹腔镜胃癌根治术的消化道重建（第二十一届全国腹腔镜手术演示研讨会，臧潞）','','','admin','2015-08-10 18:42:53','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1MjQyNA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','38','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1778','66','近端胃癌根治术后食管返流特点的研究（第二十一届全国腹腔镜手术演示研讨会，何庆泗）','','','admin','2015-08-10 18:45:23','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1MjQ2MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','31','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1779','66','直肠癌经肛门全结肠系膜切除的开展现状（第二十一届全国腹腔镜手术演示研讨会，姜可伟）','','','admin','2015-08-10 18:47:19','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1NDAxNg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','37','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1780','66','直肠脱垂外科治疗的临床研究（第二十一届全国腹腔镜手术演示研讨会，郭澎）','','','admin','2015-08-10 18:49:36','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDc1NTE3Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','35','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1781','66','造瘘口旁疝的治疗（第二十一届全国腹腔镜手术演示研讨会，陈杰）','','','admin','2015-08-10 18:50:35','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwMTEyNA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','34','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1782','66','TAPP手术操作规范化解读（第二十一届全国腹腔镜手术演示研讨会，王明刚）','','','admin','2015-08-10 18:51:48','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwNDc5Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1783','66','如何决定腹腔镜胃底折叠术式（第二十一届全国腹腔镜手术演示研讨会，张成）','','','admin','2015-08-10 18:53:11','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwNDgxNg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','31','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1784','66','乳腔镜腋窝淋巴结清扫的技术难点与对策（第二十一届全国腹腔镜手术演示研讨会，骆成玉）','','','admin','2015-08-10 18:54:39','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkwNDg1Mg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','27','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1785','66','腹腔镜腹股沟疝修补的经验（第二十一届全国腹腔镜手术演示研讨会，李健文）','','','admin','2015-08-10 18:56:25','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkxMTA1Mg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','33','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1786','66','TAPP手术操作规范化解读（第二十一届全国腹腔镜手术演示研讨会，李健文）','','','admin','2015-08-10 18:57:29','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkxMTUxNg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','31','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1787','66','腔镜甲状腺手术的现状与展望（第二十一届全国腹腔镜手术演示研讨会，仇明）','','','admin','2015-08-10 18:58:38','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNDkxMzkzMg==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','33','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1788','66','TEP一种简便的手术入径（第二十一届全国腹腔镜手术演示研讨会，张光永）','','','admin','2015-08-10 18:59:20','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3MDIwMA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','38','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1789','66','胃肠代谢手术治疗2型糖尿病（第二十一届全国腹腔镜手术演示研讨会，刘少壮）','','','admin','2015-08-10 19:01:07','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3NDg0OA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','37','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1790','66','复杂类型腹股沟疝的腹腔镜治疗与体会（第二十一届全国腹腔镜手术演示研讨会，王卫军）','','','admin','2015-08-10 19:02:12','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3OTE2MA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','34','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1791','66','低位直肠前侧间隙筋膜与血管分支的关系（第二十一届全国腹腔镜手术演示研讨会，王自强）','','','admin','2015-08-10 19:02:56','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTE3OTE2NA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','40','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1792','66','腹腔镜减重与糖尿病手术（减重和代谢外科学院济南巡讲，刘少壮）','','','admin','2015-08-10 19:03:43','','<div style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNTMzMzU2OA==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</div>','1','0','0','0','0','','0','46','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1793','66','腹腔镜胰十二指肠切除术钩突系膜切除及胆胰吻合的个体化策略（第二十一届全国腹腔镜手术演示研讨会，牟一平）','','','admin','2015-08-12 16:33:35','','<p style=\"text-align:center;\">
	<embed src=\"http://player.youku.com/player.php/sid/XMTMwNjU1OTI1Ng==/v.swf\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowscriptaccess=\"always\" type=\"application/x-shockwave-flash\" />
</p>
<p>
	&nbsp; &nbsp; 2014年11月14-16日，由山东大学齐鲁医院和《腹腔镜外科杂志》编辑部主办的“第二十一届全国腹腔镜手术演示研讨会”于山东大厦顺利召开。本次研讨会设有胃肠外科、肝胆胰脾外科、疝与腹壁外科和内分泌外科、腹腔镜新技术、3D腹腔镜手术专场、Video手术视频演示专场等多个主题会场，邀请到了41位国内知名腹腔镜外科专家到会进行学术讲座。会议期间共进行了48场学术讲座和17场腹腔镜手术演示，所有手术演示均由我院医师主刀完成。来自全国、全省的600余名代表到场参会研讨。
</p>','1','0','0','0','0','','0','45','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1794','64','“中国减重及代谢外科学院巡讲--济南站”成功召开','','','admin','2015-08-10 12:40:45','','<p style=\"text-indent:24.0pt;background:white;\">
	8月<span>9</span>日，由山东大学齐鲁医院和“中国减重及代谢外科学院”举办的“中国减重及代谢外科学院巡讲<span>--</span>济南站”在济南顺利召开。由来自于中国医科大学附属第四医院、第二军医大学附属长海医院、暨南大学附属第一医院、北京天坛医院、卫生部北京医院等医院和我院的<span>15</span>位减重和糖尿病外科专家组成的讲师团和来自全国尤其是华东地区的<span>70</span>余位代表齐聚本次会议，就“减重和糖尿病外科”的国际进展、手术规范化、多学科协作等多个议题进行了深入探讨。<span></span>
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.1pt;background:white;\">
	<b>讲师团合影</b><img src=\"/attached/image/20150907/20150907124312_85822.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	减重和糖尿病外科在我国属于新兴学科，是目前国际、国内的研究热点。根据最新的流行病学统计，我国糖尿病和肥胖患者总量目前分别位居国际第一和第二，减重和糖尿病手术是目前唯一可以治愈糖尿病、有效减重并维持体重不反弹的治疗方法。目前包括美国糖尿病协会、国际糖尿病联盟、中华医学会糖尿病学会、中国医师协会外科医师分会肥胖和糖尿病医师专业委员会均已形成多种指南和共识指导糖尿病和肥胖症的外科治疗。大会主席胡三元教授和刘金钢教授首先致开幕词，介绍了国内减重和糖尿病外科的发展现状和机遇。同时介绍到，为推动中国减重和糖尿病外科手术的规范化、区域化、中心化、专业化以及多学科协作，中国减重及代谢外科学院联合我院举办了本次巡讲活动。<img src=\"/attached/image/20150907/20150907124231_61822.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.1pt;background:white;\">
	<b>胡三元教授、刘金钢教授致开幕词<span></span></b>
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	包括中国医科大学附属第四医院、第二军医大学附属长海医院和暨南大学附属第一医院和我院等国内的多个著名减重和糖尿病外科向与会代表进行了内容丰富的学术讲座。第二军医大学附属长海医院的郑成竹教授、中国医科大学附属第四医院的周勇教授、暨南大学附属第一医院的杨华教授、济南军区总医院的张小桥教授分别就“减重和糖尿病手术<span>—</span>上海质控标准”、“减重手术术式介绍”、“精准减重手术：方法和结果”、“减重手术的体会与困惑”等题作了学术讲座。<img src=\"/attached/image/20150907/20150907124342_82262.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	<br />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	山东大学齐鲁医院多学科“减重和糖尿病外科团队”胡三元教授、陈丽教授、齐峰教授、刘少壮主治医师分别就“腹腔镜袖状胃切除术：现状、要点和效果评价”、“减重和糖尿病手术带给肥胖<span>2</span>型糖尿病患者的希望”、“减重手术的麻醉管理”、“腹腔镜减重与糖尿病手术：齐鲁医院流程与病例分享”等题目全面介绍了我院开展减重和糖尿病手术的经验。<img src=\"/attached/image/20150907/20150907124404_53047.jpg\" alt=\"\" />
</p>
<p style=\"text-indent:24.0pt;background:white;\">
	来自北京天坛医院的宋茂民教授、卫生部北京医院的宋京海教授、临沂市人民医院的路春雷教授、我院的王可新副教授等专家主持了各时段学术讲座。会议期间，与会专家、代表热烈讨论，对“减重和糖尿病外科”的手术和患者管理规范化、多学科协作等问题达成了高度共识，会议取得了圆满的成功。<img src=\"/attached/image/20150907/20150907124426_59589.jpg\" alt=\"\" />
</p>','1','0','0','0','0','','0','44','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1796','64','“第二十二届全国腹腔镜手术演示研讨会暨第三届山东省医师协会腹腔镜外科医师分会年会、《腹腔镜外科杂志》第五届编委会换届会议”第一轮通知','','','admin','2015-09-07 13:13:07','','<p style=\"text-align: center;\">&nbsp;&nbsp; <img width=\"559\" height=\"770\" title=\"1443437074114550.jpg\" style=\"width: 575px; height: 792px;\" alt=\"δ\" src=\"/ueditor/php/upload/image/20150928/1443437074114550.jpg\"/></p><p style=\"text-align: center;\">
	&nbsp;<img width=\"557\" height=\"776\" title=\"1443437157598486.jpg\" style=\"width: 566px; height: 782px;\" alt=\"δ\" src=\"/ueditor/php/upload/image/20150928/1443437157598486.jpg\"/><img width=\"558\" height=\"771\" title=\"1443441682592031.jpg\" style=\"width: 569px; height: 776px;\" alt=\"δ\" src=\"/ueditor/php/upload/image/20150928/1443441682592031.jpg\"/><img width=\"559\" height=\"785\" title=\"1443441776120540.jpg\" style=\"width: 572px; height: 789px;\" alt=\"δ\" src=\"/ueditor/php/upload/image/20150928/1443441776120540.jpg\"/></p>','1','0','0','0','0','','1','202','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1799','64','沉痛悼念秦鸣放教授','','','admin','2015-09-15 03:31:14','','&nbsp;&nbsp;&nbsp; 沉痛悼念我们的挚友，《腹腔镜外科杂志》编委、天津市南开医院副院长，中华医学会消化内镜分会前常委、委员，外科学组副组长、中华医学会外科分会腹腔镜与内镜外科学组委员秦鸣放教授因病医治无效，于2015年9月12日13时19分不幸逝世。<br />
&nbsp;&nbsp;&nbsp; 秦鸣放教授是我国微创外科事业中青代中的杰出代表，他领导的天津市微创外科中心是全国最早开展内镜、腹腔镜的单位之一,在全国具有突出的专业学科特色和较大的影响,内镜及腹腔镜微创外科技术达国内领先水平。在秦教授的领导下，微创中心在微创治疗肝、胆、胰及胃肠疾病方面积累了丰富的经验，并独创性完成全国首例“三镜联合胆道手术”，可用于多种复杂性胆道疾病治疗，为中国的腹腔镜外科事业作出了卓越的贡献。作为中心的负责人，秦鸣放教授在微创治疗腹部危重病的科研、临床和内镜、腹腔镜新技术研究应用方面造诣较深，技术精湛，多项技术居全国领先水平。由中国人民解放军总医院刘荣教授、天津南开医院秦鸣放教授和我院胡三元教授共同完成的“肝胆胰腹腔镜手术技术体系及应用”项目荣获2014年国家科学技术进步奖二等奖。<br />
&nbsp;&nbsp;&nbsp; 秦鸣放对工作极端负责任，对病人极端热情，一视同仁，时刻想到病人的痛苦和安危，工作细致，谨慎周到，一丝不苟，养成了严谨细致的医疗作风。生活中，秦教授举止文雅，端庄可亲，不利用工作之便，关心爱护自己的同事，对待同事、学生温和而亲切。秦教授医德高尚，真正做到了全心全意为人民服务，其严谨细致的工作精神和无私的奉献精神是我们广大医务工作者学习的榜样。<br />
&nbsp;&nbsp;&nbsp; 作为我国微创外科事业的先驱者之一，多年来，秦鸣放教授与我们一道将《腹腔镜外科杂志》打造为国内微创外科领域精品交流平台。帮助《腹腔镜外科杂志》从一个弱小的新生命逐渐成长壮大。在《腹腔镜外科杂志》成长的一个个关键时期，是秦鸣放教授的出谋划策使其逐渐成熟完善；在《腹腔镜外科杂志》发展遇到瓶颈的时候，是秦鸣放教授的鼎力支持使其劈荆斩浪，勇创辉煌。秦教授在“全国腹腔镜手术演示研讨会”的精彩报告仍历历在目，秦教授《腹腔镜外科杂志》上分享的经验教训将对我们微创外科医生影响深远。<br />
&nbsp;&nbsp;&nbsp; 秦鸣放教授的离去不仅使我们失去了一位挚友，也是中国微创外科事业的重大损失。秦教授虽然离开了我们，但他高尚的品质和崇高的精神永远与我们同在，他那种勤勤恳恳，公而忘私的精神，他对事业执着追求勇于创新的精神和视病人如亲人、无私奉献的精神，仍值得我们学习和发扬。<br />
<p>
	<span style=\"font-family:宋体;color:black;font-size:14pt;\"><span style=\"font-family:宋体;color:black;font-size:14pt;\"></span></span>&nbsp;
</p>','1','0','0','0','0','','1','93','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1800','64','aa','','','admin','2015-09-28 10:37:07','','<p style=\"text-align: left;\"></p><p style=\"text-align: center;\"><img title=\"1443437004789374.jpg\" alt=\"δ\" src=\"/ueditor/php/upload/image/20150928/1443437004789374.jpg\"/></p>','1','0','0','0','0','','1','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1801','64','《腹腔镜外科杂志》第五届编委会换届通知','','','admin','2015-09-30 00:47:55','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 由山东大学齐鲁医院、《腹腔镜外科杂志》编辑部、山东省医师协会主办的“第二十二届全国腹腔镜手术演示研讨会暨第三届山东省医师协会腹腔镜外科医师分会年会、《腹腔镜外科杂志》第五届编委会换届会议”拟于2015年11月13-15日在山东省济南市山东大厦隆重召开。请下载第五届编委推荐表，填写完后打印出来交由贵医院相关部门签署同意并盖章，于2015年10月20日之前将您填写的电子版本和由医院盖章之后的扫描件发至本刊邮箱（<a href=\"mailto:fqjbjb@163.com\">fqjbjb@163.com</a>），并欢迎您参加编委会换届会议！</p><br/><p style=\"line-height: 2em; margin-bottom: 10px;\">附件一：《腹腔镜外科杂志》第五届编委推荐表</p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"《腹腔镜外科杂志》第五届编委推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151016/1444958366940932.doc\">《腹腔镜外科杂志》第五届编委推荐表.doc</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\"><a title=\"《腹腔镜外科杂志》第五届编委推荐表.docx\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20150930/1443576417851598.docx\"></a>附件二：《腹腔镜外科杂志》杂志简介</p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a title=\"《腹腔镜外科杂志》杂志简介.pdf\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20150930/1443576432611223.pdf\">《腹腔镜外科杂志》杂志简介.pdf</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">附件三：《腹腔镜外科杂志》编委会委员条件与职责</p><p style=\"line-height: 2em; margin-bottom: 10px;\"><img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a title=\"《腹腔镜外科杂志》编委会委员条件与职责.pdf\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151024/1445678401135563.pdf\">《腹腔镜外科杂志》编委会委员条件与职责.pdf</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp;</p>','1','0','0','0','0','','0','533','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1802','64','第二十二届全国腹腔镜手术演示研讨会会议日程','','','admin','2015-10-27 02:43:31','','<p><img title=\"1445923250808093.jpg\" alt=\"\" src=\"/ueditor/php/upload/image/20151027/1445923250808093.jpg\" width=\"883\" height=\"623\" style=\"width: 883px; height: 623px;\"/><img title=\"1445914959305052.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959305052.jpg\" width=\"884\" height=\"674\" style=\"width: 884px; height: 674px;\"/></p><p><img title=\"1445914959872125.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959872125.jpg\" width=\"885\" height=\"686\" style=\"width: 885px; height: 686px;\"/></p><p><img title=\"1445914959120217.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959120217.jpg\" width=\"885\" height=\"678\" style=\"width: 885px; height: 678px;\"/></p><p><img title=\"1445914959562124.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959562124.jpg\" width=\"883\" height=\"607\" style=\"width: 883px; height: 607px;\"/></p><p><img title=\"1445914959642937.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959642937.jpg\" width=\"884\" height=\"569\" style=\"width: 884px; height: 569px;\"/></p><p><img title=\"1445914959132895.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914959132895.jpg\" width=\"885\" height=\"582\" style=\"width: 885px; height: 582px;\"/></p><p><img title=\"1445914960119073.jpg\" src=\"/ueditor/php/upload/image/20151027/1445914960119073.jpg\" width=\"887\" height=\"592\" style=\"width: 887px; height: 592px;\"/></p><p>&nbsp;</p>','1','1','0','0','0','','0','133','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1803','64','“山东省医师协会腔镜外科医师分会全体委员会议”通知','','','admin','2015-10-28 00:50:55','','<p style=\"line-height: 2em;\">&nbsp; &nbsp; 由山东省医师协会、山东大学齐鲁医院、《腹腔镜外科杂志》编辑部主办的“第三届山东省医师协会腹腔镜外科医师分会年会、第二十二届全国腹腔镜手术演示研讨会、《腹腔镜外科杂志》第五届编委会换届会议”拟于2015年11月13-15日在山东省济南市山东大厦隆重召开，会议期间将召开“山东省医师协会腔镜外科医师分会全体委员会议”，讨论分会换届事宜和“胸腔镜委员会、小儿外科腔镜委员会、无气腹腹腔镜医师委员会”等分会成立诸项事宜。</p><p style=\"line-height: 2em;\">&nbsp; &nbsp; 根据医师协会章程，分会会员需按时参加会议，请各位委员按时参会。</p><br/><p style=\"line-height: 2em;\">链接：关于“山东省医师协会胃肠外科医师分会”成立的通知 <a href=\"http://www.webles.cn/showarticle.php?articleid=1804\">http://www.webles.cn/showarticle.php?articleid=1804</a><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关于“山东省医师协会腔镜外科医师分会小儿外科腔镜委员会”成立的通知 <a href=\"http://www.webles.cn/showarticle.php?articleid=1806\">http://www.webles.cn/showarticle.php?articleid=1806</a><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关于“山东省医师协会腔镜外科医师分会胸腔镜委员会”成立的通知&nbsp; <a href=\"http://www.webles.cn/showarticle.php?articleid=1805\">http://www.webles.cn/showarticle.php?articleid=1805</a><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 山东省医师协会各分会委员候选人推荐表<a href=\"http://www.webles.cn/showarticle.php?articleid=1795\">http://www.webles.cn/showarticle.php?articleid=1795</a><a href=\"http://www.webles.cn/showarticle.php?articleid=1805\"></a></p>','1','1','0','0','0','','0','156','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1804','64','关于“山东省医师协会胃肠外科医师分会”成立的通知','','','admin','2015-10-28 00:59:51','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 由山东省医师协会、山东大学齐鲁医院、《腹腔镜外科杂志》编辑部主办的“第三届山东省医师协会腹腔镜外科医师分会年会、第二十二届全国腹腔镜手术演示研讨会、《腹腔镜外科杂志》第五届编委会换届会议”拟于2015年11月13-15日在山东省济南市山东大厦隆重召开，会议期间将召开“山东省医师协会胃肠外科医师分会”成立大会暨召开第一次全体委员会议，若提名委员缺席会议将视为放弃委员资格，希望各位专家教授能准时参加。<br/>&nbsp; &nbsp; 应学会选举要求，需提名为委员的专家填写好《山东省医师协会胃肠外科医师分会委员候选人推荐表》<img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"山东省医师协会胃肠外科医师分会委员候选人推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151028/1445994410423045.doc\">山东省医师协会胃肠外科医师分会委员候选人推荐表.doc</a>（一式两份），加盖单位公章后，于10月31日前快递至大会秘书组同时报送电子版本。（推荐表及具体通知请至腹腔镜外科网http：//<a href=\"http://www.webles.cn “最新资讯”栏查询下载）谢谢您的支持！\" _src=\"http://www.webles.cn “最新资讯”栏查询下载）谢谢您的支持！\">www.webles.cn “最新资讯”栏查询下载）谢谢您的支持！</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 请邮寄地址：山东省济南市历下区文化西路107号山东大学齐鲁医院《腹腔镜外科杂志》编辑部 刘少壮(收)</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 联系电话：0531-86920598</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 邮编：250012</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 电子邮箱：<a href=\"mailto:18396822910@163.com\">1</a>6416448@qq.com</p><p style=\"text-align: center;\"><img title=\"1445994197107979.jpg\" alt=\"θ\" src=\"/ueditor/php/upload/image/20151028/1445994197107979.jpg\"/></p><p style=\"text-align: center;\"><img title=\"1445994241843207.jpg\" alt=\"θ\" src=\"/ueditor/php/upload/image/20151028/1445994241843207.jpg\"/></p>','1','0','0','0','0','','0','111','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1805','64','关于“山东省医师协会腔镜外科医师分会胸腔镜委员会”成立的通知','','','admin','2015-10-28 01:10:50','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 由山东大学齐鲁医院、《腹腔镜外科杂志》编辑部、山东省医师协会主办的“第三届山东省医师协会腹腔镜外科医师分会年会、第二十二届全国腹腔镜手术演示研讨会、《腹腔镜外科杂志》第五届编委会换届会议”拟于2015年11月13-15日在山东省济南市山东大厦隆重召开，会议期间将召开“山东省医师协会腔镜外科医师分会胸腔镜委员会”成立大会暨召开第一次全体委员会议，若提名委员缺席会议将视为放弃委员资格，希望各位专家教授能准时参加。<br/>&nbsp; &nbsp; 应学会选举要求，需提名为委员的专家填写好《山东省医师协会腔镜外科医师分会胸腔镜委员会委员候选人推荐表》<img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"山东省医师协会腔镜外科医师分会胸腔镜委员会委员候选人推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151028/1445994682845359.doc\">山东省医师协会腔镜外科医师分会胸腔镜委员会委员候选人推荐表.doc</a>（一式两份），加盖单位公章后，于11月6日前快递至大会秘书组同时报送电子版本。（推荐表及具体通知请至腹腔镜外科网http：//<a href=\"http://www.webles.cn “最新资讯”栏查询下载）谢谢您的支持！\" _src=\"http://www.webles.cn “最新资讯”栏查询下载）谢谢您的支持！\">www.webles.cn “最新资讯”栏查询下载）谢谢您的支持！</a></p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 请邮寄地址：山东省济南市历下区文化西路107号山东大学齐鲁医院胸外科</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 岳韦名 18560086960 李树海 18560086951 (收)&nbsp;</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 电子邮箱：lishuhai1981<a href=\"mailto:18396822910@163.com\">@163.com</a></p><p style=\"text-align: center;\"><img title=\"1445994762727194.jpg\" alt=\"\" src=\"/ueditor/php/upload/image/20151028/1445994762727194.jpg\"/></p><p style=\"text-align: center;\"><img title=\"1445994773131888.jpg\" alt=\"\" src=\"/ueditor/php/upload/image/20151028/1445994773131888.jpg\"/></p>','1','0','0','0','0','','0','60','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1806','64','关于“山东省医师协会腔镜外科医师分会小儿外科腔镜委员会”成立的通知','','','admin','2015-10-28 01:15:33','','<p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 由山东大学齐鲁医院、《腹腔镜外科杂志》编辑部、山东省医师协会主办的“第三届山东省医师协会腹腔镜外科医师分会年会、第二十二届全国腹腔镜手术演示研讨会、《腹腔镜外科杂志》第五届编委会换届会议”拟于2015年11月13-15日在山东省济南市山东大厦隆重召开，会议期间将召开“山东省医师协会腔镜外科医师分会小儿外科腔镜委员会”成立大会暨召开第一次全体委员会议，若提名委员缺席会议将视为放弃委员资格，希望各位专家教授准时参加。<br/>&nbsp; &nbsp; 应学会选举要求，需提名为委员的专家填写好《山东省医师协会腔镜外科医师分会小儿外科内镜委员会委员候选人推荐表》<img style=\"margin-right: 2px; vertical-align: middle;\" src=\"http://www.webles.cn/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a title=\"山东省医师协会腔镜外科医师分会小儿外科内镜委员会委员候选人推荐表.doc\" style=\"color: rgb(0, 102, 204); font-size: 12px;\" href=\"/ueditor/php/upload/file/20151028/1445994970135907.doc\">山东省医师协会腔镜外科医师分会小儿外科内镜委员会委员候选人推荐表.doc</a>（一式两份），加盖单位公章后，于10月31日前快递至大会秘书组同时报送电子版本。</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 请邮寄地址：山东省济南市历下区文化西路107号山东大学齐鲁医院小儿外科二区&nbsp;&nbsp;</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 王健 18560088191 陈嘉伟 18560086386（收)</p><p style=\"line-height: 2em; margin-bottom: 10px;\">&nbsp; &nbsp; 电子邮箱：<a href=\"mailto:18396822910@163.com\">qiluyiyuanerwaike@126.com</a></p><p style=\"text-align: center;\"><img width=\"627\" height=\"839\" title=\"1446003726767730.jpg\" style=\"width: 540px; height: 818px;\" alt=\"С\" src=\"/ueditor/php/upload/image/20151028/1446003726767730.jpg\"/><img width=\"627\" height=\"839\" title=\"1446003733419602.jpg\" style=\"width: 534px; height: 738px;\" alt=\"С\" src=\"/ueditor/php/upload/image/20151028/1446003733419602.jpg\"/></p>','1','0','0','0','0','','0','114','0');

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

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('64','动态资讯','0','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('65','视频中心','0','1','2','video.php','4','8');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('66','课程中心','0','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('67','专家介绍','0','1','4','','1','11');
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
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('90','泌尿外科','67','1','9','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('91','小儿外科','67','1','10','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('93','胸外科','67','1','11','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('94','妇产科','67','1','8','','1','0');

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

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('36','张光永 副教授','http://www.webles.cn/showarticle.php?articleid=1734','upload/1415874727.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('38','胡三元 教授','http://www.webles.cn/showarticle.php?articleid=1727','upload/1415881234.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','王磊&nbsp;教授','http://www.webles.cn/showarticle.php?articleid=1728','upload/1415874691.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','刘少壮 主治医师','http://www.webles.cn/showarticle.php?articleid=1747','upload/1418005444.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('33','王可新 副教授','http://www.webles.cn/showarticle.php?articleid=1733','upload/1415881347.jpg','');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('37','于文滨 教授','http://www.webles.cn/showarticle.php?articleid=1731','upload/1408746599.jpg','');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('6','经脐腹腔镜单孔胆囊切除术','随着微创外科技术的发展 , 最大程度的减少手术创伤和美容效果成为外科医师的追求 。经自然腔道内 镜 手术 ( natural orifice transluminal endoscopic surgery, NOTES)应运而生 , 即通过一条长的可弯曲的内镜 , 经患者的口 、 阴道 、尿道 、肛门等自 然腔道进入体内 , 穿刺胃 、 阴道 、 膀胱 、 结直肠 、 食道等脏器进入腹腔和胸腔进行手术 , 术后患者腹壁无手术切口和疤痕 , 实现了 “无疤痕 ” (No Scar)和微创 、 更加美观的效果 。 但由 于受设备 、器械所限 , 加之技术难度高 , 存在腹腔感染和脏器穿孔的风险 , NOTES技术难以在临床广泛开展 。 我们自 2008年 1 1月 开展了经脐入路单孔腹腔镜技术 ( embryonic naturalorifice transumbilicalendoscopic surgery, E-NOTES), 同样达到了腹壁无瘢痕和较好的美容效果 , 但较 NOTES技术难度和手术风险大为降低 , 可望成为有前途的新型腹腔镜技术 。
','http://www.cmxxw.net/fqjwkzz/flv/sssp1.flv','upload/1408753184.jpg','73','胡三元','2014-11-09 00:00:00','0','157');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('12','腹腔镜辅助胃癌根治术','    腹腔镜胃癌根治术已有近20年的历史， 目前其在早期胃癌中应用已取得国内外的共识； 而在进展期胃癌方面，尽管已经取得了较好的临床疗效，但仍需多中心的前瞻性随机对照研究结果来评价腹腔镜手术的优劣。 外科医师只有严格选择合适病例， 手术中严格遵循恶性肿瘤手术的根治原则，才能使腹腔镜胃癌根治术不仅具有微创优势，而且可以取得与开腹手术相当的远期疗效。','http://www.webles.cn/flv/腹腔镜辅助胃癌根治术 于文滨(14分钟).flv','','74','于文滨','2014-12-12 10:45:56','0','34');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('13','腹腔镜袖状胃切除术','    2型糖尿病与肥胖症密切相关，而T2DM的手术治疗亦是由减重手术发展而来。目前开展较多的T2DM手术方式主要有Roux-en-Y 胃旁路术（Roux-en-Y gastric bypass,RYGB）、可调节胃带术（adjustable gastric banding，AGB）、袖状胃切除术（sleeve gastrectomy，SG）、胆胰分流及十二指肠开关术（biliopancreatic diversion with duodenal switch，BPD-DS）等。随着腹腔镜技术的发展和应用， 目前 90% 以上的 T2DM 手术经腹腔镜下完成。不同手术方式的疗效不同，Buchwald等的一项目、Meta分析结果显示术后 T2DM 的临床完全缓解率在BPD-DS达到95.1%，在RYGB为80.3%，在SG为79.7%，LAGB 则只有56.7%。SG因其操作相对简单，疗效良好，并发症较少， 最初被应用于极度肥胖病人的减重治疗，作为RYGB 或BPD的一期手术，以降低手术并发症发生率和死亡率。此后人们逐渐发现 SG 对 T2DM 也有显著疗效，且SG和 RYGB术后T2DM 的临床缓解率相当。最近意大利 Leonetti等发表了一项前瞻性队列研究的成果，他们对比了伴T2DM的肥胖症病人行 LSG 和药物治疗对 T2DM 及其他相关合并症的治疗疗效，结果显示，在 18个月的随访期中，LSG 组的BMI、空腹血糖、HbA 1c等指标有了显著的改善，80%病人的糖尿病获得完全临床缓解，肥胖相关的其他合并症也有了明显改善；而药物治疗组治疗前后各项指标没有明显改善，所有病人糖尿病依旧，高血压病等合并症依旧或加重。','http://www.webles.cn/flv/sleevehu.flv','upload/1418393752.jpg','78','胡三元','2014-12-12 12:58:16','0','57');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('7','单孔腹腔镜脾切除术','腹腔镜脾切除术( laparoscopic splenectomy， LS)于 1992 年开始见诸报道 ， 此后在世界范围内迅速开展 。 本课题组于 1994 年在国内较早开展了LS， 此后相继开展了手助腹腔 镜脾切除术 、 腹腔镜脾部分切除术等， 手术效果满意 。 LESS 技术是现阶段最可行的体表“无疤痕 ”技术， 是目前国际微创外科学界的研究热点之一， 代表着微创外科医生面临的新挑战及患者对美容效果的进一步追求 。','http://www.cmxxw.net/fqjwkzz/flv/sssp2.flv','upload/1408753039.jpg','76','胡三元','2014-11-09 00:00:00','0','116');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('14','腹腔镜保留脾脏的胰体尾切除术','    胰腺体尾部与脾动静脉及脾脏关系密切，传统手术切除胰腺体尾部时常规切除脾脏。随着脾脏抗感染及免疫功能被确认后，保留脾脏的胰体尾切除术已逐渐成为胰体尾部良性病变首选术式。 
    我们认为保留脾脏的胰体尾切除术主要适用于不适合行肿物摘除术的胰体尾部良性病变， 如胰岛素瘤、胰腺囊腺瘤、无功能胰岛细胞瘤、不适合内引流术的胰腺囊肿以及需手术治疗的急、慢性胰腺炎、胰体尾部外伤等。对于儿童， 更应将保脾手术作为首选术式， 以避免脾切除术后凶险性感染的发生。病人术前影像学检查、术中探查及冰冻病理检查非常重要，选择性的进行保留脾脏的胰体尾切除术，避免无辜性脾切除。对于胰体尾良恶交界性肿瘤，也有学者主张行保留脾脏的胰体尾切除术。胰体尾部恶性肿瘤是否行保脾手术尚存在争议，多数学者认为胰体尾恶性肿瘤是保脾手术的禁忌证，行胰体尾切除术时应同时切除脾脏。','http://www.webles.cn/flv/腹腔镜保留脾脏的胰体尾切除术 胡三元.flv','','76','胡三元','2014-12-12 13:14:11','0','61');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('15','腹腔镜胆囊切除+胆道镜探查取石术','    随着人们生活节奏的加快，加上饮食不规律，胆囊结石疾病的患者越来越多，并呈逐年上升趋势，一旦发生，若没有给予及时治疗或不当治疗，则可能导致诸多并发症的发生，如结石进入胆总管后引起胰腺炎、胆管炎、黄疸等并发症的发生。目前，若具有手术适应证的胆结石患者大部分是采用外科手术治疗，需要选用风险小、并发症少、安全性高的方式。腹腔镜胆囊切除术是较为广泛应用的一种治疗胆结石的方法。相比传统的外科手术方法，具有以下优点：手术时间短、术中出血量少、患者所承受的痛苦小、并发症发生率低等。本研究结果表明，观察组较对照组手术时间、肛门排气时间、住院时间短，术中出血量低，止痛药物应用率、术后并发症率低，差异有统计学意义， 值得临床推广应用。','http://www.webles.cn/flv/腹腔镜胆囊切除+经胆囊管取石术 胡三元.flv','','73','胡三元','2014-12-12 13:19:58','0','106');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('8','minilap辅助单孔胆囊切除术','minilap辅助单孔胆囊切除术  类别 肝胆外科
Minilap器械直径在3mm以下，属于超细器械，其针状箭头可直接经皮刺入，取出后皮肤切口细小、愈合后疤痕难以发现，因此，并不牺牲LESS技术体表无明显手术疤痕的优点。与LESS技术不是一个新鲜的技术类似，“Minilap”也不是一个全新的概念。早在1997年，“针形腹腔镜手术”或“迷你腹腔镜手术”的概念被引入了国内外微创外科学界。该手术使用专用针形套管和器械进行操作，寻求更小的手术创伤和组织破坏，增加手术美容效果。虽然该技术具有创伤小、美容效果好等优点，但是针形器械过于细小、抓持力弱、刚性差、易损坏，因此该技术没有得到很好的推广和延续。Minilap器械可以视为在针形器械基础上的发展，具有以下优点：（1）通过经皮穿刺，避免使用套管针；（2）直径2.3mm，创伤小，术后不留疤痕；（3）硬度高，不易折损；（4）开口大，抓持力强。本组患者均使用Minilap抓钳协助牵拉胆囊和显露，手术均获得成功，表明该技术是安全、可行的。使用Minilap大大降低了单孔腹腔镜手术同轴直线视野带来的操作难度，手术器械的分离也减轻了器械在腹腔内外的相互干扰、碰撞，同时术后不留明显疤痕亦不牺牲LESS手术的美容优势，使LESS技术的广泛推广应用成为可能。
','http://www.cmxxw.net/fqjwkzz/flv/sssp3.flv','upload/1408753116.jpg','73','胡三元','2014-11-09 00:00:00','0','96');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('9','腹腔镜甲状腺次全切除术','    随着微创外科技术的发展， 最大程度地减少手术创伤和取得更好地美容效果已成为外科医师的追求。 近年， 腔镜甲状腺手术日渐成熟， 但体表易显露部位仍有手术切口和疤痕， 易引起患者的心理不适，同时由于术中需充气， 术后易引起恶心、 呕吐等。 随着腹腔镜手术入路逐渐向“单孔” 甚至“无疤痕” 方向发展， 推动着腹腔镜手术向更加微创、 更加美观的
方向发展。 
    悬吊式单孔甲状腺手术的优点 此手术最大的优点是美容效果， 相对传统腔镜甲状腺手术， 手术切口转移至更加隐蔽的部位; 同时悬吊设备的使用 ，避免了气腹相关并发症， 如颅内压升高 、 酸中毒 、 心动过速 、 广泛皮下气肿等 。 我们的研究表明 ， 颈部充入 CO2， 可引起一系列不利于机体的生理反应。
','http://www.cmxxw.net/fqjwkzz/flv/sssp4.flv','upload/1408753200.jpg','77','胡三元','2014-11-09 00:00:00','1','114');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('16','腹腔镜第VI段肝癌切除术','    腹腔镜肝切除术相对于传统开腹肝切除术优势是明显的。腹壁切口小,损伤小,术后生活质量明显提高。术后疼痛较轻,有利于早期活动,从而更早地恢复健康,缩短住院时间。肝细胞性肝癌术后复发率高, 多需要继续治疗, 包括无水酒精注射、肝动脉栓塞、微波固化或再次手术。而传统开腹手术会导致比较严重的腹腔内粘连，这将会影响下一步的治疗。腹腔镜手术由于切口小,形成的粘连少,为以后的治疗提供更好的条件。腹腔镜术后免疫功能损害较轻,有利于术后更早地 进行辅助治疗。对合并肝硬化、门静脉高压的病人, 腹腔镜肝切除术对腹壁损伤轻, 减少腹壁交通支的破坏。','http://www.webles.cn/flv/腹腔镜第VI段肝癌切除术 靳斌（16分钟）.flv','','73','靳斌','2014-12-12 13:24:56','0','19');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('17','腹腔镜腹股沟疝修补术（TAPP）','    腹股沟疝无张力修补术可分为三大类术式：肌前修补、网栓充填术和腹膜前修补术，前两者修补腹股沟管后壁和疝环缺损，后者修补腹股沟部位的所有薄弱区域即肌耻骨孔。腹膜前修补术可以通过开放式手术完成，也可通过腹腔镜手术来完成。事实上，腹腔镜腹股沟疝修补术是众多腹膜前修补术中的一种方式，其特点是利用“腹腔镜器械”、通过“真正的后入路”、在“直视下操作”所进行的腹膜前手术。在临床上适用的人群主要有三大类：（1）具有腹膜前修补指征的人群，如腹横筋膜薄弱的老年病人、直疝或复合疝、存在腹内压增高因素的病人。（2）需要尽快恢复体力活动的病人。（3）复发疝和双侧疝。 腹腔镜和开放式腹股沟疝修补术均是安全有效的修补方式， 具有互补性，合理选择术式可获得最佳的临床和卫生经济学效益。','http://www.webles.cn/flv/腹腔镜腹股沟疝修补术（TAPP） 张光永 （8分钟）.flv','upload/1418394143.jpg','75','张光永','2014-12-12 13:27:26','0','121');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('18','腹腔镜腹股沟疝修补术（TEP）','    腹股沟疝无张力修补术可分为三大类术式：肌前修补、网栓充填术和腹膜前修补术，前两者修补腹股沟管后壁和疝环缺损，后者修补腹股沟部位的所有薄弱区域即肌耻骨孔。腹膜前修补术可以通过开放式手术完成，也可通过腹腔镜手术来完成。事实上，腹腔镜腹股沟疝修补术是众多腹膜前修补术中的一种方式，其特点是利用“腹腔镜器械”、通过“真正的后入路”、在“直视下操作”所进行的腹膜前手术。在临床上适用的人群主要有三大类：（1）具有腹膜前修补指征的人群，如腹横筋膜薄弱的老年病人、直疝或复合疝、存在腹内压增高因素的病人。（2）需要尽快恢复体力活动的病人。（3）复发疝和双侧疝。 腹腔镜和开放式腹股沟疝修补术均是安全有效的修补方式， 具有互补性，合理选择术式可获得最佳的临床和卫生经济学效益。','http://www.webles.cn/flv/腹腔镜腹股沟疝修补术（TEP） 张光永 （10分钟）.flv','','75','张光永','2014-12-12 13:30:37','0','58');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('19','腹腔镜肝右后叶切除术','    腹腔镜肝切除术相对于传统开腹肝切除术优势是明显的。腹壁切口小,损伤小,术后生活质量明显提高。术后疼痛较轻,有利于早期活动,从而更早地恢复健康,缩短住院时间。肝细胞性肝癌术后复发率高, 多需要继续治疗, 包括无水酒精注射、肝动脉栓塞、微波固化或再次手术。而传统开腹手术会导致比较严重的腹腔内粘连，这将会影响下一步的治疗。腹腔镜手术由于切口小,形成的粘连少,为以后的治疗提供更好的条件。腹腔镜术后免疫功能损害较轻,有利于术后更早地 进行辅助治疗。对合并肝硬化、门静脉高压的病人, 腹腔镜肝切除术对腹壁损伤轻, 减少腹壁交通支的破坏。','http://www.webles.cn/flv/腹腔镜肝右后叶切除术 靳斌（13分钟）.flv','','73','靳斌','2014-12-12 13:31:51','0','29');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('20','腹腔镜肝左叶切除术','    腹腔镜肝切除术相对于传统开腹肝切除术优势是明显的。腹壁切口小,损伤小,术后生活质量明显提高。术后疼痛较轻,有利于早期活动,从而更早地恢复健康,缩短住院时间。肝细胞性肝癌术后复发率高, 多需要继续治疗, 包括无水酒精注射、肝动脉栓塞、微波固化或再次手术。而传统开腹手术会导致比较严重的腹腔内粘连，这将会影响下一步的治疗。腹腔镜手术由于切口小,形成的粘连少,为以后的治疗提供更好的条件。腹腔镜术后免疫功能损害较轻,有利于术后更早地 进行辅助治疗。对合并肝硬化、门静脉高压的病人, 腹腔镜肝切除术对腹壁损伤轻, 减少腹壁交通支的破坏。','http://www.webles.cn/flv/腹腔镜肝左叶切除术 靳斌（13分钟）.flv','','73','靳斌','2014-12-12 13:33:26','0','70');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('21','腹腔镜结肠全切除术','    腹腔镜结肠直肠癌手术需遵循与开腹手术同样的肿瘤根治原则，包括：①强调肿瘤及周围组织的整块切除；②肿瘤操作的非接触原则；③足够的切缘 ；④彻底的淋巴结清扫.为更好地规范腹腔镜结肠直肠癌手术在国内的开展和推广，2006年中华医学会外科学分会腹腔镜与内镜外科学组与中国抗癌 协会大肠癌专业委员会腹腔镜外科学组共同制定了“腹腔镜结肠直肠癌根治手术操作指南”，规定了腹腔镜结肠直肠癌手术的基本原则:①与开腹手术的切除范围等同，结肠切缘距肿瘤至少 10 cm，直肠远切端距肿瘤至少2 cm，连同原发灶、肠系膜及区域淋巴结一并切除，直肠部位手术遵循全系 膜切除术原则；②无瘤操作原则，在根治癌瘤的基础上尽可 能保留功能，特别是肛门括约肌功能；③肿瘤定位，由于腹腔镜手术缺少手的触觉，某些病灶不易被发现，而术前钡剂灌肠X线摄片、CT及术中肠镜等有助于定位；④中转开腹手术，出于病人安全的考虑而需行开腹手术者、术中发现肿瘤在腹腔镜下不能切除或肿瘤切缘不充分者应及时中转开腹；⑤标本取出时应保护切口，防止肿瘤细胞的切口种植。','http://www.webles.cn/flv/腹腔镜结肠全切除术 胡三元(14分钟).flv','','74','胡三元','2014-12-12 13:35:01','0','19');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('22','腹腔镜切口疝修补术','    腹壁切口疝(VIH)是腹部外科手术严重且常见的并发症之一，发病率5%～15%。当切口感染，切口疝发生率可高达23% 以上。切口疝治疗以手术修补为主，其修补主要分为传统开放修补术与腹腔镜修补术。腹腔镜切口疝修补术( LVHＲ)创伤小，恢复快，并发症少得到了认可广泛推广。 ','http://www.webles.cn/flv/腹腔镜切口疝修补术 张光永 （5分钟）.flv','','75','张光永','2014-12-12 13:38:59','0','24');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('23','腹腔镜食管裂孔疝修补术','    腹腔镜食管裂孔疝修补、胃底折叠术在国外已开展多年 ,其食管反流症状控制率为91 % ～100% ,中转手术率5 %以下,仅极少数患 者需再次手术纠正。腹腔镜术式比开放手术减少住院费用 和手术并发症,患者恢复快 ,而两者的抗反流的总有效性相同。本组病例数少 ,随访时间短 ,需进一步积累经验,但其手术方法所具有的微创性和有效性也初步表明 ,选择合适的病人和应用良好的手术技巧来完成腹腔镜食管裂孔疝修补术是安全可行的 ,具有进一步发展和推广的价值。','http://www.webles.cn/flv/腹腔镜食管裂孔疝修补术 张光永 （8分钟）.flv','','75','张光永','2014-12-12 13:41:48','0','16');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('24','腹腔镜右半结肠切除术','    腹腔镜结肠直肠癌手术需遵循与开腹手术同样的肿瘤根治原则，包括：①强调肿瘤及周围组织的整块切除；②肿瘤操作的非接触原则；③足够的切缘 ；④彻底的淋巴结清扫.为更好地规范腹腔镜结肠直肠癌手术在国内的开展和推广，2006年中华医学会外科学分会腹腔镜与内镜外科学组与中国抗癌 协会大肠癌专业委员会腹腔镜外科学组共同制定了“腹腔镜结肠直肠癌根治手术操作指南”，规定了腹腔镜结肠直肠癌手术的基本原则:①与开腹手术的切除范围等同，结肠切缘距肿瘤至少 10 cm，直肠远切端距肿瘤至少2 cm，连同原发灶、肠系膜及区域淋巴结一并切除，直肠部位手术遵循全系 膜切除术原则；②无瘤操作原则，在根治癌瘤的基础上尽可 能保留功能，特别是肛门括约肌功能；③肿瘤定位，由于腹腔镜手术缺少手的触觉，某些病灶不易被发现，而术前钡剂灌肠X线摄片、CT及术中肠镜等有助于定位；④中转开腹手术，出于病人安全的考虑而需行开腹手术者、术中发现肿瘤在腹腔镜下不能切除或肿瘤切缘不充分者应及时中转开腹；⑤标本取出时应保护切口，防止肿瘤细胞的切口种植。','http://www.webles.cn/flv/腹腔镜右半结肠切除术 胡三元（13分钟）.flv','','74','胡三元','2014-12-12 13:44:41','0','17');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('25','腹腔镜造瘘口旁疝修补术','    造口旁疝是肠造瘘术常见并发症，回肠造口旁疝的发生率约为 28% ，而结肠造口旁疝发生率更会高达 48%。术后发生造口旁疝在一定程度上影响了病人的生活质量，并可导致内容物嵌顿、肠梗阻等急性并发症。造口旁疝修补方法主要包括筋膜修补、造瘘口重建( 移位)和置入人工合成补片修补。腹腔镜造口旁疝修补术采用腹腔内补片贴置技术，与传统的开腹造口旁疝修补术相比具有恢复快、并发症少和复发率低等优势，正逐步得到应用。我们在 2007年11月～2011 年10月完成13例腹腔镜造口旁疝修补术，现将其临床疗效及手术体会报道如下。','http://www.webles.cn/flv/腹腔镜造瘘口旁疝修补术 张光永 （7分钟）.flv','','75','张光永','2014-12-12 13:45:31','0','20');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('26','腹腔镜直肠癌根治术','    腹腔镜结肠直肠癌手术需遵循与开腹手术同样的肿瘤根治原则，包括：①强调肿瘤及周围组织的整块切除；②肿瘤操作的非接触原则；③足够的切缘 ；④彻底的淋巴结清扫.为更好地规范腹腔镜结肠直肠癌手术在国内的开展和推广，2006年中华医学会外科学分会腹腔镜与内镜外科学组与中国抗癌 协会大肠癌专业委员会腹腔镜外科学组共同制定了“腹腔镜结肠直肠癌根治手术操作指南”，规定了腹腔镜结肠直肠癌手术的基本原则:①与开腹手术的切除范围等同，结肠切缘距肿瘤至少 10 cm，直肠远切端距肿瘤至少2 cm，连同原发灶、肠系膜及区域淋巴结一并切除，直肠部位手术遵循全系 膜切除术原则；②无瘤操作原则，在根治癌瘤的基础上尽可 能保留功能，特别是肛门括约肌功能；③肿瘤定位，由于腹腔镜手术缺少手的触觉，某些病灶不易被发现，而术前钡剂灌肠X线摄片、CT及术中肠镜等有助于定位；④中转开腹手术，出于病人安全的考虑而需行开腹手术者、术中发现肿瘤在腹腔镜下不能切除或肿瘤切缘不充分者应及时中转开腹；⑤标本取出时应保护切口，防止肿瘤细胞的切口种植。','http://www.webles.cn/flv/腹腔镜直肠癌根治术胡三元（15分钟）.flv','','74','胡三元','2014-12-12 13:48:46','0','37');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('27','腹腔镜左半结肠切除术','    腹腔镜结肠直肠癌手术需遵循与开腹手术同样的肿瘤根治原则，包括：①强调肿瘤及周围组织的整块切除；②肿瘤操作的非接触原则；③足够的切缘 ；④彻底的淋巴结清扫.为更好地规范腹腔镜结肠直肠癌手术在国内的开展和推广，2006年中华医学会外科学分会腹腔镜与内镜外科学组与中国抗癌 协会大肠癌专业委员会腹腔镜外科学组共同制定了“腹腔镜结肠直肠癌根治手术操作指南”，规定了腹腔镜结肠直肠癌手术的基本原则:①与开腹手术的切除范围等同，结肠切缘距肿瘤至少 10 cm，直肠远切端距肿瘤至少2 cm，连同原发灶、肠系膜及区域淋巴结一并切除，直肠部位手术遵循全系 膜切除术原则；②无瘤操作原则，在根治癌瘤的基础上尽可 能保留功能，特别是肛门括约肌功能；③肿瘤定位，由于腹腔镜手术缺少手的触觉，某些病灶不易被发现，而术前钡剂灌肠X线摄片、CT及术中肠镜等有助于定位；④中转开腹手术，出于病人安全的考虑而需行开腹手术者、术中发现肿瘤在腹腔镜下不能切除或肿瘤切缘不充分者应及时中转开腹；⑤标本取出时应保护切口，防止肿瘤细胞的切口种植。','http://www.webles.cn/flv/腹腔镜左半结肠切除术 于文滨(12钟).flv','upload/1418394349.jpg','74','于文滨','2014-12-12 13:49:23','0','56');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('28','腔镜甲状腺切除术','    随着微创外科技术的发展， 最大程度地减少手术创伤和取得更好地美容效果已成为外科医师的追求。 近年， 腔镜甲状腺手术日渐成熟， 但体表易显露部位仍有手术切口和疤痕， 易引起患者的心理不适，同时由于术中需充气， 术后易引起恶心、 呕吐等。 随着腹腔镜手术入路逐渐向“单孔” 甚至“无疤痕” 方向发展， 推动着腹腔镜手术向更加微创、 更加美观的
方向发展。 
    悬吊式单孔甲状腺手术的优点 此手术最大的优点是美容效果， 相对传统腔镜甲状腺手术， 手术切口转移至更加隐蔽的部位; 同时悬吊设备的使用 ，避免了气腹相关并发症， 如颅内压升高 、 酸中毒 、 心动过速 、 广泛皮下气肿等 。 我们的研究表明 ， 颈部充入 CO2， 可引起一系列不利于机体的生理反应。','http://www.webles.cn/flv/腔镜甲状腺 吕斌 陈波（7分钟）.flv','','77','吕斌 陈波','2014-12-12 13:50:20','0','24');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('29','术中超声辅助腹腔镜肝肿瘤切除术','    腹腔镜肝切除术相对于传统开腹肝切除术优势是明显的。腹壁切口小,损伤小,术后生活质量明显提高。术后疼痛较轻,有利于早期活动,从而更早地恢复健康,缩短住院时间。肝细胞性肝癌术后复发率高, 多需要继续治疗, 包括无水酒精注射、肝动脉栓塞、微波固化或再次手术。而传统开腹手术会导致比较严重的腹腔内粘连，这将会影响下一步的治疗。腹腔镜手术由于切口小,形成的粘连少,为以后的治疗提供更好的条件。腹腔镜术后免疫功能损害较轻,有利于术后更早地 进行辅助治疗。对合并肝硬化、门静脉高压的病人, 腹腔镜肝切除术对腹壁损伤轻, 减少腹壁交通支的破坏。','http://www.webles.cn/flv/术中超声辅助腹腔镜肝肿瘤切除术 胡三元（15分钟）.flv','','73','胡三元','2014-12-12 13:51:36','0','54');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('30','术中超声辅助腹腔镜胰岛素瘤切除术','    胰岛素瘤是一种少见病,但临床并不罕见。该病导致低血糖反复发作,给病人带来极大危害,必须进行外科手术才能治愈。由于其临床症状复杂多变,易于误诊,治疗也有其特殊性和复杂性。因此,认真总结其诊治经验对临床实际工作具有重要意义。50余年来,随着对胰岛素瘤认识水平的提高,影像学技术的进步和微创外科的发展,胰岛素瘤在定位诊断和外科治疗方面均发生了显著变化,我院诊治胰岛素瘤的历史,可以全面反映国内外在不同阶段处理该疾病的进展过程。
','http://www.webles.cn/flv/术中超声辅助腹腔镜胰岛素瘤切除术 胡三元（7分钟）.flv','upload/1418393959.jpg','76','胡三元','2015-03-16 13:52:33','1','74');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('32','腹壁切口疝修补术','  腹壁切口疝是由于腹壁切口的筋膜和（或）肌层未能完全愈合，在腹内压力的作用下而形成的疝，其疝囊可有完整的或不完整的腹膜上皮。在查体中可触及或影像学检查中可发现切口下的腹壁肌肉筋膜缺损，缺损处可伴有或不伴有腹腔内脏器的突出。单纯缝合修补适用于小切口疝。宜采用不吸收缝线，连续缝合（缝线长度：切口长度为 4∶1） 为宜。但有证据表明，行单纯缝合修补手术5年后的复发率较高。加用补片的修补适用于腹壁缺损为中切口疝以上的病人。根据补片在腹壁重建时放置的层次，可以分为：（1）腹壁肌肉前放置（onlay/overlay）。（2）腹壁缺损间放置（inlay）。（3）腹壁肌肉后（腹膜前间隙）放置（sublay）。（4）腹腔内紧贴腹膜放置（IPOM/underlay）， 需要强调的是：采用这种修补时，补片材料应具有防止粘连特性，腹腔镜下行切口疝修补大多属这类方法。腹壁减张扩容同时加用补片材料的修补即组织结构分离技术（component separation technique） 用补片加强腹壁方法， 适用于中线或近中线的腹壁大切口疝和巨大切口疝病人。','http://www.webles.cn/flv/切口疝--张光永.flv','upload/1426481039.png','75','张光永','2015-03-16 10:39:00','1','78');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('31','腹腔镜胃癌根治术','  腹腔镜胃癌根治术是最近几年才逐渐开展起来的一种新的手术方式，由于胃供应血管多、解剖层面多、淋巴清扫难度大和吻合复杂等因素，使得腹腔镜下行胃癌根治手术难度大、技术要求高，国内只有少数医院、少数医生能开展此类手术。这种技术通过在腹壁开5个0.5～1.0厘米钥匙孔样小洞，插入直径1厘米的腹腔镜，将腹腔内脏器的图像清晰地显示于电视屏幕上，医生一边看电视屏幕，一边通过腹壁小洞插入微小器械操作，完成传统手术需要20厘米以上切口才能完成的手术。而且由于腹腔镜的视频放大作用，可以对胃淋巴结的清扫更加彻底，所切除的组织最后通过一个3～6厘米的小切口取出。此手术具有创伤小、胃肠道干扰小、出血少（基本上不需要输血）、手术后疼痛轻、术后病人恢复快、切口瘢痕小、术后并发症显著减少等优点。','http://www.webles.cn/flv/腹腔镜胃癌根治--何庆泗.flv','upload/1426478860.jpg','74','何庆泗','2015-03-16 09:45:06','1','80');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('33','腔镜甲状腺部分切除术','  甲状腺腺瘤和结节性甲状腺肿是常见病,多发于中青年女性,其主要治疗手段是手术切除,但传统的手术方法会在颈部留下明显的瘢痕。腔镜甲状腺手术在治疗疾病的同时能获得最大限度的美容效果, 其手术适应证、禁忌证、操作方法及其安全性已有文献报道，但技术上的复杂性限制了腔镜甲状腺手术的推广。','http://www.webles.cn/flv/甲状腺.flv','upload/1426496932.png','77','吕斌','2015-03-16 08:54:28','1','66');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('34','腹腔镜袖状胃切除术','    2型糖尿病与肥胖症密切相关，而T2DM的手术治疗亦是由减重手术发展而来。目前开展较多的T2DM手术方式主要有Roux-en-Y 胃旁路术（Roux-en-Y gastric bypass,RYGB）、可调节胃带术（adjustable gastric banding，AGB）、袖状胃切除术（sleeve gastrectomy，SG）、胆胰分流及十二指肠开关术（biliopancreatic diversion with duodenal switch，BPD-DS）等。随着腹腔镜技术的发展和应用， 目前 90% 以上的 T2DM 手术经腹腔镜下完成。不同手术方式的疗效不同，Buchwald等的一项目、Meta分析结果显示术后 T2DM 的临床完全缓解率在BPD-DS达到95.1%，在RYGB为80.3%，在SG为79.7%，LAGB 则只有56.7%。SG因其操作相对简单，疗效良好，并发症较少， 最初被应用于极度肥胖病人的减重治疗，作为RYGB 或BPD的一期手术，以降低手术并发症发生率和死亡率。此后人们逐渐发现 SG 对 T2DM 也有显著疗效，且SG和 RYGB术后T2DM 的临床缓解率相当。最近意大利 Leonetti等发表了一项前瞻性队列研究的成果，他们对比了伴T2DM的肥胖症病人行 LSG 和药物治疗对 T2DM 及其他相关合并症的治疗疗效，结果显示，在 18个月的随访期中，LSG 组的BMI、空腹血糖、HbA 1c等指标有了显著的改善，80%病人的糖尿病获得完全临床缓解，肥胖相关的其他合并症也有了明显改善；而药物治疗组治疗前后各项指标没有明显改善，所有病人糖尿病依旧，高血压病等合并症依旧或加重。','http://www.webles.cn/flv/减重.flv','','78','胡三元','2015-04-10 10:46:55','0','28');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('35','腹腔镜脾切除+胆囊切除术','','http://www.webles.cn/flv/脾+胆囊.flv','','73','胡三元','2015-04-10 10:49:13','0','50');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('36','甲状腺手术的美容治疗','','http://www.webles.cn/flv/甲状腺肿瘤的美容治疗.flv','','77','王平（浙大二附院）','2015-04-13 11:40:24','0','24');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('37','（齐鲁胃肠外科论坛）全腹腔镜下远端胃癌根治术的消化道重建','','http://www.webles.cn/flv/齐鲁胃肠论坛 燕敏.flv','','74','燕敏（瑞金医院）','2015-05-20 14:07:18','0','7');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('38','（齐鲁胃肠外科论坛）胃肠道代谢手术治疗肥胖症与糖尿病','','http://www.webles.cn/flv/齐鲁胃肠论坛 刘少壮.flv','','74','刘少壮','2015-05-20 14:17:34','0','8');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('39','(齐鲁胃肠外科论坛)胃癌手术的规范与争论','','http://www.webles.cn/flv/齐鲁胃肠论坛 步召德.flv','','74','步召德（北大肿瘤医院）','2015-05-20 14:30:21','0','8');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('40','（齐鲁胃肠外科论坛）病原—感染—胃癌','','http://www.webles.cn/flv/齐鲁胃肠论坛 贾继辉.flv','','74','贾继辉','2015-05-20 14:37:40','0','9');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('41','（齐鲁胃肠外科论坛）普外科肿瘤治疗策略及新进展','','http://www.webles.cn/flv/齐鲁胃肠论坛 毛伟征.flv','','74','毛伟征（青岛市立医院）','2015-05-20 14:42:17','0','3');
insert into `video`(`id`,`title`,`content`,`linkurl`,`imgurl`,`ctype`,`writer`,`adddate`,`isrec`,`hits`) values('42','（齐鲁胃肠外科论坛）胃肠道漏与人体组织管理科学','','http://www.webles.cn/flv/汽轮胃肠论坛 李国立.flv','','74','李国立（南京军区总医院）','2015-05-20 16:47:14','0','8');

