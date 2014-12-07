-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2014 at 03:30 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `car_year` varchar(4) DEFAULT NULL,
  `body_number` varchar(45) DEFAULT NULL,
  `cylinder` varchar(4) DEFAULT NULL,
  `fuel_tank` varchar(2) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand_id`, `model_id`, `car_year`, `body_number`, `cylinder`, `fuel_tank`, `color`, `detail`, `create_dt`, `update_dt`) VALUES
(2, 2, 1, '2014', 'CAMRY-00001', '2.6', '55', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(4, 2, 1, '2013', 'CAMRY-00002', '2.0', '55', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(6, 2, 2, '2014', 'ALTIS-00001', '1.8', '55', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(7, 2, 2, '2014', 'ALTIS-00002', '1.6', '55', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(8, 2, 3, '2014', 'VIOS-00001', '1.5', '45', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(9, 3, 10, '2013', 'ACCORD-00001', '2.4', '50', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(10, 3, 10, '2014', 'ACCORD-00002', '2.0', '50', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(11, 3, 11, '2014', 'CIVIC-00001', '2.0', '50', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(12, 3, 11, '2014', 'CIVIC-00002', '1.8', '50', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54'),
(13, 3, 12, '2013', 'CITY-00001', '1.6', '45', NULL, NULL, '2014-11-25 17:23:54', '2014-11-25 17:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `carbrand`
--

CREATE TABLE IF NOT EXISTS `carbrand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `carbrand`
--

INSERT INTO `carbrand` (`id`, `name`) VALUES
(2, 'TOYOTA'),
(3, 'HONDA'),
(4, 'ISUZU');

-- --------------------------------------------------------

--
-- Table structure for table `carimages`
--

CREATE TABLE IF NOT EXISTS `carimages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `car_id` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CarImages_FKIndex1` (`car_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `carimages`
--

INSERT INTO `carimages` (`id`, `car_id`, `name`, `path`, `detail`, `create_dt`) VALUES
(1, 2, 'Toyota_Camry_2_4', 'img/upload/Toyota_Camry_2_4.jpg', NULL, '2014-11-25 17:23:54'),
(2, 2, 'Toyota_Camry_2_4', 'img/upload/Toyota_Camry_2_4_2.jpg', NULL, '2014-11-25 17:23:54'),
(3, 2, 'Toyota_Camry_2_4', 'img/upload/Toyota_Camry_2_4_3.jpg', NULL, '2014-11-25 17:23:54'),
(4, 4, 'Toyota_Camry_2_0', 'img/upload/Toyota_Camry_2_0.jpg', NULL, '2014-11-25 17:23:54'),
(5, 6, 'Toyota_Altis_1.8', 'img/upload/Toyota_Altis_1.8.jpg', NULL, '2014-11-25 17:23:54'),
(6, 6, 'Toyota_Altis_1.8', 'img/upload/Toyota_Altis_1.8_2.jpg', NULL, '2014-11-25 17:23:54'),
(7, 7, 'Toyota_Altis_1.6', 'img/upload/Toyota_Altis_1_6.jpg', NULL, '2014-11-25 17:23:54'),
(8, 8, 'Toyota_Vios_1_6', 'img/upload/Toyota_Vios_1_6.jpg', NULL, '2014-11-25 17:23:54'),
(9, 8, 'Toyota_Vios_1_6', 'img/upload/Toyota_Vios_1_6_2.jpg', NULL, '2014-11-25 17:23:54'),
(10, 9, 'Honda_Accord_2_4', 'img/upload/Honda_Accord_2_4.jpg', NULL, '2014-11-25 17:23:54'),
(11, 9, 'Honda_Accord_2_4', 'img/upload/Honda_Accord_2_4_2.jpg', NULL, '2014-11-25 17:23:54'),
(12, 10, 'Honda_Accord_2_0', 'img/upload/Honda_Accord_2_0.jpg', NULL, '2014-11-25 17:23:54'),
(13, 11, 'Honda_Civic_2_0', 'img/upload/Honda_Civic_2_0.jpg', NULL, '2014-11-25 17:23:54'),
(14, 12, 'Honda_Civic_1_8', 'img/upload/Honda_Civic_1_8.jpg', NULL, '2014-11-25 17:23:54'),
(15, 12, 'Honda_Civic_1_8', 'img/upload/Honda_Civic_1_8_2.jpg', NULL, '2014-11-25 17:23:54'),
(16, 12, 'Honda_Civic_1_8', 'img/upload/Honda_Civic_1_8_3.jpg', NULL, '2014-11-25 17:23:54'),
(17, 13, 'Honda_City_1_5', 'img/upload/Honda_City_1_5.jpg', NULL, '2014-11-25 17:23:54'),
(18, 13, 'Honda_City_1_5', 'img/upload/Honda_City_1_5_2.jpg', NULL, '2014-11-25 17:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `carmodel`
--

CREATE TABLE IF NOT EXISTS `carmodel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  KEY `brand_id_2` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `carmodel`
--

INSERT INTO `carmodel` (`id`, `name`, `brand_id`) VALUES
(1, 'CAMRY', 2),
(2, 'ALTIS', 2),
(3, 'VIOS', 2),
(10, 'ACCORD', 3),
(11, 'CIVIC', 3),
(12, 'CITY', 3),
(13, 'D-MAX', 4);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Role_id` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Member_FKIndex1` (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
