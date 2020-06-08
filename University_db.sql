/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.17 : Database - university_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`university_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `university_db`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `user_id` int(11) NOT NULL,
  `ssn` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `account` */

insert  into `account`(`user_id`,`ssn`,`ID`,`password`) values 
(400,400,NULL,'12345'),
(401,401,NULL,'12345'),
(402,402,NULL,'12345'),
(403,403,NULL,'12345'),
(404,404,NULL,'12345'),
(405,405,NULL,'12345'),
(406,406,NULL,'12345'),
(1000,1000,NULL,'12345'),
(2000,NULL,2000,'00000'),
(2001,NULL,2001,'00000'),
(2002,NULL,2002,'00000'),
(2003,NULL,2003,'00000'),
(2004,NULL,2004,'FFFFFFFF'),
(2005,NULL,2005,'00000'),
(2006,NULL,2006,'00000'),
(2007,NULL,2007,'00000'),
(2008,NULL,2008,'00000'),
(2009,NULL,2009,'00000');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dep_number` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `dep_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dep_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `department` */

insert  into `department`(`dep_number`,`code`,`dep_name`) values 
(1,NULL,'CS'),
(2,NULL,'IT'),
(3,NULL,'IS');

/*Table structure for table `emp_information` */

DROP TABLE IF EXISTS `emp_information`;

CREATE TABLE `emp_information` (
  `emp_number` int(11) NOT NULL AUTO_INCREMENT,
  `ssn` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `credit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `salary` double DEFAULT NULL,
  `experience` varchar(150) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `emp_information` */

insert  into `emp_information`(`emp_number`,`ssn`,`emp_name`,`department`,`credit`,`Email`,`salary`,`experience`,`nationality`) values 
(1,400,'Ahmed Taleb','IS',NULL,'wjdekd@hotmail.com',18032.2,'more than 4 years','lebanon'),
(2,401,'moustafa alnienaeiu','IT',NULL,'mou221@gmail.com',20382.5,'more than 8 years','Egyption'),
(3,402,'Hatim Albagdady','CS',NULL,'hatim@gmail.com',19283.3,'more than 6 years','Egyption'),
(4,403,'Mohmmad shoub','IT',NULL,'ewine@hotmail.com',16321.2,'more than 2 years','UK'),
(5,404,'Ali Tyfil','IT',NULL,'alie3@hotmail.com',14489,'more than 2 years','UK'),
(6,405,'Kalid Bashir','CS',NULL,'Kalid_Bashir@hotmail.com',18983.9,'more than 5 years','India'),
(7,406,'Abdullah Alshanqity','CS',NULL,'abdu@hotmail.com',25948.2,'more than 5 years','Saudi'),
(8,407,'Alwaled kamel','CS',NULL,'alwaled@gamil.com',17389.3,'more than 2 years','Egyption'),
(9,1000,'Ali Alzahrani','Dean',NULL,'Ali@hotmail.com',28243.4,'more than 3 years','Saudi'),
(15,5,'m','m',NULL,'m',3,'m','m');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `ssn` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_department` varchar(50) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employee` */

insert  into `employee`(`ssn`,`emp_name`,`emp_department`) values 
(400,'Ahmed Taleb','IS'),
(401,'moustafa alnienaeiu','IT'),
(402,'Hatim Albagdady','CS'),
(403,'Mohmmad shoub','IT'),
(404,'Ali Tyfil','IT'),
(405,'Kalid Bashir','CS'),
(406,'Abdullah Alshanqity','CS'),
(407,'Alwaled kamel','CS'),
(408,'ahmed alm','cs'),
(1000,'Ali Alzarhani','dean');

/*Table structure for table `stu_information` */

DROP TABLE IF EXISTS `stu_information`;

CREATE TABLE `stu_information` (
  `stu_number` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `stu_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `credit` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stu_number`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `stu_information` */

insert  into `stu_information`(`stu_number`,`id`,`stu_name`,`department`,`credit`,`Email`,`phone`,`address`,`nationality`) values 
(1,2000,'Saif Alshamrani','CS',18,'Sayof@hotmail.com','+966566130333','Almadina - Shoran','Saudi'),
(2,2001,'Mohmmad Jmal','CS',17,'memo123@hotmail.com','+965543787823','Almadina - alsibe msajid','Egyption'),
(3,2003,'Abdullah Hezam','CS',17,'Abo0od@hotmail.com','+966563267287','Almadina - Alhezam','Yemen'),
(4,2004,'Ahmed Hmaad ','CS',15,'ah289dsx@gamil.com','+965537821493','Jeddah - Alnozah','Jorden'),
(5,2005,'Anas Ahmed','IT',13,'An123as@gamil.com','+953543892233','Riyadh - Alyasmin','Yemen'),
(6,2006,'Abdullah Aman','IT',16,'ajnd21@hotmail.com','+955437823632','Almadina - Quba','Afghan'),
(7,2007,'Ali Habib','CS',17,'Aeu2139@hotmail.com','+966543272783','ALmadina','Soudan'),
(8,2007,'Ali domlo','CS',17,'Ali111@hotmail.com','+965532562871','Almadina - Alsalam','Saudi'),
(9,2002,'Ahmed Adel','IT',17,'Mohmadd_1992@gmail.com','+966561266732','Jeddah - Almahmediah','Yemen'),
(10,2009,'Kalid Ali','IS',14,'Keek1234@hotmail.com','+925632521623','Jaban - toky','Japanese');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student` */

insert  into `student`(`id`,`stu_name`,`department`) values 
(2000,'Saif Alshamrani','CS'),
(2001,'Mohmmad Jmal','CS'),
(2002,'Ahmed Adel','IT'),
(2003,'Abdullah Hezam','CS'),
(2004,'Ahmed Hammad','CS'),
(2005,'Anas Ahmed','IT'),
(2006,'Abdullah Aman','IT'),
(2007,'Ali Habib','CS'),
(2008,'ALi Domlo','CS'),
(2009,'Kahled Ali','IS');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
