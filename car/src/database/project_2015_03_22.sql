CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand_model_mapping`
--

DROP TABLE IF EXISTS `brand_model_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_model_mapping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`brand_id`,`model_id`),
  KEY `fk_brand_model_mapping_carbrand1_idx` (`brand_id`),
  KEY `fk_brand_model_mapping_carmodel1_idx` (`model_id`),
  CONSTRAINT `fk_bran_model_mapping_carbrand1` FOREIGN KEY (`brand_id`) REFERENCES `carbrand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bran_model_mapping_carmodel1` FOREIGN KEY (`model_id`) REFERENCES `carmodel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_model_mapping`
--

LOCK TABLES `brand_model_mapping` WRITE;
/*!40000 ALTER TABLE `brand_model_mapping` DISABLE KEYS */;
INSERT INTO `brand_model_mapping` (`id`, `brand_id`, `model_id`) VALUES (1,2,1),(2,2,2),(3,2,3),(4,3,10),(5,3,11),(6,3,12),(7,4,13);
/*!40000 ALTER TABLE `brand_model_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_year` varchar(4) DEFAULT NULL,
  `body_number` varchar(45) DEFAULT NULL,
  `cylinder` varchar(4) DEFAULT NULL,
  `fuel_tank` varchar(2) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `register_year` varchar(4) DEFAULT NULL,
  `distance` varchar(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `gear` varchar(255) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telepone` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `brand_model_mapping_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`member_id`,`brand_model_mapping_id`),
  KEY `fk_car_member1_idx` (`member_id`),
  KEY `fk_car_brand_model_mapping1_idx` (`brand_model_mapping_id`),
  CONSTRAINT `fk_car_brand_model_mapping1` FOREIGN KEY (`brand_model_mapping_id`) REFERENCES `brand_model_mapping` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` (`id`, `car_year`, `body_number`, `cylinder`, `fuel_tank`, `color`, `detail`, `price`, `register_year`, `distance`, `status`, `gear`, `province`, `address`, `telepone`, `email`, `create_dt`, `update_dt`, `member_id`, `brand_model_mapping_id`) VALUES (2,'2014','CAMRY-00001','2.6','54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2015-03-22 07:18:35',1,1),(4,'2013','CAMRY-00002','2.0','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',1,1),(6,'2014','ALTIS-00001','1.8','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',1,2),(7,'2014','ALTIS-00002','1.6','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',1,2),(8,'2014','VIOS-00001','1.5','45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',1,3),(9,'2013','ACCORD-00001','2.4','50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',7,4),(10,'2014','ACCORD-00002','2.0','50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',7,4),(11,'2014','CIVIC-00001','2.0','50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',7,5),(12,'2014','CIVIC-00002','1.8','50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',7,5),(13,'2013','CITY-00001','1.6','45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-25 17:23:54','2014-11-25 17:23:54',7,6);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carbrand`
--

DROP TABLE IF EXISTS `carbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carbrand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carbrand`
--

LOCK TABLES `carbrand` WRITE;
/*!40000 ALTER TABLE `carbrand` DISABLE KEYS */;
INSERT INTO `carbrand` (`id`, `name`) VALUES (2,'TOYOTA'),(3,'HONDA'),(4,'ISUZU'),(5,'Test_Brand_edit');
/*!40000 ALTER TABLE `carbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carimages`
--

DROP TABLE IF EXISTS `carimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carimages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`car_id`),
  KEY `fk_carimages_car_idx` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carimages`
--

LOCK TABLES `carimages` WRITE;
/*!40000 ALTER TABLE `carimages` DISABLE KEYS */;
INSERT INTO `carimages` (`id`, `name`, `path`, `detail`, `create_dt`, `car_id`) VALUES (1,'Toyota_Camry_2_4','img/upload/Toyota_Camry_2_4.jpg',NULL,'2014-11-25 17:23:54',0),(2,'Toyota_Camry_2_4','img/upload/Toyota_Camry_2_4_2.jpg',NULL,'2014-11-25 17:23:54',0),(3,'Toyota_Camry_2_4','img/upload/Toyota_Camry_2_4_3.jpg',NULL,'2014-11-25 17:23:54',0),(4,'Toyota_Camry_2_0','img/upload/Toyota_Camry_2_0.jpg',NULL,'2014-11-25 17:23:54',4),(5,'Toyota_Altis_1.8','img/upload/Toyota_Altis_1.8.jpg',NULL,'2014-11-25 17:23:54',6),(6,'Toyota_Altis_1.8','img/upload/Toyota_Altis_1.8_2.jpg',NULL,'2014-11-25 17:23:54',6),(7,'Toyota_Altis_1.6','img/upload/Toyota_Altis_1_6.jpg',NULL,'2014-11-25 17:23:54',7),(8,'Toyota_Vios_1_6','img/upload/Toyota_Vios_1_6.jpg',NULL,'2014-11-25 17:23:54',8),(9,'Toyota_Vios_1_6','img/upload/Toyota_Vios_1_6_2.jpg',NULL,'2014-11-25 17:23:54',8),(10,'Honda_Accord_2_4','img/upload/Honda_Accord_2_4.jpg',NULL,'2014-11-25 17:23:54',9),(11,'Honda_Accord_2_4','img/upload/Honda_Accord_2_4_2.jpg',NULL,'2014-11-25 17:23:54',9),(12,'Honda_Accord_2_0','img/upload/Honda_Accord_2_0.jpg',NULL,'2014-11-25 17:23:54',10),(13,'Honda_Civic_2_0','img/upload/Honda_Civic_2_0.jpg',NULL,'2014-11-25 17:23:54',11),(14,'Honda_Civic_1_8','img/upload/Honda_Civic_1_8.jpg',NULL,'2014-11-25 17:23:54',12),(15,'Honda_Civic_1_8','img/upload/Honda_Civic_1_8_2.jpg',NULL,'2014-11-25 17:23:54',12),(16,'Honda_Civic_1_8','img/upload/Honda_Civic_1_8_3.jpg',NULL,'2014-11-25 17:23:54',12),(17,'Honda_City_1_5','img/upload/Honda_City_1_5.jpg',NULL,'2014-11-25 17:23:54',13),(18,'Honda_City_1_5','img/upload/Honda_City_1_5_2.jpg',NULL,'2014-11-25 17:23:54',13);
/*!40000 ALTER TABLE `carimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carmodel`
--

DROP TABLE IF EXISTS `carmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carmodel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carmodel`
--

LOCK TABLES `carmodel` WRITE;
/*!40000 ALTER TABLE `carmodel` DISABLE KEYS */;
INSERT INTO `carmodel` (`id`, `name`) VALUES (1,'CAMRY'),(2,'ALTIS'),(3,'VIOS'),(10,'ACCORD'),(11,'CIVIC'),(12,'CITY'),(13,'D-MAX');
/*!40000 ALTER TABLE `carmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`role_id`),
  KEY `fk_member_role1_idx` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `name`, `lastname`, `gender`, `birthdate`, `address`, `phoneNumber`, `email`, `password`, `detail`, `create_dt`, `update_dt`, `role_id`) VALUES (1,'Administrator','Administrator','','2014-05-05','','','admin@mail.com','admin',NULL,'2014-12-20 04:49:56','2014-12-20 04:49:56',1),(7,'Member','Member','','2014-05-05','','','member@mail.com','member',NULL,'2014-12-20 04:49:56','2014-12-20 04:49:56',2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `detail` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `name`, `detail`) VALUES (1,'ผู้ดูแลระบบ',''),(2,'สมาชิก','');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-22 14:25:05
