-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: chitfund
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  `addressable_id` int(11) DEFAULT NULL,
  `addressable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,1,'Subscriber','2015-11-30 17:34:11','2015-11-30 17:34:11',NULL,586101,0,NULL),(2,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,1,'Company','2015-11-30 17:34:12','2015-11-30 17:34:12',NULL,586101,0,NULL),(3,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,2,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(4,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,3,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(5,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,4,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(6,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,5,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(7,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,6,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(8,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,7,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(9,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,8,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(10,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,9,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(11,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,10,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',NULL,586101,0,NULL),(12,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,11,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(13,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,12,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(14,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,13,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(15,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,14,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(16,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,15,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(17,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,16,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(18,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,17,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(19,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,18,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(20,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,19,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(21,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,20,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(22,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,21,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(23,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,22,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(24,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,23,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',NULL,586101,0,NULL),(25,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,24,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(26,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,25,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(27,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,26,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(28,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,27,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(29,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,28,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(30,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,29,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(31,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,30,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(32,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,31,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(33,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,32,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(34,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,33,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(35,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,34,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(36,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,35,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(37,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,36,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(38,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,37,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(39,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,38,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',NULL,586101,0,NULL),(40,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,39,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(41,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,40,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(42,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,41,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(43,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,42,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(44,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,43,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(45,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,44,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(46,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,45,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(47,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,46,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(48,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,47,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(49,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,48,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(50,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,49,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(51,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,50,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(52,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,51,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(53,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,52,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(54,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,53,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',NULL,586101,0,NULL),(55,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,54,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(56,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,55,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(57,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,56,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(58,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,57,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(59,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,58,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(60,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,59,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(61,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,60,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(62,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,61,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(63,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,62,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(64,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,63,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(65,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,64,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(66,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,65,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(67,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,66,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',NULL,586101,0,NULL),(68,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,67,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(69,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,68,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(70,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,69,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(71,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,70,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(72,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,71,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(73,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,72,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(74,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,73,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(75,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,74,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(76,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,75,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(77,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,76,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(78,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,77,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(79,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,78,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(80,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,79,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(81,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,80,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(82,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,81,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',NULL,586101,0,NULL),(83,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,82,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(84,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,83,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(85,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,84,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(86,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,85,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(87,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,86,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(88,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,87,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(89,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,88,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(90,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,89,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(91,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,90,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(92,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,91,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(93,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,92,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(94,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,93,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(95,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,94,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',NULL,586101,0,NULL),(96,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,95,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',NULL,586101,0,NULL),(97,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,96,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',NULL,586101,0,NULL),(98,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,97,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',NULL,586101,0,NULL),(99,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,98,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',NULL,586101,0,NULL),(100,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,99,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',NULL,586101,0,NULL),(101,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,100,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',NULL,586101,0,NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_configs`
--

