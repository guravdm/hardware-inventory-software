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
  `material_name` text,
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
  `material_name` text,
  `hsn_code` varchar(45),
  `uom` varchar(45),
  `material_des` text,
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
  `material_name` text,
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
  `material_name` text,
  `hsn_code` varchar(45),
  `uom` varchar(45),
  `material_des` text,
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
  `material_name` text,
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
-- Temporary table structure for view `sales_pay_history`
--
DROP TABLE IF EXISTS `sales_pay_history`;
DROP VIEW IF EXISTS `sales_pay_history`;
CREATE TABLE `sales_pay_history` (
  `idsales_pay_details` int(10) unsigned,
  `client_code` varchar(45),
  `payment_mode` varchar(45),
  `cheque_no` varchar(100),
  `pay_made_date` date,
  `paymentamount` varchar(49),
  `outStanding` varchar(63),
  `invoiceid` varchar(45),
  `balance_amnt` varchar(93),
  `createdtime` datetime,
  `deletestatus` int(10) unsigned,
  `uid` int(10) unsigned,
  `client_id` varchar(45),
  `company_name` varchar(45)
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
-- Temporary table structure for view `v_inv_list_pending_shw`
--
DROP TABLE IF EXISTS `v_inv_list_pending_shw`;
DROP VIEW IF EXISTS `v_inv_list_pending_shw`;
CREATE TABLE `v_inv_list_pending_shw` (
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
  `invoice_print_date` datetime,
  `id` int(10) unsigned,
  `client_id` varchar(45),
  `company_name` varchar(45),
  `clientId` varchar(45)
);

--
-- Temporary table structure for view `v_list_of_invoice`
--
DROP TABLE IF EXISTS `v_list_of_invoice`;
DROP VIEW IF EXISTS `v_list_of_invoice`;
CREATE TABLE `v_list_of_invoice` (
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
  `newprint_date` varchar(19),
  `print_count` int(10) unsigned,
  `updatedTime` datetime,
  `invoiceId` varchar(45),
  `printed` int(10) unsigned,
  `id` int(10) unsigned,
  `client_id` varchar(45),
  `company_name` varchar(45),
  `clientId` varchar(45),
  `invoice_print_date` datetime
);

--
-- Temporary table structure for view `v_pay_transactions`
--
DROP TABLE IF EXISTS `v_pay_transactions`;
DROP VIEW IF EXISTS `v_pay_transactions`;
CREATE TABLE `v_pay_transactions` (
  `invoiceamount` varchar(63),
  `paymentmade` varchar(63),
  `balanceamount` double,
  `invoiceid` varchar(45),
  `clntid` int(10) unsigned,
  `client_id` varchar(45),
  `company_name` varchar(45),
  `gst_no` varchar(45),
  `inviceid` int(10) unsigned,
  `clientid` varchar(45),
  `grossamount` varchar(93),
  `print_status` int(10) unsigned,
  `invoice_print_date` datetime,
  `idsales_pay_details` int(10) unsigned,
  `client_code` varchar(45),
  `payment_mode` varchar(45),
  `cheque_no` varchar(100),
  `pay_made_date` date,
  `paymentamount` varchar(49)
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

/*!40000 ALTER TABLE `client_master` DISABLE KEYS */;
INSERT INTO `client_master` (`id`,`client_id`,`company_name`,`f_name`,`l_name`,`email`,`mob_no`,`ext_no`,`gst_no`,`pan_no`,`address`,`created_time`,`created_by`,`updated_time`,`state`,`arn_no`,`survey_no`,`pincode`) VALUES 
 (1,'12091','Ionisation Filtration Industries Pvt. Ltd.','Vivek','Joshi','suryakrajhansa@ionfiltra.com','9822028839','','27AABCB6064D1ZY','','Gat No.267,Shade No. C1 to C6 President Industrial Park,\r\nPirangut, Pune-412115','2017-12-24 18:49:18',NULL,'2018-01-01 19:08:40','Maharashtra',NULL,'Gate No. 267, Shade No. C1 to C6','Pune- 412115'),
 (2,'33523','Macart Equipment Pvt. Ltd.','Nilesh','Punekar','purchase@macartworld.com','8975758454','','27AADCM7769A1ZD','','Sr.No.38/2/4, Near Pari Company,\r\nAt.Post. Narhe, Tal- Haveli,\r\nPune-411041','2017-12-29 10:31:30',NULL,'2018-01-01 19:13:30','Maharashtra',NULL,'38/2/4, Near Pari company, ','At-Post. Narhe, Tal- Haveli,'),
 (3,'37565','Compair Service ','Sanjay','Sir','compairservice123@gmail.com','9822038485','','27AAEFC0724B1Z5','','Kotharud,Pune-411052','2017-12-29 10:54:15',NULL,'2018-01-01 19:19:32','Maharashtra',NULL,'Kotharud','.'),
 (4,'43970','Twintech Control System Pvt. Ltd.','Nalkar','Sir','twintechcontrolsystem@gmail.com','9422011811','','27AAACT6830C1ZL','',' 4, Vishwaganga Complex,Anand Nagar, \r\nSinhgad Road,Pune-411051','2017-12-29 10:59:59',NULL,'2018-01-01 19:30:42','Maharashtra',NULL,'4, Vishwaganga Complex,','Anand Nagar, Sinhgad Road,'),
 (5,'87389','Soham Autogas Systems Pvt. Ltd.','Padmakar','Sir','design@sohamautogas.com','9765213928','7276067895','27AAJCS7561C1Z7','','Shed No. 1&2, Mauli Industrial Estate,\r\nS.No.28/29, Vadgaon Dhayri,\r\nNarhe,Tal-Haveli,\r\nPune-411041','2017-12-29 11:04:08',NULL,'2018-01-01 19:42:34','Maharashtra',NULL,'Shed No. 1 & 2, Mauli Industrial Estate, S.No. 28/29,','Vadgaon Dhayari, Narhe, Tal-Haveli,'),
 (6,'78356','Auriga Elastomers Pvt. Ltd.','Gadakari','Sir','a@gmail.com','9822191288','','27AABCA4651P1ZD','','S.No. 16/6, Erandware,Pune-04','2017-12-29 11:11:59',NULL,'2018-01-01 19:37:01','Maharashtra',NULL,'S.No. 16/6, ','Erandware,'),
 (7,'71822','Ambika Engineering','Datta','Chaskar','ambikaengineering@gmail.com','9860176037','','27ABTPK0301Q1ZB','','S. No. 36, Hisssa No. 1/2/4,\r\nNear Khedekar Industrial Estate,\r\nBehind Pari Company, Narhe,','2017-12-30 10:18:15',NULL,'2018-01-01 19:34:09','Maharashtra',NULL,'S.No.36, Hissa No. 1/2/4, Near Khedekar Industrial Estate','Pune-411041');
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
 (1,'Parashuram','Patil','admin','123',NULL,'Pune',NULL,NULL,NULL,NULL,1);
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
  `newprint_date` datetime DEFAULT NULL,
  `print_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`,`clientId`,`gst_amount`,`subtotal`,`grossamount`,`inv_hide`,`outward_status`,`driver_name`,`vehicle_no`,`date`,`challn_no`,`ChallanDate`,`PO_Number`,`PO_Date`,`PO_Valid_To`,`Transaport_Charges`,`interstate_flag`,`createdBy`,`createdTime`,`updatedTime`,`InvoiceNumber`,`cgst_amnt`,`sgst_amnt`,`igst_amnt`,`print_status`,`invoice_print_date`,`newprint_date`,`print_count`) VALUES 
 (45,'1',NULL,'27500.0','32450.0',0,0,NULL,NULL,NULL,'5','2018-01-11','54','2018-01-11','2018-01-31',NULL,0,NULL,'2018-01-07 10:26:23','2018-01-07 10:26:30',NULL,'2475.0','2475.0','0',1,'2018-01-07 10:26:30','2018-01-07 10:26:23',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicedetails`
--

/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` (`id`,`invoiceId`,`materialCode`,`materialQty`,`amount`,`materialRate`,`CreatedTime`,`updatedTime`,`CustCode`,`printed`) VALUES 
 (1,'45','3','5',NULL,'5500','2018-01-07 10:26:25','2018-01-07 10:26:25','1',1);
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;


--
-- Definition of table `material_master`
--

DROP TABLE IF EXISTS `material_master`;
CREATE TABLE `material_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned DEFAULT NULL,
  `material_name` text NOT NULL,
  `hsn_code` varchar(45) NOT NULL,
  `uom` varchar(45) NOT NULL,
  `material_des` text NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL,
  `po_status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_material_master_clientId` (`client_id`),
  CONSTRAINT `FK_material_master_clientId` FOREIGN KEY (`client_id`) REFERENCES `client_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_master`
--

/*!40000 ALTER TABLE `material_master` DISABLE KEYS */;
INSERT INTO `material_master` (`id`,`client_id`,`material_name`,`hsn_code`,`uom`,`material_des`,`createdBy`,`createdTime`,`updatedTime`,`po_status`) VALUES 
 (3,1,'Pipe Bending Pulley Ø 200 x 60 Thick','8207','Nos','Pipe Bending Pulley Ø 200 x 60 Thick',NULL,'2017-12-25 13:19:52','2017-12-25 13:19:52',1),
 (4,1,'Pulley Ø114 x 50 Thickness','8207','Nos','Pulley Ø114 x 50 Thickness',NULL,'2017-12-25 13:20:31','2017-12-25 13:20:31',1),
 (5,1,'Plate Size 200 x 400 x 16 Thick','8207','Nos','Plate Size 200 x 400 x 16 Thick',NULL,'2017-12-25 13:20:57','2017-12-25 13:20:57',1),
 (6,1,'Slot Dies Size 305 x 26 mm','8207','Nos','Slot Dies Size 305 x 26 mm',NULL,'2017-12-25 13:23:29','2017-12-25 13:23:29',1),
 (7,1,'Slot Dies Size 5 x 26 mm rework Punch & Die','8207','Nos','Slot Dies Size 5 x 26 mm rework Punch & Die',NULL,'2017-12-25 13:24:28','2017-12-25 13:24:28',1),
 (8,1,'SV Seal Drg. No. 2117-200-011/011/0','8207','Nos','SV Seal Drg. No. 2117-200-011/011/0',NULL,'2017-12-25 13:25:16','2017-12-25 13:25:16',1),
 (9,1,'Punch D2 as per drg. Finished','8207','Nos','Punch D2 as per drg. Finished',NULL,'2017-12-25 13:25:45','2017-12-25 13:25:45',1),
 (10,1,'Plate D2 40 x 50 x 10','8207','Nos','Plate D2 40 x 50 x 10',NULL,'2017-12-25 13:26:16','2017-12-25 13:26:16',1),
 (11,1,'Drive Shaft','8207','Nos','Drive Shaft',NULL,'2017-12-25 13:26:59','2017-12-25 13:26:59',1),
 (12,1,'Driven Shaft','8207','Nos','Driven Shaft',NULL,'2017-12-25 13:27:29','2017-12-25 13:27:29',1),
 (13,1,'Inlet Idler (Drg. No. A4-BCDR6-15-00/B)','8207','Nos','Inlet Idler (Drg. No. A4-BCDR6-15-00/B)',NULL,'2017-12-25 13:27:54','2017-12-25 13:27:54',1),
 (14,1,'Outlet Idler (Drg. No. A-4-BCDR6-16-00/C)','8207','Nos','Outlet Idler (Drg. No. A-4-BCDR6-16-00/C)',NULL,'2017-12-25 13:28:25','2017-12-25 13:28:25',1),
 (15,1,'Top Brush Shaft','8207','Nos','Top Brush Shaft',NULL,'2017-12-25 13:28:46','2017-12-25 13:28:46',1),
 (16,1,'Brass T 1/4 x 1/4 x 1/4','8207','NOs','Brass \'T\' 1/4\" x 1/4\" x 1/4\"',NULL,'2017-12-25 13:29:09','2017-12-25 13:29:09',1),
 (17,1,'Brass Bush Ø50 ID 25mm x 55mm length','8207','Nos','Brass Bush Ø50 ID 25mm x 55mm length',NULL,'2017-12-25 13:29:39','2017-12-25 13:54:37',1),
 (18,1,'ROTOR FOR RAV 300 SQ. (DRG. NO.A3-STD-RAV-100-242/0)','8207','Nos','ROTOR FOR RAV 300 SQ.\r\n(DRG. NO.A3-STD-RAV-100-242/0)',NULL,'2017-12-25 13:37:17','2017-12-25 13:37:17',1),
 (19,1,'OUTER STUFFING RAV 300 (DWG. NO. A4-STD-RAV-100-256/0)','8207','Nos','OUTER STUFFING RAV 300\r\n(DWG. NO. A4-STD-RAV-100-256/0)',NULL,'2017-12-25 13:37:51','2017-12-25 13:37:51',1),
 (20,1,'Slide Gate Screw as per  Dwg. No. A4-STD-216-002/0','8207','Nos','Slide Gate Screw as per\r\n Dwg. No. A4-STD-216-002/0',NULL,'2017-12-25 13:38:21','2017-12-25 13:38:21',1),
 (21,1,'BUSH FOR MOTOR MOUNTING (DWG.NO. A4-STD-RAV-300-100-206/0','8207','Nos','BUSH FOR MOTOR MOUNTING\r\n(DWG.NO. A4-STD-RAV-300-100-206/0',NULL,'2017-12-25 14:49:18','2017-12-25 14:56:06',1),
 (22,1,'Slide Gate Screw as per  Dwg. No. A4-STD-216-001/0','8207','Nos','Slide Gate Screw as per\r\n Dwg. No. A4-STD-216-001/0',NULL,'2017-12-25 14:50:22','2017-12-25 14:56:27',1),
 (23,6,'Big Washer with Drill & Bolt welded','8207','Nos','Big Washer with Drill & Bolt welded',NULL,'2017-12-29 11:19:34','2017-12-29 11:19:34',1),
 (24,6,'Small Washer with dril & Bolt welded','8207','Nos','Small Washer with dril & Bolt welded',NULL,'2017-12-29 11:20:12','2017-12-29 14:30:52',1),
 (25,2,'Coupling, Length 15mm ','84879000','Nos','Coupling, Length 15mm ',NULL,'2017-12-29 11:23:30','2017-12-29 11:23:30',1),
 (26,2,'40T3M Idler Pulley & Flatbed Printer (Part No. FL01X076)','84830000','Nos','40T3M Idler Pulley & Flatbed Printer\r\n(Part No. FL01X076)',NULL,'2017-12-29 11:24:12','2017-12-29 11:24:12',1),
 (27,2,'Flatbed Printer (Part No. FL01X073)','84879000','Nos','Flatbed Printer (Part No. FL01X073)',NULL,'2017-12-29 11:24:48','2017-12-29 11:24:48',1),
 (28,2,'MS Bracket for Milling ','84879000','Nos','MS Bracket for Milling ',NULL,'2017-12-29 11:25:31','2017-12-29 11:25:31',1),
 (29,2,'Guide Pin for Carridge MC (Material-Aluminium) with material','998898','Nos','Guide Pin for Carridge MC (Material-Aluminium) with material',NULL,'2017-12-29 11:26:14','2017-12-29 11:26:14',1),
 (30,2,'Back Plate for Keyboard (Part No. FJ01X142)','998898','Nos','Back Plate for Keyboard (Part No. FJ01X142)',NULL,'2017-12-29 11:26:43','2017-12-29 11:26:43',1),
 (31,2,'LEVER PIN-MC-DFM (L 73 MM, MS)','998898','Nos','LEVER PIN-MC-DFM (L 73 MM, MS)',NULL,'2017-12-29 11:27:16','2017-12-29 11:27:16',1),
 (32,2,'FJ01X097 END LEVER BUSH (Material -Aluminium) with Material','998898','Nos','FJ01X097 END LEVER BUSH (Material -Aluminium) with Material',NULL,'2017-12-29 11:28:14','2017-12-29 11:28:14',1),
 (33,2,'PM02X018 DANCING ARM FIXED BUSH  (With Material)','998898','Nos','PM02X018 DANCING ARM FIXED BUSH \r\n(With Material)',NULL,'2017-12-29 11:28:41','2017-12-29 11:28:41',1),
 (34,2,'FUJIFILM (Wiper System Shaft - with Material)','998898','Nos','FUJIFILM (Wiper System Shaft - with Material)',NULL,'2017-12-29 11:30:30','2017-12-29 11:30:30',1),
 (35,2,'UDK 1036 BACK PLATE FOR KEYBOARD - WJ (Backlite Sheet 11mm )','998898','Nos','UDK 1036 BACK PLATE FOR KEYBOARD - WJ (Backlite Sheet 11mm )',NULL,'2017-12-29 11:31:10','2017-12-29 11:31:10',1),
 (36,2,'SS Pipe OD38mm x ID36 x 2155 mm length finished','998898','Nos','SS Pipe OD38mm x ID36 x 2155 mm length finished',NULL,'2017-12-29 11:31:34','2017-12-29 11:31:34',1),
 (38,3,'Aluminium Top Cap Ø130 x 30mm ','8207','Nos','Aluminium Top Cap Ø130 x 30mm ',NULL,'2017-12-29 11:33:33','2017-12-29 11:33:33',1),
 (39,3,'Aluminium Bottom Cap Ø130 x 10mm ','8207','Nos','Aluminium Bottom Cap Ø130 x 10mm ',NULL,'2017-12-29 11:34:04','2017-12-29 11:34:04',1),
 (40,3,'Aluminium Top Cap Ø85 x 30mm thickness','8207','Nos','Aluminium Top Cap Ø85 x 30mm thickness',NULL,'2017-12-29 11:34:28','2017-12-29 11:34:28',1),
 (41,3,'Aluminium Bottom Cap Ø85 x 15mm ','8207','Nos','Aluminium Bottom Cap Ø85 x 15mm ',NULL,'2017-12-29 11:34:47','2017-12-29 11:34:47',1),
 (42,3,'MS Cap Boring ID 94mm size','8207','Nos','MS Cap Boring ID 94mm size',NULL,'2017-12-29 11:35:18','2017-12-29 11:35:18',1),
 (43,3,'MS Cap Boring ID 84mm size','8207','Nos','MS Cap Boring ID 84mm size',NULL,'2017-12-29 11:36:05','2017-12-29 11:36:05',1),
 (44,3,'Aluminium Top Cap Ø84 x 24 mm','8207','Nos','Aluminium Top Cap Ø84 x 24 mm',NULL,'2017-12-29 11:36:43','2017-12-29 11:36:43',1),
 (45,3,'Aluminiuim Bottom Cap Ø84 x 12 mm','8207','Nos','Aluminiuim Bottom Cap Ø84 x 12 mm',NULL,'2017-12-29 11:59:42','2017-12-29 11:59:42',1),
 (46,3,'140x12 mm thickness 120 PCD with 4 holes','8207','Nos','140x12 mm thickness 120 PCD with 4 holes',NULL,'2017-12-29 12:03:56','2017-12-29 12:03:56',1),
 (47,3,'Top Cap Ø70x10 mm thickness','8207','Nos','Top Cap Ø70x10 mm thickness',NULL,'2017-12-29 12:04:20','2017-12-29 12:04:20',1),
 (48,3,'Bottom Cap Ø70x10 mm thickness','8207','Nos','Bottom Cap Ø70x10 mm thickness',NULL,'2017-12-29 12:04:43','2017-12-29 12:04:43',1),
 (49,3,'Aluminium Top Cap Ø118 x 20 mm ','8207','Nos','Aluminium Top Cap Ø118 x 20 mm ',NULL,'2017-12-29 12:05:25','2017-12-29 12:05:25',1),
 (50,3,'Aluminium Bottom Cap Ø88 x 14 mm ','8207','Nos','Aluminium Bottom Cap Ø88 x 14 mm ',NULL,'2017-12-29 12:05:49','2017-12-29 12:05:49',1),
 (51,4,'MPU Body 18UNF 5/8 Inside Thrreading for Connector Size','8207','Nos','MPU Body 18UNF 5/8 Inside Thrreading for Connector Size',NULL,'2017-12-29 12:07:32','2017-12-29 12:07:32',1),
 (52,4,'Big MPU body threading for Connector size','8207','Nos','Big MPU body threading for Connector size',NULL,'2017-12-29 12:09:50','2017-12-29 12:09:50',1),
 (53,4,'S.S. Job Material 316 Thredaing size 18 x 1 mm Pitch as per sample','8207','Nos','S.S. Job Material 316 Thredaing size 18 x 1 mm Pitch as per sample',NULL,'2017-12-29 13:51:24','2017-12-29 13:51:24',1),
 (54,4,'Hex Nut 28 x 6 mm with Oring','8207','Nos','Hex Nut 28 x 6 mm with Oring',NULL,'2017-12-29 13:51:54','2017-12-29 13:51:54',1),
 (55,4,'Hex Nut 28 x 6 mm without groove','8207','Nos','Hex Nut 28 x 6 mm without groove',NULL,'2017-12-29 13:52:16','2017-12-29 13:52:16',1),
 (56,5,'Base Plate (REG-030002-010-ST-17-010)','8207','Nos','Base Plate (REG-030002-010-ST-17-010)',NULL,'2017-12-29 13:53:03','2017-12-29 13:53:03',1),
 (57,5,'Mounting Bracket ','8207','Nos','Mounting Bracket ',NULL,'2017-12-29 13:53:22','2017-12-29 13:53:22',1),
 (58,5,'Holder (REG-0302-010-010-ST-17-040)','8207','Nos','Holder (REG-0302-010-010-ST-17-040)',NULL,'2017-12-29 13:53:52','2017-12-29 13:53:52',1),
 (59,5,'Core holder Block Left','8207','Nos','Core holder Block Left',NULL,'2017-12-29 13:54:15','2017-12-29 13:54:15',1),
 (60,2,'UDK 1036 BACK PLATE FOR KEYBOARD - WJ (Backlite Sheet 13mm )','998898','Nos','UDK 1036 BACK PLATE FOR KEYBOARD - WJ (Backlite Sheet 13mm )',NULL,'2017-12-29 14:04:20','2017-12-29 14:04:20',1),
 (61,1,'Brass Adaptor 1/4 NPT X 1/2 BSP (M)','8207','Nos','Brass Adaptor 1/4 NPT X 1/2 BSP (M)',NULL,'2018-01-01 10:53:28','2018-01-01 10:53:28',1),
 (62,1,'Brass TEE 1/4 BSP (M)','8207','Nos','Brass TEE 1/4 BSP (M)',NULL,'2018-01-01 10:55:26','2018-01-01 10:55:26',1),
 (63,1,'Brass Connector 1/2 BSP (F) x 1/4 ','8207','Nos','Brass Connector 1/2 BSP (F) x 1/4 ',NULL,'2018-01-01 10:56:16','2018-01-01 10:56:16',1),
 (64,1,'Brass Connector 1/4 x 1/4','8207','Nos','Brass Connector 1/4 x 1/4',NULL,'2018-01-01 11:00:44','2018-01-01 11:00:44',1),
 (65,7,'Brass Flange with DRO Drilling (64PCD) (Dwg. No. 18/F6.M422.02.0.00, F6.063.78.001-B) ','8207','NOS','Brass Flange with DRO Drilling (64PCD) (Dwg. No. 18/F6.M422.02.0.00, F6.063.78.001-B) ',NULL,'2018-01-01 21:11:56','2018-01-01 21:11:56',1),
 (66,7,'SS Flange for DRO Drilling (64PCD)','8207','NOS','SS Flange for DRO Drilling (64PCD)',NULL,'2018-01-01 21:15:14','2018-01-01 21:15:14',1),
 (67,7,'Threaded Socket 54x5mm pitch as per drg','8207','NOS','Threaded Socket 54x5mm pitch as per drg',NULL,'2018-01-01 21:33:44','2018-01-01 21:33:44',1),
 (68,7,'Threaded Socket 38x4 mm pitch as per drg.','8207','NOS','Threaded Socket 38x4 mm pitch as per drg.',NULL,'2018-01-01 21:35:42','2018-01-01 21:35:42',1),
 (69,3,'5/16 Threading Rod 820mm Length Finished','8207','NOS','5/16 Threading Rod 820mm Length Finished',NULL,'2018-01-02 10:33:30','2018-01-02 10:33:30',1),
 (70,3,'Alluminium Vent Wall Assembly As Per sample .','8207','NOS','Alluminium Vent Wall Assembly As Per sample .',NULL,'2018-01-02 10:36:29','2018-01-02 10:36:29',1),
 (71,2,'Reseat Switch Bracket M. S. Machining','84879000','NOS','Reseat Switch Bracket M. S. Machining',NULL,'2018-01-02 14:58:04','2018-01-03 19:50:16',1),
 (72,3,'Bottom cap Ø92x12 thick as per sample','8207','NOS','Bottom cap Ø92x12 thick as per sample',NULL,'2018-01-03 20:18:25','2018-01-03 20:22:40',1),
 (73,3,'Top cap Ø92 x 18 thik as per sample ','8207','NOS','Top cap Ø92 x 18 thik as per sample ',NULL,'2018-01-03 20:30:40','2018-01-03 20:30:40',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_master`
--

/*!40000 ALTER TABLE `po_master` DISABLE KEYS */;
INSERT INTO `po_master` (`id`,`material_id`,`client_id`,`rate`,`createdTime`,`updatedTime`,`createdBy`,`po_no`,`po_date`) VALUES 
 (2,2,1,'500','2017-12-24 18:53:10','2017-12-24 18:53:10',NULL,'IFIP1023',NULL),
 (3,3,1,'5500','2017-12-25 13:39:40','2017-12-25 13:39:40',NULL,'IFIP1707P034',NULL),
 (4,4,1,'1700','2017-12-25 13:40:32','2017-12-25 13:40:32',NULL,'IFIP1707P034',NULL),
 (5,5,1,'1200','2017-12-25 13:42:52','2017-12-25 13:42:52',NULL,'IFIP1707P034',NULL),
 (6,6,1,'1400','2017-12-25 13:43:14','2017-12-25 13:43:14',NULL,'IFIP1707P034',NULL),
 (7,7,1,'5000','2017-12-25 13:43:47','2017-12-25 13:43:47',NULL,'IFIP1707P034',NULL),
 (8,8,1,'690','2017-12-25 13:44:16','2017-12-25 13:44:16',NULL,'IFIP1707P035',NULL),
 (9,9,1,'870','2017-12-25 13:44:38','2017-12-25 13:44:38',NULL,'IFIP1707P035',NULL),
 (10,10,1,'110','2017-12-25 13:44:58','2017-12-25 13:44:58',NULL,'IFIP1707P035',NULL),
 (13,13,1,'4700','2017-12-25 13:46:54','2017-12-25 13:46:54',NULL,'IFIP/1707/P059',NULL),
 (14,14,1,'2400','2017-12-25 13:47:28','2017-12-25 13:47:28',NULL,'IFIP/1707/P059',NULL),
 (15,15,1,'670','2017-12-25 13:47:58','2017-12-25 13:47:58',NULL,'IFIP/1707/P059',NULL),
 (16,17,1,'415','2017-12-25 13:55:31','2017-12-25 13:55:31',NULL,'IFIP/1707/P080',NULL),
 (17,16,1,'70','2017-12-25 13:53:19','2017-12-25 13:53:19',NULL,'IFIP/1707/P080',NULL),
 (18,18,1,'2940','2017-12-25 13:56:14','2017-12-25 13:56:14',NULL,'IFIP/1708/P099',NULL),
 (19,19,1,'90','2017-12-25 13:56:40','2017-12-25 13:56:40',NULL,'IFIP/1708/P099',NULL),
 (20,20,1,'850','2017-12-25 13:57:18','2017-12-25 13:57:18',NULL,'IFIP1710P174',NULL),
 (21,11,1,'970','2017-12-25 14:03:40','2017-12-25 14:03:40',NULL,'IFIP/1707/P059',NULL),
 (22,12,1,'850','2017-12-25 14:05:25','2017-12-25 14:05:25',NULL,'IFIP/1707/P059',NULL),
 (23,21,1,'35','2017-12-25 14:56:52','2017-12-25 14:56:52',NULL,'IFIP/1708/P199',NULL),
 (24,22,1,'850','2017-12-25 14:57:15','2017-12-25 14:57:15',NULL,'IFIP1710P174',NULL),
 (25,25,2,'50','2017-12-29 13:56:03','2017-12-29 13:56:03',NULL,'G-212-SP',NULL),
 (26,26,2,'170','2017-12-29 13:56:24','2017-12-29 13:56:24',NULL,'G-140',NULL),
 (27,27,2,'110','2017-12-29 13:56:40','2017-12-29 13:56:40',NULL,'G-140',NULL),
 (28,28,2,'30','2017-12-29 13:56:52','2017-12-29 13:56:52',NULL,'G-140',NULL),
 (29,37,2,'90','2017-12-29 13:57:13','2017-12-29 13:57:13',NULL,'G-287-FM',NULL),
 (30,30,2,'200','2017-12-29 14:00:22','2017-12-29 14:00:22',NULL,'G-278',NULL),
 (31,31,2,'70','2017-12-29 14:00:38','2017-12-29 14:00:38',NULL,'G-307-SP',NULL),
 (32,32,2,'150','2017-12-29 14:01:19','2017-12-29 14:01:19',NULL,'G-436',NULL),
 (33,33,2,'100','2017-12-29 14:01:44','2017-12-29 14:01:44',NULL,'G-502-SP',NULL),
 (34,34,2,'150','2017-12-29 14:02:00','2017-12-29 14:02:00',NULL,'G-297',NULL),
 (35,35,2,'100','2017-12-29 14:02:17','2017-12-29 14:02:17',NULL,'G-319',NULL),
 (36,36,2,'70','2017-12-29 14:02:30','2017-12-29 14:02:30',NULL,'G-309',NULL),
 (37,60,2,'175','2017-12-29 14:06:09','2017-12-29 14:06:09',NULL,'G-337-FM',NULL),
 (38,38,3,'940','2017-12-29 14:10:47','2017-12-29 14:10:47',NULL,'CS1',NULL),
 (39,39,3,'690','2017-12-29 14:11:08','2017-12-29 14:11:08',NULL,'CS2',NULL),
 (40,40,3,'740','2017-12-29 14:11:24','2017-12-29 14:11:24',NULL,'CS3',NULL),
 (41,41,3,'470','2017-12-29 14:11:44','2017-12-29 14:11:44',NULL,'CS4',NULL),
 (42,42,3,'25','2017-12-29 14:12:06','2017-12-29 14:12:06',NULL,'CS5',NULL),
 (43,43,3,'25','2017-12-29 14:12:15','2017-12-29 14:12:15',NULL,'CS6',NULL),
 (44,44,3,'640','2017-12-29 14:12:41','2017-12-29 14:12:41',NULL,'CS7',NULL),
 (45,45,3,'440','2017-12-29 14:13:06','2017-12-29 14:13:06',NULL,'CS8',NULL),
 (46,46,3,'870','2017-12-29 14:13:29','2017-12-29 14:13:29',NULL,'CS9',NULL),
 (47,47,3,'390','2017-12-29 14:14:11','2017-12-29 14:14:11',NULL,'CS10',NULL),
 (48,48,3,'240','2017-12-29 14:14:30','2017-12-29 14:14:30',NULL,'CS11',NULL),
 (49,49,3,'770','2017-12-29 14:15:07','2017-12-29 14:15:07',NULL,'CS12',NULL),
 (50,50,3,'340','2017-12-29 14:15:21','2017-12-29 14:15:21',NULL,'CS13',NULL),
 (51,51,4,'70','2017-12-29 14:23:57','2017-12-29 14:23:57',NULL,'TCS1',NULL),
 (52,52,4,'90','2017-12-29 14:24:50','2017-12-29 14:24:50',NULL,'TCS2',NULL),
 (53,53,4,'170','2017-12-29 14:25:19','2017-12-29 14:25:19',NULL,'TCS2',NULL),
 (54,54,4,'45','2017-12-29 14:26:55','2017-12-29 14:26:55',NULL,'TCS4',NULL),
 (55,55,4,'42','2017-12-29 14:27:17','2017-12-29 14:27:17',NULL,'TCS5',NULL),
 (56,23,6,'9','2017-12-29 14:29:37','2017-12-29 14:29:37',NULL,'AE1',NULL),
 (57,24,6,'9','2017-12-29 14:31:20','2017-12-29 14:31:20',NULL,'AE2',NULL),
 (58,56,5,'325','2017-12-29 14:32:16','2017-12-29 14:32:16',NULL,'GST-435',NULL),
 (59,57,5,'170','2017-12-29 14:32:35','2017-12-29 14:32:35',NULL,'GST-435',NULL),
 (60,58,5,'190','2017-12-29 14:32:48','2017-12-29 14:32:48',NULL,'GST-435',NULL),
 (61,59,5,'370','2017-12-29 14:33:06','2017-12-29 14:33:06',NULL,'GST-598',NULL),
 (62,61,1,'69','2018-01-01 10:54:34','2018-01-01 10:54:34',NULL,'IFIP1712P362',NULL),
 (63,62,1,'70','2018-01-01 10:58:04','2018-01-01 10:58:04',NULL,'IFIP1712P362',NULL),
 (64,63,1,'55','2018-01-01 10:59:42','2018-01-01 10:59:42',NULL,'IFIP1712P362',NULL),
 (65,64,1,'37','2018-01-01 11:01:18','2018-01-01 11:01:18',NULL,'IFIP1712P362',NULL),
 (66,65,7,'60','2018-01-01 21:34:14','2018-01-01 21:34:14',NULL,'Verbal',NULL),
 (67,66,7,'60','2018-01-01 21:34:29','2018-01-01 21:34:29',NULL,'Verbal',NULL),
 (68,67,7,'120','2018-01-01 21:34:54','2018-01-01 21:34:54',NULL,'Verbal',NULL),
 (69,68,7,'90','2018-01-01 21:36:05','2018-01-01 21:36:05',NULL,'Verbal',NULL),
 (70,69,3,'350','2018-01-02 10:33:56','2018-01-02 10:33:56',NULL,'Verbal',NULL),
 (71,70,3,'2170','2018-01-02 10:36:58','2018-01-02 10:36:58',NULL,'Verbal',NULL),
 (72,71,2,'15','2018-01-02 14:58:52','2018-01-02 14:58:52',NULL,'G-954-SP',NULL),
 (73,72,3,'290','2018-01-03 20:25:05','2018-01-03 20:25:05',NULL,'Verbal',NULL),
 (74,73,3,'350','2018-01-03 20:32:56','2018-01-03 20:32:56',NULL,'Verbal',NULL);
/*!40000 ALTER TABLE `po_master` ENABLE KEYS */;


--
-- Definition of table `sales_pay_details`
--

DROP TABLE IF EXISTS `sales_pay_details`;
CREATE TABLE `sales_pay_details` (
  `idsales_pay_details` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_code` varchar(45) NOT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `cheque_no` varchar(100) DEFAULT NULL,
  `pay_made_date` date NOT NULL,
  `createdTime` datetime NOT NULL,
  `deletestatus` int(10) unsigned DEFAULT '0',
  `PaymentAmount` float DEFAULT NULL,
  `invoiceId` varchar(45) DEFAULT NULL,
  `balance_amnt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsales_pay_details`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_pay_details`
--

/*!40000 ALTER TABLE `sales_pay_details` DISABLE KEYS */;
INSERT INTO `sales_pay_details` (`idsales_pay_details`,`client_code`,`payment_mode`,`cheque_no`,`pay_made_date`,`createdTime`,`deletestatus`,`PaymentAmount`,`invoiceId`,`balance_amnt`) VALUES 
 (1,'1','Cash','','2018-01-07','2018-01-07 11:00:49',0,1450,'45','32450'),
 (2,'1','Cash','','2018-01-07','2018-01-07 11:12:41',0,10000,'45','31000');
/*!40000 ALTER TABLE `sales_pay_details` ENABLE KEYS */;


--
-- Definition of table `temp`
--

DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `entity_id` int(10) unsigned NOT NULL,
  `value` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` (`entity_id`,`value`,`date`,`id`) VALUES 
 (1,'10','2014-01-02 07:00:00',1),
 (1,'20','2014-01-02 07:15:00',2),
 (1,'30','2014-01-02 07:30:00',3),
 (2,'50','2014-01-02 07:00:00',4),
 (2,'20','2014-01-02 07:47:00',5),
 (3,'40','2014-01-02 07:00:00',6),
 (3,'40','2014-01-02 07:52:00',7);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;


--
-- Definition of table `vendor_master`
--

DROP TABLE IF EXISTS `vendor_master`;
CREATE TABLE `vendor_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mob_no` varchar(45) DEFAULT NULL,
  `home_no` varchar(45) DEFAULT NULL,
  `gst_no` varchar(45) DEFAULT NULL,
  `pan_no` varchar(45) DEFAULT NULL,
  `address` text,
  `created_time` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_master`
--

/*!40000 ALTER TABLE `vendor_master` DISABLE KEYS */;
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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `editpo` AS select `po`.`id` AS `id`,`po`.`material_id` AS `material_id`,`po`.`client_id` AS `client_id`,`po`.`rate` AS `rate`,`po`.`po_no` AS `po_no`,`mm`.`client_id` AS `clientId`,`mm`.`material_name` AS `material_name`,`cm`.`company_name` AS `company_name` from ((`po_master` `po` join `material_master` `mm`) join `client_master` `cm`) where ((`cm`.`id` = `mm`.`client_id`) and (`po`.`client_id` = `cm`.`id`) and (`po`.`material_id` = `mm`.`id`) and (`po`.`id` = _utf8''));

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `po_material_custs` AS select `po`.`id` AS `id`,`cm`.`id` AS `clnt_id`,ifnull(`cm`.`client_id`,_latin1'NA') AS `clientid`,ifnull(`cm`.`company_name`,_latin1'NA') AS `company_name`,`cm`.`gst_no` AS `gst_no`,`m`.`material_name` AS `material_name`,`m`.`hsn_code` AS `hsn_code`,`m`.`uom` AS `uom`,`m`.`po_status` AS `po_status`,ifnull(`po`.`id`,_utf8'NA') AS `uid`,`po`.`material_id` AS `material_id`,`po`.`client_id` AS `client_id`,ifnull(`po`.`rate`,_latin1'0') AS `rate`,ifnull(`po`.`updatedTime`,_utf8'NA') AS `updatedTime`,ifnull(`po`.`po_no`,_latin1'NA') AS `po_no`,`po`.`po_date` AS `po_date` from ((`material_master` `m` left join `po_master` `po` on((`m`.`id` = `po`.`material_id`))) join `client_master` `cm` on((`cm`.`id` = `m`.`client_id`))) order by `m`.`id` desc;

--
-- Definition of view `sales_pay_history`
--

DROP TABLE IF EXISTS `sales_pay_history`;
DROP VIEW IF EXISTS `sales_pay_history`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales_pay_history` AS select `pd`.`idsales_pay_details` AS `idsales_pay_details`,`pd`.`client_code` AS `client_code`,`pd`.`payment_mode` AS `payment_mode`,`pd`.`cheque_no` AS `cheque_no`,`pd`.`pay_made_date` AS `pay_made_date`,format(`pd`.`PaymentAmount`,2) AS `paymentamount`,format((`pd`.`balance_amnt` - `pd`.`PaymentAmount`),2) AS `outStanding`,`pd`.`invoiceId` AS `invoiceid`,format(`pd`.`balance_amnt`,2) AS `balance_amnt`,`pd`.`createdTime` AS `createdtime`,`pd`.`deletestatus` AS `deletestatus`,`cm`.`id` AS `uid`,`cm`.`client_id` AS `client_id`,`cm`.`company_name` AS `company_name` from (`sales_pay_details` `pd` join `client_master` `cm`) where ((`pd`.`client_code` = `cm`.`id`) and (`pd`.`createdTime` >= (now() + interval -(1) quarter)));

--
-- Definition of view `v_inv_invdetails`
--

DROP TABLE IF EXISTS `v_inv_invdetails`;
DROP VIEW IF EXISTS `v_inv_invdetails`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inv_invdetails` AS select `i`.`id` AS `invoiceNo`,`id`.`id` AS `idDetails`,`i`.`subtotal` AS `subtotal`,`i`.`clientId` AS `clntId`,`i`.`grossamount` AS `grossamount`,`i`.`challn_no` AS `challn_no`,`i`.`cgst_amnt` AS `cgst_amnt`,`i`.`sgst_amnt` AS `sgst_amnt`,`i`.`igst_amnt` AS `igst_amnt`,`i`.`print_status` AS `print_status`,`i`.`outward_status` AS `outward_status`,`i`.`updatedTime` AS `updatedTime`,`id`.`invoiceId` AS `invoiceId`,`id`.`printed` AS `printed`,`cm`.`id` AS `custId`,`cm`.`client_id` AS `client_id`,`cm`.`company_name` AS `company_name`,`i`.`clientId` AS `clientId` from ((`invoice` `i` join `invoicedetails` `id`) join `client_master` `cm`) where ((`id`.`invoiceId` = `i`.`id`) and (`i`.`clientId` = `cm`.`id`)) group by `i`.`id`;

--
-- Definition of view `v_inv_list_pending_shw`
--

DROP TABLE IF EXISTS `v_inv_list_pending_shw`;
DROP VIEW IF EXISTS `v_inv_list_pending_shw`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inv_list_pending_shw` AS select `i`.`id` AS `invoiceNo`,`id`.`id` AS `idDetails`,`i`.`subtotal` AS `subtotal`,`i`.`clientId` AS `clntId`,`i`.`grossamount` AS `grossamount`,`i`.`challn_no` AS `challn_no`,`i`.`cgst_amnt` AS `cgst_amnt`,`i`.`sgst_amnt` AS `sgst_amnt`,`i`.`igst_amnt` AS `igst_amnt`,`i`.`print_status` AS `print_status`,`i`.`outward_status` AS `outward_status`,`i`.`updatedTime` AS `updatedTime`,`id`.`invoiceId` AS `invoiceId`,`id`.`printed` AS `printed`,`i`.`invoice_print_date` AS `invoice_print_date`,`cm`.`id` AS `id`,`cm`.`client_id` AS `client_id`,`cm`.`company_name` AS `company_name`,`i`.`clientId` AS `clientId` from ((`invoice` `i` left join `invoicedetails` `id` on((`i`.`id` = `id`.`invoiceId`))) join `client_master` `cm`) where (`i`.`clientId` = `cm`.`id`) group by `i`.`id` order by `i`.`invoice_print_date` desc;

--
-- Definition of view `v_list_of_invoice`
--

DROP TABLE IF EXISTS `v_list_of_invoice`;
DROP VIEW IF EXISTS `v_list_of_invoice`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_list_of_invoice` AS select `i`.`id` AS `invoiceNo`,`id`.`id` AS `idDetails`,`i`.`subtotal` AS `subtotal`,`i`.`clientId` AS `clntId`,`i`.`grossamount` AS `grossamount`,`i`.`challn_no` AS `challn_no`,`i`.`cgst_amnt` AS `cgst_amnt`,`i`.`sgst_amnt` AS `sgst_amnt`,`i`.`igst_amnt` AS `igst_amnt`,`i`.`print_status` AS `print_status`,`i`.`outward_status` AS `outward_status`,ifnull(`i`.`newprint_date`,'NA') AS `newprint_date`,`i`.`print_count` AS `print_count`,`i`.`updatedTime` AS `updatedTime`,`id`.`invoiceId` AS `invoiceId`,`id`.`printed` AS `printed`,`cm`.`id` AS `id`,`cm`.`client_id` AS `client_id`,`cm`.`company_name` AS `company_name`,`i`.`clientId` AS `clientId`,`i`.`invoice_print_date` AS `invoice_print_date` from ((`invoice` `i` left join `invoicedetails` `id` on((`i`.`id` = `id`.`invoiceId`))) join `client_master` `cm`) where ((`i`.`clientId` = `cm`.`id`) and (`i`.`newprint_date` >= (now() + interval -(1) quarter))) group by `i`.`id` order by `i`.`id` desc;

--
-- Definition of view `v_pay_transactions`
--

DROP TABLE IF EXISTS `v_pay_transactions`;
DROP VIEW IF EXISTS `v_pay_transactions`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pay_transactions` AS select format(sum(distinct `id`.`grossamount`),2) AS `invoiceamount`,format(ifnull(sum(`sd`.`PaymentAmount`),0),2) AS `paymentmade`,(sum(distinct `id`.`grossamount`) - ifnull(sum(`sd`.`PaymentAmount`),0)) AS `balanceamount`,`sd`.`invoiceId` AS `invoiceid`,`cm`.`id` AS `clntid`,`cm`.`client_id` AS `client_id`,`cm`.`company_name` AS `company_name`,`cm`.`gst_no` AS `gst_no`,`id`.`id` AS `inviceid`,`id`.`clientId` AS `clientid`,format(`id`.`grossamount`,2) AS `grossamount`,`id`.`print_status` AS `print_status`,`id`.`invoice_print_date` AS `invoice_print_date`,`sd`.`idsales_pay_details` AS `idsales_pay_details`,`sd`.`client_code` AS `client_code`,`sd`.`payment_mode` AS `payment_mode`,`sd`.`cheque_no` AS `cheque_no`,`sd`.`pay_made_date` AS `pay_made_date`,format(`sd`.`PaymentAmount`,2) AS `paymentamount` from ((`invoice` `id` join `client_master` `cm` on((`id`.`clientId` = `cm`.`id`))) left join `sales_pay_details` `sd` on((`id`.`id` = `sd`.`invoiceId`))) group by `sd`.`invoiceId`,`id`.`id` having ((sum(distinct `id`.`grossamount`) - ifnull(sum(`sd`.`PaymentAmount`),0)) > 1);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
