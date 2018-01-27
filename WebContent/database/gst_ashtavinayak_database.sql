-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gst_asht
--

CREATE DATABASE IF NOT EXISTS gst_asht;
USE gst_asht;

--
-- Definition of table `client_master`
--

DROP TABLE IF EXISTS `client_master`;
CREATE TABLE `client_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(45) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mob_no` varchar(45) NOT NULL,
  `ext_no` varchar(45) DEFAULT NULL,
  `gst_no` varchar(45) NOT NULL,
  `pan_no` varchar(45) DEFAULT NULL,
  `address` text NOT NULL,
  `created_time` datetime NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

/*!40000 ALTER TABLE `client_master` DISABLE KEYS */;
INSERT INTO `client_master` (`id`,`client_id`,`company_name`,`f_name`,`l_name`,`email`,`mob_no`,`ext_no`,`gst_no`,`pan_no`,`address`,`created_time`,`created_by`,`updated_time`) VALUES 
 (1,'64749','Srushti Enterprises','Srushti','Ent','Srushti@gmail.com','98789878989','','278586585454585','','maharashtra Pune','2017-12-17 19:20:19',NULL,'2017-12-17 19:40:44'),
 (3,'36647','ABC Cus','ABC Cus','ads','s@asd.com','98789884454','','ABC Cussd4a6sda','46','ABC CusABC CusABC CusABC Cus','2017-12-17 22:50:25',NULL,'2017-12-17 22:50:25');
/*!40000 ALTER TABLE `client_master` ENABLE KEYS */;


--
-- Definition of table `emp_tble`
--

DROP TABLE IF EXISTS `emp_tble`;
CREATE TABLE `emp_tble` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestatmp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `imagePath` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_tble`
--

/*!40000 ALTER TABLE `emp_tble` DISABLE KEYS */;
INSERT INTO `emp_tble` (`id`,`timestatmp`,`email`,`password`,`username`,`imagePath`) VALUES 
 (1,'2017/12/15 22:43:40','gur@gmail.com','1234','admin',NULL),
 (2,'2017/12/15 22:44:12','gurvdm@gmail.com','123','test',NULL),
 (3,'2017/12/15 22:56:40','imagePath@gmail.com','4141','TEST 3',NULL);
/*!40000 ALTER TABLE `emp_tble` ENABLE KEYS */;


--
-- Definition of table `material_master`
--

DROP TABLE IF EXISTS `material_master`;
CREATE TABLE `material_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(45) NOT NULL,
  `material_name` varchar(45) NOT NULL,
  `hsn_code` varchar(45) NOT NULL,
  `uom` varchar(45) NOT NULL,
  `material_des` varchar(45) NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL,
  `po_status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_material_master_clientId` FOREIGN KEY (`id`) REFERENCES `client_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_master`
--

/*!40000 ALTER TABLE `material_master` DISABLE KEYS */;
INSERT INTO `material_master` (`id`,`client_id`,`material_name`,`hsn_code`,`uom`,`material_des`,`createdBy`,`createdTime`,`updatedTime`,`po_status`) VALUES 
 (1,'1','First Material','HSN Code','LTR','MaterialRaw ',NULL,'2017-12-17 20:48:20','2017-12-17 21:10:04',1),
 (3,'3','Apple','1234','kg','Apple Material',NULL,'2017-12-17 22:50:48','2017-12-17 22:50:48',0);
/*!40000 ALTER TABLE `material_master` ENABLE KEYS */;


--
-- Definition of table `po_master`
--

DROP TABLE IF EXISTS `po_master`;
CREATE TABLE `po_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `material_id` varchar(45) NOT NULL,
  `client_id` varchar(45) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `po_no` varchar(45) NOT NULL,
  `po_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_master`
--

/*!40000 ALTER TABLE `po_master` DISABLE KEYS */;
INSERT INTO `po_master` (`id`,`material_id`,`client_id`,`rate`,`createdTime`,`updatedTime`,`createdBy`,`po_no`,`po_date`) VALUES 
 (1,'1','1','12','2017-12-17 23:52:41','2017-12-17 23:52:41',NULL,'1234',NULL);
/*!40000 ALTER TABLE `po_master` ENABLE KEYS */;


--
-- Definition of table `vendor_master`
--

DROP TABLE IF EXISTS `vendor_master`;
CREATE TABLE `vendor_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mob_no` varchar(45) DEFAULT NULL,
  `home_no` varchar(45) DEFAULT NULL,
  `gst_no` varchar(45) DEFAULT NULL,
  `pan_no` varchar(45) DEFAULT NULL,
  `address` text,
  `created_time` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_master`
--

/*!40000 ALTER TABLE `vendor_master` DISABLE KEYS */;
INSERT INTO `vendor_master` (`id`,`vendor_id`,`f_name`,`l_name`,`email`,`mob_no`,`home_no`,`gst_no`,`pan_no`,`address`,`created_time`,`created_by`,`updatedTime`) VALUES 
 (1,'514942','Ganesh','Kallanvar','ganeshk@gmail.com','901195806','','27ASDASASASASA','','Karnataka Belgaum ','2017-12-17 16:24:56',NULL,'2017-12-17 17:00:06'),
 (2,'793075','Dnyaneshwar','Gurav','guravdm@gmail.com','901195806','8087638475','27ASDASASASASA','BBJPG5845G','Maharashtra Pune. ','2017-12-17 16:39:57',NULL,'2017-12-17 17:01:26'),
 (3,'983606','Suraj','Pedanekar','suraj@gmail.com','7276833621','','25858254585','','asdasdas  asdas','2017-12-17 17:15:04',NULL,'2017-12-17 17:15:04'),
 (4,'805820','srush','srush','srush@as.com','789885313','','srush1313131','','srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131','2017-12-17 19:16:19',NULL,'2017-12-17 19:16:19');
/*!40000 ALTER TABLE `vendor_master` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
