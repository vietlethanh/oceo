-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2015 at 06:56 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `965109`
--

-- --------------------------------------------------------

--
-- Table structure for table `sl_advertising`
--

CREATE TABLE IF NOT EXISTS `sl_advertising` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_advertising`
--

INSERT INTO `sl_advertising` (`AdvertisingID`, `AdvertisingName`, `PartnerID`, `StartDate`, `EndDate`, `AdTypeID`, `ArticleTypeID`, `Content`, `ImageLink`, `PreferLink`, `Order`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'Advert  Mobile', 'Apple VN', '2014-04-13 00:00:00', '2014-04-15 00:00:00', '2', 10, 'Iphone 5S', 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 2, '26', '2015-02-08 21:40:11', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 17, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(3, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 22, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 22, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(5, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '3', 9, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(6, 'Banner ', NULL, NULL, NULL, '1', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Banner ', NULL, NULL, NULL, '2', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Banner ', 'Google Watch', '2015-02-02 00:00:00', '2015-02-28 00:00:00', '3', 14, 'Google Watch 2015', 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', 1, '26', '2015-02-08 21:38:54', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(9, 'Banner ', NULL, NULL, NULL, '3', 6, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(15, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Banner ', NULL, NULL, NULL, '3', 25, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Banner ', NULL, NULL, NULL, '3', 35, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '3', 26, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(24, 'Banner ', NULL, NULL, NULL, '3', 24, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Banner ', NULL, NULL, NULL, '1', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Banner ', NULL, NULL, NULL, '2', 1, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Banner ', NULL, NULL, NULL, '3', 8, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(33, 'Banner ', NULL, NULL, NULL, '3', 3, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Banner ', NULL, NULL, NULL, '2', 5, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Banner ', NULL, NULL, NULL, '1', 2, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 2, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(42, 'Banner ', NULL, NULL, NULL, '2', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Banner ', NULL, NULL, NULL, '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Banner ', NULL, NULL, NULL, '3', 26, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Banner ', NULL, NULL, NULL, '2', 3, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(51, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Banner ', NULL, NULL, NULL, '1', 5, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Banner ', NULL, NULL, NULL, '3', 11, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '3', 12, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(60, 'Banner ', NULL, NULL, NULL, '2', 1, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Banner ', NULL, NULL, NULL, '2', 6, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Banner ', NULL, NULL, NULL, '2', 4, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '3', 28, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(69, 'Banner ', NULL, NULL, NULL, '2', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Banner ', NULL, NULL, NULL, '3', 33, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Banner ', NULL, NULL, NULL, '3', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Banner ', NULL, NULL, NULL, '3', 2, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 29, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(75, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(76, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(79, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 29, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(80, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 21, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(151, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(152, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(154, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(155, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(156, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(227, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 5, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(228, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 18, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(230, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(231, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(232, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(302, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(303, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(304, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(306, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(307, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 35, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(308, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(378, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(379, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(382, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(383, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(384, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(454, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 30, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(455, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(456, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(458, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(459, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(460, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(530, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(531, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(534, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 9, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(535, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(606, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(607, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(608, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(610, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(611, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 6, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(612, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(682, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(683, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(686, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 30, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(687, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(688, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 15, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(759, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(760, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 18, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(762, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 11, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(763, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(834, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(835, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 5, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(836, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(839, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(840, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(911, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(912, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(914, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(915, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 5, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(987, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 6, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(988, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(990, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 35, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(991, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(992, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 28, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1063, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1064, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1066, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1067, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1068, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1138, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 33, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1139, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1140, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1143, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1214, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 9, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1215, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 16, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1216, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 19, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1217, 'Advert 1', 'Advert 1Advert 1Advert 1Advert 1Advert 1', '2014-04-13 00:00:00', '2014-04-15 00:00:00', '3', 11, 'Content content', 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 2, '26', '2014-04-13 18:04:12', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1218, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1219, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 35, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1220, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1221, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 1, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1222, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1223, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1224, 'Banner ', NULL, NULL, NULL, '2', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1225, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1230, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 5, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1231, 'Banner ', NULL, NULL, NULL, '2', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1233, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1234, 'Banner ', NULL, NULL, NULL, '3', 30, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1239, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1240, 'Banner ', NULL, NULL, NULL, '3', 9, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1241, 'Banner ', NULL, NULL, NULL, '3', 28, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1242, 'Banner ', NULL, NULL, NULL, '1', 1, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1243, 'Banner ', NULL, NULL, NULL, '1', 1, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1248, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 4, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1249, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1250, 'Banner ', NULL, NULL, NULL, '3', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1251, 'Banner ', NULL, NULL, NULL, '3', 34, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1252, 'Banner ', NULL, NULL, NULL, '2', 3, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1257, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 4, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1258, 'Banner ', NULL, NULL, NULL, '3', 19, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1259, 'Banner ', NULL, NULL, NULL, '3', 29, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1260, 'Banner ', NULL, NULL, NULL, '2', 3, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1261, 'Banner ', NULL, NULL, NULL, '2', 4, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1266, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1267, 'Banner ', NULL, NULL, NULL, '1', 1, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1268, 'Banner ', NULL, NULL, NULL, '3', 17, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1269, 'Banner ', NULL, NULL, NULL, '3', 33, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1270, 'Banner ', NULL, NULL, NULL, '2', 1, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1275, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 4, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1276, 'Banner ', NULL, NULL, NULL, '2', 3, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1277, 'Banner ', NULL, NULL, NULL, '2', 5, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1278, 'Banner ', NULL, NULL, NULL, '3', 3, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1279, 'Banner ', NULL, NULL, NULL, '2', 1, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1284, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '3', 26, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(1285, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1286, 'Banner ', NULL, NULL, NULL, '3', 12, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1287, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1288, 'Banner ', NULL, NULL, NULL, '1', 3, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1291, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1295, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 19, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1296, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 23, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1366, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 21, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1367, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1368, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 36, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1370, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1371, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1442, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 33, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1443, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1447, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 36, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1518, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 9, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1519, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1520, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 10, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1523, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1524, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 22, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1595, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1596, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1598, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1599, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1600, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 34, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1670, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1671, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1672, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1');
INSERT INTO `sl_advertising` (`AdvertisingID`, `AdvertisingName`, `PartnerID`, `StartDate`, `EndDate`, `AdTypeID`, `ArticleTypeID`, `Content`, `ImageLink`, `PreferLink`, `Order`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1674, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 10, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1675, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 6, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1746, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1747, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1751, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1752, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 18, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1822, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1823, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 26, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1824, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1827, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1828, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1898, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1899, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 4, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1900, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1902, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1903, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1974, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1975, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1976, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1978, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 12, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(1979, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 12, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(1980, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2050, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2051, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2052, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 17, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2054, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2055, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 8, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2056, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2126, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2127, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 26, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2128, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 34, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2131, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2132, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 19, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2202, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 30, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2203, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2206, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 20, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2207, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2208, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 11, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2279, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2280, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 5, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2282, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 28, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2283, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 35, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2284, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2354, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2355, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2356, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2358, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2359, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 17, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2360, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2431, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 16, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2432, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 31, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2435, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 32, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2437, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(2440, 'Banner ', NULL, NULL, NULL, '1', 1, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2441, 'Banner ', NULL, NULL, NULL, '1', 5, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2449, 'Banner ', NULL, NULL, NULL, '1', 3, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2450, 'Banner ', NULL, NULL, NULL, '3', 32, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2455, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 1, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(2456, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2459, 'Banner ', NULL, NULL, NULL, '3', 28, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2465, 'Banner ', NULL, NULL, NULL, '2', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2476, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2486, 'Banner ', NULL, NULL, NULL, '1', 5, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2491, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '2', 5, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(2500, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '3', 8, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(2503, 'Banner ', NULL, NULL, NULL, '1', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2504, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2506, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2511, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2512, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2738, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2739, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 3, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2886, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 29, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(2887, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 3, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(2966, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3120, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3194, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 34, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3266, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 12, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3272, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3343, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 6, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(3422, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3570, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3646, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3647, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 28, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(3648, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3649, 'Advert 1', 'Advert 1Advert 1Advert 1Advert 1Advert 1', '2014-04-13 00:00:00', '2014-04-15 00:00:00', '1', 2, 'Content content', 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 2, '26', '2014-04-13 18:04:12', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(3651, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 5, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(3666, 'Banner ', NULL, NULL, NULL, '3', 30, NULL, 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3672, 'Banner ', NULL, NULL, NULL, '1', 3, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3673, 'Banner ', NULL, NULL, NULL, '2', 2, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3682, 'Banner ', NULL, NULL, NULL, '3', 30, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3683, 'Banner ', NULL, NULL, NULL, '2', 6, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3690, 'Banner ', NULL, NULL, NULL, '3', 25, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3691, 'Banner ', NULL, NULL, NULL, '3', 32, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3700, 'Banner ', NULL, NULL, NULL, '3', 14, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3701, 'Banner ', NULL, NULL, NULL, '3', 9, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3710, 'Banner ', NULL, NULL, NULL, '1', 4, NULL, 'images/data/kitchen_adventurer_cheesecake_brownie.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3716, 'Banner ', '', '2014-07-02 00:00:00', '2014-07-25 00:00:00', '1', 3, '', 'images/data/kitchen_adventurer_donut.jpg', 'http://google.com', 0, '26', '2014-07-05 22:23:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(3718, 'Banner ', NULL, NULL, NULL, '3', 1, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3727, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(3798, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3802, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 15, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3879, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(3950, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3952, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(3956, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 36, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4027, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4032, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4106, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4255, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 1, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4256, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 17, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4406, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '2', 6, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4410, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 8, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4411, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4483, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 5, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4484, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 29, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4487, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 35, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4559, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '1', 6, NULL, 'images/data/kitchen_adventurer_caramel.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4560, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 13, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4564, 'Advert 3', 'advert 4 advert 4 advert 4 advert 4', '2014-04-17 00:00:00', '1970-01-01 07:00:00', '3', 33, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 4, '26', '2014-04-13 16:17:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4714, 'Advert 2', 'Advert 2 Advert 2 Partner', '2014-04-14 00:00:00', '2014-04-18 00:00:00', '3', 18, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 1, '26', '2014-04-13 15:14:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1'),
(4715, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '3', 25, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4791, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 2, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', ''),
(4863, 'Advert new 1', 'Partner Advert new 1', '2014-04-15 00:00:00', '2014-05-29 00:00:00', '2', 4, NULL, 'http://saigonamthuc.thanhnien.com.vn/Pictures201402/Tan_Nhan/Kichi_Kichi_lau_nhung_dam_2014_01.jpg', 'http://google.com', 26, '1', '2014-04-13 16:31:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', b'0', '');

-- --------------------------------------------------------

--
-- Table structure for table `sl_ad_type`
--

CREATE TABLE IF NOT EXISTS `sl_ad_type` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_ad_type`
--

