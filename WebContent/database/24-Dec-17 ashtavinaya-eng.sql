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
-- Temporary table structure for view `customermaterial`
--
DROP TABLE IF EXISTS `customermaterial`;
DROP VIEW IF EXISTS `customermaterial`;
CREATE TABLE `customermaterial` (
  `clintId` int(10) unsigned,
  `material_name` varchar(45),
  `po_status` int(10) unsigned,
  `id` int(10) unsigned,
  `client_id` varchar(45),
  `company_name` varchar(45),
  `f_name` varchar(45),
  `l_name` varchar(45),
  `email` varchar(45),
  `mob_no` varchar(45),
  `gst_no` varchar(45),
  `updated_time` datetime
);

--
-- Temporary table structure for view `edit_material_list`
--
DROP TABLE IF EXISTS `edit_material_list`;
DROP VIEW IF EXISTS `edit_material_list`;
CREATE TABLE `edit_material_list` (
  `mId` int(10) unsigned,
  `client_id` int(10) unsigned,
  `material_name` varchar(45),
  `hsn_code` varchar(45),
  `uom` varchar(45),
  `material_des` varchar(45),
  `createdTime` datetime,
  `updatedTime` datetime,
  `customerId` varchar(45),
  `company_name` varchar(45)
);

--
-- Temporary table structure for view `editpo`
--
DROP TABLE IF EXISTS `editpo`;
DROP VIEW IF EXISTS `editpo`;
CREATE TABLE `editpo` (
  `id` int(10) unsigned,
  `material_id` int(10) unsigned,
  `client_id` int(10) unsigned,
  `rate` varchar(45),
  `po_no` varchar(45),
  `clientId` int(10) unsigned,
  `material_name` varchar(45),
  `company_name` varchar(45)
);

--
-- Temporary table structure for view `material_list`
--
DROP TABLE IF EXISTS `material_list`;
DROP VIEW IF EXISTS `material_list`;
CREATE TABLE `material_list` (
  `customerId` varchar(45),
  `company_name` varchar(45),
  `po_status` int(10) unsigned,
  `id` int(10) unsigned,
  `client_id` int(10) unsigned,
  `material_name` varchar(45),
  `hsn_code` varchar(45),
  `uom` varchar(45),
  `material_des` varchar(45),
  `createdTime` datetime,
  `updatedTime` datetime
);

--
-- Temporary table structure for view `po_material_custs`
--
DROP TABLE IF EXISTS `po_material_custs`;
DROP VIEW IF EXISTS `po_material_custs`;
CREATE TABLE `po_material_custs` (
  `id` int(10) unsigned,
  `clnt_id` int(10) unsigned,
  `clientid` varchar(45),
  `company_name` varchar(45),
  `gst_no` varchar(45),
  `material_name` varchar(45),
  `hsn_code` varchar(45),
  `uom` varchar(45),
  `po_status` int(10) unsigned,
  `uid` varchar(10),
  `material_id` int(10) unsigned,
  `client_id` int(10) unsigned,
  `rate` varchar(45),
  `updatedTime` varchar(19),
  `po_no` varchar(45),
  `po_date` date
);

--
-- Temporary table structure for view `v_inv_invdetails`
--
DROP TABLE IF EXISTS `v_inv_invdetails`;
DROP VIEW IF EXISTS `v_inv_invdetails`;
CREATE TABLE `v_inv_invdetails` (
  `invoiceNo` int(10) unsigned,
  `idDetails` int(10) unsigned,
  `subtotal` varchar(45),
  `clntId` varchar(45),
  `grossamount` varchar(45),
  `challn_no` varchar(45),
  `cgst_amnt` varchar(45),
  `sgst_amnt` varchar(45),
  `igst_amnt` varchar(45),
  `print_status` int(10) unsigned,
  `outward_status` int(10) unsigned,
  `updatedTime` datetime,
  `invoiceId` varchar(45),
  `printed` int(10) unsigned,
  `custId` int(10) unsigned,
  `client_id` varchar(45),
  `company_name` varchar(45),
  `clientId` varchar(45)
);

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
  `state` text,
  `arn_no` varchar(45) DEFAULT NULL,
  `survey_no` text,
  `pincode` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

