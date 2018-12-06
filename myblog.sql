/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17-log : Database - myblog
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myblog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myblog`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '文章标题',
  `summary` text COMMENT '文章摘要',
  `html_content` text COMMENT 'html文章内容',
  `content` text COMMENT '文章内容',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `title_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`summary`,`html_content`,`content`,`createtime`,`modifiedtime`,`title_img`) values (1,'陌上花开，可缓缓归矣','用最简单的代码，实现瀑布流布局，没有繁琐的css，没有jq，只需要做到以下就可以实现瀑布流的效果。思路很简单，看成是三列布局，分别用三个ul来调用。','w few ','fwefewf','2018-11-20 17:13:05','2018-11-20 17:13:07','images/text02.jpg'),(2,'java建造者模式--给一个你一看就懂的建造者模式',' 在开始写这个建造者模式的文章前，我也确实看了挺多次其他介绍这个模式的文章。感觉看了很多次才有一点对建造者模式明白透彻的感觉。细心想来，可能是接口的理解不好，平时工作比较少用到过建造者模式','234243','234234','2018-11-20 17:13:30','2018-11-20 17:13:32','images/text01.jpg'),(4,'第1集','123','<div class=\"markdown-body editormd-preview-container\" previewcontainer=\"true\" style=\"padding: 20px;\"><p>添加一行内容<br>添加一行内容<br><strong>添加一行内容</strong></p>\r\n</div>','添加一行内容\r\n添加一行内容\r\n**添加一行内容**','2018-11-26 18:06:24','2018-11-26 18:06:24','images/zd01.jpg');

/*Table structure for table `user_test` */

DROP TABLE IF EXISTS `user_test`;

CREATE TABLE `user_test` (
  `id` int(12) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_test` */

insert  into `user_test`(`id`,`username`,`age`) values (1,'xiaoming','22'),(2,'xiaohong','21');

/*Table structure for table `visitor_message` */

DROP TABLE IF EXISTS `visitor_message`;

CREATE TABLE `visitor_message` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `visitor_message` */

insert  into `visitor_message`(`id`,`info`,`name`,`create_time`,`area`) values (1,'恭喜恭喜！终于有自己的个人博客了！','路人甲','2018-11-27 10:11:54','深圳'),(2,'页面真好看~','打酱油的','2018-11-28 14:31:08','广东省'),(3,'我符文','易小侠','2018-11-29 17:31:55','广东省');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
