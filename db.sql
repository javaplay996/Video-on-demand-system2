/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shipindianbou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shipindianbou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shipindianbou`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shipindianbou/upload/1616669960964.jpg'),(2,'picture2','http://localhost:8080/shipindianbou/upload/1616669977053.jpg'),(3,'picture3','http://localhost:8080/shipindianbou/upload/1616669991225.jpg'),(7,'picture11111','http://localhost:8080/shipindianbou/upload/1616672284308.jpg');

/*Table structure for table `discussshipinxinxi` */

DROP TABLE IF EXISTS `discussshipinxinxi`;

CREATE TABLE `discussshipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616672523851 DEFAULT CHARSET=utf8 COMMENT='课外知识评论表';

/*Data for the table `discussshipinxinxi` */

insert  into `discussshipinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (91,'2021-03-12 15:48:49',1,1,'评论内容1','回复内容1'),(92,'2021-03-12 15:48:49',2,2,'评论内容2','回复内容2'),(93,'2021-03-12 15:48:49',3,3,'评论内容3','回复内容3'),(94,'2021-03-12 15:48:49',4,4,'评论内容4','回复内容4'),(95,'2021-03-12 15:48:49',5,5,'评论内容5','回复内容5'),(96,'2021-03-12 15:48:49',6,6,'评论内容6','回复内容6'),(1613980606127,'2021-03-12 15:56:45',1613980511836,11,'测试',NULL),(1613980608108,'2021-03-12 15:56:47',1613980511836,11,'测试',NULL),(1613981043341,'2021-03-12 16:04:03',1613980797736,1613980983448,'常识',NULL),(1615972642298,'2021-03-17 17:17:21',1615972461652,11,'这里可以对这个视频进行留言评论',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学习资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-12 15:48:49','标题1','简介1','http://localhost:8080/shipindianbou/upload/news_picture1.jpg','内容1'),(82,'2021-03-12 15:48:49','标题2','简介2','http://localhost:8080/shipindianbou/upload/news_picture2.jpg','内容2'),(83,'2021-03-12 15:48:49','标题3','简介3','http://localhost:8080/shipindianbou/upload/news_picture3.jpg','内容3'),(84,'2021-03-12 15:48:49','标题4','简介4','http://localhost:8080/shipindianbou/upload/news_picture4.jpg','内容4'),(85,'2021-03-12 15:48:49','标题5','简介5','http://localhost:8080/shipindianbou/upload/news_picture5.jpg','内容5'),(86,'2021-03-12 15:48:49','标题6','简介6','http://localhost:8080/shipindianbou/upload/news_picture6.jpg','内容6');

/*Table structure for table `shipinfenlei` */

DROP TABLE IF EXISTS `shipinfenlei`;

CREATE TABLE `shipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616672164061 DEFAULT CHARSET=utf8 COMMENT='知识分类';

/*Data for the table `shipinfenlei` */

insert  into `shipinfenlei`(`id`,`addtime`,`fenlei`) values (1613980304767,'2021-03-12 15:51:44','分类1'),(1613980328058,'2021-03-12 15:52:07','分类2'),(1613980352623,'2021-03-12 15:52:32','分类3'),(1613980370268,'2021-03-12 15:52:50','分类4'),(1613980380945,'2021-03-12 15:53:00','分类5'),(1613980391155,'2021-03-12 15:53:10','分类6');

/*Table structure for table `shipinxinxi` */

DROP TABLE IF EXISTS `shipinxinxi`;