/*!40000 ALTER TABLE `client_master` DISABLE KEYS */;
INSERT INTO `client_master` (`id`,`client_id`,`company_name`,`f_name`,`l_name`,`email`,`mob_no`,`ext_no`,`gst_no`,`pan_no`,`address`,`created_time`,`created_by`,`updated_time`,`state`,`arn_no`,`survey_no`,`pincode`) VALUES 
 (1,'64749','Srushti Enterprises','Srushti','Ent','Srushti@gmail.com','98789878989','','278586585454585','','Pirangut, Pune 412115','2017-12-17 19:20:19',NULL,'2017-12-17 19:40:44','Maharashtra',NULL,'Gat No. 267,Shed No C12 C6,  President Industrial Park',''),
 (3,'36647','ABC Cus','ABC Cus','ads','s@asd.com','98789884454','','ABC Cussd4a6sda','46','Warje Malwadi Pune 411023','2017-12-17 22:50:25',NULL,'2017-12-17 22:50:25','Maharashtra',NULL,'',''),
 (4,'10744','Compare Services','Services ','Services','Services@gmail.com','9011958026','','27AHGSTABMAB67','','Pune Dhayari','2017-12-24 18:23:34',NULL,'2017-12-24 18:23:34','Maharashtra',NULL,'300/12 Marhe Dhaasda','411023');
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
-- Definition of table `employee_master`
--

