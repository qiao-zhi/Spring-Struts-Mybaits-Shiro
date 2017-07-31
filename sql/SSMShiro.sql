/*
SQLyog Ultimate v8.32 
MySQL - 5.7.10-log : Database - shiro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiro` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiro`;

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '资源名称',
  `type` varchar(32) NOT NULL COMMENT '资源类型：menu,button,',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `percode` varchar(128) DEFAULT NULL COMMENT '权限代码字符串',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父结点id',
  `parentids` varchar(128) DEFAULT NULL COMMENT '父结点id列表串',
  `sortstring` varchar(128) DEFAULT NULL COMMENT '排序号',
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`name`,`type`,`url`,`percode`,`parentid`,`parentids`,`sortstring`,`available`) values (1,'权限','','',NULL,0,'0/','0','1'),(11,'试卷管理','menu','/paper_findAllSt.action',NULL,1,'0/1/','1.','1'),(12,'试卷新增','menu','/paper_addSt.action','paper:create',11,'0/1/11/','','1'),(13,'试卷修改','menu','/paper_updateSt.action','paper:update',11,'0/1/11/','','1'),(14,'试卷删除','menu','/paper_deleteSt.action','paper:delete',11,'0/1/11/','','1'),(15,'试卷查询','menu','/paper_findSt.action','paper:query',11,'0/1/15/',NULL,'1'),(16,'试卷增加权限','permission','/paper_addSt.action','paper:create',11,'0/1/11/',NULL,NULL),(17,'二级级题库操作','permission','/paper_addSt.action','papaer:operate2',11,'0/1/11/',NULL,NULL),(18,'三级级题库操作','permission','/paper_addSt.action','papaer:operate3',11,'0/1/11',NULL,NULL),(21,'用户管理','menu','/user_queryAllUser.action','user:query',1,'0/1/','2.','1'),(22,'用户新增','menu','/user_addUser.action','user:create',21,'0/1/21/','','1'),(23,'用户修改','menu','/user_updateUser.action','user:update',21,'0/1/21/','','1'),(24,'用户删除','menu','/user_deleteUser.action','',21,'0/1/21/','','1'),(25,'用户查询','menu','/user_findUser.action','user:query',21,'0/1/21/',NULL,'1'),(26,'用户删除权限','permission','/user_deleteUser.action','user:delete',21,'0/1/21/',NULL,NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`available`) values ('1','一级经理','1'),('2','二级经理','1'),('3','三级经理','1'),('4','超级管理员','1');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `sys_role_id` varchar(32) NOT NULL COMMENT '角色id',
  `sys_permission_id` varchar(32) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`id`,`sys_role_id`,`sys_permission_id`) values (1,'1','11'),(2,'1','12'),(3,'1','13'),(4,'1','14'),(5,'1','15'),(6,'2','11'),(7,'2','12'),(8,'2','13'),(9,'2','14'),(10,'2','15'),(11,'4','11'),(12,'4','12'),(13,'4','13'),(14,'4','14'),(15,'4','15'),(16,'4','21'),(17,'4','22'),(18,'4','23'),(19,'4','24'),(20,'4','25'),(21,'1','16'),(22,'1','17'),(23,'1','18'),(24,'2','18'),(25,'3','11'),(26,'3','12'),(27,'3','13'),(28,'3','14'),(29,'3','15');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `usercode` varchar(32) NOT NULL COMMENT '账号',
  `username` varchar(64) NOT NULL COMMENT '姓名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `salt` varchar(64) DEFAULT NULL COMMENT '盐',
  `locked` char(1) DEFAULT NULL COMMENT '账号是否锁定，1：锁定，0未锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`usercode`,`username`,`password`,`salt`,`locked`) values ('erji','erji','二级经理','f3694f162729b7d0254c6e40260bf15c','qwerty','0'),('root','root','超级管理员','f3694f162729b7d0254c6e40260bf15c','qwerty','0'),('sanji','sanji','三级经理','f3694f162729b7d0254c6e40260bf15c','qwerty','0'),('yiji','yiji','一级经理','f3694f162729b7d0254c6e40260bf15c','qwerty','0');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_user_id` varchar(32) NOT NULL,
  `sys_role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`sys_user_id`,`sys_role_id`) values (1,'yiji','1'),(2,'erji','2'),(3,'yiji','2'),(4,'root','1'),(5,'root','2'),(6,'root','3'),(7,'yiji','3'),(8,'erji','3'),(9,'sanji','3'),(10,'root','4');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
