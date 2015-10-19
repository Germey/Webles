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

insert into `admin`(`id`,`user`,`passwd`,`class`,`expire`,`item`,`classid`) values('8','admin','admin','1','3008-08-27','#添加用户##编辑用户##添加栏目##编辑栏目##添加文章##编辑文章##查看回收站##添加类别##编辑类别##添加链接##编辑链接##添加焦点图片##编辑焦点图片##添加滚动图片##编辑滚动图片##添加浮动图标##编辑浮动图标##备份数据库##查看备份#','\'a\',\'59\',\'60\',\'61\',\'27\',\'36\',\'37\',\'38\',\'39\',\'40\',\'41\',\'28\',\'42\',\'43\',\'44\',\'45\',\'46\',\'47\',\'29\',\'48\',\'49\',\'50\',\'30\',\'51\',\'52\',\'53\',\'54\',\'31\',\'55\',\'56\',\'32\',\'57\',\'58\',\'33\',\'34\',\'35\',\'b\'');

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

insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1691','60','关于做好2014年泰山学者攀登计划申报工作的通知','','','admin','2014-05-13 15:12:31','','一、学校通知——关于做好2014年泰山学者攀登计划申报工作的通知<br />
<br />
二、学院补充通知——请拟申报该计划的老师于5月22日前将申报材料报送至学院联系人处，材料将提交学术委员会审议,通过后将报送学校。<br />
　　学院联系人：刘海华，联系电话：88382565，Email：liuhaihua@sdu.edu.cn<br />
<br />
　<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 山东大学医学院<br />
<div>
	<br />