CREATE TABLE `shipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616672226620 DEFAULT CHARSET=utf8 COMMENT='课外知识';

/*Data for the table `shipinxinxi` */

insert  into `shipinxinxi`(`id`,`addtime`,`biaoti`,`zhuyan`,`fenlei`,`fengmian`,`shipin`,`wenjian`,`riqi`,`jianjie`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-03-12 15:48:49','标题1','主演1','分类1','http://localhost:8080/shipindianbou/upload/kewaizhishi_fengmian1.jpg','http://localhost:8080/shipindianbou/upload/1616669815940.mp4','http://localhost:8080/shipindianbou/upload/1616669820165.doc','2021-03-12','简介1','<p>详情1</p>',1,1,'2021-03-25 18:56:50',2),(32,'2021-03-12 15:48:49','标题2','主演2','分类2','http://localhost:8080/shipindianbou/upload/kewaizhishi_fengmian2.jpg','http://localhost:8080/shipindianbou/upload/1616669815940.mp4','http://localhost:8080/shipindianbou/upload/1616669820165.doc','2021-03-12','简介2','详情2',2,2,'2021-03-25 19:39:38',9),(33,'2021-03-12 15:48:49','标题3','主演3','分类3','http://localhost:8080/shipindianbou/upload/kewaizhishi_fengmian3.jpg','http://localhost:8080/shipindianbou/upload/1616669815940.mp4','http://localhost:8080/shipindianbou/upload/1616669820165.doc','2021-03-12','简介3','详情3',3,3,'2021-03-12 15:48:49',3),(34,'2021-03-12 15:48:49','标题4','主演4','分类4','http://localhost:8080/shipindianbou/upload/kewaizhishi_fengmian4.jpg','http://localhost:8080/shipindianbou/upload/1616669815940.mp4','http://localhost:8080/shipindianbou/upload/1616669820165.doc','2021-03-12','简介4','详情4',4,4,'2021-03-12 15:48:49',4),(35,'2021-03-12 15:48:49','标题5','主演5','分类5','http://localhost:8080/shipindianbou/upload/kewaizhishi_fengmian5.jpg','http://localhost:8080/shipindianbou/upload/1616669815940.mp4','http://localhost:8080/shipindianbou/upload/1616669820165.doc','2021-03-12','简介5','详情5',5,5,'2021-03-25 19:40:52',7),(36,'2021-03-12 15:48:49','标题6','主演6','分类6','http://localhost:8080/shipindianbou/upload/kewaizhishi_fengmian6.jpg','http://localhost:8080/shipindianbou/upload/1616669815940.mp4','http://localhost:8080/shipindianbou/upload/1616669820165.doc','2021-03-12','简介6','详情6',6,6,'2021-03-12 15:48:49',6),(1616672226619,'2021-03-25 19:37:06','小猪佩奇','佩奇','分类6','http://localhost:8080/shipindianbou/upload/1616672207521.jpg','http://localhost:8080/shipindianbou/upload/1616672211900.mp4','http://localhost:8080/shipindianbou/upload/1616672215559.xls','2021-03-25','简介11111','<p><span style=\"color: rgb(96, 98, 102);\">详情3333</span></p>',0,12,'2021-03-25 19:42:04',3);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616672518494 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616672518493,'2021-03-25 19:41:58',11,1616672226619,'shipinxinxi','小猪佩奇','http://localhost:8080/shipindianbou/upload/1616672207521.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','dmt1ovksszrzv0kbztsvsra078lgu3be','2021-03-12 15:51:04','2021-03-25 20:42:35'),(2,11,'001','yonghu','用户','zhh5a2vnyblawsnt0tzs9f6eqj2a8r26','2021-03-12 15:56:36','2021-03-25 20:40:52'),(3,1613980983448,'002','yonghu','用户','ed23kml3sxqukh0blhjicid364vuvvns','2021-03-12 16:03:09','2021-03-12 17:03:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-12 15:48:50');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `banned` int(255) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`banned`) values (11,'2021-02-22 15:48:49','111','111','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/shipindianbou/upload/yonghu_zhaopian1.jpg',0),(12,'2021-02-22 15:48:49','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/shipindianbou/upload/yonghu_zhaopian2.jpg',0),(13,'2021-02-22 15:48:49','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/shipindianbou/upload/yonghu_zhaopian3.jpg',0),(14,'2021-02-22 15:48:49','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/shipindianbou/upload/yonghu_zhaopian4.jpg',0),(15,'2021-02-22 15:48:49','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/shipindianbou/upload/yonghu_zhaopian5.jpg',0),(16,'2021-02-22 15:48:49','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/shipindianbou/upload/yonghu_zhaopian6.jpg',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
