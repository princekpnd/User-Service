/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.5.62 : Database - user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`user` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `user`;

/*Table structure for table `lookup` */

DROP TABLE IF EXISTS `lookup`;

CREATE TABLE `lookup` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `LOOKUP_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LOOKUP_LABEL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LOOKUP_TYPE_ID` int(20) NOT NULL DEFAULT '0',
  `SHOP_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IS_DELETED` tinyint(1) DEFAULT '0',
  `IS_ACTIVE` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `lookup` */

insert  into `lookup`(`ID`,`LOOKUP_NAME`,`LOOKUP_LABEL`,`LOOKUP_TYPE_ID`,`SHOP_ID`,`IS_DELETED`,`IS_ACTIVE`) values 
(1,'USER','USER',1,'MILAAN',0,1),
(2,'ADMIN','ADMIN',1,'MILAAN',0,1);

/*Table structure for table `lookup_type` */

DROP TABLE IF EXISTS `lookup_type`;

CREATE TABLE `lookup_type` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `LOOKUP_TYPE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LOOKUP_TYPE_LABEL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `lookup_type` */

insert  into `lookup_type`(`ID`,`LOOKUP_TYPE_NAME`,`LOOKUP_TYPE_LABEL`) values 
(1,'USER_TYPE','USER_TYPE');

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ROLL` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `test` */

insert  into `test`(`ID`,`NAME`,`ROLL`) values 
(1,'Rahul',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `MOBILE_NUMBER` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `WALLET_BALANCE` int(4) NOT NULL DEFAULT '0',
  `USER_TYPE` int(2) NOT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT '0',
  `IS_DELETED` tinyint(1) DEFAULT '1',
  `DOB` datetime DEFAULT NULL,
  `LAST_LOGIN_DATE` datetime DEFAULT NULL,
  `PWD` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `WISH_COUNT` int(7) NOT NULL DEFAULT '0',
  `CREATED_ON` datetime DEFAULT NULL,
  `OTP` int(7) NOT NULL DEFAULT '0',
  `DUES` int(5) DEFAULT NULL,
  `GENDER` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `AVATAR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `F_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `WISH_LIST` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`ID`,`NAME`,`MOBILE_NUMBER`,`EMAIL_ID`,`WALLET_BALANCE`,`USER_TYPE`,`IS_ACTIVE`,`IS_DELETED`,`DOB`,`LAST_LOGIN_DATE`,`PWD`,`TOKEN`,`WISH_COUNT`,`CREATED_ON`,`OTP`,`DUES`,`GENDER`,`AVATAR`,`F_NAME`,`WISH_LIST`) values 
(2,'MOHAN','453453',NULL,0,2,0,1,NULL,NULL,NULL,NULL,0,NULL,2352,0,NULL,NULL,NULL,NULL),
(3,'Prince','34343434','pri1@milaan.com',0,2,1,0,'2021-11-03 15:20:11','2021-11-03 17:15:50','nn','349525c2-16d4-4d50-be85-259973bf79ef-3',0,'2021-11-03 15:20:10',1234,0,NULL,NULL,NULL,NULL),
(4,'Prince','34343000','pri@milaan.com',0,0,1,0,'2021-11-03 15:23:52','2021-11-03 17:20:52','as','9fe29cfa-e3ee-42bb-918d-d4216f9718d5-4',0,'2021-11-03 15:23:52',0,0,NULL,NULL,NULL,NULL),
(6,'Avinash','777777','avi@milaan.com',0,0,1,0,'2021-11-03 16:15:44','2021-11-04 00:11:59','de','704f1e13-a38d-472b-9c65-f344d8abfc70-6',0,'2021-11-03 16:15:44',0,0,NULL,NULL,NULL,NULL),
(7,'Avinash','77733','avi@milaan.com',0,0,1,0,'2021-11-05 12:24:09','2021-11-05 13:11:34','Avinash12','03adfba6-fcca-43b4-ab40-807c9b840856-7',0,'2021-11-05 12:24:09',0,0,NULL,NULL,NULL,NULL),
(8,'Avinash','7776','avi@milaan.com',0,0,1,0,'2021-11-06 13:49:16',NULL,'Avinash12',NULL,0,'2021-11-06 13:49:16',0,0,NULL,NULL,NULL,NULL),
(9,'Avinash','7778','avi@milaan.com',0,0,1,0,'2021-11-06 13:53:20',NULL,'Avinash12',NULL,0,'2021-11-06 13:53:20',705,0,NULL,NULL,NULL,NULL),
(15,'avi','8.82838333E8',NULL,0,0,0,0,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL),
(16,'avi1','22.0',NULL,0,0,0,0,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL),
(17,'avi2','33.0',NULL,0,0,0,0,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL),
(18,'avi3','44.0',NULL,0,0,0,0,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