DROP TABLE IF EXISTS `employee_master`;
CREATE TABLE `employee_master` (
  `idemployee_master` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `createdtime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `active` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idemployee_master`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_master`
--

/*!40000 ALTER TABLE `employee_master` DISABLE KEYS */;
INSERT INTO `employee_master` (`idemployee_master`,`first_name`,`last_name`,`username`,`password`,`dob`,`address`,`department`,`createdtime`,`updatedTime`,`role`,`active`) VALUES 
 (1,'Dnyanesh','Gurav','admin','123',NULL,'Pune',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `employee_master` ENABLE KEYS */;


--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientId` varchar(45) DEFAULT NULL,
  `gst_amount` varchar(45) DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `grossamount` varchar(45) DEFAULT NULL,
  `inv_hide` int(10) unsigned DEFAULT '0',
  `outward_status` int(10) unsigned DEFAULT '0',
  `driver_name` varchar(45) DEFAULT NULL,
  `vehicle_no` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `challn_no` varchar(45) DEFAULT NULL,
  `ChallanDate` date DEFAULT NULL,
  `PO_Number` varchar(45) DEFAULT NULL,
  `PO_Date` date DEFAULT NULL,
  `PO_Valid_To` date DEFAULT NULL,
  `Transaport_Charges` varchar(45) DEFAULT NULL,
  `interstate_flag` int(10) unsigned DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `InvoiceNumber` varchar(45) DEFAULT NULL,
  `cgst_amnt` varchar(45) DEFAULT NULL,
  `sgst_amnt` varchar(45) DEFAULT NULL,
  `igst_amnt` varchar(45) DEFAULT NULL,
  `print_status` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_print_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`,`clientId`,`gst_amount`,`subtotal`,`grossamount`,`inv_hide`,`outward_status`,`driver_name`,`vehicle_no`,`date`,`challn_no`,`ChallanDate`,`PO_Number`,`PO_Date`,`PO_Valid_To`,`Transaport_Charges`,`interstate_flag`,`createdBy`,`createdTime`,`updatedTime`,`InvoiceNumber`,`cgst_amnt`,`sgst_amnt`,`igst_amnt`,`print_status`,`invoice_print_date`) VALUES 
 (1,'3',NULL,'80246.0','94690.0',0,0,NULL,NULL,NULL,'123','2017-12-01','456','2017-12-01','2017-12-31',NULL,0,NULL,'2017-12-24 16:32:16','2017-12-24 16:32:31',NULL,'7222.14','7222.14','0',1,'2017-12-24 16:32:31'),
 (2,'1',NULL,'804.0','949.0',0,0,NULL,NULL,NULL,'56','2017-12-28','589','2017-12-28','2017-12-31',NULL,0,NULL,'2017-12-24 16:34:05','2017-12-24 16:34:12',NULL,'72.36','72.36','0',1,'2017-11-24 16:34:12'),
 (3,'1',NULL,'672.0','793.0',0,0,NULL,NULL,NULL,'456','2017-12-29','32','2017-12-29','2017-12-31',NULL,0,NULL,'2017-12-24 16:36:24','2017-12-24 16:37:29',NULL,'60.48','60.48','0',1,'2017-11-24 16:37:29');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Definition of table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
CREATE TABLE `invoicedetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoiceId` varchar(45) DEFAULT NULL,
  `materialCode` varchar(45) DEFAULT NULL,
  `materialQty` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `materialRate` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `CustCode` varchar(45) DEFAULT NULL,
  `printed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicedetails`
--

/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` (`id`,`invoiceId`,`materialCode`,`materialQty`,`amount`,`materialRate`,`CreatedTime`,`updatedTime`,`CustCode`,`printed`) VALUES 
 (1,'1','10','12',NULL,'0','2017-12-24 16:32:21','2017-12-24 16:32:21','3',1),
 (2,'1','8','14',NULL,'0','2017-12-24 16:32:26','2017-12-24 16:32:26','3',1),
 (3,'2','1','67',NULL,'0','2017-12-24 16:34:09','2017-12-24 16:34:09','1',1),
 (4,'3','1','56',NULL,'0','2017-12-24 16:36:52','2017-12-24 16:36:52','1',1);
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;


--
-- Definition of table `material_master`
--

DROP TABLE IF EXISTS `material_master`;
CREATE TABLE `material_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `material_name` varchar(45) NOT NULL,
  `hsn_code` varchar(45) NOT NULL,
  `uom` varchar(45) NOT NULL,
  `material_des` varchar(45) NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL,
  `po_status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_material_master_clientId` (`client_id`),
  CONSTRAINT `FK_material_master_clientId` FOREIGN KEY (`client_id`) REFERENCES `client_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_master`
--

/*!40000 ALTER TABLE `material_master` DISABLE KEYS */;
INSERT INTO `material_master` (`id`,`client_id`,`material_name`,`hsn_code`,`uom`,`material_des`,`createdBy`,`createdTime`,`updatedTime`,`po_status`) VALUES 
 (1,1,'SAME','HSN Code','LTR','MaterialRaw ',NULL,'2017-12-17 20:48:20','2017-12-19 16:23:11',1),
 (3,3,'STEEL NEW','8585','kg','raw material',NULL,'2017-12-17 22:50:48','2017-12-19 16:31:17',1),
 (8,3,'ALLUMNIUM','12345','kg','ALLUMNIUM',NULL,'2017-12-18 09:25:30','2017-12-19 16:22:38',1),
 (9,3,'KACCHA','7878','kg','NEW MATERIAL ADDED INTO THE DATABASE',NULL,'2017-12-19 14:47:56','2017-12-19 16:23:19',1),
 (10,3,'MOUSE','2525','kg','MOUSE ELECTRONICS',NULL,'2017-12-24 15:16:32','2017-12-24 15:16:49',1);
/*!40000 ALTER TABLE `material_master` ENABLE KEYS */;


--
-- Definition of table `po_master`
--

DROP TABLE IF EXISTS `po_master`;
CREATE TABLE `po_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `material_id` int(10) unsigned NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `rate` varchar(45) NOT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `po_no` varchar(45) NOT NULL,
  `po_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_master`
--

/*!40000 ALTER TABLE `po_master` DISABLE KEYS */;
INSERT INTO `po_master` (`id`,`material_id`,`client_id`,`rate`,`createdTime`,`updatedTime`,`createdBy`,`po_no`,`po_date`) VALUES 
 (2,3,3,'350','2017-12-19 15:51:36','2017-12-19 15:51:36',NULL,'4567',NULL),
 (3,8,3,'589','2017-12-19 15:50:31','2017-12-19 15:50:31',NULL,'4567',NULL),
 (4,1,1,'12','2017-12-22 11:13:46','2017-12-22 11:13:46',NULL,'12',NULL),
 (5,9,3,'85','2017-12-22 11:55:12','2017-12-22 11:55:12',NULL,'45',NULL),
 (6,10,3,'6000','2017-12-24 15:17:40','2017-12-24 15:17:40',NULL,'4545',NULL);
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
 (1,'514942','Ganesh','Kallanvar','ganeshk@gmail.com','901195806','','27ASDASASASASA','','Karnataka Belgaum  ','2017-12-17 16:24:56',NULL,'2017-12-20 21:34:28'),
 (2,'793075','Dnyaneshwar','Gurav','guravdm@gmail.com','901195806','8087638475','27ASDASASASASA','BBJPG5845G','Maharashtra Pune. ','2017-12-17 16:39:57',NULL,'2017-12-17 17:01:26'),
 (3,'983606','Suraj','Pedanekar','suraj@gmail.com','7276833621','','25858254585','','asdasdas  asdas','2017-12-17 17:15:04',NULL,'2017-12-17 17:15:04'),
 (4,'805820','srush','srush','srush@as.com','789885313','','srush1313131','','srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131srush1313131','2017-12-17 19:16:19',NULL,'2017-12-17 19:16:19');
/*!40000 ALTER TABLE `vendor_master` ENABLE KEYS */;


--
-- Definition of view `customermaterial`
--

DROP TABLE IF EXISTS `customermaterial`;
DROP VIEW IF EXISTS `customermaterial`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customermaterial` AS select `m`.`client_id` AS `clintId`,`m`.`material_name` AS `material_name`,`m`.`po_status` AS `po_status`,`c`.`id` AS `id`,`c`.`client_id` AS `client_id`,`c`.`company_name` AS `company_name`,`c`.`f_name` AS `f_name`,`c`.`l_name` AS `l_name`,`c`.`email` AS `email`,`c`.`mob_no` AS `mob_no`,`c`.`gst_no` AS `gst_no`,`c`.`updated_time` AS `updated_time` from (`material_master` `m` left join `client_master` `c` on((`c`.`id` = `m`.`client_id`))) group by `m`.`client_id`;

--
-- Definition of view `edit_material_list`
--

DROP TABLE IF EXISTS `edit_material_list`;
DROP VIEW IF EXISTS `edit_material_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `edit_material_list` AS select `m`.`id` AS `mId`,`m`.`client_id` AS `client_id`,`m`.`material_name` AS `material_name`,`m`.`hsn_code` AS `hsn_code`,`m`.`uom` AS `uom`,`m`.`material_des` AS `material_des`,`m`.`createdTime` AS `createdTime`,`m`.`updatedTime` AS `updatedTime`,`cm`.`client_id` AS `customerId`,`cm`.`company_name` AS `company_name` from (`material_master` `m` join `client_master` `cm`);

--
-- Definition of view `editpo`
--

DROP TABLE IF EXISTS `editpo`;
DROP VIEW IF EXISTS `editpo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `editpo` AS select `po`.`id` AS `id`,`po`.`material_id` AS `material_id`,`po`.`client_id` AS `client_id`,`po`.`rate` AS `rate`,`po`.`po_no` AS `po_no`,`mm`.`client_id` AS `clientId`,`mm`.`material_name` AS `material_name`,`cm`.`company_name` AS `company_name` from ((`po_master` `po` join `material_master` `mm`) join `client_master` `cm`) where ((`cm`.`id` = `mm`.`client_id`) and (`po`.`client_id` = `cm`.`id`) and (`po`.`material_id` = `mm`.`id`) and (`po`.`id` = ''));

--
-- Definition of view `material_list`
--

DROP TABLE IF EXISTS `material_list`;
DROP VIEW IF EXISTS `material_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `material_list` AS select `cm`.`client_id` AS `customerId`,`cm`.`company_name` AS `company_name`,`m`.`po_status` AS `po_status`,`m`.`id` AS `id`,`m`.`client_id` AS `client_id`,`m`.`material_name` AS `material_name`,`m`.`hsn_code` AS `hsn_code`,`m`.`uom` AS `uom`,`m`.`material_des` AS `material_des`,`m`.`createdTime` AS `createdTime`,`m`.`updatedTime` AS `updatedTime` from (`client_master` `cm` join `material_master` `m`) where (`cm`.`id` = `m`.`client_id`);

--
-- Definition of view `po_material_custs`
--

DROP TABLE IF EXISTS `po_material_custs`;
DROP VIEW IF EXISTS `po_material_custs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `po_material_custs` AS select `po`.`id` AS `id`,`cm`.`id` AS `clnt_id`,ifnull(`cm`.`client_id`,'NA') AS `clientid`,ifnull(`cm`.`company_name`,'NA') AS `company_name`,`cm`.`gst_no` AS `gst_no`,`m`.`material_name` AS `material_name`,`m`.`hsn_code` AS `hsn_code`,`m`.`uom` AS `uom`,`m`.`po_status` AS `po_status`,ifnull(`po`.`id`,'NA') AS `uid`,`po`.`material_id` AS `material_id`,`po`.`client_id` AS `client_id`,ifnull(`po`.`rate`,'0') AS `rate`,ifnull(`po`.`updatedTime`,'NA') AS `updatedTime`,ifnull(`po`.`po_no`,'NA') AS `po_no`,`po`.`po_date` AS `po_date` from ((`material_master` `m` left join `po_master` `po` on((`m`.`id` = `po`.`material_id`))) join `client_master` `cm` on((`cm`.`id` = `m`.`client_id`))) order by `m`.`id` desc;

--
-- Definition of view `v_inv_invdetails`
--

DROP TABLE IF EXISTS `v_inv_invdetails`;
DROP VIEW IF EXISTS `v_inv_invdetails`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inv_invdetails` AS select `i`.`id` AS `invoiceNo`,`id`.`id` AS `idDetails`,`i`.`subtotal` AS `subtotal`,`i`.`clientId` AS `clntId`,`i`.`grossamount` AS `grossamount`,`i`.`challn_no` AS `challn_no`,`i`.`cgst_amnt` AS `cgst_amnt`,`i`.`sgst_amnt` AS `sgst_amnt`,`i`.`igst_amnt` AS `igst_amnt`,`i`.`print_status` AS `print_status`,`i`.`outward_status` AS `outward_status`,`i`.`updatedTime` AS `updatedTime`,`id`.`invoiceId` AS `invoiceId`,`id`.`printed` AS `printed`,`cm`.`id` AS `custId`,`cm`.`client_id` AS `client_id`,`cm`.`company_name` AS `company_name`,`i`.`clientId` AS `clientId` from ((`invoice` `i` join `invoicedetails` `id`) join `client_master` `cm`) where ((`id`.`invoiceId` = `i`.`id`) and (`i`.`clientId` = `cm`.`id`)) group by `i`.`id`;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
