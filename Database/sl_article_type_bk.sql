/*
SQLyog Ultimate v8.71 
MySQL - 5.6.17 : Database - oceo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oceo` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `oceo`;

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

insert  into `sl_article_type`(`ArticleTypeID`,`ArticleTypeName`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`DeletedBy`,`DeletedDate`,`IsDeleted`,`Status`,`Level`,`ParentID`,`Thumbnail`,`Logo`) values (1,'Điện Thoại-Laptop',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'0','images/data/button-cat1.png',NULL),(2,'Máy Tính-Linh Kiện',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'0','images/data/button-cat2.png',NULL),(3,'Điện Tử-Điện Máy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'0','images/data/button-cat3.png',NULL),(4,'Thời Trang-Làm Đẹp',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,4,'0','images/data/button-cat4.png',NULL),(5,'Nhà Cửa-Xe Cộ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,5,'0','images/data/button-cat5.png',NULL),(10,'Điện thoại di động',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'1',NULL,NULL),(11,'Máy tính bảng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1',NULL,NULL),(12,'Máy tính xách tay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'1',NULL,NULL),(13,'Macbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'1',NULL,NULL),(14,'Đồng hồ thông minh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'1',NULL,NULL),(15,'Phụ kiện',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,'1',NULL,NULL),(20,'Máy tính bộ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2',NULL,NULL),(21,'Màn hình vi tính',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2',NULL,NULL),(22,'Mainboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2',NULL,NULL),(23,'Vi xử lý CPU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'2',NULL,NULL),(24,'Ổ đĩa cứng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2',NULL,NULL),(26,'Bộ nhớ RAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'2',NULL,NULL),(27,'Thiết bị mạng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'2',NULL,NULL),(28,'Chuột & Bàn phím',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,'2',NULL,NULL),(29,'Linh kiện khác',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,'2',NULL,NULL),(40,'Camera',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'3',NULL,NULL),(41,'Thiết bị âm thanh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'3',NULL,NULL),(42,'Gia dụng & điện lạnh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'3',NULL,NULL),(45,'Nhà bếp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'3',NULL,NULL),(46,'Dụng cụ gia đình',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'3',NULL,NULL),(47,'Văn phòng phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'3',NULL,NULL),(49,'Nội thất',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'3',NULL,NULL),(61,'Thời Trang Nam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'4',NULL,NULL),(62,'Thời Trang Nữ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'4',NULL,NULL),(63,'Nước hoa/Mỹ Phẩm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'4',NULL,NULL),(64,'Mẹ & bé',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'4',NULL,NULL),(65,'Thú cưng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'4',NULL,NULL),(66,'Yoga/Gym/Salon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'4',NULL,NULL),(67,'Phụ kiện/Trang sức',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'4',NULL,NULL),(81,'Xe máy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'5',NULL,NULL),(82,'Ô tô',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'5',NULL,NULL),(83,'Xe đạp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'5',NULL,NULL),(84,'Vé máy bay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'5',NULL,NULL),(85,'Tour Du lịch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'5',NULL,NULL),(86,'Nhà đất',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'5',NULL,NULL),(87,'Căn hộ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,'5',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
