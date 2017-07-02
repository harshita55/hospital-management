/*
SQLyog Ultimate v8.32 
MySQL - 5.1.45-community : Database - hospital
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hospital` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hospital`;

/*Table structure for table `doc` */

DROP TABLE IF EXISTS `doc`;

CREATE TABLE `doc` (
  `name` varchar(200) DEFAULT NULL,
  `gender` char(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `marrital` char(200) DEFAULT NULL,
  `department` char(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contactno` int(200) DEFAULT NULL,
  `dutytime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doc` */

insert  into `doc`(`name`,`gender`,`dob`,`marrital`,`department`,`address`,`contactno`,`dutytime`) values ('dr mathur','male','1959-01-03','MARRIED','icu','pratap nagar',78945612,'10hrs'),('DR. KUMAR','male','1977-01-01','MARRIED','LUNGS','bunny park ,jaipur',789456123,'7hrs'),('dr. batra','female','2026-01-02','MARRIED','heart','subhash nagar,udaipur',789654123,'14hrs');

/*Table structure for table `drug` */

DROP TABLE IF EXISTS `drug`;

CREATE TABLE `drug` (
  `drugname` varchar(200) DEFAULT NULL,
  `tot` int(200) DEFAULT NULL,
  `exp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `drug` */

insert  into `drug`(`drugname`,`tot`,`exp`) values ('paracetamol',700,'2017-04-15'),('sofra',19,'2027-01-07'),('metacine',78,'2022-01-01'),('crosin',14,'2022-01-19');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`) values (101,'harsh','harshi'),(102,'aa','111'),(111,'111','111'),(112,'aa','aa'),(113,'bb','bb');

/*Table structure for table `outpat` */

DROP TABLE IF EXISTS `outpat`;

CREATE TABLE `outpat` (
  `name` varchar(200) DEFAULT NULL,
  `regno` int(200) DEFAULT NULL,
  `age` int(200) DEFAULT NULL,
  `Gender` char(200) DEFAULT NULL,
  `prefdoc` varchar(200) DEFAULT NULL,
  `admitdate` date DEFAULT NULL,
  `roomno` int(200) DEFAULT NULL,
  `regfee` int(200) DEFAULT NULL,
  `remainingfee` int(200) DEFAULT NULL,
  `totalfee` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `outpat` */

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `registrationno` int(250) NOT NULL AUTO_INCREMENT,
  `patientname` char(200) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `marritalstatus` char(20) DEFAULT NULL,
  `gender` char(20) DEFAULT NULL,
  `fathername` char(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contactno` int(100) DEFAULT NULL,
  `drpref` varchar(200) DEFAULT NULL,
  `regfee` int(200) DEFAULT NULL,
  `admitdate` date DEFAULT NULL,
  `roomno` int(10) DEFAULT NULL,
  PRIMARY KEY (`registrationno`),
  UNIQUE KEY `registration no` (`registrationno`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`registrationno`,`patientname`,`age`,`marritalstatus`,`gender`,`fathername`,`address`,`contactno`,`drpref`,`regfee`,`admitdate`,`roomno`) values (1001,'karan kumar',21,'unmarried','male','rk kumar','oswal nagar,udaipur',2147483647,'DR. MUKESH ',200,'2016-01-01',205),(1002,'jyoti malvi',20,'UNMARRIED','female','raj malvi','subhash nagar',2147483647,'Item 3',50,'2016-01-03',209),(1003,'kiran',19,'UNMARRIED','female','prashnt','pratap nagar',789456123,'dr. batra',400,'2016-01-03',201),(1004,'kj',19,'UNMARRIED','male','vbv','fhddft',878556,'dr mathur',70,'2016-01-04',202);

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `roommo` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `room` */

insert  into `room`(`roommo`) values (201),(202),(203),(204),(205),(206),(207),(208),(209),(300),(301),(302),(303),(304),(305),(306),(307),(308),(309),(400);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
