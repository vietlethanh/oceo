/*
SQLyog Ultimate v8.63 
MySQL - 5.5.16-log : Database - oceo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `sl_ad_type` */

DROP TABLE IF EXISTS `sl_ad_type`;

CREATE TABLE `sl_ad_type` (
  `AdTypeID` int(20) NOT NULL,
  `AdTypeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `NumOfDay` int(11) DEFAULT NULL,
  `DisplayPage` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SharedItem` int(11) DEFAULT NULL COMMENT 'so luong quang cao shared tren 1 panel',
  `Price` decimal(10,0) DEFAULT NULL,
  `CityID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AdTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_ad_type` */

insert  into `sl_ad_type`(`AdTypeID`,`AdTypeName`,`Width`,`Height`,`NumOfDay`,`DisplayPage`,`SharedItem`,`Price`,`CityID`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'Top Banner',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Left Home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Right Home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_advertising` */

DROP TABLE IF EXISTS `sl_advertising`;

CREATE TABLE `sl_advertising` (
  `AdvertisingID` bigint(20) NOT NULL,
  `AdvertisingName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartnerID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Temporaty not use table partner',
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `AdTypeID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArticleTypeID` int(11) DEFAULT NULL,
  `Content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PreferLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AdvertisingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_advertising` */

insert  into `sl_advertising`(`AdvertisingID`,`AdvertisingName`,`PartnerID`,`StartDate`,`EndDate`,`AdTypeID`,`ArticleTypeID`,`Content`,`ImageLink`,`PreferLink`,`Order`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'Advert  Mobile','Apple VN','2014-04-13 00:00:00','2014-04-15 00:00:00','2',10,'Iphone 5S','http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',2,'26','2015-02-08 21:40:11','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',17,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(3,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',22,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',22,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(5,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','3',9,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(6,'Banner ',NULL,NULL,NULL,'1',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Banner ',NULL,NULL,NULL,'2',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Banner ','Google Watch','2015-02-02 00:00:00','2015-02-28 00:00:00','3',14,'Google Watch 2015','images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',1,'26','2015-02-08 21:38:54','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(9,'Banner ',NULL,NULL,NULL,'3',6,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(15,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Banner ',NULL,NULL,NULL,'3',25,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Banner ',NULL,NULL,NULL,'3',35,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','3',26,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(24,'Banner ',NULL,NULL,NULL,'3',24,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Banner ',NULL,NULL,NULL,'1',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Banner ',NULL,NULL,NULL,'2',1,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Banner ',NULL,NULL,NULL,'3',8,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(33,'Banner ',NULL,NULL,NULL,'3',3,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'Banner ',NULL,NULL,NULL,'2',5,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Banner ',NULL,NULL,NULL,'1',2,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',2,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(42,'Banner ',NULL,NULL,NULL,'2',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'Banner ',NULL,NULL,NULL,'1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Banner ',NULL,NULL,NULL,'3',26,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Banner ',NULL,NULL,NULL,'2',3,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(51,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Banner ',NULL,NULL,NULL,'1',5,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'Banner ',NULL,NULL,NULL,'3',11,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','3',12,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(60,'Banner ',NULL,NULL,NULL,'2',1,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Banner ',NULL,NULL,NULL,'2',6,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Banner ',NULL,NULL,NULL,'2',4,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','3',28,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(69,'Banner ',NULL,NULL,NULL,'2',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'Banner ',NULL,NULL,NULL,'3',33,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'Banner ',NULL,NULL,NULL,'3',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Banner ',NULL,NULL,NULL,'3',2,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',29,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(75,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(76,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(79,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',29,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(80,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',21,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(151,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(152,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(154,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(155,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(156,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(227,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',5,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(228,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',18,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(230,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(231,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(232,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(302,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(303,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(304,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(306,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(307,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',35,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(308,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(378,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(379,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(382,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(383,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(384,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(454,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',30,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(455,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(456,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(458,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(459,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(460,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(530,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(531,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(534,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',9,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(535,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(606,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(607,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(608,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(610,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(611,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',6,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(612,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(682,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(683,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(686,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',30,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(687,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(688,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',15,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(759,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(760,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',18,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(762,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',11,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(763,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(834,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(835,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',5,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(836,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(839,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(840,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(911,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(912,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(914,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(915,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',5,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(987,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',6,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(988,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(990,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',35,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(991,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(992,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',28,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1063,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1064,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1066,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1067,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1068,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1138,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',33,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1139,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1140,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1143,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1214,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',9,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1215,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',16,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1216,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',19,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1217,'Advert 1','Advert 1Advert 1Advert 1Advert 1Advert 1','2014-04-13 00:00:00','2014-04-15 00:00:00','3',11,'Content content','http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',2,'26','2014-04-13 18:04:12','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1218,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1219,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',35,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1220,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1221,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',1,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1222,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1223,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1224,'Banner ',NULL,NULL,NULL,'2',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1225,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1230,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',5,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1231,'Banner ',NULL,NULL,NULL,'2',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1233,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1234,'Banner ',NULL,NULL,NULL,'3',30,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1239,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1240,'Banner ',NULL,NULL,NULL,'3',9,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1241,'Banner ',NULL,NULL,NULL,'3',28,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1242,'Banner ',NULL,NULL,NULL,'1',1,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1243,'Banner ',NULL,NULL,NULL,'1',1,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1248,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',4,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1249,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1250,'Banner ',NULL,NULL,NULL,'3',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1251,'Banner ',NULL,NULL,NULL,'3',34,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1252,'Banner ',NULL,NULL,NULL,'2',3,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1257,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',4,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1258,'Banner ',NULL,NULL,NULL,'3',19,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1259,'Banner ',NULL,NULL,NULL,'3',29,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1260,'Banner ',NULL,NULL,NULL,'2',3,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1261,'Banner ',NULL,NULL,NULL,'2',4,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1266,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1267,'Banner ',NULL,NULL,NULL,'1',1,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1268,'Banner ',NULL,NULL,NULL,'3',17,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1269,'Banner ',NULL,NULL,NULL,'3',33,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1270,'Banner ',NULL,NULL,NULL,'2',1,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1275,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',4,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1276,'Banner ',NULL,NULL,NULL,'2',3,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1277,'Banner ',NULL,NULL,NULL,'2',5,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1278,'Banner ',NULL,NULL,NULL,'3',3,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1279,'Banner ',NULL,NULL,NULL,'2',1,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1284,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','3',26,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(1285,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1286,'Banner ',NULL,NULL,NULL,'3',12,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1287,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1288,'Banner ',NULL,NULL,NULL,'1',3,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1291,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1295,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',19,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1296,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',23,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1366,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',21,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1367,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1368,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',36,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1370,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1371,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1442,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',33,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1443,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1447,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',36,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1518,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',9,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1519,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1520,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',10,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1523,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1524,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',22,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1595,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1596,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1598,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1599,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1600,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',34,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1670,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1671,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1672,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1674,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',10,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1675,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',6,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1746,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1747,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1751,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1752,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',18,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1822,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1823,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',26,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1824,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1827,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1828,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1898,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1899,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',4,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1900,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1902,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1903,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1974,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1975,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1976,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1978,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',12,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(1979,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',12,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(1980,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2050,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2051,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2052,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',17,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2054,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2055,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',8,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2056,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2126,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2127,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',26,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2128,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',34,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2131,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2132,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',19,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2202,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',30,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2203,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2206,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',20,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2207,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2208,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',11,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2279,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2280,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',5,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2282,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',28,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2283,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',35,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2284,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2354,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2355,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2356,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2358,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2359,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',17,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2360,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2431,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',16,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2432,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',31,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2435,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',32,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2437,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(2440,'Banner ',NULL,NULL,NULL,'1',1,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2441,'Banner ',NULL,NULL,NULL,'1',5,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2449,'Banner ',NULL,NULL,NULL,'1',3,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2450,'Banner ',NULL,NULL,NULL,'3',32,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2455,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',1,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(2456,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2459,'Banner ',NULL,NULL,NULL,'3',28,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2465,'Banner ',NULL,NULL,NULL,'2',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2476,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2486,'Banner ',NULL,NULL,NULL,'1',5,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2491,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','2',5,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(2500,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','3',8,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(2503,'Banner ',NULL,NULL,NULL,'1',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2504,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2506,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2511,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2512,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2738,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2739,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',3,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2886,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',29,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(2887,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',3,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(2966,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3120,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3194,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',34,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3266,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',12,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3272,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3343,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',6,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(3422,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3570,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3646,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3647,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',28,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(3648,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3649,'Advert 1','Advert 1Advert 1Advert 1Advert 1Advert 1','2014-04-13 00:00:00','2014-04-15 00:00:00','1',2,'Content content','images/data/kitchen_adventurer_caramel.jpg','http://google.com',2,'26','2014-04-13 18:04:12','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(3651,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',5,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(3666,'Banner ',NULL,NULL,NULL,'3',30,NULL,'images/data/kitchen_adventurer_donut.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3672,'Banner ',NULL,NULL,NULL,'1',3,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3673,'Banner ',NULL,NULL,NULL,'2',2,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3682,'Banner ',NULL,NULL,NULL,'3',30,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3683,'Banner ',NULL,NULL,NULL,'2',6,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3690,'Banner ',NULL,NULL,NULL,'3',25,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3691,'Banner ',NULL,NULL,NULL,'3',32,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3700,'Banner ',NULL,NULL,NULL,'3',14,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3701,'Banner ',NULL,NULL,NULL,'3',9,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3710,'Banner ',NULL,NULL,NULL,'1',4,NULL,'images/data/kitchen_adventurer_cheesecake_brownie.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3716,'Banner ','','2014-07-02 00:00:00','2014-07-25 00:00:00','1',3,'','images/data/kitchen_adventurer_donut.jpg','http://google.com',0,'26','2014-07-05 22:23:41','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(3718,'Banner ',NULL,NULL,NULL,'3',1,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3727,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(3798,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3802,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',15,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3879,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(3950,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3952,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(3956,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',36,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4027,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4032,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4106,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4255,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',1,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4256,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',17,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4406,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','2',6,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4410,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',8,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4411,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4483,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',5,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4484,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',29,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4487,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',35,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4559,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','1',6,NULL,'images/data/kitchen_adventurer_caramel.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4560,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',13,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4564,'Advert 3','advert 4 advert 4 advert 4 advert 4','2014-04-17 00:00:00','1970-01-01 07:00:00','3',33,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',4,'26','2014-04-13 16:17:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4714,'Advert 2','Advert 2 Advert 2 Partner','2014-04-14 00:00:00','2014-04-18 00:00:00','3',18,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',1,'26','2014-04-13 15:14:20','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','1'),(4715,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','3',25,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4791,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',2,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0',''),(4863,'Advert new 1','Partner Advert new 1','2014-04-15 00:00:00','2014-05-29 00:00:00','2',4,NULL,'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg','http://google.com',26,'1','2014-04-13 16:31:06','0','0000-00-00 00:00:00','0','0000-00-00 00:00:00','\0','');

/*Table structure for table `sl_article_type` */

DROP TABLE IF EXISTS `sl_article_type`;

CREATE TABLE `sl_article_type` (
  `ArticleTypeID` int(20) NOT NULL,
  `ArticleTypeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Level` int(11) DEFAULT NULL COMMENT '1: Cap cao nhat (section) 2: Cap category 3: Cap theo dac tinh',
  `ParentID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Thumbnail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'show in index page',
  `Logo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'show in menu',
  PRIMARY KEY (`ArticleTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_article_type` */

insert  into `sl_article_type`(`ArticleTypeID`,`ArticleTypeName`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`,`Level`,`ParentID`,`Thumbnail`,`Logo`) values (1,'Điện Thoại-Laptop',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'0','images/data/button-cat1.png',NULL),(2,'Máy Tính-Linh Kiện',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'0','images/data/button-cat2.png',NULL),(3,'Điện Tử-Điện Máy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'0','images/data/button-cat3.png',NULL),(4,'Mỹ Phẩm-Thời Trang',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,4,'0','images/data/button-cat4.png',NULL),(5,'Phương Tiện Đi Lại',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,5,'0','images/data/button-cat5.png',NULL),(10,'Điện thoại di động',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'1',NULL,NULL),(11,'Máy tính bảng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1',NULL,NULL),(12,'Máy tính xách tay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'1',NULL,NULL),(13,'Macbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'1',NULL,NULL),(14,'Đồng hồ thông minh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'1',NULL,NULL),(20,'Máy tính bộ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(21,'Màn hình vi tính',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(22,'Mainboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(23,'Vi xử lý CPU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(24,'Ổ đĩa cứng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(26,'Bộ nhớ RAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(27,'Thiết bị mạng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(28,'Chuột & Bàn phím',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(29,'Linh kiện khác',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(32,'Xe máy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'5',NULL,NULL),(33,'Ô tô',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'5',NULL,NULL),(39,'Thiết bị âm thanh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'3',NULL,NULL),(50,'Thời Trang Nam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'3',NULL,NULL),(51,'Thời Trang Nữ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'3',NULL,NULL),(52,'Yoga/Gym/Salon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'3',NULL,NULL),(53,'Nước hoa/Mỹ Phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'4',NULL,NULL),(54,'Mẹ & bé',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'5',NULL,NULL),(55,'Phụ kiện',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'3',NULL,NULL),(60,'Thú cưng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'3',NULL,NULL),(61,'Gia dụng & điện lạnh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'3',NULL,NULL),(62,'Nhà bếp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'3',NULL,NULL),(63,'Dụng cụ gia đình',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'3',NULL,NULL),(64,'Văn phòng phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'3',NULL,NULL),(65,'Nội thất',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'3',NULL,NULL),(80,'Camera',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'3',NULL,NULL);

/*Table structure for table `sl_auction` */

DROP TABLE IF EXISTS `sl_auction`;

CREATE TABLE `sl_auction` (
  `AuctionID` bigint(20) NOT NULL,
  `ProductID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `StartingPrice` decimal(20,2) DEFAULT NULL,
  `NumOffer` bigint(20) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`AuctionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_auction` */

/*Table structure for table `sl_city` */

DROP TABLE IF EXISTS `sl_city`;

CREATE TABLE `sl_city` (
  `CityID` int(20) NOT NULL,
  `CityName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` tinyint(20) DEFAULT NULL,
  `Order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_city` */

insert  into `sl_city`(`CityID`,`CityName`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`,`Order`) values (1,'Hồ Chí Minh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,'Hà Nội',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2);

/*Table structure for table `sl_comment` */

DROP TABLE IF EXISTS `sl_comment`;

CREATE TABLE `sl_comment` (
  `CommentID` bigint(20) NOT NULL,
  `CommentType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArticleID` bigint(20) DEFAULT NULL,
  `Content` text COLLATE utf8_unicode_ci,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` tinyint(20) DEFAULT NULL,
  PRIMARY KEY (`CommentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_comment` */

insert  into `sl_comment`(`CommentID`,`CommentType`,`ArticleID`,`Content`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'',229,'adasdsad jdljaskldj alskdj klajskl ','18','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',1),(2,'',229,'adasdsad jdljaskldj alskdj klajskl ','18','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',1),(3,'',229,'aaaaaa adasd asdasdasd ','18','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',1),(4,'',229,'fadsf asfasf asfas fasf','18','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',1),(5,'',229,'tuyet voi ong mat troi','18','2014-02-16 16:04:18','','2014-02-16 16:04:18','','0000-00-00 00:00:00','\0',1),(6,'',229,'tuyet voi ong mat troi  2','18','2014-02-16 16:15:08','','2014-02-16 16:15:08','','0000-00-00 00:00:00','\0',1),(7,'',229,'tuyet voi ong mat troi 23','18','2014-02-16 16:17:10','','2014-02-16 16:17:10','','0000-00-00 00:00:00','\0',1),(8,'',229,'tuyet voi ong mat troi 4','18','2014-02-16 16:17:57','','2014-02-16 16:17:57','','0000-00-00 00:00:00','\0',1),(9,'',229,'tuyet voi ong mat troi 4','18','2014-02-16 16:18:48','','2014-02-16 16:18:48','','0000-00-00 00:00:00','\0',1),(10,'',229,'tuyet voi ong mat troi 5','18','2014-02-16 16:21:11','','2014-02-16 16:21:11','','0000-00-00 00:00:00','\0',1),(11,'',229,'tao moi an ','18','2014-02-27 19:34:16','','2014-02-27 19:34:16','','0000-00-00 00:00:00','\0',1),(12,'',229,'tao moi an ','18','2014-02-27 19:34:19','','2014-02-27 19:34:19','','0000-00-00 00:00:00','\0',1),(13,'',229,'eo ngon gi ca :(((','18','2014-02-27 19:34:48','','2014-02-27 19:34:48','','0000-00-00 00:00:00','\0',1),(14,'',220,'thanh nien','26','2014-04-06 17:57:26','','2014-04-06 17:57:26','','0000-00-00 00:00:00','\0',1),(15,'',220,'thanh nien 1','26','2014-04-06 17:57:29','','2014-04-06 17:57:29','','0000-00-00 00:00:00','\0',1),(16,'',220,'thanh nien 3','26','2014-04-06 18:17:47','','2014-04-06 18:17:47','','0000-00-00 00:00:00','\0',1),(17,'',220,'than nien 4','26','2014-04-06 18:18:20','','2014-04-06 18:18:20','','0000-00-00 00:00:00','\0',1),(18,'',220,'thani en 5','26','2014-04-06 18:18:39','','2014-04-06 18:18:39','','0000-00-00 00:00:00','\0',1),(19,'',220,'thanh viet','26','2014-04-13 18:29:52','','2014-04-13 18:29:52','','0000-00-00 00:00:00','\0',1),(20,'',220,'Okie man good','18','2014-04-27 18:12:34','','2014-04-27 18:12:34','','0000-00-00 00:00:00','\0',1),(21,'',227,'khoa hoc cong nghe','18','2014-07-05 22:21:44','','2014-07-05 22:21:44','','0000-00-00 00:00:00','\0',1),(22,'',227,'gui cho ban toi','18','2014-07-05 22:21:48','','2014-07-05 22:21:48','','0000-00-00 00:00:00','\0',1);

/*Table structure for table `sl_comment_bad` */

DROP TABLE IF EXISTS `sl_comment_bad`;

CREATE TABLE `sl_comment_bad` (
  `CommentID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `ReportedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CommentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_comment_bad` */

insert  into `sl_comment_bad`(`CommentID`,`Description`,`ReportedBy`,`ReportedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values ('14','Restore Comment','26','2014-04-06 20:40:13','26','2014-04-12 21:00:38','','0000-00-00 00:00:00','','0'),('15','Restore Comment','26','2014-04-06 20:55:46','26','2014-04-12 20:59:27','','0000-00-00 00:00:00','','0'),('16','Restore Comment','26','2014-04-06 20:39:02','26','2014-04-12 20:59:29','','0000-00-00 00:00:00','','0'),('17','Restore Comment','26','2014-04-06 20:26:11','26','2014-04-12 20:59:30','','0000-00-00 00:00:00','','0'),('18','Restore Comment','26','2014-04-06 20:24:17','26','2014-04-12 20:59:31','0','0000-00-00 00:00:00','','0'),('19','Restore Comment','26','2014-04-13 18:30:05','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','');

/*Table structure for table `sl_content_summary` */

DROP TABLE IF EXISTS `sl_content_summary`;

CREATE TABLE `sl_content_summary` (
  `ContentID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'articleID, commentID,....',
  `SubContents` longtext COLLATE utf8_unicode_ci COMMENT 'commentID',
  `PeriodTime` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '201310,201312',
  `Type` tinyint(4) DEFAULT NULL COMMENT '1: Category, 2: Article',
  PRIMARY KEY (`ContentID`,`PeriodTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_content_summary` */

insert  into `sl_content_summary`(`ContentID`,`SubContents`,`PeriodTime`,`Type`) values ('1','20120735,','201207',1),('1','20120945,20120946,20120947,','201209',1),('1','20121148,','201211',1),('20120735','20121158,20121159,','201211',2),('20120946','20120932,20120933,20120934,20120935,20120936,20120937,20120938,','201209',2),('9','1','201207',NULL),('undefined','20121141,20121142,','201211',2);

/*Table structure for table `sl_currency` */

DROP TABLE IF EXISTS `sl_currency`;

CREATE TABLE `sl_currency` (
  `CurrencyID` int(20) NOT NULL COMMENT 'Don vi tien te',
  `CurrencyName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EuroRate` decimal(20,2) DEFAULT NULL,
  `USDRate` decimal(20,2) DEFAULT NULL,
  `AUDRate` decimal(20,2) DEFAULT NULL,
  `NDTRate` decimal(20,2) DEFAULT NULL,
  `CADRate` decimal(20,2) DEFAULT NULL,
  `GBPRate` decimal(20,2) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CurrencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_currency` */

insert  into `sl_currency`(`CurrencyID`,`CurrencyName`,`EuroRate`,`USDRate`,`AUDRate`,`NDTRate`,`CADRate`,`GBPRate`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`) values (1,'Đồng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_datatype` */

DROP TABLE IF EXISTS `sl_datatype`;

CREATE TABLE `sl_datatype` (
  `DataTypeID` int(20) NOT NULL,
  `DataTypeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InputType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'number, string',
  `SelectType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Choose, Range',
  `RangeValue` double DEFAULT NULL COMMENT '0: if SelectType is choose. Example: if value 10: option: 10,20,30,40,50',
  `Prefix` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Suffix` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'm2, inch, cm',
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DataTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_datatype` */

insert  into `sl_datatype`(`DataTypeID`,`DataTypeName`,`InputType`,`SelectType`,`RangeValue`,`Prefix`,`Suffix`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'Int','Number','Rang',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Kích thước màn hình','Number','Range',1,NULL,'inch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Tốc độ CPU','Number','Range',0.5,NULL,'GHz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Số nhân CPU','Number','Range',1,NULL,'nhân',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Bộ nhớ','Number','Range',1,NULL,'GB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Dung lượng pin','Number','Range',500,NULL,'mAh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Thời gian','Number','Range',2,NULL,'giờ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Trọng lượng','Number','Range',0.5,NULL,'kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_district` */

DROP TABLE IF EXISTS `sl_district`;

CREATE TABLE `sl_district` (
  `DistricID` int(20) NOT NULL,
  `DistrictName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CityID` int(20) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` tinyint(20) DEFAULT NULL,
  `Order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`DistricID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_district` */

insert  into `sl_district`(`DistricID`,`DistrictName`,`CityID`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`,`Order`) values (1,'Quận 1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,'Quận 2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(3,'Quận 3',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(4,'Quận 4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4),(5,'Quận 5',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5),(6,'Hai Bà Trưng',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(7,'Quận 6',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(8,'Quận 7',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7),(9,'Quận 8',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8),(10,'Quận 9',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9),(11,'Quận 10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10),(12,'Quận 11',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11),(13,'Quận 12',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12),(14,'Bình Thạnh',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13),(15,'Gò Vấp',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14),(16,'Tân Bình',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15),(17,'Tân Phú',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16),(18,'Thủ Đức',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17),(19,'Bình Chánh',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18),(20,'Cần Giờ',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19),(21,'Củ Chi',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20),(22,'Hóc Môn',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21),(23,'Nhà Bè',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22);

/*Table structure for table `sl_evaluation` */

DROP TABLE IF EXISTS `sl_evaluation`;

CREATE TABLE `sl_evaluation` (
  `ArticleID` bigint(20) DEFAULT NULL,
  `EvaluationID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NumEvaluation` bigint(20) DEFAULT NULL COMMENT 'so luong nguoi danh gia',
  `EvaluatedBy` text COLLATE utf8_unicode_ci COMMENT 'danh sach userID ngan cach nhau',
  `LastEvaluated` datetime DEFAULT NULL COMMENT 'ngay cuoi cung danh gia',
  PRIMARY KEY (`EvaluationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_evaluation` */

/*Table structure for table `sl_evaluation_type` */

DROP TABLE IF EXISTS `sl_evaluation_type`;

CREATE TABLE `sl_evaluation_type` (
  `EvaluationTypeID` int(20) NOT NULL,
  `EvaluationTypeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`EvaluationTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_evaluation_type` */

/*Table structure for table `sl_like` */

DROP TABLE IF EXISTS `sl_like`;

CREATE TABLE `sl_like` (
  `LikeID` int(20) NOT NULL,
  `LikeAmount` int(11) DEFAULT NULL,
  `UnlikeAmount` int(11) DEFAULT NULL COMMENT 'option',
  `LIkeUsers` text COLLATE utf8_unicode_ci COMMENT 'danh sach UserID Like,..',
  `UnlikeUsers` text COLLATE utf8_unicode_ci COMMENT 'danh sach user unlinke',
  PRIMARY KEY (`LikeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_like` */

/*Table structure for table `sl_manufactory` */

DROP TABLE IF EXISTS `sl_manufactory`;

CREATE TABLE `sl_manufactory` (
  `ManufactoryID` int(20) NOT NULL,
  `ManufactoryName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ManufactoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_manufactory` */

insert  into `sl_manufactory`(`ManufactoryID`,`ManufactoryName`,`CategoryID`,`Order`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`) values (1,'Apple',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Nokia',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'HTC',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Asus',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Microsoft',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Acer',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Toshiba',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Dell',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'HP',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Asus',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_menu` */

DROP TABLE IF EXISTS `sl_menu`;

CREATE TABLE `sl_menu` (
  `MenuID` int(20) NOT NULL,
  `MenuName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NumOrder` int(11) DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `ParentID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_menu` */

/*Table structure for table `sl_notification_type` */

DROP TABLE IF EXISTS `sl_notification_type`;

CREATE TABLE `sl_notification_type` (
  `NotificationTypeID` int(20) NOT NULL,
  `NotificationTypeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`NotificationTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='send mail when having new reply, like article';

/*Data for the table `sl_notification_type` */

insert  into `sl_notification_type`(`NotificationTypeID`,`NotificationTypeName`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'Nhận email khi có comment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Không nhận email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Nhận email khi có người like',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_numberaire` */

DROP TABLE IF EXISTS `sl_numberaire`;

CREATE TABLE `sl_numberaire` (
  `NumberaireID` int(20) NOT NULL COMMENT 'Don vi tinh',
  `NumberaireName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`NumberaireID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_numberaire` */

/*Table structure for table `sl_offer` */

DROP TABLE IF EXISTS `sl_offer`;

CREATE TABLE `sl_offer` (
  `AuctionID` bigint(20) NOT NULL,
  `UserID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `OfferedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDelete` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AuctionID`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_offer` */

/*Table structure for table `sl_partner` */

DROP TABLE IF EXISTS `sl_partner`;

CREATE TABLE `sl_partner` (
  `ParterID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `PartnerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressName1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressName2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressName3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressName4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressName5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailName1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailName2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailName3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailName4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailName5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneName1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneName2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneName3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneName4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneName5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FaxName1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FaxName2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FaxName3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FaxName4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FaxName5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WebsiteName1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WebsiteName2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WebsiteName3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WebsiteName4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WebsiteName5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxNumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountNumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ParterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_partner` */

/*Table structure for table `sl_payment_mode` */

DROP TABLE IF EXISTS `sl_payment_mode`;

CREATE TABLE `sl_payment_mode` (
  `PaymentModeID` int(20) NOT NULL,
  `PaymentModeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`PaymentModeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_payment_mode` */

/*Table structure for table `sl_property` */

DROP TABLE IF EXISTS `sl_property`;

CREATE TABLE `sl_property` (
  `PropertyID` bigint(20) NOT NULL,
  `PropertyGroupID` int(11) DEFAULT NULL,
  `PropertyName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PropertyValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataTypeID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `CreatedBy` int(20) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` int(20) DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PropertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_property` */

insert  into `sl_property`(`PropertyID`,`PropertyGroupID`,`PropertyName`,`PropertyValue`,`DataTypeID`,`Order`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,1,'Hệ điều hành','Android,iOS,Windows Phone, Blackberry OS','',1,26,'2014-09-14 18:48:53',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(2,1,'Phiên bản','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'Ngày ra mắt','','',3,26,'2014-09-14 18:49:31',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(4,1,'Băng tầng mạng','','',4,26,'2014-09-14 18:49:31',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(11,10,'Số nhân','','12',2,26,'2014-09-14 18:48:53',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(12,10,'Tốc độ CPU','','11',3,26,'2014-09-14 18:49:31',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(13,10,'Chipset','','',4,26,'2014-09-18 03:02:19',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(20,20,'RAM','','13',1,26,'2014-09-18 03:02:19',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(21,20,'Bộ nhớ trong','','13',2,26,'2014-09-18 03:03:52',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(22,20,'Thẻ nhớ ngoài','Có;Không','',3,26,'2014-09-18 03:03:52',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(23,20,'Hỗ trợ tối đa','','',4,26,'2014-09-18 03:03:52',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(30,30,'Loại màn hình','','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,30,'Độ phân giải','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,30,'Kích thước','','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,30,'Loại cảm ứng','','',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,30,'Mặt kính cảm ứng','','',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,40,'Băng tầng 2G','','',1,26,'2014-09-21 16:49:28',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(41,40,'Băng tầng 3G','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,40,'Loại sim','','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,40,'Số sim','','1',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,40,'Tốc độ 3G','','',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,40,'Wifi','','',6,0,'2014-10-15 20:33:58',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','\0',''),(46,40,'GPS','','',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,40,'NCF','','',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,40,'Bluetooth','','',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,40,'Kết nối USB','','',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,50,'Độ phân giải','','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,50,'Quay phim','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,50,'Đèn flash','','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,50,'Tính năng nâng cao','','',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,60,'Độ phân giải','','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,60,'Quay phim','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,60,'Video call','','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,60,'Tính năng nâng cao','','',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,70,'Dung lượng','','14',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,70,'Loại Pin','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,70,'Thời gian chờ','','15',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,70,'Thời gian nghe/gọi','','15',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,70,'Thời gian lướt web','','15',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,70,'Thời gian xem phim','','15',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,80,'Trọng lượng','','16',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,80,'Kích thước','','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,80,'Chất liệu','','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,80,'Màu sắc','','',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,90,'Khác','','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_property_group` */

DROP TABLE IF EXISTS `sl_property_group`;

CREATE TABLE `sl_property_group` (
  `PropertyGroupID` int(11) NOT NULL,
  `PropertyGroupName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PropertyGroupDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArticleTypeID` int(11) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PropertyGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_property_group` */

insert  into `sl_property_group`(`PropertyGroupID`,`PropertyGroupName`,`PropertyGroupDisplay`,`ArticleTypeID`,`Order`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'Tổng quát','Tổng quát',10,1,'26','2014-09-14 18:52:13','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(10,'Vi xử lý','Vi xử lý',10,2,'26','2014-09-14 18:52:13','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(20,'Bộ nhớ','Bộ nhớ',10,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Màn hình','Màn hình',10,3,'26','2014-09-14 18:52:13','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(40,'Kết nối','Kết nối',10,4,'26','2014-09-14 18:52:48','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(50,'Camera chính','Camera chính',10,5,'26','2014-09-14 18:52:59','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(60,'Camera phụ','Camera phụ',10,6,'26','2014-09-18 03:02:19','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(70,'Pin','Pin',10,8,'26','2014-09-21 16:49:28','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(80,'Thiết kế','Thiết kế',10,7,'26','2014-09-18 03:12:31','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0',''),(90,'Khác','Khác',10,9,'26','2014-10-15 20:33:58','','0000-00-00 00:00:00','','0000-00-00 00:00:00','\0','');

/*Table structure for table `sl_request` */

DROP TABLE IF EXISTS `sl_request`;

CREATE TABLE `sl_request` (
  `RequesID` int(20) NOT NULL,
  `ContentRequest` text COLLATE utf8_unicode_ci,
  `RequestedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequestedDate` datetime DEFAULT NULL,
  `ContentRespone` text COLLATE utf8_unicode_ci,
  `ResponedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ResponedDate` datetime DEFAULT NULL,
  `IsApproved` bit(1) DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`RequesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_request` */

/*Table structure for table `sl_reset_password` */

DROP TABLE IF EXISTS `sl_reset_password`;

CREATE TABLE `sl_reset_password` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ExpireDate` datetime DEFAULT NULL,
  `ResetDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_reset_password` */

insert  into `sl_reset_password`(`ID`,`UserID`,`CreatedDate`,`ExpireDate`,`ResetDate`,`IsDeleted`) values ('532eacc8a0395',12,'2014-03-23 16:43:36','2014-03-23 16:43:36','0000-00-00 00:00:00',0),('532eacdd294c6',12,'2014-03-23 16:43:57','2014-03-23 16:43:57','0000-00-00 00:00:00',0),('532ead09a020b',12,'2014-03-23 16:44:41','2014-03-23 16:44:41','0000-00-00 00:00:00',0),('532eb07bce91f',1,'2014-03-23 16:59:23','2014-03-23 16:59:23','0000-00-00 00:00:00',0),('532eb0ea69f43',1,'2014-03-23 17:01:14','2014-03-23 17:01:14','0000-00-00 00:00:00',0),('532eb11978b04',1,'2014-03-23 17:02:01','2014-03-23 17:02:01','0000-00-00 00:00:00',0),('532eb13e8d3a1',1,'2014-03-23 17:02:38','2014-03-23 17:02:38','0000-00-00 00:00:00',0),('532eb1678e0bc',1,'2014-03-23 17:03:19','2014-03-23 17:03:19','0000-00-00 00:00:00',0),('532eb19ad5d1a',1,'2014-03-23 17:04:10','2014-03-23 17:04:10','0000-00-00 00:00:00',0),('532eb1d37456b',1,'2014-03-23 17:05:07','2014-03-23 17:05:07','0000-00-00 00:00:00',0),('532eb20c9be39',1,'2014-03-23 17:06:04','2014-04-02 17:06:04','0000-00-00 00:00:00',0),('532eb23422671',1,'2014-03-23 17:06:44','2014-03-26 17:06:44','0000-00-00 00:00:00',0),('532eb25eb1f02',1,'2014-03-23 17:07:26','2014-03-26 17:07:26','0000-00-00 00:00:00',0),('532ec3b4136d0',1,'2014-03-23 18:21:24','2014-03-26 18:21:24','0000-00-00 00:00:00',0),('532ec3de689bb',1,'2014-03-23 18:22:06','2014-03-26 18:22:06','0000-00-00 00:00:00',0),('532ec4001a352',1,'2014-03-23 18:22:40','2014-03-26 18:22:40','0000-00-00 00:00:00',0),('532ec41b4fe8e',1,'2014-03-23 18:23:07','2014-03-26 18:23:07','0000-00-00 00:00:00',0),('532ec454ae99e',1,'2014-03-23 18:24:04','2014-03-26 18:24:04','0000-00-00 00:00:00',0),('532ec4dfb6953',1,'2014-03-23 18:26:23','2014-03-26 18:26:23','0000-00-00 00:00:00',0),('532ec4fde8f64',1,'2014-03-23 18:26:53','2014-03-26 18:26:53','0000-00-00 00:00:00',0),('532ec5b5c3b6d',1,'2014-03-23 18:29:57','2014-03-26 18:29:57','0000-00-00 00:00:00',0),('532ec6064f828',1,'2014-03-23 18:31:18','2014-03-26 18:31:18','0000-00-00 00:00:00',0),('532ec6371d3d6',1,'2014-03-23 18:32:07','2014-03-26 18:32:07','0000-00-00 00:00:00',0),('532ec6572cce4',18,'2014-03-23 18:32:39','2014-03-26 18:32:39','0000-00-00 00:00:00',0),('532ec6846c4fb',18,'2014-03-23 18:33:24','2014-03-28 18:33:24','2014-03-26 00:57:26',0),('5341303f4b570',18,'2014-04-06 17:45:19','2014-04-09 17:45:19','0000-00-00 00:00:00',0),('5341323ed1c49',18,'2014-04-06 17:53:50','2014-04-09 17:53:50','0000-00-00 00:00:00',0),('5341324d2f9c3',18,'2014-04-06 17:54:05','2014-04-09 17:54:05','0000-00-00 00:00:00',0);

/*Table structure for table `sl_role` */

DROP TABLE IF EXISTS `sl_role`;

CREATE TABLE `sl_role` (
  `RoleID` int(20) NOT NULL,
  `RoleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` tinyint(20) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_role` */

/*Table structure for table `sl_setting` */

DROP TABLE IF EXISTS `sl_setting`;

CREATE TABLE `sl_setting` (
  `SettingID` int(20) NOT NULL,
  `SettingName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SettingValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_setting` */

insert  into `sl_setting`(`SettingID`,`SettingName`,`SettingValue`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'CurrencyID','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_ship_type` */

DROP TABLE IF EXISTS `sl_ship_type`;

CREATE TABLE `sl_ship_type` (
  `ShipTypeID` int(20) NOT NULL,
  `ShipTypeName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ShipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_ship_type` */

/*Table structure for table `sl_status` */

DROP TABLE IF EXISTS `sl_status`;

CREATE TABLE `sl_status` (
  `StatusID` int(20) NOT NULL,
  `StatusName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` int(11) DEFAULT NULL COMMENT '1: Product; 10:ProductStatus; Ex-Price',
  `ExtraInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'path to get price',
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_status` */

insert  into `sl_status`(`StatusID`,`StatusName`,`Type`,`ExtraInfo`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`) values (1,'Hàng mới',10,'Loại sản phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Hàng cũ',10,'Loại sản phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Hàng refurbished',10,'Loại sản phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Thông tin sản phẩm',11,'Thuộc tính bán lẻ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Thông tin giao hàng',11,'Thuộc tính bán lẻ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Thuộc tính sản phẩm',12,'Thuộc tính sản phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'TDDD',30,'label.gia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Hnamobile',30,'div.dLeftPrice p',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(32,'VienThongA',30,'div.product-value span.product-price',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'FTPShop',30,'div.price-box span.price-product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'CellPhone HCM',30,'div.price-box span#price',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Inactive',1,'General status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Active',1,'General status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_user` */

DROP TABLE IF EXISTS `sl_user`;

CREATE TABLE `sl_user` (
  `UserID` int(20) NOT NULL,
  `UserName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sex` tinyint(1) DEFAULT NULL,
  `Identity` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CMND',
  `RoleID` int(20) DEFAULT NULL,
  `UserRankID` int(20) DEFAULT NULL COMMENT 'User type',
  `Avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountID` int(255) DEFAULT NULL COMMENT 'Bank account',
  `IsActived` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` int(11) DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Index_UserName` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_user` */

insert  into `sl_user`(`UserID`,`UserName`,`Password`,`FullName`,`BirthDate`,`Address`,`Phone`,`Email`,`Sex`,`Identity`,`RoleID`,`UserRankID`,`Avatar`,`AccountID`,`IsActived`,`CreatedDate`,`CreatedBy`,`UpdatedDate`,`UpdatedBy`,`DeletedDate`,`DeletedBy`) values (0,'test1','eb98752bc1b6999ca65347a102faaa01','Viet Le Thanh','1990-07-12 00:00:00','','','test1@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(1,'vle1','abcd1234','viet le','1990-07-12 00:00:00','','','vle1@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(2,'sysnify_admin','d2819f8316763ccab523a35f8c6054db','Viet Le','1990-07-12 00:00:00','','','sweetlovelx@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(5,'vle2','d2819f8316763ccab523a35f8c6054db','Viet Le','1990-07-12 00:00:00','','','vle2@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(6,'vle3','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle3@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(7,'vle4','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle4@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(8,'vle5','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle5@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(9,'vle6','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle6@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(10,'vle7','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle7@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(11,'vle8','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle8@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(12,'vle9','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle9@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(13,'vle10','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle10@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(14,'vle11','11468ff794e1881a4ae0e665a689a93f','Viet Le','0000-00-00 00:00:00','','','vle11@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(15,'vle13','d2819f8316763ccab523a35f8c6054db','Viet Le','0000-00-00 00:00:00','','','vle12@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(16,'vle14','b17efae2b4d14f0479bb624ccff64bdb','Viet Le','0000-00-00 00:00:00','','','vle14@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(17,'vle15','76017e2f7e366a1b3951533395630c63','Viet Le','0000-00-00 00:00:00','','','vle15@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(18,'km_test2','1fbb05be472562e641dfa83897736ead','KM Test 2','1970-01-01 07:00:00','','','kmtest2@yahoo.com',1,'',1,0,'file/avatar/18_1848.jpg',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(19,'km_test1','7b2fdf37f6d84d9590f020688a04f9c0','kmtest1@timkm.com','1988-06-16 00:00:00','','','kmtest1@timkm.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(20,'km_test3','695283d348e9fa20633a7334c766b421','l viet','1988-08-17 00:00:00','','','kmtest3@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(21,'a1','f7a6a88274a12400473377f0f737cca4','a1','1988-07-01 00:00:00','','','a1@yahoo.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(22,'km_test7','47b63e37aa46f3d6ef8c84f5463aa10f','Viet Le','1990-11-29 00:00:00','','','km_test7@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(23,'km_test5','42adcee2c83fb3d31216b7363ba769ff','Viet Le','1990-03-01 00:00:00','','','km5@km.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(24,'km_6','5737c0da3708c6e575978971c0231a57','Viet Le','1990-02-01 00:00:00','','','km6@km.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(25,'km_7','7ff075ede49caa2c64bcc9bcfabe4605','Viet','1990-02-01 00:00:00','','','km7@km.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(26,'viet','3b9658c68b4a51ac91d4414a910efa45','Viet KM','2000-02-01 00:00:00','','','viet@timkm.vn',1,'',1,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(27,'test2','2e2326fd7d27f976a0fe8debfcc8181e','Viet Le','2000-03-08 00:00:00','','','test2@sysnify.com',1,'',0,0,'',0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(28,'viet123','4aec14643b94840b190a78e83b348ff4','le viet','1990-02-07 00:00:00','','','viet123@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:17:03',NULL,NULL,NULL,NULL,NULL),(29,'viet1234','83231058c145ff589277cea6c71baa2a','le viet','1990-02-07 00:00:00','','','viet1234@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:18:27',NULL,NULL,NULL,NULL,NULL),(30,'viet12345','c025a996012f55929bf8097895ae129d','le viet','1990-02-07 00:00:00','','','viet12345@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:19:05',NULL,NULL,NULL,NULL,NULL),(31,'viet123456','2217bd69053c9b5450b1b7a04d86dc3a','le viet','1990-02-07 00:00:00','','','viet123456@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:21:39',NULL,NULL,NULL,NULL,NULL),(32,'viet1234567','fc8f4c079d4a63b5a531677a38c84d0f','le viet','1990-02-07 00:00:00','','','viet1234567@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:27:27',NULL,NULL,NULL,NULL,NULL),(33,'viet12345678','6b2640c9aec23a6f1995ec1fc0b77db9','le viet','1990-02-07 00:00:00','','','viet12345678@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:28:51',NULL,NULL,NULL,NULL,NULL),(34,'viet123456789','fe37e6e51ea992ac65d3f42488ef7a26','le viet','1990-02-07 00:00:00','','','viet123456789@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:30:15',NULL,NULL,NULL,NULL,NULL),(35,'viet13','c4d32713ef1c04551e3631ddc190600f','le viet','1990-02-07 00:00:00','','','viet13@gmail.com',1,'',0,0,'',0,'0000-00-00 00:00:00','2015-03-03 22:31:38',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sl_user_rank` */

DROP TABLE IF EXISTS `sl_user_rank`;

CREATE TABLE `sl_user_rank` (
  `UserRankID` int(20) NOT NULL COMMENT 'cap bac user: VIP,Premium, Normal',
  `UserRankName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UserRankID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sl_user_rank` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