INSERT INTO `sl_ad_type` (`AdTypeID`, `AdTypeName`, `Width`, `Height`, `NumOfDay`, `DisplayPage`, `SharedItem`, `Price`, `CityID`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'Top Banner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Left Home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Right Home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_article`
--

CREATE TABLE IF NOT EXISTS `sl_article` (
  `ArticleID` bigint(11) NOT NULL COMMENT 'Ma so Article',
  `Prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Prefix cua article',
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'TIeu de',
  `FileName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Duong dan file chua noi dung',
  `Content` text COLLATE utf8_unicode_ci COMMENT 'noi dung article (option)',
  `NotificationType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'loai notification co can send mail khi co comment hay ko',
  `Tags` text COLLATE utf8_unicode_ci COMMENT 'noi dung cua cac tag',
  `NumView` bigint(20) DEFAULT NULL COMMENT 'so luot xem',
  `NumComment` bigint(20) DEFAULT NULL COMMENT 'so luot commnent',
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0: cho kiem duyet, 1: Da kiem duyet,2: Luu nhap',
  `Comments` text COLLATE utf8_unicode_ci COMMENT 'cac comment_ids',
  `RenewedDate` datetime DEFAULT NULL COMMENT 'Ngay tro lai dau trang',
  `RenewedNum` int(11) DEFAULT NULL COMMENT 'So luot da renew',
  `CompanyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CompanyAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CompanyWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CompanyPhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AdType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Loai Khuyen Mai',
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `HappyDays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StartHappyHour` time DEFAULT NULL,
  `EndHappyHour` time DEFAULT NULL,
  `Addresses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Dictricts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cities` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ArticleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_article_type`
--

CREATE TABLE IF NOT EXISTS `sl_article_type` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_article_type`
--

INSERT INTO `sl_article_type` (`ArticleTypeID`, `ArticleTypeName`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`, `Level`, `ParentID`, `Thumbnail`, `Logo`) VALUES
(29, 'Linh kiện khác', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2', NULL, NULL),
(28, 'Chuột & Bàn phím', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2', NULL, NULL),
(27, 'Thiết bị mạng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2', NULL, NULL),
(26, 'Bộ nhớ RAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2', NULL, NULL),
(24, 'Ổ đĩa cứng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2', NULL, NULL),
(23, 'Vi xử lý CPU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2', NULL, NULL),
(22, 'Mainboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2', NULL, NULL),
(21, 'Màn hình vi tính', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2', NULL, NULL),
(20, 'Máy tính bộ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2', NULL, NULL),
(15, 'Phụ kiện', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '1', NULL, NULL),
(14, 'Đồng hồ thông minh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '1', NULL, NULL),
(13, 'Macbook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '1', NULL, NULL),
(12, 'Máy tính xách tay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '1', NULL, NULL),
(11, 'Máy tính bảng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1', NULL, NULL),
(10, 'Điện thoại di động', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, NULL),
(5, 'Nhà Cửa-Xe Cộ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 5, '0', 'images/data/button-cat5.png', NULL),
(4, 'Thời Trang-Làm Đẹp', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 4, '0', 'images/data/button-cat4.png', NULL),
(3, 'Điện Tử-Điện Máy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '0', 'images/data/button-cat3.png', NULL),
(2, 'Máy Tính-Linh Kiện', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '0', 'images/data/button-cat2.png', NULL),
(1, 'Điện Thoại-Laptop', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, '0', 'images/data/button-cat1.png', NULL),
(40, 'Camera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3', NULL, NULL),
(41, 'Thiết bị âm thanh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '3', NULL, NULL),
(42, 'Gia dụng & điện lạnh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '3', NULL, NULL),
(50, 'Dụng cụ gia đình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '3', NULL, NULL),
(47, 'Văn phòng phẩm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '3', NULL, NULL),
(49, 'Nội thất', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '3', NULL, NULL),
(61, 'Thời Trang Nam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4', NULL, NULL),
(62, 'Thời Trang Nữ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '4', NULL, NULL),
(63, 'Nước hoa/Mỹ Phẩm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4', NULL, NULL),
(64, 'Mẹ & bé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '4', NULL, NULL),
(65, 'Thú cưng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4', NULL, NULL),
(66, 'Yoga/Gym/Salon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '4', NULL, NULL),
(67, 'Phụ kiện/Trang sức', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '4', NULL, NULL),
(81, 'Xe máy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '5', NULL, NULL),
(82, 'Ô tô', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5', NULL, NULL),
(83, 'Xe đạp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '5', NULL, NULL),
(84, 'Vé máy bay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '5', NULL, NULL),
(85, 'Tour Du lịch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '5', NULL, NULL),
(86, 'Nhà đất', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '5', NULL, NULL),
(87, 'Căn hộ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_article_type_id`
--

CREATE TABLE IF NOT EXISTS `sl_article_type_id` (
  `ArticleTypeID` int(11) NOT NULL,
  `ArticleID` int(11) NOT NULL,
  PRIMARY KEY (`ArticleTypeID`,`ArticleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_auction`
--

CREATE TABLE IF NOT EXISTS `sl_auction` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_city`
--

CREATE TABLE IF NOT EXISTS `sl_city` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_city`
--

INSERT INTO `sl_city` (`CityID`, `CityName`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`, `Order`) VALUES
(1, 'Hồ Chí Minh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sl_comment`
--

CREATE TABLE IF NOT EXISTS `sl_comment` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_comment`
--

INSERT INTO `sl_comment` (`CommentID`, `CommentType`, `ArticleID`, `Content`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, '', 229, 'adasdsad jdljaskldj alskdj klajskl ', '18', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', 1),
(2, '', 229, 'adasdsad jdljaskldj alskdj klajskl ', '18', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', 1),
(3, '', 229, 'aaaaaa adasd asdasdasd ', '18', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', 1),
(4, '', 229, 'fadsf asfasf asfas fasf', '18', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', 1),
(5, '', 229, 'tuyet voi ong mat troi', '18', '2014-02-16 16:04:18', '', '2014-02-16 16:04:18', '', '0000-00-00 00:00:00', b'0', 1),
(6, '', 229, 'tuyet voi ong mat troi  2', '18', '2014-02-16 16:15:08', '', '2014-02-16 16:15:08', '', '0000-00-00 00:00:00', b'0', 1),
(7, '', 229, 'tuyet voi ong mat troi 23', '18', '2014-02-16 16:17:10', '', '2014-02-16 16:17:10', '', '0000-00-00 00:00:00', b'0', 1),
(8, '', 229, 'tuyet voi ong mat troi 4', '18', '2014-02-16 16:17:57', '', '2014-02-16 16:17:57', '', '0000-00-00 00:00:00', b'0', 1),
(9, '', 229, 'tuyet voi ong mat troi 4', '18', '2014-02-16 16:18:48', '', '2014-02-16 16:18:48', '', '0000-00-00 00:00:00', b'0', 1),
(10, '', 229, 'tuyet voi ong mat troi 5', '18', '2014-02-16 16:21:11', '', '2014-02-16 16:21:11', '', '0000-00-00 00:00:00', b'0', 1),
(11, '', 229, 'tao moi an ', '18', '2014-02-27 19:34:16', '', '2014-02-27 19:34:16', '', '0000-00-00 00:00:00', b'0', 1),
(12, '', 229, 'tao moi an ', '18', '2014-02-27 19:34:19', '', '2014-02-27 19:34:19', '', '0000-00-00 00:00:00', b'0', 1),
(13, '', 229, 'eo ngon gi ca :(((', '18', '2014-02-27 19:34:48', '', '2014-02-27 19:34:48', '', '0000-00-00 00:00:00', b'0', 1),
(14, '', 220, 'thanh nien', '26', '2014-04-06 17:57:26', '', '2014-04-06 17:57:26', '', '0000-00-00 00:00:00', b'0', 1),
(15, '', 220, 'thanh nien 1', '26', '2014-04-06 17:57:29', '', '2014-04-06 17:57:29', '', '0000-00-00 00:00:00', b'0', 1),
(16, '', 220, 'thanh nien 3', '26', '2014-04-06 18:17:47', '', '2014-04-06 18:17:47', '', '0000-00-00 00:00:00', b'0', 1),
(17, '', 220, 'than nien 4', '26', '2014-04-06 18:18:20', '', '2014-04-06 18:18:20', '', '0000-00-00 00:00:00', b'0', 1),
(18, '', 220, 'thani en 5', '26', '2014-04-06 18:18:39', '', '2014-04-06 18:18:39', '', '0000-00-00 00:00:00', b'0', 1),
(19, '', 220, 'thanh viet', '26', '2014-04-13 18:29:52', '', '2014-04-13 18:29:52', '', '0000-00-00 00:00:00', b'0', 1),
(20, '', 220, 'Okie man good', '18', '2014-04-27 18:12:34', '', '2014-04-27 18:12:34', '', '0000-00-00 00:00:00', b'0', 1),
(21, '', 227, 'khoa hoc cong nghe', '18', '2014-07-05 22:21:44', '', '2014-07-05 22:21:44', '', '0000-00-00 00:00:00', b'0', 1),
(22, '', 227, 'gui cho ban toi', '18', '2014-07-05 22:21:48', '', '2014-07-05 22:21:48', '', '0000-00-00 00:00:00', b'0', 1),
(23, '', 25, 'asd asd asd as', '26', '2015-03-29 18:39:17', '', '2015-03-29 18:39:17', '', '0000-00-00 00:00:00', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sl_comment_bad`
--

CREATE TABLE IF NOT EXISTS `sl_comment_bad` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_comment_bad`
--

INSERT INTO `sl_comment_bad` (`CommentID`, `Description`, `ReportedBy`, `ReportedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
('14', 'Restore Comment', '26', '2014-04-06 20:40:13', '26', '2014-04-12 21:00:38', '', '0000-00-00 00:00:00', b'1', '0'),
('15', 'Restore Comment', '26', '2014-04-06 20:55:46', '26', '2014-04-12 20:59:27', '', '0000-00-00 00:00:00', b'1', '0'),
('16', 'Restore Comment', '26', '2014-04-06 20:39:02', '26', '2014-04-12 20:59:29', '', '0000-00-00 00:00:00', b'1', '0'),
('17', 'Restore Comment', '26', '2014-04-06 20:26:11', '26', '2014-04-12 20:59:30', '', '0000-00-00 00:00:00', b'1', '0'),
('18', 'Restore Comment', '26', '2014-04-06 20:24:17', '26', '2014-04-12 20:59:31', '0', '0000-00-00 00:00:00', b'1', '0'),
('19', 'Restore Comment', '26', '2014-04-13 18:30:05', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '');

-- --------------------------------------------------------

--
-- Table structure for table `sl_content_summary`
--

CREATE TABLE IF NOT EXISTS `sl_content_summary` (
  `ContentID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'articleID, commentID,....',
  `SubContents` longtext COLLATE utf8_unicode_ci COMMENT 'commentID',
  `PeriodTime` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '201310,201312',
  `Type` tinyint(4) DEFAULT NULL COMMENT '1: Category, 2: Article',
  PRIMARY KEY (`ContentID`,`PeriodTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_content_summary`
--

INSERT INTO `sl_content_summary` (`ContentID`, `SubContents`, `PeriodTime`, `Type`) VALUES
('1', '20120735,', '201207', 1),
('1', '20120945,20120946,20120947,', '201209', 1),
('1', '20121148,', '201211', 1),
('20120735', '20121158,20121159,', '201211', 2),
('20120946', '20120932,20120933,20120934,20120935,20120936,20120937,20120938,', '201209', 2),
('9', '1', '201207', NULL),
('undefined', '20121141,20121142,', '201211', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sl_currency`
--

CREATE TABLE IF NOT EXISTS `sl_currency` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_currency`
--

INSERT INTO `sl_currency` (`CurrencyID`, `CurrencyName`, `EuroRate`, `USDRate`, `AUDRate`, `NDTRate`, `CADRate`, `GBPRate`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`) VALUES
(1, 'Đồng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_datatype`
--

CREATE TABLE IF NOT EXISTS `sl_datatype` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_datatype`
--

INSERT INTO `sl_datatype` (`DataTypeID`, `DataTypeName`, `InputType`, `SelectType`, `RangeValue`, `Prefix`, `Suffix`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(2, 'Numberic', 'Number', 'Range', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Kích thước màn hình', 'Number', 'Range', 1, NULL, 'inch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Tốc độ CPU', 'Number', 'Range', 0.5, NULL, 'GHz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Số nhân CPU', 'Number', 'Range', 1, NULL, 'nhân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Bộ nhớ', 'Number', 'Range', 1, NULL, 'GB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Dung lượng pin', 'Number', 'Range', 500, NULL, 'mAh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Thời gian', 'Number', 'Range', 2, NULL, 'giờ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Trọng lượng', 'Number', 'Range', 0.5, NULL, 'kg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'General', 'String', 'Range', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_district`
--

CREATE TABLE IF NOT EXISTS `sl_district` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_district`
--

INSERT INTO `sl_district` (`DistricID`, `DistrictName`, `CityID`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`, `Order`) VALUES
(1, 'Quận 1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Quận 2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, 'Quận 3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 'Quận 4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(5, 'Quận 5', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(6, 'Hai Bà Trưng', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'Quận 6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(8, 'Quận 7', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(9, 'Quận 8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8),
(10, 'Quận 9', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9),
(11, 'Quận 10', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10),
(12, 'Quận 11', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11),
(13, 'Quận 12', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12),
(14, 'Bình Thạnh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(15, 'Gò Vấp', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14),
(16, 'Tân Bình', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15),
(17, 'Tân Phú', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16),
(18, 'Thủ Đức', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17),
(19, 'Bình Chánh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18),
(20, 'Cần Giờ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(21, 'Củ Chi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20),
(22, 'Hóc Môn', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21),
(23, 'Nhà Bè', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `sl_evaluation`
--

CREATE TABLE IF NOT EXISTS `sl_evaluation` (
  `ArticleID` bigint(20) DEFAULT NULL,
  `EvaluationID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NumEvaluation` bigint(20) DEFAULT NULL COMMENT 'so luong nguoi danh gia',
  `EvaluatedBy` text COLLATE utf8_unicode_ci COMMENT 'danh sach userID ngan cach nhau',
  `LastEvaluated` datetime DEFAULT NULL COMMENT 'ngay cuoi cung danh gia',
  PRIMARY KEY (`EvaluationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_evaluation_type`
--

CREATE TABLE IF NOT EXISTS `sl_evaluation_type` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_like`
--

CREATE TABLE IF NOT EXISTS `sl_like` (
  `LikeID` int(20) NOT NULL,
  `LikeAmount` int(11) DEFAULT NULL,
  `UnlikeAmount` int(11) DEFAULT NULL COMMENT 'option',
  `LIkeUsers` text COLLATE utf8_unicode_ci COMMENT 'danh sach UserID Like,..',
  `UnlikeUsers` text COLLATE utf8_unicode_ci COMMENT 'danh sach user unlinke',
  PRIMARY KEY (`LikeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_manufactory`
--

CREATE TABLE IF NOT EXISTS `sl_manufactory` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_manufactory`
--

INSERT INTO `sl_manufactory` (`ManufactoryID`, `ManufactoryName`, `CategoryID`, `Order`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`) VALUES
(1, 'Apple', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Nokia', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'HTC', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Asus', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Nokia Microsoft', 10, 1, NULL, NULL, '26', '2015-04-22 20:15:51', NULL, NULL, b'1'),
(6, 'Acer', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Toshiba', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Dell', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'HP', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Asus', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Toshiba', 46, 0, '26', '2015-04-22 20:16:20', '26', '2015-04-22 20:16:20', '', '0000-00-00 00:00:00', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `sl_menu`
--

CREATE TABLE IF NOT EXISTS `sl_menu` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_notification_type`
--

CREATE TABLE IF NOT EXISTS `sl_notification_type` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='send mail when having new reply, like article';

--
-- Dumping data for table `sl_notification_type`
--

INSERT INTO `sl_notification_type` (`NotificationTypeID`, `NotificationTypeName`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'Nhận email khi có comment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Không nhận email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Nhận email khi có người like', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_numberaire`
--

CREATE TABLE IF NOT EXISTS `sl_numberaire` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_offer`
--

CREATE TABLE IF NOT EXISTS `sl_offer` (
  `AuctionID` bigint(20) NOT NULL,
  `UserID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `OfferedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDelete` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AuctionID`,`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_partner`
--

CREATE TABLE IF NOT EXISTS `sl_partner` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_payment_mode`
--

CREATE TABLE IF NOT EXISTS `sl_payment_mode` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_product`
--

CREATE TABLE IF NOT EXISTS `sl_product` (
  `ProductID` bigint(20) NOT NULL,
  `ProductName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CatalogueID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageLink` text COLLATE utf8_unicode_ci,
  `ManufactoryID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentModeID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NumberaireID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StorageDate` datetime DEFAULT NULL,
  `Price` decimal(20,2) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_product`
--

INSERT INTO `sl_product` (`ProductID`, `ProductName`, `CatalogueID`, `ImageLink`, `ManufactoryID`, `PaymentModeID`, `NumberaireID`, `StorageDate`, `Price`, `Amount`, `Description`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'iPhone 5S 16GB White', '10', 'https://www.thegioididong.com/images/42/60546/iphone-5s-16gb-1-400x533.png', '1', '', '', '0000-00-00 00:00:00', 0.00, 0, '<p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;">Phone 5S và <a href="https://www.thegioididong.com/dtdd/iphone-5c-16gb" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="iPhone 5C">iPhone 5C</a> chính là hai nhân tố tâm điểm khiến thị trường <a href="https://www.thegioididong.com/dtdd" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Điện thoại di động">điện thoại di động</a> náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản <a href="https://www.thegioididong.com/dtdd-apple-iphone" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="iPhone">iPhone</a> trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của <a href="https://www.thegioididong.com/dtdd/iphone-5-32gb" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="iPhone 5">iPhone 5</a>, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt.</strong></em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;">Công đoạn gia công là thế mạnh của Apple và nó được thể hiện trên <strong style="margin: 0px; padding: 0px;">iPhone 5S </strong>khá rõ ràng, ngoài màu sắc đa dạng Apple còn cung cấp cho thiết bị một bộ xử lý hoàn toàn mới và mạnh mẽ cùng khả năng chụp ảnh vượt trội.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><img alt="iPhone 5S bản nâng cấp đáng giá của iPhone 5" src="https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image002.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="iPhone 5S bản nâng cấp đáng giá của iPhone 5" /><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">iPhone 5S bản nâng cấp đáng giá của iPhone 5</em></p>  <h3 style="margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Thiết kế nguyên khối cao cấp</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Siêu phẩm<strong style="margin: 0px; padding: 0px;"> 5S </strong>nhìn tổng thể thì không khác mấy so với người tiền nhiệm <strong style="margin: 0px; padding: 0px;">iPhone 5</strong>, thế nhưng Apple từ lâu đã khá nổi tiếng từ những chi tiết nhỏ nhất trên sản phẩm của mình. Vẫn mang trên mình thiết kế nguyên khối, kiểu dáng vuông vức mạnh mẽ và độ dày thân máy giữ nguyên 7.6mm. Chiếc <a href="https://www.thegioididong.com/dtdd?f=smartphone" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Smartphone">smartphone</a> này đã làm biến mất đi hình ảnh của một chiếc iPhone chỉ màu đen và trắng, thay vào đó Apple đã mang đến người dùng các phiên bản màu sắc rất tuyệt vời gồm có màu trắng, đen, vàng, có lẽ màu vàng ánh kim sẽ được người dùng săn tìm nhiều nhất.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image004.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Thiết kế tổng thể thì tương tự iPhone 5" class="lazy" data-original="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" src="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Thiết kế tổng thể tương tự iPhone 5" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Thiết kế tổng thể thì tương tự iPhone 5</em></p>  <h3 style="margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Phím Home tích hợp cảm biến bảo mật dấu vân tay</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Trước thời điểm ra mắt cảm biến Touch ID trên <strong style="margin: 0px; padding: 0px;">iPhone 5S</strong> chính là điều khiến mọi người khá nôn nóng, háo hức được chứng kiến. Không làm mất mặt, Apple Touch ID là một tính năng tuyệt vời, không những thế để thiết kế chức năng này “quả táo khuyết” đã dày công nghiên cứu và đưa vào một chi tiết nhỏ nhưng khá quan trọng.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image006.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Phím Home của Iphone 5S được thiết kế khá tinh xảo và đặc biệt" class="lazy" data-original="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" src="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 337px; display: block;" title="Phím Home của Iphone 5S" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Phím Home được thiết kế khá tinh xảo và đặc biệt</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Người dùng đã quá quen thuộc với hình ảnh nút Home truyền thống có trên iPhone, nhưng năm 2013 này nó đã được cải tiến bằng một nút ấn vật lý dùng chất liệu đá sapphire chống xước, hình tròn cùng vòng kim loại sáng bóng bao quanh, nhờ chi tiết này mà “mặt tiền” của <strong style="margin: 0px; padding: 0px;">5S </strong>đã hấp dẫn hơn khá nhiều so với iPhone 5.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image008.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Iphone 5S Bảo mật cao với cảm biến Touch ID dưới nút Home" class="lazy" data-original="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" src="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 337px; display: block;" title="Iphone 5S với cảm biến Touch ID dưới nút Home" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Bảo mật cao với cảm biến Touch ID dưới nút Home</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Nút Home của máysẽ kiêm thêm chức năng quét dấu vân tay người dùng, như một chiếc chìa khóa để mở cánh cửa vào<strong style="margin: 0px; padding: 0px;">iPhone 5S</strong>. Cảm biến này dày có 170 micron với độ phân giải 500 pixel /inch. Nó có thể đọc được ở góc 360 độ, có nghĩa là đọc được vân tay cho dù ngón tay của người dùng có thể được định hướng ở bất kỳ hướng nào. Apple cho biết nó có thể đọc được các lớp da nằm dưới lớp biểu bì.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image010.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Thân máy của Iphone 5S chỉ mỏng 7.6mm" class="lazy" data-original="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" src="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Iphone 5S chỉ mỏng 7.6mm" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Thân máy của Iphone 5S chỉ mỏng 7.6mm</em></p>  <h3 style="margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Bộ xử lí A7 64-bit mạnh mẽ</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Một chi tiết làm Apple khá hãnh diện về chiếc smartphone mới của mình đó chính là bộ xử lý vượt trội chip A7 SoC 64-bit, Apple còn tuyên bố rằng bộ xử lý này sẽ cho tốc độ gấp 56 lần so với iPhone phiên bản đầu và hơn 2 lần so với <strong style="margin: 0px; padding: 0px;">iPhone 5</strong>. Đây là chip xử lý mới và tiên tiến cho phép hỗ trợ <a href="https://www.thegioididong.com/tin-tuc/ram-la-gi-bo-nho-kha-dung-la-gi--592228" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="RAM là gì?">RAM</a> tối đa lên 4GB.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image012.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn" class="lazy" data-original="https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" src="https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 375px; display: block;" title="Chip A7 mới trên Iphone 5S" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Chip A7 64-bit của Apple sẽ cho máy hoạt động đồ họa 3D tốt hơn, chạy đa nhiệm tốt, xử lý cùng lúc nhiều chương trình nhanh hơn. <strong style="margin: 0px; padding: 0px;">IPhone</strong><strong style="margin: 0px; padding: 0px;">5S</strong> đi kèm với hầu hết lựa chọn kết nối tiêu chuẩn như Bluetooth 4.0, 4G LTE, AirDrop, AirPlay…Điều đặc biệt là không có kết nối NFC, là tính năng khá nhiều smartphone cao cấp chạy Android đều có.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image014.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà" class="lazy" data-original="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" src="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Chip A7 giúp Iphone 5S chạy mượt mà" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà</em></p>  <h3 align="" style="margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Tối ưu thời gian dùng pin</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><strong style="margin: 0px; padding: 0px;">Apple</strong> cho người dùng thấy ngay chất lượng pin của <strong style="margin: 0px; padding: 0px;">iPhone 5S </strong>tốt như thế nào ngay từ buổi ra mắt đầu tiên. 1560mAh, một dung lượng pin khá nhỏ nếu so với các thiết bị Android cao cấp tuy nhiên với <strong style="margin: 0px; padding: 0px;">Apple</strong> thì đó lại là một điều hoàn toàn khác. Với dung lượng pin là 1560mAh thiết bị cho bạn đến 10 giờ đàm thoại <a href="https://www.thegioididong.com/dtdd?f=bang-tan-3g-4g" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Điện thoại có kết nối 3G">3G</a>, lướt web với kết nối LTE, <a href="https://www.thegioididong.com/dtdd?f=wifi" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Điện thoại có kết nối Wifi">Wifi</a> với thời lượng 10 tiếng đồng hồ. ngoài ra bạn có thể chơi nhạc đến 40 giờ và ở chế độ chờ lên đến 250 giờ.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image016.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Chất lượng pin của iPhone 5S là khá tốt" class="lazy" data-original="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" src="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Chất lượng pin của iPhone 5S là khá tốt" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Chất lượng pin của iPhone 5S là khá tốt</em></p>  <h3 style="margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Màn hình IPS <a href="https://www.thegioididong.com/dtdd?g=khoang-4" style="margin: 0px; padding: 0px; text-decoration: none; font-weight: normal; font-stretch: normal; line-height: 18px; color: rgb(51, 51, 51); outline: none;" target="_blank" title="Điện thoại 4inch">4 inch</a> cực kì sắc nét</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Không chạy theo xu thế màn hình lớn, Apple chỉ trang bị cho <strong style="margin: 0px; padding: 0px;">5S</strong> màn hình <a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Các loại màn hình smartphone">Retina</a> <a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178" style="margin: 0px; padding: 0px; text-decoration: none;" title="Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?">độ phân giải</a> 1136x640 pixels, mật độ điểm ảnh 326 ppi, kích thước 4 inch tương tự như với <strong style="margin: 0px; padding: 0px;">iPhone 5 và 5C</strong>. Đây là điểm mà nhiều người đã phàn nàn bởi đã các thiết bị Android đang quá phổ biến về smartphone màn hình lớn.</p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Thực tế thì nếu dùng màn hình 4 inch sẽ thuận tiện và dễ dàng hơn rất nhiều cho người dùng bởi bạn có thể dùng một tay dễ dàng, độ phân giải tốt hơn nên độ mịn màng, sắc nét cao hơn nếu so với các thiết bị màn hình lớn mà độ phân giải thậm chí còn nhỏ hơn <strong style="margin: 0px; padding: 0px;">5S</strong>.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><strong style="margin: 0px; padding: 0px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image018.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Màn hình Iphone 5S chỉ 4 inch nhưng cầm sẽ rất vừa tay" class="lazy" data-original="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" src="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Màn hình Iphone 5S" /></a></strong><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Màn hình Iphone 5S chỉ 4 inch cầm sẽ rất vừa tay</em></p>  <h3 style="margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Camera 8MP với khả năng chống rung và chụp ảnh thiếu sáng tốt</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Không chạy đua theo xu thế <a href="https://www.thegioididong.com/tin-tuc/cac-cong-nghe-chup-anh-tren-smartphone-592323" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Các công nghệ chụp ảnh trên smartphone">camera</a> khủng như các thiết bị cao cấp khác như <a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s4-i9500" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Samsung Galaxy S4"><strong style="margin: 0px; padding: 0px;">Samsung Galaxy S4</strong></a>, <a href="https://www.thegioididong.com/dtdd/nokia-lumia-925" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Nokia Lumia 925"><strong style="margin: 0px; padding: 0px;">Nokia Lumia 925</strong></a>, và đặc biệt là <a href="https://www.thegioididong.com/dtdd/nokia-lumia-1020" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Nokia Lumia 1020"><strong style="margin: 0px; padding: 0px;">Lumia 1020</strong></a>, Apple lại tập trung vào phát triển, nâng cao chất lượng hình ảnh. <strong style="margin: 0px; padding: 0px;">iPhone 5S </strong>vẫn giữ camera 8MP, hỗ trợ đến 2 đèn LED phía sau và có cảm biến lớn hơn 15% so với phiên bản trước, nhờ đó camera sẽ bắt sáng tốt hơn và chất lượng hình ảnh sẽ được cải thiện đáng kể.</p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Chiếc camera này có khả năng chụp liên tục 10 khung hình trên giây, ở chế độ chụp toàn cảnh panorama thiết bị cho bạn hình ảnh có độ phân giải lên đến 28MP, camera sẽ tự động điều chỉnh ánh sáng, làm mượt mà các khung hình và ổn định, chống rung khi bạn di chuyển tay.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image020.jpg" style="margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);"><img alt="Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng" class="lazy" data-original="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" src="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Camera phía sau Iphone 5S" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><strong style="margin: 0px; padding: 0px;">iPhone 5S</strong> chính là điều mà Fan của Apple mong ngóng nhiều ngày từ khi tin đồn xuất hiện và nó đã không làm người dùng thất vọng. Là bản nâng cấp đáng giá của <strong style="margin: 0px; padding: 0px;">iPhone 5</strong>,  mang đến tính năng ưu việt như khả năng nhận diện dấu vân tay thông minh, chip xử lý mạnh mẽ mới nhất A7, cũng như camera 8MP với cảm biến lớn hơn 15% so với iPhone 5 cùng hệ điều hành <em style="margin: 0px; padding: 0px;"><a href="https://www.thegioididong.com/tin-tuc/he-dieu-hanh-ios-la-gi--592559" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Hệ điều hành iOS là gì?">iOS</a> 7</em>mới mẻ.</p>', '36', '2015-03-15 16:39:31', '36', '2015-03-15 18:43:17', '', '0000-00-00 00:00:00', b'0', '');
INSERT INTO `sl_product` (`ProductID`, `ProductName`, `CatalogueID`, `ImageLink`, `ManufactoryID`, `PaymentModeID`, `NumberaireID`, `StorageDate`, `Price`, `Amount`, `Description`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(2, 'iPhone 5S 16GB White', '10', 'https://www.thegioididong.com/images/42/60546/iphone-5s-16gb-1-400x533.png;\nhttps://www.thegioididong.com/images/42/60546/iphone-5s-16gb-org-7.jpg', '1', '', '', '0000-00-00 00:00:00', 0.00, 0, '<p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;">Phone 5S và <a href="https://www.thegioididong.com/dtdd/iphone-5c-16gb" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="iPhone 5C">iPhone 5C</a> chính là hai nhân tố tâm điểm khiến thị trường <a href="https://www.thegioididong.com/dtdd" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Điện thoại di động">điện thoại di động</a> náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản <a href="https://www.thegioididong.com/dtdd-apple-iphone" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="iPhone">iPhone</a> trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của <a href="https://www.thegioididong.com/dtdd/iphone-5-32gb" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="iPhone 5">iPhone 5</a>, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt.</strong></em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;">Công đoạn gia công là thế mạnh của Apple và nó được thể hiện trên <strong style="margin: 0px; padding: 0px;">iPhone 5S </strong>khá rõ ràng, ngoài màu sắc đa dạng Apple còn cung cấp cho thiết bị một bộ xử lý hoàn toàn mới và mạnh mẽ cùng khả năng chụp ảnh vượt trội.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><img alt="iPhone 5S bản nâng cấp đáng giá của iPhone 5" src="https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image002.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="iPhone 5S bản nâng cấp đáng giá của iPhone 5" /><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">iPhone 5S bản nâng cấp đáng giá của iPhone 5</em></p>  <h3 style="font-weight: 700; line-height: 30px; margin: 0px; padding: 0px; font-stretch: normal; font-size: 14px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Thiết kế nguyên khối cao cấp</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Siêu phẩm<strong style="margin: 0px; padding: 0px;"> 5S </strong>nhìn tổng thể thì không khác mấy so với người tiền nhiệm <strong style="margin: 0px; padding: 0px;">iPhone 5</strong>, thế nhưng Apple từ lâu đã khá nổi tiếng từ những chi tiết nhỏ nhất trên sản phẩm của mình. Vẫn mang trên mình thiết kế nguyên khối, kiểu dáng vuông vức mạnh mẽ và độ dày thân máy giữ nguyên 7.6mm. Chiếc <a href="https://www.thegioididong.com/dtdd?f=smartphone" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Smartphone">smartphone</a> này đã làm biến mất đi hình ảnh của một chiếc iPhone chỉ màu đen và trắng, thay vào đó Apple đã mang đến người dùng các phiên bản màu sắc rất tuyệt vời gồm có màu trắng, đen, vàng, có lẽ màu vàng ánh kim sẽ được người dùng săn tìm nhiều nhất.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image004.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Thiết kế tổng thể thì tương tự iPhone 5" class="lazy" data-original="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" src="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Thiết kế tổng thể tương tự iPhone 5" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Thiết kế tổng thể thì tương tự iPhone 5</em></p>  <h3 style="font-weight: 700; line-height: 30px; margin: 0px; padding: 0px; font-stretch: normal; font-size: 14px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Phím Home tích hợp cảm biến bảo mật dấu vân tay</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Trước thời điểm ra mắt cảm biến Touch ID trên <strong style="margin: 0px; padding: 0px;">iPhone 5S</strong> chính là điều khiến mọi người khá nôn nóng, háo hức được chứng kiến. Không làm mất mặt, Apple Touch ID là một tính năng tuyệt vời, không những thế để thiết kế chức năng này “quả táo khuyết” đã dày công nghiên cứu và đưa vào một chi tiết nhỏ nhưng khá quan trọng.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image006.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Phím Home của Iphone 5S được thiết kế khá tinh xảo và đặc biệt" class="lazy" data-original="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" src="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 337px; display: block;" title="Phím Home của Iphone 5S" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Phím Home được thiết kế khá tinh xảo và đặc biệt</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Người dùng đã quá quen thuộc với hình ảnh nút Home truyền thống có trên iPhone, nhưng năm 2013 này nó đã được cải tiến bằng một nút ấn vật lý dùng chất liệu đá sapphire chống xước, hình tròn cùng vòng kim loại sáng bóng bao quanh, nhờ chi tiết này mà “mặt tiền” của <strong style="margin: 0px; padding: 0px;">5S </strong>đã hấp dẫn hơn khá nhiều so với iPhone 5.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image008.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Iphone 5S Bảo mật cao với cảm biến Touch ID dưới nút Home" class="lazy" data-original="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" src="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 337px; display: block;" title="Iphone 5S với cảm biến Touch ID dưới nút Home" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Bảo mật cao với cảm biến Touch ID dưới nút Home</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Nút Home của máysẽ kiêm thêm chức năng quét dấu vân tay người dùng, như một chiếc chìa khóa để mở cánh cửa vào<strong style="margin: 0px; padding: 0px;">iPhone 5S</strong>. Cảm biến này dày có 170 micron với độ phân giải 500 pixel /inch. Nó có thể đọc được ở góc 360 độ, có nghĩa là đọc được vân tay cho dù ngón tay của người dùng có thể được định hướng ở bất kỳ hướng nào. Apple cho biết nó có thể đọc được các lớp da nằm dưới lớp biểu bì.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image010.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Thân máy của Iphone 5S chỉ mỏng 7.6mm" class="lazy" data-original="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" src="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Iphone 5S chỉ mỏng 7.6mm" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Thân máy của Iphone 5S chỉ mỏng 7.6mm</em></p>  <h3 style="font-weight: 700; line-height: 30px; margin: 0px; padding: 0px; font-stretch: normal; font-size: 14px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Bộ xử lí A7 64-bit mạnh mẽ</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Một chi tiết làm Apple khá hãnh diện về chiếc smartphone mới của mình đó chính là bộ xử lý vượt trội chip A7 SoC 64-bit, Apple còn tuyên bố rằng bộ xử lý này sẽ cho tốc độ gấp 56 lần so với iPhone phiên bản đầu và hơn 2 lần so với <strong style="margin: 0px; padding: 0px;">iPhone 5</strong>. Đây là chip xử lý mới và tiên tiến cho phép hỗ trợ <a href="https://www.thegioididong.com/tin-tuc/ram-la-gi-bo-nho-kha-dung-la-gi--592228" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="RAM là gì?">RAM</a> tối đa lên 4GB.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image012.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn" class="lazy" data-original="https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" src="https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 375px; display: block;" title="Chip A7 mới trên Iphone 5S" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Chip A7 64-bit của Apple sẽ cho máy hoạt động đồ họa 3D tốt hơn, chạy đa nhiệm tốt, xử lý cùng lúc nhiều chương trình nhanh hơn. <strong style="margin: 0px; padding: 0px;">IPhone</strong><strong style="margin: 0px; padding: 0px;">5S</strong> đi kèm với hầu hết lựa chọn kết nối tiêu chuẩn như Bluetooth 4.0, 4G LTE, AirDrop, AirPlay…Điều đặc biệt là không có kết nối NFC, là tính năng khá nhiều smartphone cao cấp chạy Android đều có.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image014.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà" class="lazy" data-original="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" src="https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Chip A7 giúp Iphone 5S chạy mượt mà" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà</em></p>  <h3 align="" style="font-weight: 700; line-height: 30px; margin: 0px; padding: 0px; font-stretch: normal; font-size: 14px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Tối ưu thời gian dùng pin</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><strong style="margin: 0px; padding: 0px;">Apple</strong> cho người dùng thấy ngay chất lượng pin của <strong style="margin: 0px; padding: 0px;">iPhone 5S </strong>tốt như thế nào ngay từ buổi ra mắt đầu tiên. 1560mAh, một dung lượng pin khá nhỏ nếu so với các thiết bị Android cao cấp tuy nhiên với <strong style="margin: 0px; padding: 0px;">Apple</strong> thì đó lại là một điều hoàn toàn khác. Với dung lượng pin là 1560mAh thiết bị cho bạn đến 10 giờ đàm thoại <a href="https://www.thegioididong.com/dtdd?f=bang-tan-3g-4g" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Điện thoại có kết nối 3G">3G</a>, lướt web với kết nối LTE, <a href="https://www.thegioididong.com/dtdd?f=wifi" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Điện thoại có kết nối Wifi">Wifi</a> với thời lượng 10 tiếng đồng hồ. ngoài ra bạn có thể chơi nhạc đến 40 giờ và ở chế độ chờ lên đến 250 giờ.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image016.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Chất lượng pin của iPhone 5S là khá tốt" class="lazy" data-original="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" src="https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Chất lượng pin của iPhone 5S là khá tốt" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Chất lượng pin của iPhone 5S là khá tốt</em></p>  <h3 style="font-weight: 700; line-height: 30px; margin: 0px; padding: 0px; font-stretch: normal; font-size: 14px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Màn hình IPS <a href="https://www.thegioididong.com/dtdd?g=khoang-4" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; font-weight: normal; font-stretch: normal; line-height: 18px; outline: none;" target="_blank" title="Điện thoại 4inch">4 inch</a> cực kì sắc nét</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Không chạy theo xu thế màn hình lớn, Apple chỉ trang bị cho <strong style="margin: 0px; padding: 0px;">5S</strong> màn hình <a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Các loại màn hình smartphone">Retina</a> <a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178" style="margin: 0px; padding: 0px; text-decoration: none;" title="Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?">độ phân giải</a> 1136x640 pixels, mật độ điểm ảnh 326 ppi, kích thước 4 inch tương tự như với <strong style="margin: 0px; padding: 0px;">iPhone 5 và 5C</strong>. Đây là điểm mà nhiều người đã phàn nàn bởi đã các thiết bị Android đang quá phổ biến về smartphone màn hình lớn.</p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Thực tế thì nếu dùng màn hình 4 inch sẽ thuận tiện và dễ dàng hơn rất nhiều cho người dùng bởi bạn có thể dùng một tay dễ dàng, độ phân giải tốt hơn nên độ mịn màng, sắc nét cao hơn nếu so với các thiết bị màn hình lớn mà độ phân giải thậm chí còn nhỏ hơn <strong style="margin: 0px; padding: 0px;">5S</strong>.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><strong style="margin: 0px; padding: 0px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image018.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Màn hình Iphone 5S chỉ 4 inch nhưng cầm sẽ rất vừa tay" class="lazy" data-original="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" src="https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Màn hình Iphone 5S" /></a></strong><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Màn hình Iphone 5S chỉ 4 inch cầm sẽ rất vừa tay</em></p>  <h3 style="font-weight: 700; line-height: 30px; margin: 0px; padding: 0px; font-stretch: normal; font-size: 14px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;">Camera 8MP với khả năng chống rung và chụp ảnh thiếu sáng tốt</h3>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Không chạy đua theo xu thế <a href="https://www.thegioididong.com/tin-tuc/cac-cong-nghe-chup-anh-tren-smartphone-592323" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Các công nghệ chụp ảnh trên smartphone">camera</a> khủng như các thiết bị cao cấp khác như <a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s4-i9500" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Samsung Galaxy S4"><strong style="margin: 0px; padding: 0px;">Samsung Galaxy S4</strong></a>, <a href="https://www.thegioididong.com/dtdd/nokia-lumia-925" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Nokia Lumia 925"><strong style="margin: 0px; padding: 0px;">Nokia Lumia 925</strong></a>, và đặc biệt là <a href="https://www.thegioididong.com/dtdd/nokia-lumia-1020" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Nokia Lumia 1020"><strong style="margin: 0px; padding: 0px;">Lumia 1020</strong></a>, Apple lại tập trung vào phát triển, nâng cao chất lượng hình ảnh. <strong style="margin: 0px; padding: 0px;">iPhone 5S </strong>vẫn giữ camera 8MP, hỗ trợ đến 2 đèn LED phía sau và có cảm biến lớn hơn 15% so với phiên bản trước, nhờ đó camera sẽ bắt sáng tốt hơn và chất lượng hình ảnh sẽ được cải thiện đáng kể.</p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;">Chiếc camera này có khả năng chụp liên tục 10 khung hình trên giây, ở chế độ chụp toàn cảnh panorama thiết bị cho bạn hình ảnh có độ phân giải lên đến 28MP, camera sẽ tự động điều chỉnh ánh sáng, làm mượt mà các khung hình và ổn định, chống rung khi bạn di chuyển tay.</p>  <p align="center" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><a class="preventdefault" href="https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image020.jpg" style="color: rgb(51, 51, 51); margin: 0px; padding: 0px; text-decoration: none; cursor: default;"><img alt="Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng" class="lazy" data-original="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" src="https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg" style="margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;" title="Camera phía sau Iphone 5S" /></a><br style="margin: 0px; padding: 0px;" /> <br style="margin: 0px; padding: 0px;" /> <em style="margin: 0px; padding: 0px;">Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng</em></p>  <p align="" style="margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;"><strong style="margin: 0px; padding: 0px;">iPhone 5S</strong> chính là điều mà Fan của Apple mong ngóng nhiều ngày từ khi tin đồn xuất hiện và nó đã không làm người dùng thất vọng. Là bản nâng cấp đáng giá của <strong style="margin: 0px; padding: 0px;">iPhone 5</strong>,  mang đến tính năng ưu việt như khả năng nhận diện dấu vân tay thông minh, chip xử lý mạnh mẽ mới nhất A7, cũng như camera 8MP với cảm biến lớn hơn 15% so với iPhone 5 cùng hệ điều hành <em style="margin: 0px; padding: 0px;"><a href="https://www.thegioididong.com/tin-tuc/he-dieu-hanh-ios-la-gi--592559" style="margin: 0px; padding: 0px; text-decoration: none;" target="_blank" title="Hệ điều hành iOS là gì?">iOS</a> 7</em>mới mẻ.</p>', '36', '2015-03-15 16:41:50', '36', '2015-03-15 18:43:58', '', '0000-00-00 00:00:00', b'0', '');
INSERT INTO `sl_product` (`ProductID`, `ProductName`, `CatalogueID`, `ImageLink`, `ManufactoryID`, `PaymentModeID`, `NumberaireID`, `StorageDate`, `Price`, `Amount`, `Description`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(3, 'iPhone 5S 16GB White', '10', 'https://www.thegioididong.com/images/42/60546/iphone-5s-16gb-1-400x533.png;\nhttps://www.thegioididong.com/images/42/60546/iphone-5s-16gb-org-7.jpg', '1', '', '', '0000-00-00 00:00:00', 0.00, 0, '<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;\\"><em style=\\"margin: 0px; padding: 0px;\\"><strong style=\\"margin: 0px; padding: 0px;\\">Phone 5S và <a href=\\"https://www.thegioididong.com/dtdd/iphone-5c-16gb\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"iPhone 5C\\">iPhone 5C</a> chính là hai nhân tố tâm điểm khiến thị trường <a href=\\"https://www.thegioididong.com/dtdd\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Điện thoại di động\\">điện thoại di động</a> náo nhiệt trong suốt những tháng cuối năm 2013. Giống như những phiên bản <a href=\\"https://www.thegioididong.com/dtdd-apple-iphone\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"iPhone\\">iPhone</a> trước đó của Apple, phiên bản “S” mới này là bản nâng cấp rất đáng giá của <a href=\\"https://www.thegioididong.com/dtdd/iphone-5-32gb\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"iPhone 5\\">iPhone 5</a>, tuy vẫn còn giữ nhiều chi tiết giống người tiền nhiệm nhưng thiết bị đã có những cải tiến mang tính bước ngoặt.</strong></em></p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;\\">Công đoạn gia công là thế mạnh của Apple và nó được thể hiện trên <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5S </strong>khá rõ ràng, ngoài màu sắc đa dạng Apple còn cung cấp cho thiết bị một bộ xử lý hoàn toàn mới và mạnh mẽ cùng khả năng chụp ảnh vượt trội.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><img alt=\\"iPhone 5S bản nâng cấp đáng giá của iPhone 5\\" src=\\"https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image002.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"iPhone 5S bản nâng cấp đáng giá của iPhone 5\\" /><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">iPhone 5S bản nâng cấp đáng giá của iPhone 5</em></p>\n\n<h3 style=\\"margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;\\">Thiết kế nguyên khối cao cấp</h3>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Siêu phẩm<strong style=\\"margin: 0px; padding: 0px;\\"> 5S </strong>nhìn tổng thể thì không khác mấy so với người tiền nhiệm <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5</strong>, thế nhưng Apple từ lâu đã khá nổi tiếng từ những chi tiết nhỏ nhất trên sản phẩm của mình. Vẫn mang trên mình thiết kế nguyên khối, kiểu dáng vuông vức mạnh mẽ và độ dày thân máy giữ nguyên 7.6mm. Chiếc <a href=\\"https://www.thegioididong.com/dtdd?f=smartphone\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Smartphone\\">smartphone</a> này đã làm biến mất đi hình ảnh của một chiếc iPhone chỉ màu đen và trắng, thay vào đó Apple đã mang đến người dùng các phiên bản màu sắc rất tuyệt vời gồm có màu trắng, đen, vàng, có lẽ màu vàng ánh kim sẽ được người dùng săn tìm nhiều nhất.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image004.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Thiết kế tổng thể thì tương tự iPhone 5\\" class=\\"lazy\\" data-original=\\"https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg\\" src=\\"https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image004.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"Thiết kế tổng thể tương tự iPhone 5\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Thiết kế tổng thể thì tương tự iPhone 5</em></p>\n\n<h3 style=\\"margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;\\">Phím Home tích hợp cảm biến bảo mật dấu vân tay</h3>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Trước thời điểm ra mắt cảm biến Touch ID trên <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5S</strong> chính là điều khiến mọi người khá nôn nóng, háo hức được chứng kiến. Không làm mất mặt, Apple Touch ID là một tính năng tuyệt vời, không những thế để thiết kế chức năng này “quả táo khuyết” đã dày công nghiên cứu và đưa vào một chi tiết nhỏ nhưng khá quan trọng.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image006.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Phím Home của Iphone 5S được thiết kế khá tinh xảo và đặc biệt\\" class=\\"lazy\\" data-original=\\"https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg\\" src=\\"https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image006.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 337px; display: block;\\" title=\\"Phím Home của Iphone 5S\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Phím Home được thiết kế khá tinh xảo và đặc biệt</em></p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Người dùng đã quá quen thuộc với hình ảnh nút Home truyền thống có trên iPhone, nhưng năm 2013 này nó đã được cải tiến bằng một nút ấn vật lý dùng chất liệu đá sapphire chống xước, hình tròn cùng vòng kim loại sáng bóng bao quanh, nhờ chi tiết này mà “mặt tiền” của <strong style=\\"margin: 0px; padding: 0px;\\">5S </strong>đã hấp dẫn hơn khá nhiều so với iPhone 5.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image008.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Iphone 5S Bảo mật cao với cảm biến Touch ID dưới nút Home\\" class=\\"lazy\\" data-original=\\"https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg\\" src=\\"https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image008.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 337px; display: block;\\" title=\\"Iphone 5S với cảm biến Touch ID dưới nút Home\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Bảo mật cao với cảm biến Touch ID dưới nút Home</em></p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Nút Home của máysẽ kiêm thêm chức năng quét dấu vân tay người dùng, như một chiếc chìa khóa để mở cánh cửa vào<strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5S</strong>. Cảm biến này dày có 170 micron với độ phân giải 500 pixel /inch. Nó có thể đọc được ở góc 360 độ, có nghĩa là đọc được vân tay cho dù ngón tay của người dùng có thể được định hướng ở bất kỳ hướng nào. Apple cho biết nó có thể đọc được các lớp da nằm dưới lớp biểu bì.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image010.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Thân máy của Iphone 5S chỉ mỏng 7.6mm\\" class=\\"lazy\\" data-original=\\"https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg\\" src=\\"https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image010.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"Iphone 5S chỉ mỏng 7.6mm\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Thân máy của Iphone 5S chỉ mỏng 7.6mm</em></p>\n\n<h3 style=\\"margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;\\">Bộ xử lí A7 64-bit mạnh mẽ</h3>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Một chi tiết làm Apple khá hãnh diện về chiếc smartphone mới của mình đó chính là bộ xử lý vượt trội chip A7 SoC 64-bit, Apple còn tuyên bố rằng bộ xử lý này sẽ cho tốc độ gấp 56 lần so với iPhone phiên bản đầu và hơn 2 lần so với <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5</strong>. Đây là chip xử lý mới và tiên tiến cho phép hỗ trợ <a href=\\"https://www.thegioididong.com/tin-tuc/ram-la-gi-bo-nho-kha-dung-la-gi--592228\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"RAM là gì?\\">RAM</a> tối đa lên 4GB.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image012.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn\\" class=\\"lazy\\" data-original=\\"https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg\\" src=\\"https://cdn.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image012.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 375px; display: block;\\" title=\\"Chip A7 mới trên Iphone 5S\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Chip A7 mới trên Iphone 5S được người dùng đặt kỳ vọng lớn</em></p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Chip A7 64-bit của Apple sẽ cho máy hoạt động đồ họa 3D tốt hơn, chạy đa nhiệm tốt, xử lý cùng lúc nhiều chương trình nhanh hơn. <strong style=\\"margin: 0px; padding: 0px;\\">IPhone</strong><strong style=\\"margin: 0px; padding: 0px;\\">5S</strong> đi kèm với hầu hết lựa chọn kết nối tiêu chuẩn như Bluetooth 4.0, 4G LTE, AirDrop, AirPlay…Điều đặc biệt là không có kết nối NFC, là tính năng khá nhiều smartphone cao cấp chạy Android đều có.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image014.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà\\" class=\\"lazy\\" data-original=\\"https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg\\" src=\\"https://cdn2.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image014.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"Chip A7 giúp Iphone 5S chạy mượt mà\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Chip A7 mới nhất của Apple giúp Iphone 5S chạy mượt mà</em></p>\n\n<h3 align=\\"\\" style=\\"margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;\\">Tối ưu thời gian dùng pin</h3>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><strong style=\\"margin: 0px; padding: 0px;\\">Apple</strong> cho người dùng thấy ngay chất lượng pin của <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5S </strong>tốt như thế nào ngay từ buổi ra mắt đầu tiên. 1560mAh, một dung lượng pin khá nhỏ nếu so với các thiết bị Android cao cấp tuy nhiên với <strong style=\\"margin: 0px; padding: 0px;\\">Apple</strong> thì đó lại là một điều hoàn toàn khác. Với dung lượng pin là 1560mAh thiết bị cho bạn đến 10 giờ đàm thoại <a href=\\"https://www.thegioididong.com/dtdd?f=bang-tan-3g-4g\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Điện thoại có kết nối 3G\\">3G</a>, lướt web với kết nối LTE, <a href=\\"https://www.thegioididong.com/dtdd?f=wifi\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Điện thoại có kết nối Wifi\\">Wifi</a> với thời lượng 10 tiếng đồng hồ. ngoài ra bạn có thể chơi nhạc đến 40 giờ và ở chế độ chờ lên đến 250 giờ.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image016.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Chất lượng pin của iPhone 5S là khá tốt\\" class=\\"lazy\\" data-original=\\"https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg\\" src=\\"https://cdn4.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image016.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"Chất lượng pin của iPhone 5S là khá tốt\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Chất lượng pin của iPhone 5S là khá tốt</em></p>\n\n<h3 style=\\"margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;\\">Màn hình IPS <a href=\\"https://www.thegioididong.com/dtdd?g=khoang-4\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; font-weight: normal; font-stretch: normal; line-height: 18px; color: rgb(51, 51, 51); outline: none;\\" target=\\"_blank\\" title=\\"Điện thoại 4inch\\">4 inch</a> cực kì sắc nét</h3>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Không chạy theo xu thế màn hình lớn, Apple chỉ trang bị cho <strong style=\\"margin: 0px; padding: 0px;\\">5S</strong> màn hình <a href=\\"https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Các loại màn hình smartphone\\">Retina</a> <a href=\\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" title=\\"Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?\\">độ phân giải</a> 1136x640 pixels, mật độ điểm ảnh 326 ppi, kích thước 4 inch tương tự như với <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5 và 5C</strong>. Đây là điểm mà nhiều người đã phàn nàn bởi đã các thiết bị Android đang quá phổ biến về smartphone màn hình lớn.</p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Thực tế thì nếu dùng màn hình 4 inch sẽ thuận tiện và dễ dàng hơn rất nhiều cho người dùng bởi bạn có thể dùng một tay dễ dàng, độ phân giải tốt hơn nên độ mịn màng, sắc nét cao hơn nếu so với các thiết bị màn hình lớn mà độ phân giải thậm chí còn nhỏ hơn <strong style=\\"margin: 0px; padding: 0px;\\">5S</strong>.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><strong style=\\"margin: 0px; padding: 0px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image018.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Màn hình Iphone 5S chỉ 4 inch nhưng cầm sẽ rất vừa tay\\" class=\\"lazy\\" data-original=\\"https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg\\" src=\\"https://cdn1.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image018.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"Màn hình Iphone 5S\\" /></a></strong><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Màn hình Iphone 5S chỉ 4 inch cầm sẽ rất vừa tay</em></p>\n\n<h3 style=\\"margin: 0px; padding: 0px; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 30px; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; color: rgb(0, 0, 0); outline: none;\\">Camera 8MP với khả năng chống rung và chụp ảnh thiếu sáng tốt</h3>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Không chạy đua theo xu thế <a href=\\"https://www.thegioididong.com/tin-tuc/cac-cong-nghe-chup-anh-tren-smartphone-592323\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Các công nghệ chụp ảnh trên smartphone\\">camera</a> khủng như các thiết bị cao cấp khác như <a href=\\"https://www.thegioididong.com/dtdd/samsung-galaxy-s4-i9500\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Samsung Galaxy S4\\"><strong style=\\"margin: 0px; padding: 0px;\\">Samsung Galaxy S4</strong></a>, <a href=\\"https://www.thegioididong.com/dtdd/nokia-lumia-925\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Nokia Lumia 925\\"><strong style=\\"margin: 0px; padding: 0px;\\">Nokia Lumia 925</strong></a>, và đặc biệt là <a href=\\"https://www.thegioididong.com/dtdd/nokia-lumia-1020\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Nokia Lumia 1020\\"><strong style=\\"margin: 0px; padding: 0px;\\">Lumia 1020</strong></a>, Apple lại tập trung vào phát triển, nâng cao chất lượng hình ảnh. <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5S </strong>vẫn giữ camera 8MP, hỗ trợ đến 2 đèn LED phía sau và có cảm biến lớn hơn 15% so với phiên bản trước, nhờ đó camera sẽ bắt sáng tốt hơn và chất lượng hình ảnh sẽ được cải thiện đáng kể.</p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\">Chiếc camera này có khả năng chụp liên tục 10 khung hình trên giây, ở chế độ chụp toàn cảnh panorama thiết bị cho bạn hình ảnh có độ phân giải lên đến 28MP, camera sẽ tự động điều chỉnh ánh sáng, làm mượt mà các khung hình và ổn định, chống rung khi bạn di chuyển tay.</p>\n\n<p align=\\"center\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><a class=\\"preventdefault\\" href=\\"https://www.thegioididong.com/images/42/60457/iphone-5s_clip_image020.jpg\\" style=\\"margin: 0px; padding: 0px; text-decoration: none; cursor: default; color: rgb(51, 51, 51);\\"><img alt=\\"Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng\\" class=\\"lazy\\" data-original=\\"https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg\\" src=\\"https://cdn3.tgdd.vn/Products/Images/42/60457/iphone-5s_clip_image020.jpg\\" style=\\"margin: 16px auto; padding: 0px; border: 0px; max-width: 100%; height: 400px; display: block;\\" title=\\"Camera phía sau Iphone 5S\\" /></a><br style=\\"margin: 0px; padding: 0px;\\" />\n<br style=\\"margin: 0px; padding: 0px;\\" />\n<em style=\\"margin: 0px; padding: 0px;\\">Camera phía sau Iphone 5S hỗ trợ 2 đèn LED trợ sáng</em></p>\n\n<p align=\\"\\" style=\\"margin: 0px 0px 5px; padding: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; text-rendering: geometricprecision; font-family: Helvetica, Arial, \\''DejaVu Sans\\'', \\''Liberation Sans\\'', Freesans, sans-serif; font-size: 14px; line-height: 20px;\\"><strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5S</strong> chính là điều mà Fan của Apple mong ngóng nhiều ngày từ khi tin đồn xuất hiện và nó đã không làm người dùng thất vọng. Là bản nâng cấp đáng giá của <strong style=\\"margin: 0px; padding: 0px;\\">iPhone 5</strong>,  mang đến tính năng ưu việt như khả năng nhận diện dấu vân tay thông minh, chip xử lý mạnh mẽ mới nhất A7, cũng như camera 8MP với cảm biến lớn hơn 15% so với iPhone 5 cùng hệ điều hành <em style=\\"margin: 0px; padding: 0px;\\"><a href=\\"https://www.thegioididong.com/tin-tuc/he-dieu-hanh-ios-la-gi--592559\\" style=\\"margin: 0px; padding: 0px; text-decoration: none;\\" target=\\"_blank\\" title=\\"Hệ điều hành iOS là gì?\\">iOS</a> 7</em>mới mẻ.</p>\n', '36', '2015-03-15 16:54:11', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sl_product_price`
--

CREATE TABLE IF NOT EXISTS `sl_product_price` (
  `ProductPriceID` bigint(20) NOT NULL,
  `ProductID` bigint(20) DEFAULT NULL,
  `Retailer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductLink` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TypeID` int(11) DEFAULT NULL COMMENT 'get from sl_status: TGDD, VIenThongA ',
  `Order` int(11) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ProductPriceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_product_property`
--

CREATE TABLE IF NOT EXISTS `sl_product_property` (
  `ProductID` bigint(11) NOT NULL,
  `PropertyID` bigint(11) NOT NULL,
  `PropertyValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TypeID` int(11) NOT NULL COMMENT 'get from sl_status; product,, retailer',
  `StatusID` int(11) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ProductID`,`PropertyID`,`TypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_product_property`
--

INSERT INTO `sl_product_property` (`ProductID`, `PropertyID`, `PropertyValue`, `TypeID`, `StatusID`, `Order`, `Status`) VALUES
(3, 1, 'iOS 8.0', 11, NULL, 0, '0'),
(3, 2, 'Trắng', 11, NULL, 1, '0'),
(3, 3, '2014', 11, NULL, 2, '0'),
(3, 4, 'GSM 850/900/1800/1900', 11, NULL, 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `sl_property`
--

CREATE TABLE IF NOT EXISTS `sl_property` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_property`
--

INSERT INTO `sl_property` (`PropertyID`, `PropertyGroupID`, `PropertyName`, `PropertyValue`, `DataTypeID`, `Order`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 1, 'Hệ điều hành', 'Android,iOS,Windows Phone, Blackberry OS', '', 1, 26, '2014-09-14 18:48:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(2, 1, 'Phiên bản', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Ngày ra mắt', '', '', 3, 26, '2014-09-14 18:49:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(4, 1, 'Băng tầng mạng', '', '', 4, 26, '2014-09-14 18:49:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(11, 10, 'Số nhân', '', '12', 2, 26, '2014-09-14 18:48:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(12, 10, 'Tốc độ CPU', '', '11', 3, 26, '2014-09-14 18:49:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(13, 10, 'Chipset', '', '', 4, 26, '2014-09-18 03:02:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(20, 20, 'RAM', '', '13', 1, 26, '2014-09-18 03:02:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(21, 20, 'Bộ nhớ trong', '', '13', 2, 26, '2014-09-18 03:03:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(22, 20, 'Thẻ nhớ ngoài', 'Có;Không', '', 3, 26, '2014-09-18 03:03:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(23, 20, 'Hỗ trợ tối đa', '', '', 4, 26, '2014-09-18 03:03:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(30, 30, 'Loại màn hình', '', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 30, 'Độ phân giải', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 30, 'Kích thước', '', '', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 30, 'Loại cảm ứng', '', '', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 30, 'Mặt kính cảm ứng', '', '', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, 'Băng tầng 2G', '', '', 1, 26, '2014-09-21 16:49:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(41, 40, 'Băng tầng 3G', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 40, 'Loại sim', '', '', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 40, 'Số sim', '', '1', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 40, 'Tốc độ 3G', '', '', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 40, 'Wifi', '', '', 6, 0, '2014-10-15 20:33:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', ''),
(46, 40, 'GPS', '', '', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 40, 'NCF', '', '', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 40, 'Bluetooth', '', '', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 40, 'Kết nối USB', '', '', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 50, 'Độ phân giải', '', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 50, 'Quay phim', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 50, 'Đèn flash', '', '', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 50, 'Tính năng nâng cao', '', '', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 60, 'Độ phân giải', '', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 60, 'Quay phim', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 60, 'Video call', '', '', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 60, 'Tính năng nâng cao', '', '', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 70, 'Dung lượng', '', '14', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 70, 'Loại Pin', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 70, 'Thời gian chờ', '', '15', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 70, 'Thời gian nghe/gọi', '', '15', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 70, 'Thời gian lướt web', '', '15', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 70, 'Thời gian xem phim', '', '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 80, 'Trọng lượng', '', '16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 80, 'Kích thước', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 80, 'Chất liệu', '', '', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 80, 'Màu sắc', '', '', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 90, 'Khác', '', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 91, 'Độ cao yên', '', '', 5, 26, '2015-04-05 21:40:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sl_property_group`
--

CREATE TABLE IF NOT EXISTS `sl_property_group` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_property_group`
--

INSERT INTO `sl_property_group` (`PropertyGroupID`, `PropertyGroupName`, `PropertyGroupDisplay`, `ArticleTypeID`, `Order`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'Tổng quát', 'Tổng quát', 10, 1, '26', '2014-09-14 18:52:13', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(10, 'Vi xử lý', 'Vi xử lý', 10, 2, '26', '2014-09-14 18:52:13', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(20, 'Bộ nhớ', 'Bộ nhớ', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Màn hình', 'Màn hình', 10, 3, '26', '2014-09-14 18:52:13', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(40, 'Kết nối', 'Kết nối', 10, 4, '26', '2014-09-14 18:52:48', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(50, 'Camera chính', 'Camera chính', 10, 5, '26', '2014-09-14 18:52:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(60, 'Camera phụ', 'Camera phụ', 10, 6, '26', '2014-09-18 03:02:19', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(70, 'Pin', 'Pin', 10, 8, '26', '2014-09-21 16:49:28', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(80, 'Thiết kế', 'Thiết kế', 10, 7, '26', '2014-09-18 03:12:31', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(90, 'Khác', 'Khác', 10, 9, '26', '2014-10-15 20:33:58', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', ''),
(91, 'Thiết kế', 'Thiết kế', 81, 1, '26', '2015-04-05 21:38:57', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', b'0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sl_request`
--

CREATE TABLE IF NOT EXISTS `sl_request` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_reset_password`
--

CREATE TABLE IF NOT EXISTS `sl_reset_password` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ExpireDate` datetime DEFAULT NULL,
  `ResetDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_reset_password`
--

INSERT INTO `sl_reset_password` (`ID`, `UserID`, `CreatedDate`, `ExpireDate`, `ResetDate`, `IsDeleted`) VALUES
('532eacc8a0395', 12, '2014-03-23 16:43:36', '2014-03-23 16:43:36', '0000-00-00 00:00:00', 0),
('532eacdd294c6', 12, '2014-03-23 16:43:57', '2014-03-23 16:43:57', '0000-00-00 00:00:00', 0),
('532ead09a020b', 12, '2014-03-23 16:44:41', '2014-03-23 16:44:41', '0000-00-00 00:00:00', 0),
('532eb07bce91f', 1, '2014-03-23 16:59:23', '2014-03-23 16:59:23', '0000-00-00 00:00:00', 0),
('532eb0ea69f43', 1, '2014-03-23 17:01:14', '2014-03-23 17:01:14', '0000-00-00 00:00:00', 0),
('532eb11978b04', 1, '2014-03-23 17:02:01', '2014-03-23 17:02:01', '0000-00-00 00:00:00', 0),
('532eb13e8d3a1', 1, '2014-03-23 17:02:38', '2014-03-23 17:02:38', '0000-00-00 00:00:00', 0),
('532eb1678e0bc', 1, '2014-03-23 17:03:19', '2014-03-23 17:03:19', '0000-00-00 00:00:00', 0),
('532eb19ad5d1a', 1, '2014-03-23 17:04:10', '2014-03-23 17:04:10', '0000-00-00 00:00:00', 0),
('532eb1d37456b', 1, '2014-03-23 17:05:07', '2014-03-23 17:05:07', '0000-00-00 00:00:00', 0),
('532eb20c9be39', 1, '2014-03-23 17:06:04', '2014-04-02 17:06:04', '0000-00-00 00:00:00', 0),
('532eb23422671', 1, '2014-03-23 17:06:44', '2014-03-26 17:06:44', '0000-00-00 00:00:00', 0),
('532eb25eb1f02', 1, '2014-03-23 17:07:26', '2014-03-26 17:07:26', '0000-00-00 00:00:00', 0),
('532ec3b4136d0', 1, '2014-03-23 18:21:24', '2014-03-26 18:21:24', '0000-00-00 00:00:00', 0),
('532ec3de689bb', 1, '2014-03-23 18:22:06', '2014-03-26 18:22:06', '0000-00-00 00:00:00', 0),
('532ec4001a352', 1, '2014-03-23 18:22:40', '2014-03-26 18:22:40', '0000-00-00 00:00:00', 0),
('532ec41b4fe8e', 1, '2014-03-23 18:23:07', '2014-03-26 18:23:07', '0000-00-00 00:00:00', 0),
('532ec454ae99e', 1, '2014-03-23 18:24:04', '2014-03-26 18:24:04', '0000-00-00 00:00:00', 0),
('532ec4dfb6953', 1, '2014-03-23 18:26:23', '2014-03-26 18:26:23', '0000-00-00 00:00:00', 0),
('532ec4fde8f64', 1, '2014-03-23 18:26:53', '2014-03-26 18:26:53', '0000-00-00 00:00:00', 0),
('532ec5b5c3b6d', 1, '2014-03-23 18:29:57', '2014-03-26 18:29:57', '0000-00-00 00:00:00', 0),
('532ec6064f828', 1, '2014-03-23 18:31:18', '2014-03-26 18:31:18', '0000-00-00 00:00:00', 0),
('532ec6371d3d6', 1, '2014-03-23 18:32:07', '2014-03-26 18:32:07', '0000-00-00 00:00:00', 0),
('532ec6572cce4', 18, '2014-03-23 18:32:39', '2014-03-26 18:32:39', '0000-00-00 00:00:00', 0),
('532ec6846c4fb', 18, '2014-03-23 18:33:24', '2014-03-28 18:33:24', '2014-03-26 00:57:26', 0),
('5341303f4b570', 18, '2014-04-06 17:45:19', '2014-04-09 17:45:19', '0000-00-00 00:00:00', 0),
('5341323ed1c49', 18, '2014-04-06 17:53:50', '2014-04-09 17:53:50', '0000-00-00 00:00:00', 0),
('5341324d2f9c3', 18, '2014-04-06 17:54:05', '2014-04-09 17:54:05', '0000-00-00 00:00:00', 0),
('5517761802d7d', 36, '2015-03-29 10:48:40', '2015-04-01 10:48:40', '0000-00-00 00:00:00', 0),
('551776275809c', 36, '2015-03-29 10:48:55', '2015-04-01 10:48:55', '0000-00-00 00:00:00', 0),
('551777248c873', 36, '2015-03-29 10:53:08', '2015-04-01 10:53:08', '0000-00-00 00:00:00', 0),
('55177beebf3f9', 36, '2015-03-29 11:13:34', '2015-04-01 11:13:34', '0000-00-00 00:00:00', 0),
('55177bfb1acf3', 36, '2015-03-29 11:13:47', '2015-04-01 11:13:47', '0000-00-00 00:00:00', 0),
('551784cfb9c46', 36, '2015-03-29 11:51:27', '2015-04-01 11:51:27', '0000-00-00 00:00:00', 0),
('551786016ea39', 36, '2015-03-29 11:56:33', '2015-04-01 11:56:33', '0000-00-00 00:00:00', 0),
('551789e170427', 36, '2015-03-29 12:13:05', '2015-04-01 12:13:05', '0000-00-00 00:00:00', 0),
('55178a5126fa6', 36, '2015-03-29 12:14:57', '2015-04-01 12:14:57', '0000-00-00 00:00:00', 0),
('55178b1548987', 26, '2015-03-29 12:18:13', '2015-04-01 12:18:13', '0000-00-00 00:00:00', 0),
('55178cd93b711', 26, '2015-03-29 12:25:45', '2015-04-01 12:25:45', '0000-00-00 00:00:00', 0),
('55178ed0d6ed5', 26, '2015-03-29 12:34:08', '2015-04-01 12:34:08', '0000-00-00 00:00:00', 0),
('55178efc6a401', 26, '2015-03-29 12:34:52', '2015-04-01 12:34:52', '0000-00-00 00:00:00', 0),
('551790ed721f5', 26, '2015-03-29 12:43:09', '2015-04-01 12:43:09', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sl_retailer`
--

CREATE TABLE IF NOT EXISTS `sl_retailer` (
  `RetailerID` bigint(11) NOT NULL,
  `ProductID` bigint(11) DEFAULT NULL,
  `ProductStatusID` int(11) DEFAULT NULL COMMENT 'get from sl_status New Used Refurbished, reference sl_status',
  `StatusDetail` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` decimal(20,2) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Remaining` int(11) DEFAULT NULL,
  `ImageLink` text COLLATE utf8_unicode_ci,
  `CityID` int(11) DEFAULT NULL,
  `DistrictID` int(11) DEFAULT NULL,
  `ShipTypeID` int(11) DEFAULT NULL,
  `ShipingCost` decimal(20,2) DEFAULT NULL,
  `ShippingDay` int(11) DEFAULT NULL,
  `ShippingDesc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentModeID` int(11) DEFAULT NULL,
  `BoxInfo` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Warranty` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Promotion` text COLLATE utf8_unicode_ci,
  `ShortDesc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `IsDeleted` int(1) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL COMMENT 'get from sl_status, Active, Deactive',
  `Status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Extra status,',
  PRIMARY KEY (`RetailerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_retailer`
--

INSERT INTO `sl_retailer` (`RetailerID`, `ProductID`, `ProductStatusID`, `StatusDetail`, `Price`, `Amount`, `Remaining`, `ImageLink`, `CityID`, `DistrictID`, `ShipTypeID`, `ShipingCost`, `ShippingDay`, `ShippingDesc`, `PaymentModeID`, `BoxInfo`, `Warranty`, `Promotion`, `ShortDesc`, `Description`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `StatusID`, `Status`) VALUES
(1, 32, 1, NULL, 1700000.00, 1, 1, 'http://ecx.images-amazon.com/images/I/51M3JbL6DPL._SL500_SS100_.jpg,http://media.vatgia.vn/ir_type6/izs1378868614.jpg,http://media.vatgia.vn/ir_type6/laz1365811039.jpg,http://media.vatgia.vn/ir_type6/laz1365811039.jpg,http://media.vatgia.vn/ir_type6/ypn1379922362.jpg', 1, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '12 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 101, NULL),
(2, 32, 2, NULL, 1000000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '6 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 100, NULL),
(3, 32, 1, NULL, 1200000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '12 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 100, NULL),
(4, 32, 2, NULL, 900000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '6 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 100, NULL),
(5, 32, 1, NULL, 1100000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '12 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 100, NULL),
(6, 32, 2, NULL, 1800000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '6 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 101, NULL),
(7, 32, 3, NULL, 1600000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '12 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 100, NULL),
(8, 32, 2, NULL, 11111111.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '6 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 101, NULL),
(9, 32, 3, NULL, 1400000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '12 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 100, NULL),
(10, 32, 3, NULL, 1200000.00, 1, 1, NULL, NULL, NULL, 1, 1.00, 1, 'Miễn phí nội thành. Giao hàng trong 24h', 1, '1 sạc, 1 tai nghe', '6 tháng', 'Tang tai nghe, mien dan man hinh', 'San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom nay San pham cua ngay hom', 'Khong the tim duoc san pham tot hon', 1, '1998-02-01 00:00:00', NULL, '1999-02-01 00:00:00', NULL, '1990-02-01 00:00:00', NULL, 101, NULL),
(11, 0, 1, NULL, 123.00, 0, 0, '', NULL, NULL, 1, 0.00, 0, '', 0, '12', '', '', '', '', 1, '1998-02-01 00:00:00', 1, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, ''),
(12, 28, 1, NULL, 123.00, 0, 0, '', NULL, NULL, 1, 0.00, 0, '', 0, 'hang', '', '', '', '', 1, '1998-02-01 00:00:00', 1, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, ''),
(13, 28, 1, NULL, 123.00, 0, 0, 'hinh', NULL, NULL, 1, 0.00, 0, '', 0, 'hang', '', '', '', '', 26, '1998-02-01 00:00:00', 1, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, ''),
(14, 28, 1, NULL, 123.00, 0, 0, 'hinnh', NULL, NULL, 1, 0.00, 0, '', 0, 'hang', '', '', '', '', 26, '1998-02-01 00:00:00', 1, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, ''),
(15, 28, 1, NULL, 123123213.00, 0, 0, 'hinh minh hoa', NULL, NULL, 1, 0.00, 0, '', 0, 'thong tin giao hang', '', '', '', '', 26, '1998-02-01 00:00:00', 26, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, ''),
(16, 28, 1, NULL, 123123213.00, 0, 0, 'hinh minh hoa', NULL, NULL, 1, 0.00, 0, '', 0, 'thong tin giao hang', '', '', '', '', 26, '1998-02-01 00:00:00', 26, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 1, NULL, ''),
(17, 28, 1, 'mới 100%', 1000000.00, 0, 0, 'MInh họa', 1, 0, 0, 0.00, 0, 'Free', 0, 'fullbox', '', '', 'Sản phẩm tuyệt vời của Nokia\n', '<p>Sản phẩm chi tiet tuyệt vời của Nokia</p>\n', 26, '2014-10-12 18:14:53', 26, '1999-02-01 00:00:00', 26, '2014-11-16 00:00:00', 1, 101, '1'),
(18, 28, 1, NULL, 12222222.00, 0, 0, 'hinh mih hoa moi cap nhat', 2, 0, 0, 0.00, 0, 'thong tin giao thang1 moi cap nhat', 0, '', '', '', '', '<p>thog tin chi tiet moi cap nhat</p>\n', 26, '2014-10-15 19:52:52', 26, '1999-02-01 00:00:00', 26, '2014-11-16 00:00:00', 1, 101, '1'),
(19, 25, 1, 'moi 100%', 10000000.00, 0, 0, 'hinh anh', 1, 0, 0, 0.00, 0, 'thong tin ghao hang', 0, '', '', '', '', '<p>thong tin chi tiet</p>\n', 26, '2014-10-15 19:54:45', 26, '1999-02-01 00:00:00', 26, '2014-11-16 00:00:00', 1, 101, '1'),
(20, 32, 1, NULL, 15000000.00, 0, 0, 'http://g-ecx.images-amazon.com/images/G/01/digital/video/merch/gateway/Top10Takeover/PIV-GW-Takeover_TopTen_FinalCrop-V2_10-17._V322051003_.jpg, http://g-ecx.images-amazon.com/images/G/01/digital/video/merch/gateway/Top10Takeover/PIV-GW-Takeover_TopTen_Fi', 1, 0, 0, 0.00, 0, '15 ngay giao hang', 0, '', '', '', '', '<hr class="bucketDivider" noshade="noshade" size="1" style="box-sizing: border-box; border-top-width: 0px; line-height: 19px; margin-top: 0px; margin-bottom: -18px; filter: none; z-index: 0; zoom: 1; font-family: Arial, sans-serif; height: 44px !important; background-image: -webkit-linear-gradient(top, rgb(221, 221, 221), rgb(247, 247, 247) 3px, white); background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" />\n<div class="bucket" id="quickPromoBucketContent" style="box-sizing: border-box; padding: 0px 0px 26px; font-family: Arial, sans-serif; line-height: 19px;"><a id="productPromotions" name="productPromotions" style="box-sizing: border-box; color: rgb(0, 102, 192);"></a>\n\n<h2 style="box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 21px; line-height: 1.3;">Special Offers and Product Promotions</h2>\n\n<div class="content" style="box-sizing: border-box; margin-left: 0px;">\n<ul class="qpUL" style="box-sizing: border-box; margin: 0px 0px 18px 18px; padding-right: 0px; padding-left: 0px;">\n	<li style="box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;">\n	<div class="amabot_widget" style="box-sizing: border-box;"><b style="box-sizing: border-box;">Warranty Offer:</b> All <a href="http://www.amazon.com/s/ref=amb_link_83440431_1?ie=UTF8&brand=Breitling%20&emi=ATVPDKIKX0DER&node=377110011&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=special-offers-1&pf_rd_r=1T3NKTXGZG9R4SCKDW7K&pf_rd_t=201&pf_rd_p=1393153502&pf_rd_i=B0093TXE8E" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);">Breitling watches</a> sold by Amazon.com are covered by an industry leading limited two-year warranty at no additional cost (<a href="http://www.amazon.com/2-Year-Limited-Watch-Warranty-Watches/b/ref=amb_link_83440431_2?ie=UTF8&node=678277011&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=special-offers-1&pf_rd_r=1T3NKTXGZG9R4SCKDW7K&pf_rd_t=201&pf_rd_p=1393153502&pf_rd_i=B0093TXE8E" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);">see details</a>). Amazon.com in some cases buys watches from authorized dealers, distributors, and other established lines of distribution within the watch industry. In these cases, the manufacturer’s warranty may not apply because we have not purchased the watches directly from the manufacturer. When the manufacturer&#39;s warranty may not be available, Amazon.com offers this warranty for your watch. This applies only to products sold by Amazon.com. Does not apply to products sold on our site by third-party merchants or through third-party areas such as Amazon.com Marketplace. <a href="http://www.amazon.com/s/ref=amb_link_83440431_3?ie=UTF8&brand=Breitling%20&emi=ATVPDKIKX0DER&node=377110011&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=special-offers-1&pf_rd_r=1T3NKTXGZG9R4SCKDW7K&pf_rd_t=201&pf_rd_p=1393153502&pf_rd_i=B0093TXE8E" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);">Shop Breitling watches Direct from Amazon.com</a></div>\n	</li>\n</ul>\n\n<ul class="qpUL" style="box-sizing: border-box; margin-top: -5px; margin-right: 0px; margin-left: 18px; padding-right: 0px; padding-left: 0px; margin-bottom: 0px !important;">\n	<li style="box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;"><span class="issuance-banner" style="box-sizing: border-box;"><a href="http://www.amazon.com/gp/product/B00LXNZRVU?pr=discoveritchrome&inc=discoveritchrome2&ts=9uyuzl245ihk46o1xht33yj9qtms0pc&dasin=B0093TXE8E&plattr=D_PREM&place=detailpage&imp=A19BTR815P4UJL" id="issuance-banner" style="box-sizing: border-box; text-decoration: none; color: rgb(51, 51, 51);" target="_blank"><b style="box-sizing: border-box;">Get a $100 Amazon.com Gift Card:</b> Get the <span style="box-sizing: border-box; color: rgb(0, 85, 170);">Discover it chrome</span> card and get a <b style="box-sizing: border-box; color: rgb(177, 39, 4);">$100.00</b> Amazon.com Gift Card* after your first purchase within 3 months. <span style="box-sizing: border-box; color: rgb(0, 85, 170);">Learn more.</span></a></span></li>\n</ul>\n</div>\n</div>\n\n<p><a id="moreAboutThisProduct" name="moreAboutThisProduct" style="box-sizing: border-box; color: rgb(0, 102, 192); font-family: Arial, sans-serif; line-height: 19px; background-color: rgb(255, 255, 255);"></a></p>\n\n<div class="feature" data-feature-name="technicalSpecifications" id="technicalSpecifications_feature_div" style="box-sizing: border-box; font-family: Arial, sans-serif; line-height: 19px;">\n<div class="a-divider a-divider-section" style="box-sizing: border-box;">\n<div class="a-divider-inner" style="box-sizing: border-box; height: 44px; margin-bottom: -18px; filter: none; z-index: 0; zoom: 1; background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.137255), rgba(0, 0, 0, 0.027451) 3px, rgba(0, 0, 0, 0));"> </div>\n</div>\n\n<h2 style="box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 21px; line-height: 1.3;">Product Specifications</h2>\n\n<div class="a-section a-spacing-micro" style="box-sizing: border-box; margin-bottom: 22px;"> </div>\n\n<div class="a-row" style="box-sizing: border-box; width: 1314px;">\n<div class="a-column a-span6 a-spacing-base a-ws-span6" style="box-sizing: border-box; margin-bottom: 14px !important; margin-right: 26.265625px; float: left; min-height: 1px; overflow: visible; width: 643.171875px;">\n<h5 class="a-spacing-small a-spacing-top-small" style="box-sizing: border-box; padding: 0px; margin-top: 10px !important; margin-right: 0px; margin-bottom: 10px !important; margin-left: 0px; font-weight: bold; font-size: 13px; line-height: 19px;">Watch Information</h5>\n\n<table class="a-keyvalue a-spacing-mini" id="Watch Information" style="box-sizing: border-box; margin-bottom: 22px; border-collapse: collapse; width: 643px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(231, 231, 231);">\n	<tbody style="box-sizing: border-box;">\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Brand, Seller, or Collection Name</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Breitling</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Model number</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">A7338710-BB49SS</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Part Number</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">A7338710-BB49SS</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Model Year</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">2011</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Item Shape</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Round</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);"><span class="a-declarative" data-a-popover="{"position":"triggerRight","cache":"true","name":"Dial window material type","width":"500","scrollable":"true","header":"Dial window material type","url":"/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&keyLookUp=watch_help_attr-name_dial_window_material_type"}" data-action="a-popover" style="box-sizing: border-box;"><a class="a-link-normal a-popover-trigger" href="http://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_dial_window_material_type" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);" target="_blank"><span style="box-sizing: border-box; white-space: nowrap;"><span style="box-sizing: border-box; white-space: normal;">Dial window material type</span>﻿</span></a></span></th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Anti reflective sapphire</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Display Type</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Analog</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Clasp</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;"><span class="a-declarative" data-a-popover="{"position":"triggerRight","cache":"true","name":"Deployment Clasp","width":"500","scrollable":"true","header":"Deployment Clasp","url":"/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&keyLookUp=watch_help_attr-value_deployment-clasp"}" data-action="a-popover" style="box-sizing: border-box;"><a class="a-link-normal a-popover-trigger" href="http://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-value_deployment-clasp" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);" target="_blank"><span style="box-sizing: border-box; white-space: nowrap;"><span style="box-sizing: border-box; white-space: normal;">Deployment Clasp</span>﻿</span></a></span></td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Case material</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Stainless steel</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Case diameter</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">43 millimeters</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Case Thickness</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">13.45 millimeters</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Band Material</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Stainless steel</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Band length</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Men&#39;s Standard</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Band width</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">21.5 millimeters</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Band Color</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Silver</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Dial color</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Black</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Bezel material</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Stainless steel</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);"><span class="a-declarative" data-a-popover="{"position":"triggerRight","cache":"true","name":"Bezel function","width":"500","scrollable":"true","header":"Bezel function","url":"/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&keyLookUp=watch_help_attr-name_bezel_function"}" data-action="a-popover" style="box-sizing: border-box;"><a class="a-link-normal a-popover-trigger" href="http://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_bezel_function" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);" target="_blank"><span style="box-sizing: border-box; white-space: nowrap;"><span style="box-sizing: border-box; white-space: normal;">Bezel function</span>﻿</span></a></span></th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Unidirectional</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);"><span class="a-declarative" data-a-popover="{"position":"triggerRight","cache":"true","name":"Calendar","width":"500","scrollable":"true","header":"Calendar","url":"/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&keyLookUp=watch_help_attr-name_calendar_type"}" data-action="a-popover" style="box-sizing: border-box;"><a class="a-link-normal a-popover-trigger" href="http://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_calendar_type" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);" target="_blank"><span style="box-sizing: border-box; white-space: nowrap;"><span style="box-sizing: border-box; white-space: normal;">Calendar</span>﻿</span></a></span></th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Date</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Special features</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Second hand, Luminous, Tachometer, Screw down crown, Water Resistant</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Item weight</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">1.5 Pounds</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);"><span class="a-declarative" data-a-popover="{"position":"triggerRight","cache":"true","name":"Movement","width":"500","scrollable":"true","header":"Movement","url":"/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&keyLookUp=watch_help_attr-name_watch_movement_type"}" data-action="a-popover" style="box-sizing: border-box;"><a class="a-link-normal a-popover-trigger" href="http://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_watch_movement_type" style="box-sizing: border-box; text-decoration: none; color: rgb(0, 102, 192);" target="_blank"><span style="box-sizing: border-box; white-space: nowrap;"><span style="box-sizing: border-box; white-space: normal;">Movement</span>﻿</span></a></span></th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Quartz movement</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Water resistant depth</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">990 Feet</td>\n		</tr>\n		<tr style="box-sizing: border-box;">\n			<th class="a-span5 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(224, 224, 224); margin-right: 0px; width: 265px; font-weight: normal; color: rgb(98, 98, 98); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important; background-color: rgb(243, 243, 243);">Warranty type</th>\n			<td class="a-span7 a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; margin-right: 0px; width: 378px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(231, 231, 231); float: none !important;">Contact seller of record</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</div>\n</div>\n', 26, '2014-10-19 11:03:53', 0, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, 101, '1'),
(21, 32, 1, '', 15000000.00, 0, 0, 'hinh anh', 1, 0, 0, 0.00, 0, 'a', 0, 'du bo', '', '', 'b', '<p>c</p>\n', 26, '2014-10-19 12:06:10', 0, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, 100, '1'),
(22, 32, 1, 'Unlocked, Màu Vàng', 16000000.00, 0, 0, 'a', 1, 0, 0, 0.00, 0, 'Thong tin giao hang', 0, 'du bo', '', '', 'tong tin tong quat', '<p>thog tin chi tiet moi cap nhat</p>\r\n', 26, '2014-10-19 12:07:33', 0, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, 100, '1'),
(23, 28, 1, 'like new 99%', 110000.00, 0, 0, 'minh hoa', 1, 0, 0, 0.00, 0, 'Free HCM', 0, 'Fullbox', '', '', 'tong quat NOKIA X_2', '<p>Chi tiet NOKIA X_2</p>\n', 26, '2014-11-16 16:01:12', 0, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, '1'),
(24, 119, 1, 'Moi 100%', 10000000.00, 0, 0, '', 1, 0, 0, 0.00, 0, 'Free Noi Thanh', 0, 'Full Box', '', '', 'Hang moi 100%', '<p>Hang moi 100%</p>\n', 26, '2014-12-25 21:07:22', 0, '1999-02-01 00:00:00', 0, '1990-02-01 00:00:00', 0, NULL, '1'),
(25, 1, 1, 'Máy nhập từ Singapore', 12000000.00, 0, 0, 'http://store.storeimages.cdn-apple.com/4491/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone5s/specs/iphone5s-specs-size-2013?wid=230&hei=245&fmt=png-alpha&qlt=95&.v=1410265277494;http://images.gizmag.com/inline/htc-one-m8-vs-iphone-5s-hands-on-comparison-0.jpg; https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShEMtJj2Tf-OeB7vt8jEhZVqUoW_li7wcl8h6zPV7uBbw9oxrE; http://images.gizmag.com/inline/iphone-5s-vs-iphone-5c-33.jpg', 1, 0, 0, 0.00, 0, 'Nhận hàng tại 123 NVC', 0, '1 sạc, 1 tai nghe, 1 dây sạc, full box', '', '', '', '<p>....</p>\n', 26, '2015-03-29 16:27:40', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `sl_role`
--

CREATE TABLE IF NOT EXISTS `sl_role` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_setting`
--

CREATE TABLE IF NOT EXISTS `sl_setting` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_setting`
--

INSERT INTO `sl_setting` (`SettingID`, `SettingName`, `SettingValue`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'CurrencyID', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_ship_type`
--

CREATE TABLE IF NOT EXISTS `sl_ship_type` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sl_status`
--

CREATE TABLE IF NOT EXISTS `sl_status` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_status`
--

INSERT INTO `sl_status` (`StatusID`, `StatusName`, `Type`, `ExtraInfo`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `DeletedBy`, `DeletedDate`, `IsDeleted`, `Status`) VALUES
(1, 'Hàng mới', 10, 'Loại sản phẩm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Hàng cũ', 10, 'Loại sản phẩm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Hàng refurbished', 10, 'Loại sản phẩm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Thông tin sản phẩm', 11, 'Thuộc tính bán lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Thông tin giao hàng', 11, 'Thuộc tính bán lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Thuộc tính sản phẩm', 12, 'Thuộc tính sản phẩm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'TDDD', 30, 'label.gia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Hnamobile', 30, 'div.dLeftPrice p', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(32, 'VienThongA', 30, 'div.product-value span.product-price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'FTPShop', 30, 'div.price-box span.price-product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'CellPhone HCM', 30, 'div.price-box span#price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Inactive', 1, 'General status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Active', 1, 'General status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_user`
--

CREATE TABLE IF NOT EXISTS `sl_user` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_user`
--

INSERT INTO `sl_user` (`UserID`, `UserName`, `Password`, `FullName`, `BirthDate`, `Address`, `Phone`, `Email`, `Sex`, `Identity`, `RoleID`, `UserRankID`, `Avatar`, `AccountID`, `IsActived`, `CreatedDate`, `CreatedBy`, `UpdatedDate`, `UpdatedBy`, `DeletedDate`, `DeletedBy`) VALUES
(0, 'test1', 'eb98752bc1b6999ca65347a102faaa01', 'Viet Le Thanh', '1990-07-12 00:00:00', '', '', 'test1@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'vle1', 'abcd1234', 'viet le', '1990-07-12 00:00:00', '', '', 'vle1@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'sysnify_admin', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '1990-07-12 00:00:00', '', '', 'sweetlovelx@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'vle2', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '1990-07-12 00:00:00', '', '', 'vle2@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'vle3', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle3@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'vle4', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle4@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'vle5', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle5@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'vle6', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle6@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'vle7', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle7@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'vle8', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle8@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'vle9', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle9@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'vle10', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle10@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'vle11', '11468ff794e1881a4ae0e665a689a93f', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle11@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'vle13', 'd2819f8316763ccab523a35f8c6054db', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle12@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'vle14', 'b17efae2b4d14f0479bb624ccff64bdb', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle14@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'vle15', '76017e2f7e366a1b3951533395630c63', 'Viet Le', '0000-00-00 00:00:00', '', '', 'vle15@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'km_test2', '1fbb05be472562e641dfa83897736ead', 'KM Test 2', '1970-01-01 07:00:00', '', '', 'kmtest2@yahoo.com', 1, '', 1, 0, 'file/avatar/18_1848.jpg', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'km_test1', '7b2fdf37f6d84d9590f020688a04f9c0', 'kmtest1@timkm.com', '1988-06-16 00:00:00', '', '', 'kmtest1@timkm.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'km_test3', '695283d348e9fa20633a7334c766b421', 'l viet', '1988-08-17 00:00:00', '', '', 'kmtest3@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'a1', 'f7a6a88274a12400473377f0f737cca4', 'a1', '1988-07-01 00:00:00', '', '', 'a1@yahoo.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'km_test7', '47b63e37aa46f3d6ef8c84f5463aa10f', 'Viet Le', '1990-11-29 00:00:00', '', '', 'km_test7@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'km_test5', '42adcee2c83fb3d31216b7363ba769ff', 'Viet Le', '1990-03-01 00:00:00', '', '', 'km5@km.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'km_6', '5737c0da3708c6e575978971c0231a57', 'Viet Le', '1990-02-01 00:00:00', '', '', 'km6@km.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'km_7', '7ff075ede49caa2c64bcc9bcfabe4605', 'Viet', '1990-02-01 00:00:00', '', '', 'km7@km.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'viet', '3b9658c68b4a51ac91d4414a910efa45', 'Viet KM', '2000-02-01 00:00:00', '', '', 'viet@timkm.vn', 1, '', 1, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'test2', '2e2326fd7d27f976a0fe8debfcc8181e', 'Viet Le', '2000-03-08 00:00:00', '', '', 'test2@sysnify.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'viet123', '4aec14643b94840b190a78e83b348ff4', 'le viet', '1990-02-07 00:00:00', '', '', 'viet123@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:17:03', NULL, NULL, NULL, NULL, NULL),
(29, 'viet1234', '83231058c145ff589277cea6c71baa2a', 'le viet', '1990-02-07 00:00:00', '', '', 'viet1234@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:18:27', NULL, NULL, NULL, NULL, NULL),
(30, 'viet12345', 'c025a996012f55929bf8097895ae129d', 'le viet', '1990-02-07 00:00:00', '', '', 'viet12345@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:19:05', NULL, NULL, NULL, NULL, NULL),
(31, 'viet123456', '2217bd69053c9b5450b1b7a04d86dc3a', 'le viet', '1990-02-07 00:00:00', '', '', 'viet123456@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:21:39', NULL, NULL, NULL, NULL, NULL),
(32, 'viet1234567', 'fc8f4c079d4a63b5a531677a38c84d0f', 'le viet', '1990-02-07 00:00:00', '', '', 'viet1234567@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:27:27', NULL, NULL, NULL, NULL, NULL),
(33, 'viet12345678', '6b2640c9aec23a6f1995ec1fc0b77db9', 'le viet', '1990-02-07 00:00:00', '', '', 'viet12345678@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:28:51', NULL, NULL, NULL, NULL, NULL),
(34, 'viet123456789', 'fe37e6e51ea992ac65d3f42488ef7a26', 'le viet', '1990-02-07 00:00:00', '', '', 'viet123456789@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:30:15', NULL, NULL, NULL, NULL, NULL),
(35, 'viet13', 'c4d32713ef1c04551e3631ddc190600f', 'le viet', '1990-02-07 00:00:00', '', '', 'viet13@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-03 22:31:38', NULL, NULL, NULL, NULL, NULL),
(36, 'oceo1', '9e48e854cc5d46d5cae4f11951a3643f', 'Oceo Tester', '2000-02-01 00:00:00', '', '', 'sweetlovelx@yahoo.com', 1, '', 1, 0, '', 0, '0000-00-00 00:00:00', '2015-03-15 16:31:57', NULL, NULL, NULL, NULL, NULL),
(37, 'oceo2', '3ef4993be9011d54e3805c4d7a711664', 'Viet Le', '2004-06-08 00:00:00', '', '', 'oceo2@gmail.com', 1, '', 0, 0, '', 0, '0000-00-00 00:00:00', '2015-03-29 12:46:29', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_user_rank`
--

CREATE TABLE IF NOT EXISTS `sl_user_rank` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