DROP TABLE IF EXISTS `app_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_value` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_app_configs_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_configs`
--

LOCK TABLES `app_configs` WRITE;
/*!40000 ALTER TABLE `app_configs` DISABLE KEYS */;
INSERT INTO `app_configs` VALUES (1,'allow_user_login',1,'2015-11-30 17:34:10','2015-11-30 17:34:10',0,NULL),(2,'allow_online_poling',1,'2015-11-30 17:34:10','2015-11-30 17:34:10',0,NULL);
/*!40000 ALTER TABLE `app_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction_settings`
--

DROP TABLE IF EXISTS `auction_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auction_settings_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction_settings`
--

LOCK TABLES `auction_settings` WRITE;
/*!40000 ALTER TABLE `auction_settings` DISABLE KEYS */;
INSERT INTO `auction_settings` VALUES (1,'auction_minimum_bargaining_percentage',5,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(2,'auction_maximum_bargaining_percentage',30,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(3,'auction_commission',5,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL);
/*!40000 ALTER TABLE `auction_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auction_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `auction_amount` float DEFAULT NULL,
  `auction_date` date DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `collection_identification_id` int(11) DEFAULT NULL,
  `auction_rate` int(11) DEFAULT '0',
  `total_dividend` int(11) DEFAULT '0',
  `per_dividend` int(11) DEFAULT '0',
  `auction_commision` float DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auctions_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_ifsc_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_ac_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankable_id` int(11) DEFAULT NULL,
  `bankable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_bank_details_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (1,'Karnataka Bank Limited','JAL001','123456789',1,'Subscriber','2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(2,'Karnataka Bank Limited','JAL001','123456789',1,'Company','2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL),(3,'Karnataka Bank Limited','JAL001','123456789',2,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(4,'Karnataka Bank Limited','JAL001','123456789',3,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(5,'Karnataka Bank Limited','JAL001','123456789',4,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(6,'Karnataka Bank Limited','JAL001','123456789',5,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(7,'Karnataka Bank Limited','JAL001','123456789',6,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(8,'Karnataka Bank Limited','JAL001','123456789',7,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(9,'Karnataka Bank Limited','JAL001','123456789',8,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(10,'Karnataka Bank Limited','JAL001','123456789',9,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(11,'Karnataka Bank Limited','JAL001','123456789',10,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(12,'Karnataka Bank Limited','JAL001','123456789',11,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(13,'Karnataka Bank Limited','JAL001','123456789',12,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(14,'Karnataka Bank Limited','JAL001','123456789',13,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(15,'Karnataka Bank Limited','JAL001','123456789',14,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(16,'Karnataka Bank Limited','JAL001','123456789',15,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(17,'Karnataka Bank Limited','JAL001','123456789',16,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(18,'Karnataka Bank Limited','JAL001','123456789',17,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(19,'Karnataka Bank Limited','JAL001','123456789',18,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(20,'Karnataka Bank Limited','JAL001','123456789',19,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(21,'Karnataka Bank Limited','JAL001','123456789',20,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(22,'Karnataka Bank Limited','JAL001','123456789',21,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(23,'Karnataka Bank Limited','JAL001','123456789',22,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(24,'Karnataka Bank Limited','JAL001','123456789',23,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(25,'Karnataka Bank Limited','JAL001','123456789',24,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(26,'Karnataka Bank Limited','JAL001','123456789',25,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(27,'Karnataka Bank Limited','JAL001','123456789',26,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(28,'Karnataka Bank Limited','JAL001','123456789',27,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(29,'Karnataka Bank Limited','JAL001','123456789',28,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(30,'Karnataka Bank Limited','JAL001','123456789',29,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(31,'Karnataka Bank Limited','JAL001','123456789',30,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(32,'Karnataka Bank Limited','JAL001','123456789',31,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(33,'Karnataka Bank Limited','JAL001','123456789',32,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(34,'Karnataka Bank Limited','JAL001','123456789',33,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(35,'Karnataka Bank Limited','JAL001','123456789',34,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(36,'Karnataka Bank Limited','JAL001','123456789',35,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(37,'Karnataka Bank Limited','JAL001','123456789',36,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(38,'Karnataka Bank Limited','JAL001','123456789',37,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(39,'Karnataka Bank Limited','JAL001','123456789',38,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(40,'Karnataka Bank Limited','JAL001','123456789',39,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(41,'Karnataka Bank Limited','JAL001','123456789',40,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(42,'Karnataka Bank Limited','JAL001','123456789',41,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(43,'Karnataka Bank Limited','JAL001','123456789',42,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(44,'Karnataka Bank Limited','JAL001','123456789',43,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(45,'Karnataka Bank Limited','JAL001','123456789',44,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(46,'Karnataka Bank Limited','JAL001','123456789',45,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(47,'Karnataka Bank Limited','JAL001','123456789',46,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(48,'Karnataka Bank Limited','JAL001','123456789',47,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(49,'Karnataka Bank Limited','JAL001','123456789',48,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(50,'Karnataka Bank Limited','JAL001','123456789',49,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(51,'Karnataka Bank Limited','JAL001','123456789',50,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(52,'Karnataka Bank Limited','JAL001','123456789',51,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(53,'Karnataka Bank Limited','JAL001','123456789',52,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(54,'Karnataka Bank Limited','JAL001','123456789',53,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(55,'Karnataka Bank Limited','JAL001','123456789',54,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(56,'Karnataka Bank Limited','JAL001','123456789',55,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(57,'Karnataka Bank Limited','JAL001','123456789',56,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(58,'Karnataka Bank Limited','JAL001','123456789',57,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(59,'Karnataka Bank Limited','JAL001','123456789',58,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(60,'Karnataka Bank Limited','JAL001','123456789',59,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(61,'Karnataka Bank Limited','JAL001','123456789',60,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(62,'Karnataka Bank Limited','JAL001','123456789',61,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(63,'Karnataka Bank Limited','JAL001','123456789',62,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(64,'Karnataka Bank Limited','JAL001','123456789',63,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(65,'Karnataka Bank Limited','JAL001','123456789',64,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(66,'Karnataka Bank Limited','JAL001','123456789',65,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(67,'Karnataka Bank Limited','JAL001','123456789',66,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(68,'Karnataka Bank Limited','JAL001','123456789',67,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(69,'Karnataka Bank Limited','JAL001','123456789',68,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(70,'Karnataka Bank Limited','JAL001','123456789',69,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(71,'Karnataka Bank Limited','JAL001','123456789',70,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(72,'Karnataka Bank Limited','JAL001','123456789',71,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(73,'Karnataka Bank Limited','JAL001','123456789',72,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(74,'Karnataka Bank Limited','JAL001','123456789',73,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(75,'Karnataka Bank Limited','JAL001','123456789',74,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(76,'Karnataka Bank Limited','JAL001','123456789',75,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(77,'Karnataka Bank Limited','JAL001','123456789',76,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(78,'Karnataka Bank Limited','JAL001','123456789',77,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(79,'Karnataka Bank Limited','JAL001','123456789',78,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(80,'Karnataka Bank Limited','JAL001','123456789',79,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(81,'Karnataka Bank Limited','JAL001','123456789',80,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(82,'Karnataka Bank Limited','JAL001','123456789',81,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(83,'Karnataka Bank Limited','JAL001','123456789',82,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(84,'Karnataka Bank Limited','JAL001','123456789',83,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(85,'Karnataka Bank Limited','JAL001','123456789',84,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(86,'Karnataka Bank Limited','JAL001','123456789',85,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(87,'Karnataka Bank Limited','JAL001','123456789',86,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(88,'Karnataka Bank Limited','JAL001','123456789',87,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(89,'Karnataka Bank Limited','JAL001','123456789',88,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(90,'Karnataka Bank Limited','JAL001','123456789',89,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(91,'Karnataka Bank Limited','JAL001','123456789',90,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(92,'Karnataka Bank Limited','JAL001','123456789',91,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(93,'Karnataka Bank Limited','JAL001','123456789',92,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(94,'Karnataka Bank Limited','JAL001','123456789',93,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(95,'Karnataka Bank Limited','JAL001','123456789',94,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(96,'Karnataka Bank Limited','JAL001','123456789',95,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(97,'Karnataka Bank Limited','JAL001','123456789',96,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(98,'Karnataka Bank Limited','JAL001','123456789',97,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(99,'Karnataka Bank Limited','JAL001','123456789',98,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(100,'Karnataka Bank Limited','JAL001','123456789',99,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(101,'Karnataka Bank Limited','JAL001','123456789',100,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL);
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_collection_histories`
--

DROP TABLE IF EXISTS `chit_collection_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_collection_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chit_collection_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_collection_histories_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_collection_histories`
--

LOCK TABLES `chit_collection_histories` WRITE;
/*!40000 ALTER TABLE `chit_collection_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `chit_collection_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_collections`
--

DROP TABLE IF EXISTS `chit_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `chit_amount` float DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `collection_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `collection_identification_id` int(11) DEFAULT NULL,
  `last_dividend` int(11) DEFAULT '0',
  `is_dividend_deducted` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_collections_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_collections`
--

LOCK TABLES `chit_collections` WRITE;
/*!40000 ALTER TABLE `chit_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `chit_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_draw_periods`
--

DROP TABLE IF EXISTS `chit_draw_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_draw_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_draw_periods`
--

LOCK TABLES `chit_draw_periods` WRITE;
/*!40000 ALTER TABLE `chit_draw_periods` DISABLE KEYS */;
INSERT INTO `chit_draw_periods` VALUES (1,'10 days',10,'10 days','2015-11-30 17:43:37','2015-11-30 17:43:37'),(2,'20 days',20,'20 days','2015-11-30 17:43:37','2015-11-30 17:43:37'),(3,'30 days',30,'30 days','2015-11-30 17:43:37','2015-11-30 17:43:37'),(4,'40 days',40,'40 days','2015-11-30 17:43:38','2015-11-30 17:43:38');
/*!40000 ALTER TABLE `chit_draw_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_schemes`
--

DROP TABLE IF EXISTS `chit_schemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_schemes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chit_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chit_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chit_subscription_amount` int(11) DEFAULT NULL,
  `chit_total_amount` int(11) DEFAULT NULL,
  `no_of_subscriber` int(11) DEFAULT NULL,
  `no_of_months` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `subscription_over` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `permission_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  `chit_draw_period_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_schemes_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_schemes`
--

LOCK TABLES `chit_schemes` WRITE;
/*!40000 ALTER TABLE `chit_schemes` DISABLE KEYS */;
INSERT INTO `chit_schemes` VALUES (1,'chit name 1','chit description1',1,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:46:10','1','2015-11-02',0,NULL,1),(2,'chit name 2','chit description2',2,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:46:18','2','2015-11-02',0,NULL,1),(3,'chit name 3','chit description3',3,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:46:26','3','2015-11-02',0,NULL,2),(4,'chit name 4','chit description4',4,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:46:37','4','2015-11-02',0,NULL,2),(5,'chit name 5','chit description5',5,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:46:50','5','2015-11-02',0,NULL,3),(6,'chit name 6','chit description6',6,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:47:01','6','2015-11-02',0,NULL,3),(7,'chit name 7','chit description7',7,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:47:11','7','2015-11-02',0,NULL,4),(8,'chit name 8','chit description8',8,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:47:18','8','2015-11-02',0,NULL,4),(9,'chit name 9','chit description9',9,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:47:24','9','2015-11-02',0,NULL,4),(10,'chit name 10','chit description10',10,100000,10,10,'2015-11-02',1,1,'2015-11-30 17:36:40','2015-11-30 17:47:30','10','2015-11-02',0,NULL,4);
/*!40000 ALTER TABLE `chit_schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_transfers`
--

DROP TABLE IF EXISTS `chit_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_chit_id` int(11) DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `collection_identification_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `new_sub_chit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_transfers_on_sub_chit_id` (`sub_chit_id`),
  KEY `index_chit_transfers_on_subscriber_id` (`subscriber_id`),
  KEY `index_chit_transfers_on_collection_identification_id` (`collection_identification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_transfers`
--

LOCK TABLES `chit_transfers` WRITE;
/*!40000 ALTER TABLE `chit_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `chit_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_identifications`
--

DROP TABLE IF EXISTS `collection_identifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_identifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_collection_identifications_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_identifications`
--

LOCK TABLES `collection_identifications` WRITE;
/*!40000 ALTER TABLE `collection_identifications` DISABLE KEYS */;
INSERT INTO `collection_identifications` VALUES (1,'1  Installment','1  Installment','2015-11-02','2015-11-12',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(2,'2  Installment','2  Installment','2015-11-13','2015-11-23',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(3,'3  Installment','3  Installment','2015-11-24','2015-12-04',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(4,'4  Installment','4  Installment','2015-12-05','2015-12-15',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(5,'5  Installment','5  Installment','2015-12-16','2015-12-26',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(6,'6  Installment','6  Installment','2015-12-27','2016-01-06',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(7,'7  Installment','7  Installment','2016-01-07','2016-01-17',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(8,'8  Installment','8  Installment','2016-01-18','2016-01-28',1,'2015-11-30 17:51:58','2015-11-30 17:51:58',0,NULL),(9,'9  Installment','9  Installment','2016-01-29','2016-02-08',1,'2015-11-30 17:51:59','2015-11-30 17:51:59',0,NULL),(10,'10  Installment','10  Installment','2016-02-09','2016-02-19',1,'2015-11-30 17:51:59','2015-11-30 17:51:59',0,NULL),(11,'1  Installment','1  Installment','2015-11-02','2015-11-12',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(12,'2  Installment','2  Installment','2015-11-13','2015-11-23',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(13,'3  Installment','3  Installment','2015-11-24','2015-12-04',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(14,'4  Installment','4  Installment','2015-12-05','2015-12-15',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(15,'5  Installment','5  Installment','2015-12-16','2015-12-26',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(16,'6  Installment','6  Installment','2015-12-27','2016-01-06',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(17,'7  Installment','7  Installment','2016-01-07','2016-01-17',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(18,'8  Installment','8  Installment','2016-01-18','2016-01-28',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(19,'9  Installment','9  Installment','2016-01-29','2016-02-08',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(20,'10  Installment','10  Installment','2016-02-09','2016-02-19',2,'2015-11-30 17:52:12','2015-11-30 17:52:12',0,NULL),(21,'1  Installment','1  Installment','2015-11-02','2015-11-22',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(22,'2  Installment','2  Installment','2015-11-23','2015-12-13',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(23,'3  Installment','3  Installment','2015-12-14','2016-01-03',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(24,'4  Installment','4  Installment','2016-01-04','2016-01-24',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(25,'5  Installment','5  Installment','2016-01-25','2016-02-14',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(26,'6  Installment','6  Installment','2016-02-15','2016-03-06',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(27,'7  Installment','7  Installment','2016-03-07','2016-03-27',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(28,'8  Installment','8  Installment','2016-03-28','2016-04-17',3,'2015-11-30 17:52:24','2015-11-30 17:52:24',0,NULL),(29,'9  Installment','9  Installment','2016-04-18','2016-05-08',3,'2015-11-30 17:52:25','2015-11-30 17:52:25',0,NULL),(30,'10  Installment','10  Installment','2016-05-09','2016-05-29',3,'2015-11-30 17:52:25','2015-11-30 17:52:25',0,NULL),(31,'1  Installment','1  Installment','2015-11-02','2015-11-22',4,'2015-11-30 17:52:45','2015-11-30 17:52:45',0,NULL),(32,'2  Installment','2  Installment','2015-11-23','2015-12-13',4,'2015-11-30 17:52:45','2015-11-30 17:52:45',0,NULL),(33,'3  Installment','3  Installment','2015-12-14','2016-01-03',4,'2015-11-30 17:52:45','2015-11-30 17:52:45',0,NULL),(34,'4  Installment','4  Installment','2016-01-04','2016-01-24',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(35,'5  Installment','5  Installment','2016-01-25','2016-02-14',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(36,'6  Installment','6  Installment','2016-02-15','2016-03-06',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(37,'7  Installment','7  Installment','2016-03-07','2016-03-27',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(38,'8  Installment','8  Installment','2016-03-28','2016-04-17',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(39,'9  Installment','9  Installment','2016-04-18','2016-05-08',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(40,'10  Installment','10  Installment','2016-05-09','2016-05-29',4,'2015-11-30 17:52:46','2015-11-30 17:52:46',0,NULL),(41,'1  Installment','1  Installment','2015-11-02','2015-12-02',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(42,'2  Installment','2  Installment','2015-12-03','2016-01-02',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(43,'3  Installment','3  Installment','2016-01-03','2016-02-02',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(44,'4  Installment','4  Installment','2016-02-03','2016-03-04',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(45,'5  Installment','5  Installment','2016-03-05','2016-04-04',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(46,'6  Installment','6  Installment','2016-04-05','2016-05-05',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(47,'7  Installment','7  Installment','2016-05-06','2016-06-05',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(48,'8  Installment','8  Installment','2016-06-06','2016-07-06',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(49,'9  Installment','9  Installment','2016-07-07','2016-08-06',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(50,'10  Installment','10  Installment','2016-08-07','2016-09-06',5,'2015-11-30 17:52:54','2015-11-30 17:52:54',0,NULL),(51,'1  Installment','1  Installment','2015-11-02','2015-12-02',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(52,'2  Installment','2  Installment','2015-12-03','2016-01-02',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(53,'3  Installment','3  Installment','2016-01-03','2016-02-02',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(54,'4  Installment','4  Installment','2016-02-03','2016-03-04',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(55,'5  Installment','5  Installment','2016-03-05','2016-04-04',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(56,'6  Installment','6  Installment','2016-04-05','2016-05-05',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(57,'7  Installment','7  Installment','2016-05-06','2016-06-05',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(58,'8  Installment','8  Installment','2016-06-06','2016-07-06',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(59,'9  Installment','9  Installment','2016-07-07','2016-08-06',6,'2015-11-30 17:53:03','2015-11-30 17:53:03',0,NULL),(60,'10  Installment','10  Installment','2016-08-07','2016-09-06',6,'2015-11-30 17:53:04','2015-11-30 17:53:04',0,NULL),(61,'1  Installment','1  Installment','2015-11-02','2015-12-12',7,'2015-11-30 17:53:11','2015-11-30 17:53:11',0,NULL),(62,'2  Installment','2  Installment','2015-12-13','2016-01-22',7,'2015-11-30 17:53:11','2015-11-30 17:53:11',0,NULL),(63,'3  Installment','3  Installment','2016-01-23','2016-03-03',7,'2015-11-30 17:53:11','2015-11-30 17:53:11',0,NULL),(64,'4  Installment','4  Installment','2016-03-04','2016-04-13',7,'2015-11-30 17:53:11','2015-11-30 17:53:11',0,NULL),(65,'5  Installment','5  Installment','2016-04-14','2016-05-24',7,'2015-11-30 17:53:12','2015-11-30 17:53:12',0,NULL),(66,'6  Installment','6  Installment','2016-05-25','2016-07-04',7,'2015-11-30 17:53:12','2015-11-30 17:53:12',0,NULL),(67,'7  Installment','7  Installment','2016-07-05','2016-08-14',7,'2015-11-30 17:53:12','2015-11-30 17:53:12',0,NULL),(68,'8  Installment','8  Installment','2016-08-15','2016-09-24',7,'2015-11-30 17:53:12','2015-11-30 17:53:12',0,NULL),(69,'9  Installment','9  Installment','2016-09-25','2016-11-04',7,'2015-11-30 17:53:12','2015-11-30 17:53:12',0,NULL),(70,'10  Installment','10  Installment','2016-11-05','2016-12-15',7,'2015-11-30 17:53:12','2015-11-30 17:53:12',0,NULL),(71,'1  Installment','1  Installment','2015-11-02','2015-12-12',8,'2015-11-30 17:53:20','2015-11-30 17:53:20',0,NULL),(72,'2  Installment','2  Installment','2015-12-13','2016-01-22',8,'2015-11-30 17:53:20','2015-11-30 17:53:20',0,NULL),(73,'3  Installment','3  Installment','2016-01-23','2016-03-03',8,'2015-11-30 17:53:20','2015-11-30 17:53:20',0,NULL),(74,'4  Installment','4  Installment','2016-03-04','2016-04-13',8,'2015-11-30 17:53:20','2015-11-30 17:53:20',0,NULL),(75,'5  Installment','5  Installment','2016-04-14','2016-05-24',8,'2015-11-30 17:53:21','2015-11-30 17:53:21',0,NULL),(76,'6  Installment','6  Installment','2016-05-25','2016-07-04',8,'2015-11-30 17:53:21','2015-11-30 17:53:21',0,NULL),(77,'7  Installment','7  Installment','2016-07-05','2016-08-14',8,'2015-11-30 17:53:21','2015-11-30 17:53:21',0,NULL),(78,'8  Installment','8  Installment','2016-08-15','2016-09-24',8,'2015-11-30 17:53:21','2015-11-30 17:53:21',0,NULL),(79,'9  Installment','9  Installment','2016-09-25','2016-11-04',8,'2015-11-30 17:53:21','2015-11-30 17:53:21',0,NULL),(80,'10  Installment','10  Installment','2016-11-05','2016-12-15',8,'2015-11-30 17:53:21','2015-11-30 17:53:21',0,NULL),(81,'1  Installment','1  Installment','2015-11-02','2015-12-12',9,'2015-11-30 17:53:29','2015-11-30 17:53:29',0,NULL),(82,'2  Installment','2  Installment','2015-12-13','2016-01-22',9,'2015-11-30 17:53:29','2015-11-30 17:53:29',0,NULL),(83,'3  Installment','3  Installment','2016-01-23','2016-03-03',9,'2015-11-30 17:53:29','2015-11-30 17:53:29',0,NULL),(84,'4  Installment','4  Installment','2016-03-04','2016-04-13',9,'2015-11-30 17:53:29','2015-11-30 17:53:29',0,NULL),(85,'5  Installment','5  Installment','2016-04-14','2016-05-24',9,'2015-11-30 17:53:29','2015-11-30 17:53:29',0,NULL),(86,'6  Installment','6  Installment','2016-05-25','2016-07-04',9,'2015-11-30 17:53:29','2015-11-30 17:53:29',0,NULL),(87,'7  Installment','7  Installment','2016-07-05','2016-08-14',9,'2015-11-30 17:53:30','2015-11-30 17:53:30',0,NULL),(88,'8  Installment','8  Installment','2016-08-15','2016-09-24',9,'2015-11-30 17:53:30','2015-11-30 17:53:30',0,NULL),(89,'9  Installment','9  Installment','2016-09-25','2016-11-04',9,'2015-11-30 17:53:30','2015-11-30 17:53:30',0,NULL),(90,'10  Installment','10  Installment','2016-11-05','2016-12-15',9,'2015-11-30 17:53:30','2015-11-30 17:53:30',0,NULL),(91,'1  Installment','1  Installment','2015-11-02','2015-12-12',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(92,'2  Installment','2  Installment','2015-12-13','2016-01-22',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(93,'3  Installment','3  Installment','2016-01-23','2016-03-03',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(94,'4  Installment','4  Installment','2016-03-04','2016-04-13',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(95,'5  Installment','5  Installment','2016-04-14','2016-05-24',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(96,'6  Installment','6  Installment','2016-05-25','2016-07-04',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(97,'7  Installment','7  Installment','2016-07-05','2016-08-14',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(98,'8  Installment','8  Installment','2016-08-15','2016-09-24',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(99,'9  Installment','9  Installment','2016-09-25','2016-11-04',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL),(100,'10  Installment','10  Installment','2016-11-05','2016-12-15',10,'2015-11-30 17:53:39','2015-11-30 17:53:39',0,NULL);
/*!40000 ALTER TABLE `collection_identifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_companies_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Northern Soft Solution','Northern Soft Solution','2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_currency_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_countries_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'INDIA','IND','Rs','2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_customers_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `handler` text COLLATE utf8_unicode_ci NOT NULL,
  `last_error` text COLLATE utf8_unicode_ci,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_categories`
--

DROP TABLE IF EXISTS `finance_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finance_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finance_category_type` tinyint(1) DEFAULT NULL,
  `fixed` tinyint(1) DEFAULT '0',
  `changable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_finance_categories_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_categories`
--

LOCK TABLES `finance_categories` WRITE;
/*!40000 ALTER TABLE `finance_categories` DISABLE KEYS */;
INSERT INTO `finance_categories` VALUES (1,'Auction Commission',1,1,0,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL),(2,'Agent Commission',0,1,0,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL),(3,'Auction Amount',0,1,0,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL),(4,'Company Assets',1,1,1,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL),(5,'Company Liability',0,1,1,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL);
/*!40000 ALTER TABLE `finance_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `total_amount` float DEFAULT NULL,
  `transactable_id` int(11) DEFAULT NULL,
  `transactable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_finance_transactions_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `introducers`
--

DROP TABLE IF EXISTS `introducers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `introducers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_ship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_introducers_on_subscriber_id` (`subscriber_id`),
  KEY `index_introducers_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `introducers`
--

LOCK TABLES `introducers` WRITE;
/*!40000 ALTER TABLE `introducers` DISABLE KEYS */;
INSERT INTO `introducers` VALUES (1,'admin','admin','admin','others','8970043416','admin@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',1,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(2,'sub introducer 1','sub introducer 1','sub introducer 1','others','8970043416','subintrodcer1@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',2,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(3,'sub introducer 2','sub introducer 2','sub introducer 2','others','8970043416','subintrodcer2@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',3,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(4,'sub introducer 3','sub introducer 3','sub introducer 3','others','8970043416','subintrodcer3@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',4,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(5,'sub introducer 4','sub introducer 4','sub introducer 4','others','8970043416','subintrodcer4@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',5,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(6,'sub introducer 5','sub introducer 5','sub introducer 5','others','8970043416','subintrodcer5@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',6,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(7,'sub introducer 6','sub introducer 6','sub introducer 6','others','8970043416','subintrodcer6@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',7,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(8,'sub introducer 7','sub introducer 7','sub introducer 7','others','8970043416','subintrodcer7@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',8,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(9,'sub introducer 8','sub introducer 8','sub introducer 8','others','8970043416','subintrodcer8@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',9,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(10,'sub introducer 9','sub introducer 9','sub introducer 9','others','8970043416','subintrodcer9@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',10,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(11,'sub introducer 10','sub introducer 10','sub introducer 10','others','8970043416','subintrodcer10@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',11,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(12,'sub introducer 11','sub introducer 11','sub introducer 11','others','8970043416','subintrodcer11@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',12,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(13,'sub introducer 12','sub introducer 12','sub introducer 12','others','8970043416','subintrodcer12@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',13,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(14,'sub introducer 13','sub introducer 13','sub introducer 13','others','8970043416','subintrodcer13@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',14,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(15,'sub introducer 14','sub introducer 14','sub introducer 14','others','8970043416','subintrodcer14@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',15,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(16,'sub introducer 15','sub introducer 15','sub introducer 15','others','8970043416','subintrodcer15@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',16,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(17,'sub introducer 16','sub introducer 16','sub introducer 16','others','8970043416','subintrodcer16@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',17,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(18,'sub introducer 17','sub introducer 17','sub introducer 17','others','8970043416','subintrodcer17@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',18,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(19,'sub introducer 18','sub introducer 18','sub introducer 18','others','8970043416','subintrodcer18@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',19,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(20,'sub introducer 19','sub introducer 19','sub introducer 19','others','8970043416','subintrodcer19@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',20,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(21,'sub introducer 20','sub introducer 20','sub introducer 20','others','8970043416','subintrodcer20@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',21,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(22,'sub introducer 21','sub introducer 21','sub introducer 21','others','8970043416','subintrodcer21@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',22,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(23,'sub introducer 22','sub introducer 22','sub introducer 22','others','8970043416','subintrodcer22@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',23,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(24,'sub introducer 23','sub introducer 23','sub introducer 23','others','8970043416','subintrodcer23@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',24,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(25,'sub introducer 24','sub introducer 24','sub introducer 24','others','8970043416','subintrodcer24@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',25,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(26,'sub introducer 25','sub introducer 25','sub introducer 25','others','8970043416','subintrodcer25@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',26,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(27,'sub introducer 26','sub introducer 26','sub introducer 26','others','8970043416','subintrodcer26@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',27,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(28,'sub introducer 27','sub introducer 27','sub introducer 27','others','8970043416','subintrodcer27@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',28,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(29,'sub introducer 28','sub introducer 28','sub introducer 28','others','8970043416','subintrodcer28@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',29,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(30,'sub introducer 29','sub introducer 29','sub introducer 29','others','8970043416','subintrodcer29@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',30,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(31,'sub introducer 30','sub introducer 30','sub introducer 30','others','8970043416','subintrodcer30@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',31,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(32,'sub introducer 31','sub introducer 31','sub introducer 31','others','8970043416','subintrodcer31@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',32,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(33,'sub introducer 32','sub introducer 32','sub introducer 32','others','8970043416','subintrodcer32@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',33,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(34,'sub introducer 33','sub introducer 33','sub introducer 33','others','8970043416','subintrodcer33@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',34,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(35,'sub introducer 34','sub introducer 34','sub introducer 34','others','8970043416','subintrodcer34@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',35,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(36,'sub introducer 35','sub introducer 35','sub introducer 35','others','8970043416','subintrodcer35@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',36,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(37,'sub introducer 36','sub introducer 36','sub introducer 36','others','8970043416','subintrodcer36@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',37,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(38,'sub introducer 37','sub introducer 37','sub introducer 37','others','8970043416','subintrodcer37@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',38,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(39,'sub introducer 38','sub introducer 38','sub introducer 38','others','8970043416','subintrodcer38@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',39,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(40,'sub introducer 39','sub introducer 39','sub introducer 39','others','8970043416','subintrodcer39@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',40,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(41,'sub introducer 40','sub introducer 40','sub introducer 40','others','8970043416','subintrodcer40@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',41,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(42,'sub introducer 41','sub introducer 41','sub introducer 41','others','8970043416','subintrodcer41@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',42,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(43,'sub introducer 42','sub introducer 42','sub introducer 42','others','8970043416','subintrodcer42@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',43,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(44,'sub introducer 43','sub introducer 43','sub introducer 43','others','8970043416','subintrodcer43@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',44,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(45,'sub introducer 44','sub introducer 44','sub introducer 44','others','8970043416','subintrodcer44@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',45,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(46,'sub introducer 45','sub introducer 45','sub introducer 45','others','8970043416','subintrodcer45@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',46,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(47,'sub introducer 46','sub introducer 46','sub introducer 46','others','8970043416','subintrodcer46@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',47,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(48,'sub introducer 47','sub introducer 47','sub introducer 47','others','8970043416','subintrodcer47@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',48,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(49,'sub introducer 48','sub introducer 48','sub introducer 48','others','8970043416','subintrodcer48@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',49,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(50,'sub introducer 49','sub introducer 49','sub introducer 49','others','8970043416','subintrodcer49@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',50,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(51,'sub introducer 50','sub introducer 50','sub introducer 50','others','8970043416','subintrodcer50@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',51,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(52,'sub introducer 51','sub introducer 51','sub introducer 51','others','8970043416','subintrodcer51@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',52,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(53,'sub introducer 52','sub introducer 52','sub introducer 52','others','8970043416','subintrodcer52@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',53,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(54,'sub introducer 53','sub introducer 53','sub introducer 53','others','8970043416','subintrodcer53@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',54,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(55,'sub introducer 54','sub introducer 54','sub introducer 54','others','8970043416','subintrodcer54@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',55,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(56,'sub introducer 55','sub introducer 55','sub introducer 55','others','8970043416','subintrodcer55@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',56,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(57,'sub introducer 56','sub introducer 56','sub introducer 56','others','8970043416','subintrodcer56@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',57,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(58,'sub introducer 57','sub introducer 57','sub introducer 57','others','8970043416','subintrodcer57@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',58,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(59,'sub introducer 58','sub introducer 58','sub introducer 58','others','8970043416','subintrodcer58@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',59,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(60,'sub introducer 59','sub introducer 59','sub introducer 59','others','8970043416','subintrodcer59@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',60,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(61,'sub introducer 60','sub introducer 60','sub introducer 60','others','8970043416','subintrodcer60@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',61,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(62,'sub introducer 61','sub introducer 61','sub introducer 61','others','8970043416','subintrodcer61@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',62,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(63,'sub introducer 62','sub introducer 62','sub introducer 62','others','8970043416','subintrodcer62@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',63,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(64,'sub introducer 63','sub introducer 63','sub introducer 63','others','8970043416','subintrodcer63@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',64,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(65,'sub introducer 64','sub introducer 64','sub introducer 64','others','8970043416','subintrodcer64@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',65,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(66,'sub introducer 65','sub introducer 65','sub introducer 65','others','8970043416','subintrodcer65@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',66,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(67,'sub introducer 66','sub introducer 66','sub introducer 66','others','8970043416','subintrodcer66@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',67,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(68,'sub introducer 67','sub introducer 67','sub introducer 67','others','8970043416','subintrodcer67@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',68,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(69,'sub introducer 68','sub introducer 68','sub introducer 68','others','8970043416','subintrodcer68@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',69,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(70,'sub introducer 69','sub introducer 69','sub introducer 69','others','8970043416','subintrodcer69@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',70,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(71,'sub introducer 70','sub introducer 70','sub introducer 70','others','8970043416','subintrodcer70@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',71,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(72,'sub introducer 71','sub introducer 71','sub introducer 71','others','8970043416','subintrodcer71@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',72,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(73,'sub introducer 72','sub introducer 72','sub introducer 72','others','8970043416','subintrodcer72@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',73,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(74,'sub introducer 73','sub introducer 73','sub introducer 73','others','8970043416','subintrodcer73@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',74,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(75,'sub introducer 74','sub introducer 74','sub introducer 74','others','8970043416','subintrodcer74@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',75,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(76,'sub introducer 75','sub introducer 75','sub introducer 75','others','8970043416','subintrodcer75@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',76,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(77,'sub introducer 76','sub introducer 76','sub introducer 76','others','8970043416','subintrodcer76@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',77,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(78,'sub introducer 77','sub introducer 77','sub introducer 77','others','8970043416','subintrodcer77@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',78,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(79,'sub introducer 78','sub introducer 78','sub introducer 78','others','8970043416','subintrodcer78@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',79,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(80,'sub introducer 79','sub introducer 79','sub introducer 79','others','8970043416','subintrodcer79@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',80,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(81,'sub introducer 80','sub introducer 80','sub introducer 80','others','8970043416','subintrodcer80@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',81,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(82,'sub introducer 81','sub introducer 81','sub introducer 81','others','8970043416','subintrodcer81@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',82,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(83,'sub introducer 82','sub introducer 82','sub introducer 82','others','8970043416','subintrodcer82@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',83,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(84,'sub introducer 83','sub introducer 83','sub introducer 83','others','8970043416','subintrodcer83@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',84,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(85,'sub introducer 84','sub introducer 84','sub introducer 84','others','8970043416','subintrodcer84@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',85,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(86,'sub introducer 85','sub introducer 85','sub introducer 85','others','8970043416','subintrodcer85@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',86,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(87,'sub introducer 86','sub introducer 86','sub introducer 86','others','8970043416','subintrodcer86@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',87,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(88,'sub introducer 87','sub introducer 87','sub introducer 87','others','8970043416','subintrodcer87@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',88,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(89,'sub introducer 88','sub introducer 88','sub introducer 88','others','8970043416','subintrodcer88@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',89,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(90,'sub introducer 89','sub introducer 89','sub introducer 89','others','8970043416','subintrodcer89@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',90,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(91,'sub introducer 90','sub introducer 90','sub introducer 90','others','8970043416','subintrodcer90@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',91,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(92,'sub introducer 91','sub introducer 91','sub introducer 91','others','8970043416','subintrodcer91@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',92,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(93,'sub introducer 92','sub introducer 92','sub introducer 92','others','8970043416','subintrodcer92@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',93,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(94,'sub introducer 93','sub introducer 93','sub introducer 93','others','8970043416','subintrodcer93@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',94,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(95,'sub introducer 94','sub introducer 94','sub introducer 94','others','8970043416','subintrodcer94@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',95,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(96,'sub introducer 95','sub introducer 95','sub introducer 95','others','8970043416','subintrodcer95@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',96,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(97,'sub introducer 96','sub introducer 96','sub introducer 96','others','8970043416','subintrodcer96@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',97,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(98,'sub introducer 97','sub introducer 97','sub introducer 97','others','8970043416','subintrodcer97@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',98,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(99,'sub introducer 98','sub introducer 98','sub introducer 98','others','8970043416','subintrodcer98@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',99,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(100,'sub introducer 99','sub introducer 99','sub introducer 99','others','8970043416','subintrodcer99@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',100,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL);
/*!40000 ALTER TABLE `introducers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nominees`
--

DROP TABLE IF EXISTS `nominees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nominees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_ship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_nominees_on_subscriber_id` (`subscriber_id`),
  KEY `index_nominees_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominees`
--

LOCK TABLES `nominees` WRITE;
/*!40000 ALTER TABLE `nominees` DISABLE KEYS */;
INSERT INTO `nominees` VALUES (1,'admin','admin','admin','others','8970043416','admin@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',1,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(2,'sub nominee 1','sub nominee 1','sub nominee 1','others','8970043416','subnominee1@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',2,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(3,'sub nominee 2','sub nominee 2','sub nominee 2','others','8970043416','subnominee2@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',3,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(4,'sub nominee 3','sub nominee 3','sub nominee 3','others','8970043416','subnominee3@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',4,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(5,'sub nominee 4','sub nominee 4','sub nominee 4','others','8970043416','subnominee4@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',5,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(6,'sub nominee 5','sub nominee 5','sub nominee 5','others','8970043416','subnominee5@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',6,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(7,'sub nominee 6','sub nominee 6','sub nominee 6','others','8970043416','subnominee6@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',7,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(8,'sub nominee 7','sub nominee 7','sub nominee 7','others','8970043416','subnominee7@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',8,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(9,'sub nominee 8','sub nominee 8','sub nominee 8','others','8970043416','subnominee8@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',9,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(10,'sub nominee 9','sub nominee 9','sub nominee 9','others','8970043416','subnominee9@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',10,'2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(11,'sub nominee 10','sub nominee 10','sub nominee 10','others','8970043416','subnominee10@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',11,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(12,'sub nominee 11','sub nominee 11','sub nominee 11','others','8970043416','subnominee11@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',12,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(13,'sub nominee 12','sub nominee 12','sub nominee 12','others','8970043416','subnominee12@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',13,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(14,'sub nominee 13','sub nominee 13','sub nominee 13','others','8970043416','subnominee13@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',14,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(15,'sub nominee 14','sub nominee 14','sub nominee 14','others','8970043416','subnominee14@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',15,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(16,'sub nominee 15','sub nominee 15','sub nominee 15','others','8970043416','subnominee15@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',16,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(17,'sub nominee 16','sub nominee 16','sub nominee 16','others','8970043416','subnominee16@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',17,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(18,'sub nominee 17','sub nominee 17','sub nominee 17','others','8970043416','subnominee17@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',18,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(19,'sub nominee 18','sub nominee 18','sub nominee 18','others','8970043416','subnominee18@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',19,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(20,'sub nominee 19','sub nominee 19','sub nominee 19','others','8970043416','subnominee19@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',20,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(21,'sub nominee 20','sub nominee 20','sub nominee 20','others','8970043416','subnominee20@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',21,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(22,'sub nominee 21','sub nominee 21','sub nominee 21','others','8970043416','subnominee21@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',22,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(23,'sub nominee 22','sub nominee 22','sub nominee 22','others','8970043416','subnominee22@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',23,'2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(24,'sub nominee 23','sub nominee 23','sub nominee 23','others','8970043416','subnominee23@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',24,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(25,'sub nominee 24','sub nominee 24','sub nominee 24','others','8970043416','subnominee24@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',25,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(26,'sub nominee 25','sub nominee 25','sub nominee 25','others','8970043416','subnominee25@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',26,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(27,'sub nominee 26','sub nominee 26','sub nominee 26','others','8970043416','subnominee26@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',27,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(28,'sub nominee 27','sub nominee 27','sub nominee 27','others','8970043416','subnominee27@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',28,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(29,'sub nominee 28','sub nominee 28','sub nominee 28','others','8970043416','subnominee28@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',29,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(30,'sub nominee 29','sub nominee 29','sub nominee 29','others','8970043416','subnominee29@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',30,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(31,'sub nominee 30','sub nominee 30','sub nominee 30','others','8970043416','subnominee30@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',31,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(32,'sub nominee 31','sub nominee 31','sub nominee 31','others','8970043416','subnominee31@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',32,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(33,'sub nominee 32','sub nominee 32','sub nominee 32','others','8970043416','subnominee32@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',33,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(34,'sub nominee 33','sub nominee 33','sub nominee 33','others','8970043416','subnominee33@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',34,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(35,'sub nominee 34','sub nominee 34','sub nominee 34','others','8970043416','subnominee34@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',35,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(36,'sub nominee 35','sub nominee 35','sub nominee 35','others','8970043416','subnominee35@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',36,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(37,'sub nominee 36','sub nominee 36','sub nominee 36','others','8970043416','subnominee36@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',37,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(38,'sub nominee 37','sub nominee 37','sub nominee 37','others','8970043416','subnominee37@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',38,'2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(39,'sub nominee 38','sub nominee 38','sub nominee 38','others','8970043416','subnominee38@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',39,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(40,'sub nominee 39','sub nominee 39','sub nominee 39','others','8970043416','subnominee39@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',40,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(41,'sub nominee 40','sub nominee 40','sub nominee 40','others','8970043416','subnominee40@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',41,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(42,'sub nominee 41','sub nominee 41','sub nominee 41','others','8970043416','subnominee41@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',42,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(43,'sub nominee 42','sub nominee 42','sub nominee 42','others','8970043416','subnominee42@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',43,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(44,'sub nominee 43','sub nominee 43','sub nominee 43','others','8970043416','subnominee43@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',44,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(45,'sub nominee 44','sub nominee 44','sub nominee 44','others','8970043416','subnominee44@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',45,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(46,'sub nominee 45','sub nominee 45','sub nominee 45','others','8970043416','subnominee45@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',46,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(47,'sub nominee 46','sub nominee 46','sub nominee 46','others','8970043416','subnominee46@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',47,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(48,'sub nominee 47','sub nominee 47','sub nominee 47','others','8970043416','subnominee47@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',48,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(49,'sub nominee 48','sub nominee 48','sub nominee 48','others','8970043416','subnominee48@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',49,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(50,'sub nominee 49','sub nominee 49','sub nominee 49','others','8970043416','subnominee49@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',50,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(51,'sub nominee 50','sub nominee 50','sub nominee 50','others','8970043416','subnominee50@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',51,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(52,'sub nominee 51','sub nominee 51','sub nominee 51','others','8970043416','subnominee51@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',52,'2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(53,'sub nominee 52','sub nominee 52','sub nominee 52','others','8970043416','subnominee52@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',53,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(54,'sub nominee 53','sub nominee 53','sub nominee 53','others','8970043416','subnominee53@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',54,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(55,'sub nominee 54','sub nominee 54','sub nominee 54','others','8970043416','subnominee54@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',55,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(56,'sub nominee 55','sub nominee 55','sub nominee 55','others','8970043416','subnominee55@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',56,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(57,'sub nominee 56','sub nominee 56','sub nominee 56','others','8970043416','subnominee56@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',57,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(58,'sub nominee 57','sub nominee 57','sub nominee 57','others','8970043416','subnominee57@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',58,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(59,'sub nominee 58','sub nominee 58','sub nominee 58','others','8970043416','subnominee58@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',59,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(60,'sub nominee 59','sub nominee 59','sub nominee 59','others','8970043416','subnominee59@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',60,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(61,'sub nominee 60','sub nominee 60','sub nominee 60','others','8970043416','subnominee60@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',61,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(62,'sub nominee 61','sub nominee 61','sub nominee 61','others','8970043416','subnominee61@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',62,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(63,'sub nominee 62','sub nominee 62','sub nominee 62','others','8970043416','subnominee62@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',63,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(64,'sub nominee 63','sub nominee 63','sub nominee 63','others','8970043416','subnominee63@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',64,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(65,'sub nominee 64','sub nominee 64','sub nominee 64','others','8970043416','subnominee64@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',65,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(66,'sub nominee 65','sub nominee 65','sub nominee 65','others','8970043416','subnominee65@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',66,'2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(67,'sub nominee 66','sub nominee 66','sub nominee 66','others','8970043416','subnominee66@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',67,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(68,'sub nominee 67','sub nominee 67','sub nominee 67','others','8970043416','subnominee67@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',68,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(69,'sub nominee 68','sub nominee 68','sub nominee 68','others','8970043416','subnominee68@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',69,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(70,'sub nominee 69','sub nominee 69','sub nominee 69','others','8970043416','subnominee69@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',70,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(71,'sub nominee 70','sub nominee 70','sub nominee 70','others','8970043416','subnominee70@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',71,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(72,'sub nominee 71','sub nominee 71','sub nominee 71','others','8970043416','subnominee71@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',72,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(73,'sub nominee 72','sub nominee 72','sub nominee 72','others','8970043416','subnominee72@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',73,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(74,'sub nominee 73','sub nominee 73','sub nominee 73','others','8970043416','subnominee73@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',74,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(75,'sub nominee 74','sub nominee 74','sub nominee 74','others','8970043416','subnominee74@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',75,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(76,'sub nominee 75','sub nominee 75','sub nominee 75','others','8970043416','subnominee75@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',76,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(77,'sub nominee 76','sub nominee 76','sub nominee 76','others','8970043416','subnominee76@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',77,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(78,'sub nominee 77','sub nominee 77','sub nominee 77','others','8970043416','subnominee77@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',78,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(79,'sub nominee 78','sub nominee 78','sub nominee 78','others','8970043416','subnominee78@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',79,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(80,'sub nominee 79','sub nominee 79','sub nominee 79','others','8970043416','subnominee79@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',80,'2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(81,'sub nominee 80','sub nominee 80','sub nominee 80','others','8970043416','subnominee80@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',81,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(82,'sub nominee 81','sub nominee 81','sub nominee 81','others','8970043416','subnominee81@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',82,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(83,'sub nominee 82','sub nominee 82','sub nominee 82','others','8970043416','subnominee82@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',83,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(84,'sub nominee 83','sub nominee 83','sub nominee 83','others','8970043416','subnominee83@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',84,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(85,'sub nominee 84','sub nominee 84','sub nominee 84','others','8970043416','subnominee84@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',85,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(86,'sub nominee 85','sub nominee 85','sub nominee 85','others','8970043416','subnominee85@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',86,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(87,'sub nominee 86','sub nominee 86','sub nominee 86','others','8970043416','subnominee86@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',87,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(88,'sub nominee 87','sub nominee 87','sub nominee 87','others','8970043416','subnominee87@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',88,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(89,'sub nominee 88','sub nominee 88','sub nominee 88','others','8970043416','subnominee88@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',89,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(90,'sub nominee 89','sub nominee 89','sub nominee 89','others','8970043416','subnominee89@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',90,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(91,'sub nominee 90','sub nominee 90','sub nominee 90','others','8970043416','subnominee90@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',91,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(92,'sub nominee 91','sub nominee 91','sub nominee 91','others','8970043416','subnominee91@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',92,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(93,'sub nominee 92','sub nominee 92','sub nominee 92','others','8970043416','subnominee92@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',93,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(94,'sub nominee 93','sub nominee 93','sub nominee 93','others','8970043416','subnominee93@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',94,'2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(95,'sub nominee 94','sub nominee 94','sub nominee 94','others','8970043416','subnominee94@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',95,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(96,'sub nominee 95','sub nominee 95','sub nominee 95','others','8970043416','subnominee95@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',96,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(97,'sub nominee 96','sub nominee 96','sub nominee 96','others','8970043416','subnominee96@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',97,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(98,'sub nominee 97','sub nominee 97','sub nominee 97','others','8970043416','subnominee97@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',98,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(99,'sub nominee 98','sub nominee 98','sub nominee 98','others','8970043416','subnominee98@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',99,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(100,'sub nominee 99','sub nominee 99','sub nominee 99','others','8970043416','subnominee99@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',100,'2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL);
/*!40000 ALTER TABLE `nominees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pans`
--

DROP TABLE IF EXISTS `pans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pan_account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `panable_id` int(11) DEFAULT NULL,
  `panable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pans_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pans`
--

LOCK TABLES `pans` WRITE;
/*!40000 ALTER TABLE `pans` DISABLE KEYS */;
INSERT INTO `pans` VALUES (1,'AGCPL',1,'Subscriber','2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(2,'AGCPL',1,'Company','2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL),(3,'AGCPL',2,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(4,'AGCPL',3,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(5,'AGCPL',4,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(6,'AGCPL',5,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(7,'AGCPL',6,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(8,'AGCPL',7,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(9,'AGCPL',8,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(10,'AGCPL',9,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(11,'AGCPL',10,'Subscriber','2015-11-30 17:37:25','2015-11-30 17:37:25',0,NULL),(12,'AGCPL',11,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(13,'AGCPL',12,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(14,'AGCPL',13,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(15,'AGCPL',14,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(16,'AGCPL',15,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(17,'AGCPL',16,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(18,'AGCPL',17,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(19,'AGCPL',18,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(20,'AGCPL',19,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(21,'AGCPL',20,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(22,'AGCPL',21,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(23,'AGCPL',22,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(24,'AGCPL',23,'Subscriber','2015-11-30 17:37:26','2015-11-30 17:37:26',0,NULL),(25,'AGCPL',24,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(26,'AGCPL',25,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(27,'AGCPL',26,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(28,'AGCPL',27,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(29,'AGCPL',28,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(30,'AGCPL',29,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(31,'AGCPL',30,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(32,'AGCPL',31,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(33,'AGCPL',32,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(34,'AGCPL',33,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(35,'AGCPL',34,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(36,'AGCPL',35,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(37,'AGCPL',36,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(38,'AGCPL',37,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(39,'AGCPL',38,'Subscriber','2015-11-30 17:37:27','2015-11-30 17:37:27',0,NULL),(40,'AGCPL',39,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(41,'AGCPL',40,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(42,'AGCPL',41,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(43,'AGCPL',42,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(44,'AGCPL',43,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(45,'AGCPL',44,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(46,'AGCPL',45,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(47,'AGCPL',46,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(48,'AGCPL',47,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(49,'AGCPL',48,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(50,'AGCPL',49,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(51,'AGCPL',50,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(52,'AGCPL',51,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(53,'AGCPL',52,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(54,'AGCPL',53,'Subscriber','2015-11-30 17:37:28','2015-11-30 17:37:28',0,NULL),(55,'AGCPL',54,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(56,'AGCPL',55,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(57,'AGCPL',56,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(58,'AGCPL',57,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(59,'AGCPL',58,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(60,'AGCPL',59,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(61,'AGCPL',60,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(62,'AGCPL',61,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(63,'AGCPL',62,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(64,'AGCPL',63,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(65,'AGCPL',64,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(66,'AGCPL',65,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(67,'AGCPL',66,'Subscriber','2015-11-30 17:37:29','2015-11-30 17:37:29',0,NULL),(68,'AGCPL',67,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(69,'AGCPL',68,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(70,'AGCPL',69,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(71,'AGCPL',70,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(72,'AGCPL',71,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(73,'AGCPL',72,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(74,'AGCPL',73,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(75,'AGCPL',74,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(76,'AGCPL',75,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(77,'AGCPL',76,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(78,'AGCPL',77,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(79,'AGCPL',78,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(80,'AGCPL',79,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(81,'AGCPL',80,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(82,'AGCPL',81,'Subscriber','2015-11-30 17:37:30','2015-11-30 17:37:30',0,NULL),(83,'AGCPL',82,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(84,'AGCPL',83,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(85,'AGCPL',84,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(86,'AGCPL',85,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(87,'AGCPL',86,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(88,'AGCPL',87,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(89,'AGCPL',88,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(90,'AGCPL',89,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(91,'AGCPL',90,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(92,'AGCPL',91,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(93,'AGCPL',92,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(94,'AGCPL',93,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(95,'AGCPL',94,'Subscriber','2015-11-30 17:37:31','2015-11-30 17:37:31',0,NULL),(96,'AGCPL',95,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(97,'AGCPL',96,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(98,'AGCPL',97,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(99,'AGCPL',98,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(100,'AGCPL',99,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL),(101,'AGCPL',100,'Subscriber','2015-11-30 17:37:32','2015-11-30 17:37:32',0,NULL);
/*!40000 ALTER TABLE `pans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pictures_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_registrations_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (1,'123456789','30-11-2015',1,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL);
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_user_id` (`user_id`),
  KEY `index_roles_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',1,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`),
  KEY `index_schema_migrations_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150126140527',0,NULL),('20150126140610',0,NULL),('20150127082133',0,NULL),('20150127130614',0,NULL),('20150130133729',0,NULL),('20150131141801',0,NULL),('20150131141925',0,NULL),('20150206173928',0,NULL),('20150206181745',0,NULL),('20150206181858',0,NULL),('20150206182047',0,NULL),('20150304120518',0,NULL),('20150304122135',0,NULL),('20150304155932',0,NULL),('20150304191610',0,NULL),('20151028121634',0,NULL),('20151028130440',0,NULL),('20151028135130',0,NULL),('20151028180155',0,NULL),('20151028182711',0,NULL),('20151028193506',0,NULL),('20151029065203',0,NULL),('20151029143931',0,NULL),('20151029144059',0,NULL),('20151030100617',0,NULL),('20151030100741',0,NULL),('20151030112044',0,NULL),('20151030145253',0,NULL),('20151031081704',0,NULL),('20151031141134',0,NULL),('20151031141212',0,NULL),('20151104090411',0,NULL),('20151104112446',0,NULL),('20151104130710',0,NULL),('20151104152036',0,NULL),('20151115194927',0,NULL),('20151125184025',0,NULL),('20151125184842',0,NULL),('20151125185033',0,NULL),('20151125200342',0,NULL),('20151126135433',0,NULL),('20151126142430',0,NULL),('20151126163219',0,NULL),('20151127135013',0,NULL),('20151127135321',0,NULL),('20151127135952',0,NULL),('20151127153301',0,NULL),('20151129074530',0,NULL),('20151129074649',0,NULL),('20151129125635',0,NULL),('20151130122255',0,NULL),('20151130123316',0,NULL),('20151130123415',0,NULL);
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_message_id` int(11) DEFAULT NULL,
  `gateway_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sms_logs_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_logs`
--

LOCK TABLES `sms_logs` WRITE;
/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_messages`
--

DROP TABLE IF EXISTS `sms_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sms_messages_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_messages`
--

LOCK TABLES `sms_messages` WRITE;
/*!40000 ALTER TABLE `sms_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_value` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sms_settings_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'sms_on_subscriber_registration',1,'2015-11-30 17:34:10','2015-11-30 17:34:10',0,NULL),(2,'sms_on_creating_new_chit',1,'2015-11-30 17:34:10','2015-11-30 17:34:10',0,NULL),(3,'sms_on_chit_collection',1,'2015-11-30 17:34:10','2015-11-30 17:34:10',0,NULL),(4,'sms_on_auction_date_notification',1,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(5,'sms_on_auction_completion',1,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL);
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_staffs_on_user_id` (`user_id`),
  KEY `index_staffs_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (1,'admin','Admin','Admin','Admin','8970043416','admin@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','admin','8970043416',1,'2015-11-30 17:34:11','2015-11-30 17:34:11',0,NULL),(2,'ns001','Staff 1','Staff1','Staff 1','8970043411','admin1@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043411',2,'2015-11-30 17:37:52','2015-11-30 17:37:52',0,NULL),(3,'ns002','Staff 2','Staff2','Staff 2','8970043412','admin2@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043412',3,'2015-11-30 17:37:53','2015-11-30 17:37:53',0,NULL),(4,'ns003','Staff 3','Staff3','Staff 3','8970043413','admin3@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043413',4,'2015-11-30 17:37:53','2015-11-30 17:37:53',0,NULL),(5,'ns004','Staff 4','Staff4','Staff 4','8970043414','admin4@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043414',5,'2015-11-30 17:37:53','2015-11-30 17:37:53',0,NULL),(6,'ns005','Staff 5','Staff5','Staff 5','8970043415','admin5@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043415',6,'2015-11-30 17:37:53','2015-11-30 17:37:53',0,NULL),(7,'ns006','Staff 6','Staff6','Staff 6','8970043416','admin6@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043416',7,'2015-11-30 17:37:54','2015-11-30 17:37:54',0,NULL),(8,'ns007','Staff 7','Staff7','Staff 7','8970043417','admin7@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043417',8,'2015-11-30 17:37:54','2015-11-30 17:37:54',0,NULL),(9,'ns008','Staff 8','Staff8','Staff 8','8970043418','admin8@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043418',9,'2015-11-30 17:37:54','2015-11-30 17:37:54',0,NULL),(10,'ns009','Staff 9','Staff9','Staff 9','8970043419','admin9@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','8970043419',10,'2015-11-30 17:37:54','2015-11-30 17:37:54',0,NULL),(11,'ns0010','Staff 10','Staff10','Staff 10','89700434110','admin10@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India','agent','89700434110',11,'2015-11-30 17:37:54','2015-11-30 17:37:54',0,NULL);
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_states_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Karnataka','KA',1,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_chits`
--

DROP TABLE IF EXISTS `sub_chits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_chits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  `is_transfered` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_sub_chits_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_chits`
--

LOCK TABLES `sub_chits` WRITE;
/*!40000 ALTER TABLE `sub_chits` DISABLE KEYS */;
INSERT INTO `sub_chits` VALUES (1,1,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(2,2,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(3,3,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(4,4,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(5,5,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(6,6,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(7,7,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(8,8,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(9,9,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(10,10,1,'2015-11-30 17:38:15','2015-11-30 17:38:15',2,0,NULL,0),(11,11,2,'2015-11-30 17:38:15','2015-11-30 17:38:15',3,0,NULL,0),(12,12,2,'2015-11-30 17:38:15','2015-11-30 17:38:15',3,0,NULL,0),(13,13,2,'2015-11-30 17:38:15','2015-11-30 17:38:15',3,0,NULL,0),(14,14,2,'2015-11-30 17:38:15','2015-11-30 17:38:15',3,0,NULL,0),(15,15,2,'2015-11-30 17:38:16','2015-11-30 17:38:16',3,0,NULL,0),(16,16,2,'2015-11-30 17:38:16','2015-11-30 17:38:16',3,0,NULL,0),(17,17,2,'2015-11-30 17:38:16','2015-11-30 17:38:16',3,0,NULL,0),(18,18,2,'2015-11-30 17:38:16','2015-11-30 17:38:16',3,0,NULL,0),(19,19,2,'2015-11-30 17:38:16','2015-11-30 17:38:16',3,0,NULL,0),(20,20,2,'2015-11-30 17:38:16','2015-11-30 17:38:16',3,0,NULL,0),(21,21,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(22,22,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(23,23,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(24,24,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(25,25,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(26,26,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(27,27,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(28,28,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(29,29,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(30,30,3,'2015-11-30 17:38:16','2015-11-30 17:38:16',4,0,NULL,0),(31,31,4,'2015-11-30 17:38:16','2015-11-30 17:38:16',5,0,NULL,0),(32,32,4,'2015-11-30 17:38:16','2015-11-30 17:38:16',5,0,NULL,0),(33,33,4,'2015-11-30 17:38:16','2015-11-30 17:38:16',5,0,NULL,0),(34,34,4,'2015-11-30 17:38:16','2015-11-30 17:38:16',5,0,NULL,0),(35,35,4,'2015-11-30 17:38:16','2015-11-30 17:38:16',5,0,NULL,0),(36,36,4,'2015-11-30 17:38:16','2015-11-30 17:38:16',5,0,NULL,0),(37,37,4,'2015-11-30 17:38:17','2015-11-30 17:38:17',5,0,NULL,0),(38,38,4,'2015-11-30 17:38:17','2015-11-30 17:38:17',5,0,NULL,0),(39,39,4,'2015-11-30 17:38:17','2015-11-30 17:38:17',5,0,NULL,0),(40,40,4,'2015-11-30 17:38:17','2015-11-30 17:38:17',5,0,NULL,0),(41,41,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(42,42,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(43,43,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(44,44,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(45,45,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(46,46,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(47,47,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(48,48,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(49,49,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(50,50,5,'2015-11-30 17:38:17','2015-11-30 17:38:17',6,0,NULL,0),(51,51,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(52,52,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(53,53,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(54,54,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(55,55,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(56,56,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(57,57,6,'2015-11-30 17:38:17','2015-11-30 17:38:17',7,0,NULL,0),(58,58,6,'2015-11-30 17:38:18','2015-11-30 17:38:18',7,0,NULL,0),(59,59,6,'2015-11-30 17:38:18','2015-11-30 17:38:18',7,0,NULL,0),(60,60,6,'2015-11-30 17:38:18','2015-11-30 17:38:18',7,0,NULL,0),(61,61,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(62,62,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(63,63,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(64,64,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(65,65,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(66,66,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(67,67,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(68,68,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(69,69,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(70,70,7,'2015-11-30 17:38:18','2015-11-30 17:38:18',8,0,NULL,0),(71,71,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(72,72,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(73,73,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(74,74,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(75,75,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(76,76,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(77,77,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(78,78,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(79,79,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(80,80,8,'2015-11-30 17:38:18','2015-11-30 17:38:18',9,0,NULL,0),(81,81,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(82,82,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(83,83,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(84,84,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(85,85,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(86,86,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(87,87,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(88,88,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(89,89,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(90,90,9,'2015-11-30 17:38:19','2015-11-30 17:38:19',10,0,NULL,0),(91,91,10,'2015-11-30 17:38:19','2015-11-30 17:38:19',11,0,NULL,0),(92,92,10,'2015-11-30 17:38:19','2015-11-30 17:38:19',11,0,NULL,0),(93,93,10,'2015-11-30 17:38:19','2015-11-30 17:38:19',11,0,NULL,0),(94,94,10,'2015-11-30 17:38:19','2015-11-30 17:38:19',11,0,NULL,0),(95,95,10,'2015-11-30 17:38:19','2015-11-30 17:38:19',11,0,NULL,0),(96,96,10,'2015-11-30 17:38:19','2015-11-30 17:38:19',11,0,NULL,0),(97,97,10,'2015-11-30 17:38:20','2015-11-30 17:38:20',11,0,NULL,0),(98,98,10,'2015-11-30 17:38:20','2015-11-30 17:38:20',11,0,NULL,0),(99,99,10,'2015-11-30 17:38:20','2015-11-30 17:38:20',11,0,NULL,0),(100,100,10,'2015-11-30 17:38:20','2015-11-30 17:38:20',11,0,NULL,0);
/*!40000 ALTER TABLE `sub_chits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_transfered` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  `active_sms` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_subscribers_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'admin','admin','admin','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:34:11','2015-11-30 17:34:11','admin@chifund.com','8095685974',0,0,NULL,1),(2,'sub 1','sub 1','sub 31','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub1@chifund.com','8095685974',0,0,NULL,1),(3,'sub 2','sub 2','sub 32','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub2@chifund.com','8095685974',0,0,NULL,1),(4,'sub 3','sub 3','sub 33','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub3@chifund.com','8095685974',0,0,NULL,1),(5,'sub 4','sub 4','sub 34','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub4@chifund.com','8095685974',0,0,NULL,1),(6,'sub 5','sub 5','sub 35','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub5@chifund.com','8095685974',0,0,NULL,1),(7,'sub 6','sub 6','sub 36','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub6@chifund.com','8095685974',0,0,NULL,1),(8,'sub 7','sub 7','sub 37','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub7@chifund.com','8095685974',0,0,NULL,1),(9,'sub 8','sub 8','sub 38','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub8@chifund.com','8095685974',0,0,NULL,1),(10,'sub 9','sub 9','sub 39','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:25','2015-11-30 17:37:25','sub9@chifund.com','8095685974',0,0,NULL,1),(11,'sub 10','sub 10','sub 310','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub10@chifund.com','8095685974',0,0,NULL,1),(12,'sub 11','sub 11','sub 311','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub11@chifund.com','8095685974',0,0,NULL,1),(13,'sub 12','sub 12','sub 312','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub12@chifund.com','8095685974',0,0,NULL,1),(14,'sub 13','sub 13','sub 313','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub13@chifund.com','8095685974',0,0,NULL,1),(15,'sub 14','sub 14','sub 314','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub14@chifund.com','8095685974',0,0,NULL,1),(16,'sub 15','sub 15','sub 315','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub15@chifund.com','8095685974',0,0,NULL,1),(17,'sub 16','sub 16','sub 316','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub16@chifund.com','8095685974',0,0,NULL,1),(18,'sub 17','sub 17','sub 317','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub17@chifund.com','8095685974',0,0,NULL,1),(19,'sub 18','sub 18','sub 318','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub18@chifund.com','8095685974',0,0,NULL,1),(20,'sub 19','sub 19','sub 319','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub19@chifund.com','8095685974',0,0,NULL,1),(21,'sub 20','sub 20','sub 320','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub20@chifund.com','8095685974',0,0,NULL,1),(22,'sub 21','sub 21','sub 321','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub21@chifund.com','8095685974',0,0,NULL,1),(23,'sub 22','sub 22','sub 322','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:26','2015-11-30 17:37:26','sub22@chifund.com','8095685974',0,0,NULL,1),(24,'sub 23','sub 23','sub 323','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub23@chifund.com','8095685974',0,0,NULL,1),(25,'sub 24','sub 24','sub 324','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub24@chifund.com','8095685974',0,0,NULL,1),(26,'sub 25','sub 25','sub 325','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub25@chifund.com','8095685974',0,0,NULL,1),(27,'sub 26','sub 26','sub 326','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub26@chifund.com','8095685974',0,0,NULL,1),(28,'sub 27','sub 27','sub 327','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub27@chifund.com','8095685974',0,0,NULL,1),(29,'sub 28','sub 28','sub 328','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub28@chifund.com','8095685974',0,0,NULL,1),(30,'sub 29','sub 29','sub 329','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub29@chifund.com','8095685974',0,0,NULL,1),(31,'sub 30','sub 30','sub 330','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub30@chifund.com','8095685974',0,0,NULL,1),(32,'sub 31','sub 31','sub 331','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub31@chifund.com','8095685974',0,0,NULL,1),(33,'sub 32','sub 32','sub 332','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub32@chifund.com','8095685974',0,0,NULL,1),(34,'sub 33','sub 33','sub 333','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub33@chifund.com','8095685974',0,0,NULL,1),(35,'sub 34','sub 34','sub 334','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub34@chifund.com','8095685974',0,0,NULL,1),(36,'sub 35','sub 35','sub 335','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub35@chifund.com','8095685974',0,0,NULL,1),(37,'sub 36','sub 36','sub 336','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub36@chifund.com','8095685974',0,0,NULL,1),(38,'sub 37','sub 37','sub 337','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:27','2015-11-30 17:37:27','sub37@chifund.com','8095685974',0,0,NULL,1),(39,'sub 38','sub 38','sub 338','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub38@chifund.com','8095685974',0,0,NULL,1),(40,'sub 39','sub 39','sub 339','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub39@chifund.com','8095685974',0,0,NULL,1),(41,'sub 40','sub 40','sub 340','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub40@chifund.com','8095685974',0,0,NULL,1),(42,'sub 41','sub 41','sub 341','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub41@chifund.com','8095685974',0,0,NULL,1),(43,'sub 42','sub 42','sub 342','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub42@chifund.com','8095685974',0,0,NULL,1),(44,'sub 43','sub 43','sub 343','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub43@chifund.com','8095685974',0,0,NULL,1),(45,'sub 44','sub 44','sub 344','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub44@chifund.com','8095685974',0,0,NULL,1),(46,'sub 45','sub 45','sub 345','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub45@chifund.com','8095685974',0,0,NULL,1),(47,'sub 46','sub 46','sub 346','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub46@chifund.com','8095685974',0,0,NULL,1),(48,'sub 47','sub 47','sub 347','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub47@chifund.com','8095685974',0,0,NULL,1),(49,'sub 48','sub 48','sub 348','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub48@chifund.com','8095685974',0,0,NULL,1),(50,'sub 49','sub 49','sub 349','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub49@chifund.com','8095685974',0,0,NULL,1),(51,'sub 50','sub 50','sub 350','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub50@chifund.com','8095685974',0,0,NULL,1),(52,'sub 51','sub 51','sub 351','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub51@chifund.com','8095685974',0,0,NULL,1),(53,'sub 52','sub 52','sub 352','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:28','2015-11-30 17:37:28','sub52@chifund.com','8095685974',0,0,NULL,1),(54,'sub 53','sub 53','sub 353','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub53@chifund.com','8095685974',0,0,NULL,1),(55,'sub 54','sub 54','sub 354','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub54@chifund.com','8095685974',0,0,NULL,1),(56,'sub 55','sub 55','sub 355','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub55@chifund.com','8095685974',0,0,NULL,1),(57,'sub 56','sub 56','sub 356','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub56@chifund.com','8095685974',0,0,NULL,1),(58,'sub 57','sub 57','sub 357','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub57@chifund.com','8095685974',0,0,NULL,1),(59,'sub 58','sub 58','sub 358','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub58@chifund.com','8095685974',0,0,NULL,1),(60,'sub 59','sub 59','sub 359','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub59@chifund.com','8095685974',0,0,NULL,1),(61,'sub 60','sub 60','sub 360','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub60@chifund.com','8095685974',0,0,NULL,1),(62,'sub 61','sub 61','sub 361','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub61@chifund.com','8095685974',0,0,NULL,1),(63,'sub 62','sub 62','sub 362','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub62@chifund.com','8095685974',0,0,NULL,1),(64,'sub 63','sub 63','sub 363','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub63@chifund.com','8095685974',0,0,NULL,1),(65,'sub 64','sub 64','sub 364','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub64@chifund.com','8095685974',0,0,NULL,1),(66,'sub 65','sub 65','sub 365','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:29','2015-11-30 17:37:29','sub65@chifund.com','8095685974',0,0,NULL,1),(67,'sub 66','sub 66','sub 366','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub66@chifund.com','8095685974',0,0,NULL,1),(68,'sub 67','sub 67','sub 367','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub67@chifund.com','8095685974',0,0,NULL,1),(69,'sub 68','sub 68','sub 368','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub68@chifund.com','8095685974',0,0,NULL,1),(70,'sub 69','sub 69','sub 369','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub69@chifund.com','8095685974',0,0,NULL,1),(71,'sub 70','sub 70','sub 370','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub70@chifund.com','8095685974',0,0,NULL,1),(72,'sub 71','sub 71','sub 371','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub71@chifund.com','8095685974',0,0,NULL,1),(73,'sub 72','sub 72','sub 372','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub72@chifund.com','8095685974',0,0,NULL,1),(74,'sub 73','sub 73','sub 373','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub73@chifund.com','8095685974',0,0,NULL,1),(75,'sub 74','sub 74','sub 374','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub74@chifund.com','8095685974',0,0,NULL,1),(76,'sub 75','sub 75','sub 375','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub75@chifund.com','8095685974',0,0,NULL,1),(77,'sub 76','sub 76','sub 376','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub76@chifund.com','8095685974',0,0,NULL,1),(78,'sub 77','sub 77','sub 377','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub77@chifund.com','8095685974',0,0,NULL,1),(79,'sub 78','sub 78','sub 378','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub78@chifund.com','8095685974',0,0,NULL,1),(80,'sub 79','sub 79','sub 379','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub79@chifund.com','8095685974',0,0,NULL,1),(81,'sub 80','sub 80','sub 380','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:30','2015-11-30 17:37:30','sub80@chifund.com','8095685974',0,0,NULL,1),(82,'sub 81','sub 81','sub 381','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub81@chifund.com','8095685974',0,0,NULL,1),(83,'sub 82','sub 82','sub 382','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub82@chifund.com','8095685974',0,0,NULL,1),(84,'sub 83','sub 83','sub 383','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub83@chifund.com','8095685974',0,0,NULL,1),(85,'sub 84','sub 84','sub 384','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub84@chifund.com','8095685974',0,0,NULL,1),(86,'sub 85','sub 85','sub 385','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub85@chifund.com','8095685974',0,0,NULL,1),(87,'sub 86','sub 86','sub 386','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub86@chifund.com','8095685974',0,0,NULL,1),(88,'sub 87','sub 87','sub 387','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub87@chifund.com','8095685974',0,0,NULL,1),(89,'sub 88','sub 88','sub 388','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub88@chifund.com','8095685974',0,0,NULL,1),(90,'sub 89','sub 89','sub 389','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub89@chifund.com','8095685974',0,0,NULL,1),(91,'sub 90','sub 90','sub 390','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub90@chifund.com','8095685974',0,0,NULL,1),(92,'sub 91','sub 91','sub 391','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub91@chifund.com','8095685974',0,0,NULL,1),(93,'sub 92','sub 92','sub 392','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub92@chifund.com','8095685974',0,0,NULL,1),(94,'sub 93','sub 93','sub 393','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:31','2015-11-30 17:37:31','sub93@chifund.com','8095685974',0,0,NULL,1),(95,'sub 94','sub 94','sub 394','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:32','2015-11-30 17:37:32','sub94@chifund.com','8095685974',0,0,NULL,1),(96,'sub 95','sub 95','sub 395','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:32','2015-11-30 17:37:32','sub95@chifund.com','8095685974',0,0,NULL,1),(97,'sub 96','sub 96','sub 396','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:32','2015-11-30 17:37:32','sub96@chifund.com','8095685974',0,0,NULL,1),(98,'sub 97','sub 97','sub 397','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:32','2015-11-30 17:37:32','sub97@chifund.com','8095685974',0,0,NULL,1),(99,'sub 98','sub 98','sub 398','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:32','2015-11-30 17:37:32','sub98@chifund.com','8095685974',0,0,NULL,1),(100,'sub 99','sub 99','sub 399','2015-11-30','Bachelor of Engineering','22',NULL,'2015-11-30 17:37:32','2015-11-30 17:37:32','sub99@chifund.com','8095685974',0,0,NULL,1);
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_trans`
--

DROP TABLE IF EXISTS `subscription_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscription_trans_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_trans`
--

LOCK TABLES `subscription_trans` WRITE;
/*!40000 ALTER TABLE `subscription_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towns`
--

DROP TABLE IF EXISTS `towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `towns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `town_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_towns_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (1,'Bijpur','BJP',1,'2015-11-30 17:34:12','2015-11-30 17:34:12',0,NULL);
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code_until` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Admin','Admin','admin@chifund.com','$2a$10$M2sENplr7LcecmKcQDB6NeiNN4j/pc3ChraiCFdAQSoI.WYEXTtkO','$2a$10$M2sENplr7LcecmKcQDB6Ne','2015-11-30 17:34:11','2015-11-30 17:34:11','8970043416',NULL,NULL,0,NULL),(2,'ns001','Staff 1','Staff 1','admin1@chifund.com','$2a$10$ZN..5UTGsnPr5ixd/eqzx.c6Dcev6dI2nEg3WZ3R9Dz31fots5e2C','$2a$10$ZN..5UTGsnPr5ixd/eqzx.','2015-11-30 17:37:52','2015-11-30 17:37:52','8970043411',NULL,NULL,0,NULL),(3,'ns002','Staff 2','Staff 2','admin2@chifund.com','$2a$10$ghHx2yEsAk3azx7LSYBNkO2Nid4Mpow2kCsJ6NFNt.QN8OPDDZ41q','$2a$10$ghHx2yEsAk3azx7LSYBNkO','2015-11-30 17:37:53','2015-11-30 17:37:53','8970043412',NULL,NULL,0,NULL),(4,'ns003','Staff 3','Staff 3','admin3@chifund.com','$2a$10$QkWhvlI/AtbdRzd27/XAB.SHTp10iUWb6KQsQ0dZbkPtbPnjyrbam','$2a$10$QkWhvlI/AtbdRzd27/XAB.','2015-11-30 17:37:53','2015-11-30 17:37:53','8970043413',NULL,NULL,0,NULL),(5,'ns004','Staff 4','Staff 4','admin4@chifund.com','$2a$10$BJh8ldnbr..PrpeWiIRFTejpLGyF9zv4UB2I/H3qD7sKEViaYAqoe','$2a$10$BJh8ldnbr..PrpeWiIRFTe','2015-11-30 17:37:53','2015-11-30 17:37:53','8970043414',NULL,NULL,0,NULL),(6,'ns005','Staff 5','Staff 5','admin5@chifund.com','$2a$10$A4t9wJgptOR.gZab7yVZeOL/267wm4NTnxRyBPDgVy4ozb8MKolqy','$2a$10$A4t9wJgptOR.gZab7yVZeO','2015-11-30 17:37:53','2015-11-30 17:37:53','8970043415',NULL,NULL,0,NULL),(7,'ns006','Staff 6','Staff 6','admin6@chifund.com','$2a$10$R.mrE5W8Yp0Hdj61NR/yI.VrkFVREyux4Un0fwK014TUc1bVz9cx6','$2a$10$R.mrE5W8Yp0Hdj61NR/yI.','2015-11-30 17:37:53','2015-11-30 17:37:53','8970043416',NULL,NULL,0,NULL),(8,'ns007','Staff 7','Staff 7','admin7@chifund.com','$2a$10$zgFtswWj4su0umJzPVxM3Of/QGJ31tFFp.suxZpRRrcmkAM3YlMXe','$2a$10$zgFtswWj4su0umJzPVxM3O','2015-11-30 17:37:54','2015-11-30 17:37:54','8970043417',NULL,NULL,0,NULL),(9,'ns008','Staff 8','Staff 8','admin8@chifund.com','$2a$10$gjkS1blqt8sRdHanE1MF/OQH01/M8MonPaIj2Em0GKqjHDIJ8S7du','$2a$10$gjkS1blqt8sRdHanE1MF/O','2015-11-30 17:37:54','2015-11-30 17:37:54','8970043418',NULL,NULL,0,NULL),(10,'ns009','Staff 9','Staff 9','admin9@chifund.com','$2a$10$vdpEflyx4cgH8ULxpHGBne0H5h3QWovRuAp3Sn6iOSlTweANYtqd6','$2a$10$vdpEflyx4cgH8ULxpHGBne','2015-11-30 17:37:54','2015-11-30 17:37:54','8970043419',NULL,NULL,0,NULL),(11,'ns0010','Staff 10','Staff 10','admin10@chifund.com','$2a$10$leTnv94EOc1ORZ6ZF/HLuuX2b9Fpz75dAlN71K50LU6OX1VmUhpDO','$2a$10$leTnv94EOc1ORZ6ZF/HLuu','2015-11-30 17:37:54','2015-11-30 17:37:54','89700434110',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-30 23:28:25