</div>','1','0','0','0','0','','0','1','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1690','60','关于申报中国博士后科学基金第五十六批面上资助的通知','','','admin','2014-05-13 14:58:42','','一、山东大学人事部：关于申报中国博士后科学基金第五十六批面上资助的通知<br />
<br />
二、学院补充通知<br />
<br />
1、进入博士后基金申报系统，未限制本次申报的博士后人员都可以申报。<br />
2、申请人在线打印《专家推荐意见表》模板，交合作导师和同行专家填写。<br />
3、申请表所涉及“设站单位”均填写“山东大学”，“通讯地址”请填写至流动站所在学院（中心、所）。<br />
4、本次申报不需要提交纸质版的“申请书”及成果证明、奖励或发表的文章等附件材料。<br />
5、报送材料内容：<br />
（1）《专家推荐意见表》纸质版两份（其中一份必须为原件）；<br />
（2）《中国博士后科学基金第56批汇总表》（见附件）电子版发送至caohui@sdu.edu.cn。<br />
6、请申请人于2014年6月13日前将材料报送至流动站，在6月15日-7月4日期间，如申报人需网上修改材料请与学校博士后办公室联系。<br />
<br />
医学院博士后流动站联系人：曹慧 &nbsp; &nbsp;办公地点：综合楼204室<br />
联系电话：88382565 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;邮箱：caohui@sdu.edu.cn<br />
　<br />
<br />
<a href=\"http://www.medicine.sdu.edu.cn/0tongzhixinwen/2014/5/caoy/56huizongbiao.xls\" target=\"_blank\">附件：《中国博士后科学基金第56批汇总表》</a><br />
<br />
　<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 山东大学医学院<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2014.05.13<br />
<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1692','60','转发：关于召开2014年基本科研业务费资助项目（自然科学专项）工作布置会议的通知','','','admin','2014-05-13 15:14:06','http://www.xsyjb.sdu.edu.cn/website/getNewsDetail.do?newsId=4562','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1693','60','关于参加2014年国家公派出国留学行前培训视频会议的通知','','','admin','2014-05-13 15:15:09','http://portal.sdu.edu.cn/home/-/announcement/wW7u/4f7ad4d4-30c1-4510-ba1a-0a76f5068b17','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1694','60','关于做好2014年享受政府特殊津贴人员选拔推荐工作的通知','','','admin','2014-05-13 15:17:45','','一、山东大学人才工作办公室——关于做好2014年享受政府特殊津贴人员选拔推荐工作的通知<br />
<br />
二、学院补充通知——请拟申报享受政府特殊津贴人员于5月16日前将申报信息报送至学院联系人处，学院组织评议后报送人才工作办公室。<br />
<br />
学院联系人：刘海华<br />
联系电话：88382565<br />
Email:liuhaihua@sdu.edu.cn<br />
<br />
　<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 山东大学医学院<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2014.05.13<br />','1','0','0','0','0','','0','5','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1695','60','关于召开财务报销新规定讲解会的通知','','','admin','2014-05-13 15:19:37','','一、山东大学人才工作办公室——关于做好2014年享受政府特殊津贴人员选拔推荐工作的通知<br />
<br />
二、学院补充通知——请拟申报享受政府特殊津贴人员于5月16日前将申报信息报送至学院联系人处，学院组织评议后报送人才工作办公室。<br />
<br />
学院联系人：刘海华<br />
联系电话：88382565<br />
Email:liuhaihua@sdu.edu.cn<br />
<br />
　<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 山东大学医学院<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2014.05.13<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1696','60','转发深圳市政府发展研究中心关于重大研究课题申报的通知','','','admin','2014-05-15 15:20:47','http://www.xsyjb.sdu.edu.cn/website/getNewsDetail.do?newsId=4566','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1697','60','转发：关于公布临沂、济南市等有关企业科技需求的通知','','','admin','2014-05-16 15:21:28','http://www.xsyjb.sdu.edu.cn/website/getNewsDetail.do?newsId=4571','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1698','59','医学院颁发“台湾校友清寒学生助学金”','','','admin','2014-04-22 15:22:11','http://www.view.sdu.edu.cn/new/2014/0422/62698.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1699','59','医学院第十届英语文化节开幕式举行','','','admin','2014-04-23 15:24:07','http://www.view.sdu.edu.cn/new/2014/0422/62732.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1700','59','V动力社会实践团队走进济南市胸科医院','','','admin','2014-04-29 15:24:48','http://www.view.sdu.edu.cn/new/2014/0428/62894.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1701','59','山大承办高校医学虚拟仿真实验教学研讨会','','','admin','2014-04-29 15:25:39','http://www.view.sdu.edu.cn/new/2014/0428/62900.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1702','59','医学院“我为运动狂”系列活动举行','','','admin','2014-04-29 15:26:38','http://www.view.sdu.edu.cn/new/2014/0429/62978.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1703','59','医学院举行“刘佩兰奖学金”颁奖仪式','','','admin','2014-05-04 15:28:01','http://www.view.sdu.edu.cn/new/2014/0430/63036.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1704','59','山东大学明信片义卖活动走进趵突泉校区','','','admin','2014-05-12 15:28:46','http://www.view.sdu.edu.cn/new/2014/0509/63235.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1705','59','医学院举行学院职业生涯规划大赛','','','admin','2014-05-12 15:29:20','http://www.view.sdu.edu.cn/new/2014/0511/63257.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1706','59','2014山大日记：医学院辅导员 李啸闻','','','admin','2014-05-12 15:29:51','http://www.sdrj.sdu.edu.cn/article.php?aid=1942','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1707','59','医学院青志协书签制作比赛在西校举行','','','admin','2014-05-13 15:30:27','http://www.view.sdu.edu.cn/new/2014/0513/63326.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1708','59','医学院在两校区同时举办母亲节系列活动','','','admin','2014-05-13 15:30:59','http://www.view.sdu.edu.cn/new/2014/0513/63329.html','','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1709','36','山东大学医学院简介','','','admin','2014-05-18 15:32:33','','&nbsp; &nbsp; 山东大学医学院是我国最早建立的医学院校之一，为原山东医科大学的主体部分。其悠久的历史可追溯至1864年创办于登州的文会馆，1911年，共和医道学堂大讲堂在济南正式落成，成为今天山东大学医学院的历史源头。1952年由齐鲁大学医学院、山东省立医学院、华东白求恩医学院合并成立山东医学院 。1985年山东医学院更名为山东医科大学。2000年7月，山东大学、山东医科大学、山东工业大学合并组建为新的山东大学，2001年1月由原山东医科大学的基础医学院和临床医学部组建成现在的山东大学医学院。<br />
<br />
&nbsp; &nbsp; 近百年来，山东大学医学院汇聚了一大批享誉国内外的著名专家学者，如江清教授、侯宝璋教授、尤家骏教授、赵常林教授、兰锡纯教授、孙鸿泉教授、宫乃泉教授、张汇泉教授、李缵文教授、苏应宽教授、周廷冲院士、黄翠芬院士、洪涛院士、张运院士、谢立信院士、葛均波院士、于金明院士等，他们分别是我国医学各有关学科的奠基人和开拓者之一。在一代代名师的教泽之下，医学院共为我国培养了4万余名优秀的医疗卫生人才，成为我国医学教育的重镇。<br />
<br />
&nbsp; &nbsp; 山东大学医学院现有30个基础与临床学科研究所(室） 、8所附属医院；现有教职工总数815人，其中教师总数712人，包括教授322人，副教授316人。博士生导师334人，硕士生导师702余人，中国工程院院士3人，“千人计划”入选者3人，教育部“长江学者奖励计划”特聘教授和讲座教授5人，国家级教学名师2人，国家杰出青年基金获得者3人，国家百千万人才工程入选者3人，全国百篇优秀博士论文指导教师4人，山东省“泰山学者”岗位特聘教授 （专家）21人，教育部“新世纪优秀人才支持计划”入选者15人。<br />
<br />
&nbsp; &nbsp; 医学院十分重视学科建设，现有3个国家级重点学科即人体解剖与组织胚胎学、内科学、妇产科学 ；13个省级重点学科：即人体解剖与组织胚胎学、免疫学、病原生物学、病理学与病理生理学、内科学、影像医学与核医学、外科学、妇产科学、耳鼻咽喉科学、遗传学、老年病学、神经病学、药理学。5个省部级重点实验室：即实验畸形学教育部重点实验室，心血管重构与功能研究教育部和卫生部重点实验室，耳鼻咽喉科学卫生部重点实验室，精神疾病基础与临床山东省重点实验室，感染免疫山东省重点实验室 ；1个山东省高校重点实验室：慢性退行性疾病的蛋白质科学重点实验室有临床医学和基础医学2个博士后科研流动站，基础医学、临床医学、生物学和生物医学工程学4个一级学科博士学位授权点，29个二级学科博士学位授权点。<br />
<br />
&nbsp; &nbsp; 医学院近年来承担国家重点基础研究发展计划（973计划）、国家高技术研究发展计划（863计划）、国家科技支撑计划、国家杰出青年基金和国家自然科学基金等国家级科研项目260多项，省部级科研项目400余项。取得国家科技进步二等奖、省部级科技奖、山东高校科技奖及专利等科研成果 100 余项；在《Science》、《Nature Genetics》、《Cell》、《Blood》、《PNAS》等国际著名学术期刊上发表了多篇高水平学术论文。科研工作良好的发展势头，为医学院由教学科研型学院向研究型学院的转变奠定了基础。<br />
<br />
&nbsp; &nbsp; 人才培养始终是医学院的中心工作。临床医学专业是我院的传统优势专业，2007年被教育部批准为第一批高等学校特色专业建设点。学院现有各类全日制学生4700余人，其中五年制本科学生1132人，七年制本硕连读学生952人，八年制本硕博连读学生161人，硕士研究生1427人，博士生研究682人，外籍研究生41人。医学院不仅承担着本院学生的基础课及临床课的教学任务，而且还承担着口腔医学院、公共卫生学院、护理学院和药学院等学院各类学生的医学基础课和临床课的教学任务，教学工作量占整个医学类的67%。<br />
<br />
&nbsp; &nbsp; 医学院重视教学改革，承担多项“质量工程”项目。临床医学专业成为教育部第一批高等学校特色专业建设点，“齐鲁医学班”被评为教育部“人才培养模式创新实验区”，“基础医学融合性实验教学课程体系改革”获得国家级教学成果二等奖，医学基础实验中心成为首批国家级实验教学示范中心，“拔尖创新医学人才培养模式改革试点”、 “五年制临床医学人才培养模式改革试点”被评为教育部卫生部第一批卓越医生教育培养计划试点项目，《诊断学》、《系统解剖学》、《组织学与胚胎学》、《医学免疫学》、《局部解剖学》、《断层解剖学》、《人体寄生虫学》、《医学伦理学》、《医学机能学实验》成为国家级精品课程，《断层解剖学》、《系统解剖学》、《病理学》、《药理学》成为教育部双语示范课程，《人体寄生虫学》、《局部解剖学》、《医学免疫学》成为国家级资源共享课程，《系统解剖学》、《人体寄生虫学》成为国家级来华留学英语授课品牌课程，《大学性性健康修养》成为中国大学视频公开课。<br />
<br />
&nbsp; &nbsp; 医学院积极开展与海内外高水平医学院校的实质性交流与合作，与美国贝勒医学院等多所医学院校开展了共建实验室、教学研究人员互访、研究生联合培养、本科生访学、联合申报课题等合作项目。积极开展医学留学生教育，现有来自巴基斯坦、印度、南非等多个国家的医学留学生300余人。<br />
<br />
&nbsp; &nbsp; 历经百年的风雨洗礼，医学院形成了“博施济众、广智求真”、“精益求精、无私奉献”的优良传统，在新的百年中，医学院将继续发扬这一优良传统，把培养医术精湛、医德高尚，具有国际视野和社会责任感的医学人才作为时代赋予我们的历史使命，在改善民生、促进人民健康事业中做出我们新的贡献。<br />','1','0','0','0','0','','0','0','0');
insert into `article`(`articleid`,`classid`,`title`,`writer`,`source`,`editor`,`adddate`,`urllink`,`content`,`shenhe`,`istop`,`ishot`,`isrec`,`ispic`,`defaultpic`,`deleted`,`hits`,`paixu`) values('1689','60','关于我校具有博士学位或副教授以上职称的专任教师申办高校教师资格证书的紧急通知','','','admin','2014-05-08 14:56:33','http://www.rsc.sdu.edu.cn/2010new2/display.php?id=2781','','1','0','0','0','0','','0','2','0');

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

insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('48','科学研究','29','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('46','博士后流动站','28','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('44','留学生教育','28','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('43','研究生教育','28','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('42','本科教育','28','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('38','机构设置','27','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('47','实验中心','28','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('45','继续教育','28','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('41','百年院史馆','27','1','6','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('40','办公指南','27','1','5','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('39','师资队伍','27','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('37','现任领导','27','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('36','学院简介','27','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('35','院内信息','0','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('34','院长信箱','0','1','8','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('33','校友之家','0','1','7','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('32','就业招聘','0','1','6','','1','3');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('31','学生工作','0','1','5','','1','2');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('30','党务行政','0','1','4','','1','4');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('29','学术科研','0','1','3','','1','3');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('28','人才培养','0','1','3','','1','6');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('27','学院概况','0','1','1','','1','6');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('49','重点学科','29','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('50','资产设备','29','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('51','党群工作','30','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('52','行政服务','30','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('53','人事管理','30','1','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('54','合作交流','30','1','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('55','本科生园地','31','1','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('56','研究生之家','31','1','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('57','本科生招聘','32','1','1','http://msw.sdu.edu.cn/cms/plus/list.php?tid=71','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('58','研究生招聘','32','1','2','http://www.msw.sdu.edu.cn/medgrade/plus/list.php?tid=3','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('59','学院新闻','0','0','1','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('60','通知公告','0','0','2','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('61','学院所属网站','0','0','3','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('62','学院教学医院','0','0','4','','1','0');
insert into `articleclass`(`classid`,`name`,`parentid`,`position`,`classorder`,`url`,`ctype`,`child`) values('63','本院招聘','32','1','3','http://www.msw.sdu.edu.cn/medgrade/plus/list.php?tid=3','1','0');

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

insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('24','医学院颁发“台湾校友清寒学生助学金”','http://www.view.sdu.edu.cn/new/2014/0422/62732.html','focus/f1.jpg','近日，医学院第三期“台湾校友清寒学生助学金”颁奖仪式于泉城大酒店顺利举行...');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('25','医学院举行“医梦扬帆你我相伴”大赛','http://www.view.sdu.edu.cn/new/2014/0422/62698.html','focus/f2.jpg','3月30日，由医学院团委主办、院学生会文艺部承办的班级风采大赛于趵突泉校区举行...');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('31','医学院青志协走进山大附小开展宣传活动','http://www.view.sdu.edu.cn/new/2014/0401/62100.html','focus/f3.jpg','3月21日，山东大学医学院青志协来到山东大学第一附属小学开展结核防治宣传...');
insert into `focus`(`id`,`title`,`linkurl`,`imgurl`,`text`) values('32','医学院举办“魅力女生”女生节系列活动','http://www.view.sdu.edu.cn/new/2014/0323/61732.html','focus/f4.jpg','阳春三月，暖意朦朦,3月3日至7日,由医学院学生会女生部主办的女生节系列活动...');

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

