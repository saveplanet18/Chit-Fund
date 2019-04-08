-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: chittest
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,1,'Subscriber','2016-03-04 10:40:52','2016-03-04 10:40:52',NULL,586101,0,NULL),(2,'#391 Aayu Complex,\n    S. R. Colony','jalanagar',1,1,1,1,'Company','2016-03-04 10:40:52','2016-03-04 10:40:52',NULL,586101,0,NULL),(3,'gg','gg',1,15,9,2,'Subscriber','2016-03-04 10:46:42','2016-03-04 10:46:42',NULL,NULL,0,NULL),(4,'gg','gg',1,15,7,3,'Subscriber','2016-03-04 10:48:17','2016-03-04 10:48:17',NULL,NULL,0,NULL),(5,'kk','kk',1,NULL,NULL,4,'Subscriber','2016-03-04 10:50:55','2016-03-04 10:50:55',NULL,NULL,0,NULL),(6,'','',NULL,NULL,NULL,5,'Subscriber','2016-03-04 10:52:21','2016-03-04 10:52:21',NULL,NULL,0,NULL),(7,'','',NULL,NULL,NULL,6,'Subscriber','2016-03-08 13:19:16','2016-03-08 13:19:16',NULL,NULL,0,NULL),(8,'','',NULL,NULL,NULL,7,'Subscriber','2016-03-08 14:01:58','2016-03-08 14:01:58',NULL,NULL,0,NULL),(9,'','',NULL,NULL,NULL,8,'Subscriber','2016-03-08 14:08:24','2016-03-08 14:08:24',NULL,NULL,0,NULL),(10,'','',NULL,NULL,NULL,9,'Subscriber','2016-03-08 14:10:23','2016-03-08 14:10:23',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_collections`
--

DROP TABLE IF EXISTS `agent_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `collected_date` date DEFAULT NULL,
  `transfered` tinyint(1) DEFAULT '0',
  `staff_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  `sub_chit_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `amount_transfered` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_collections`
--

LOCK TABLES `agent_collections` WRITE;
/*!40000 ALTER TABLE `agent_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_commissions`
--

DROP TABLE IF EXISTS `agent_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_commissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `collection_identification_id` int(11) DEFAULT NULL,
  `collected_amount` float DEFAULT NULL,
  `comission` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_commissions`
--

LOCK TABLES `agent_commissions` WRITE;
/*!40000 ALTER TABLE `agent_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_commissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_configs`
--

LOCK TABLES `app_configs` WRITE;
/*!40000 ALTER TABLE `app_configs` DISABLE KEYS */;
INSERT INTO `app_configs` VALUES (1,'allow_user_login',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(2,'allow_online_poling',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(3,'allow_fine',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction_settings`
--

LOCK TABLES `auction_settings` WRITE;
/*!40000 ALTER TABLE `auction_settings` DISABLE KEYS */;
INSERT INTO `auction_settings` VALUES (1,'auction_minimum_bargaining_percentage',5,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(2,'auction_maximum_bargaining_percentage',30,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(3,'auction_commission',5,'2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(4,'agent_commission_per_100',5,'2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL);
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
  `sub_chit_id` int(11) DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Cash',
  PRIMARY KEY (`id`),
  KEY `index_auctions_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
INSERT INTO `auctions` VALUES (1,'Admin Auction','This Is company  Auction',1,1,100000,'2016-03-04',0,'2016-03-04 10:44:34','2016-03-04 10:44:34',1,0,0,0,0,0,NULL,1,'Cash'),(2,'Admin Auction','This Is company  Auction',2,1,50000,'2016-01-01',0,'2016-03-08 13:16:14','2016-03-08 13:16:14',6,0,0,0,0,0,NULL,6,'Cash'),(3,'Admin Auction','This Is company  Auction',3,1,50000,'2016-01-01',0,'2016-03-08 13:17:29','2016-03-08 13:17:29',11,0,0,0,0,0,NULL,7,'Cash'),(4,'auction2','auction2',1,5,70000,'2016-02-01',NULL,'2016-03-08 16:37:00','2016-03-08 16:37:00',2,30,25000,5000,5000,0,NULL,5,'Cash');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (1,'Karnataka Bank Limited','JAL001','123456789',1,'Subscriber','2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(2,'Karnataka Bank Limited','JAL001','123456789',1,'Company','2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(3,'hh','hh','33333333',2,'Subscriber','2016-03-04 10:46:42','2016-03-04 10:46:42',0,NULL),(4,'gg','111','33333333',3,'Subscriber','2016-03-04 10:48:17','2016-03-04 10:48:17',0,NULL),(5,'ll','888','33333333',4,'Subscriber','2016-03-04 10:50:55','2016-03-04 10:50:55',0,NULL),(6,'tt','555','5555',5,'Subscriber','2016-03-04 10:52:21','2016-03-04 10:52:21',0,NULL),(7,'3434','rwere','34324',6,'Subscriber','2016-03-08 13:19:16','2016-03-08 13:19:16',0,NULL),(8,'Axis Bank','123','dsfdsf',7,'Subscriber','2016-03-08 14:01:58','2016-03-08 14:01:58',0,NULL),(9,'Axis Bank','123','dsfdsf',8,'Subscriber','2016-03-08 14:08:24','2016-03-08 14:08:24',0,NULL),(10,'ggg','bg','444',9,'Subscriber','2016-03-08 14:10:23','2016-03-08 14:10:23',0,NULL);
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
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Cash',
  `collection_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_collection_histories_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_collection_histories`
--

LOCK TABLES `chit_collection_histories` WRITE;
/*!40000 ALTER TABLE `chit_collection_histories` DISABLE KEYS */;
INSERT INTO `chit_collection_histories` VALUES (1,1,20000,0,'2016-03-08 16:30:00','2016-03-08 16:30:00',0,NULL,'Cash','2015-12-15'),(2,15,20000,0,'2016-03-08 16:30:28','2016-03-08 16:30:28',0,NULL,'Cash','2016-01-20'),(3,2,20000,0,'2016-03-08 16:31:08','2016-03-08 16:31:08',0,NULL,'Cash','2015-12-01'),(4,16,20000,0,'2016-03-08 16:31:35','2016-03-08 16:31:35',0,NULL,'Cash','2016-01-15'),(5,3,20000,0,'2016-03-08 16:32:00','2016-03-08 16:32:00',0,NULL,'Cash','2015-12-15'),(6,17,20000,0,'2016-03-08 16:32:23','2016-03-08 16:32:23',0,NULL,'Cash','2016-01-15'),(7,4,20000,0,'2016-03-08 16:32:49','2016-03-08 16:32:49',0,NULL,'Cash','2015-12-25'),(8,18,20000,0,'2016-03-08 16:33:11','2016-03-08 16:33:11',0,NULL,'Cash','2016-01-13'),(9,5,20000,0,'2016-03-08 16:33:36','2016-03-08 16:33:36',0,NULL,'Cash','2015-12-10'),(10,19,20000,0,'2016-03-08 16:34:13','2016-03-08 16:34:13',0,NULL,'Cash','2016-02-03');
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
  `sub_chit_id` int(11) DEFAULT NULL,
  `extra_amount` float DEFAULT NULL,
  `fine` float DEFAULT '0',
  `fine_included` tinyint(1) DEFAULT '0',
  `chit_transfer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_collections_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_collections`
--

LOCK TABLES `chit_collections` WRITE;
/*!40000 ALTER TABLE `chit_collections` DISABLE KEYS */;
INSERT INTO `chit_collections` VALUES (1,1,1,20000,'Cash',0,'2015-12-15','2016-03-04 10:44:34','2016-03-08 16:30:00',1,0,1,0,NULL,1,1,NULL,0,0,NULL),(2,2,1,20000,'Cash',0,'2015-12-01','2016-03-04 10:46:42','2016-03-08 16:31:08',1,0,1,0,NULL,1,2,NULL,0,0,NULL),(3,3,1,20000,'Cash',0,'2015-12-15','2016-03-04 10:48:17','2016-03-08 16:32:00',1,0,1,0,NULL,1,3,NULL,0,0,NULL),(4,4,1,20000,'Cash',0,'2015-12-25','2016-03-04 10:50:55','2016-03-08 16:32:49',1,0,1,0,NULL,1,4,NULL,0,0,NULL),(5,5,1,20000,'Cash',0,'2015-12-10','2016-03-04 10:52:21','2016-03-08 16:33:36',1,0,1,0,NULL,1,5,NULL,0,0,NULL),(6,1,2,0,'Cash',10000,'2016-01-31','2016-03-08 13:16:14','2016-03-08 13:16:14',6,0,1,0,NULL,1,6,NULL,0,0,NULL),(7,1,3,0,'Cash',10000,'2016-01-31','2016-03-08 13:17:29','2016-03-08 13:17:29',11,0,1,0,NULL,1,7,NULL,0,0,NULL),(8,6,2,0,'Cash',10000,'2016-01-01','2016-03-08 13:19:16','2016-03-08 13:19:16',6,0,1,0,NULL,2,8,NULL,0,0,NULL),(9,7,2,0,'Cash',10000,'2016-01-01','2016-03-08 14:01:58','2016-03-08 14:01:58',6,0,1,0,NULL,2,9,NULL,0,0,NULL),(10,8,2,0,'Cash',10000,'2016-01-01','2016-03-08 14:08:24','2016-03-08 14:08:24',6,0,1,0,NULL,3,10,NULL,0,0,NULL),(11,9,2,0,'Cash',10000,'2016-01-01','2016-03-08 14:10:23','2016-03-08 14:10:23',6,0,1,0,NULL,2,11,NULL,0,0,NULL),(12,2,3,0,'Cash',10000,'2016-01-01','2016-03-08 14:10:43','2016-03-08 14:10:43',11,0,1,0,NULL,2,12,NULL,0,0,NULL),(13,4,3,0,'Cash',10000,'2016-01-01','2016-03-08 14:10:59','2016-03-08 14:10:59',11,0,1,0,NULL,3,13,NULL,0,0,NULL),(14,5,3,0,'Cash',10000,'2016-01-01','2016-03-08 14:11:13','2016-03-08 14:11:13',11,0,1,0,NULL,2,14,NULL,0,0,NULL),(15,1,1,20000,'Cash',0,'2016-01-20','2016-03-08 16:30:28','2016-03-08 16:30:28',2,0,1,0,NULL,1,1,NULL,0,0,NULL),(16,2,1,20000,'Cash',0,'2016-01-15','2016-03-08 16:31:35','2016-03-08 16:31:35',2,0,1,0,NULL,1,2,NULL,0,0,NULL),(17,3,1,20000,'Cash',0,'2016-01-15','2016-03-08 16:32:23','2016-03-08 16:32:23',2,0,1,0,NULL,1,3,NULL,0,0,NULL),(18,4,1,20000,'Cash',0,'2016-01-13','2016-03-08 16:33:11','2016-03-08 16:33:11',2,0,1,0,NULL,1,4,NULL,0,0,NULL),(19,5,1,20000,'Cash',0,'2016-02-03','2016-03-08 16:34:13','2016-03-08 16:34:13',2,0,1,0,NULL,1,5,NULL,0,0,NULL);
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
  `is_delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_draw_periods`
--

LOCK TABLES `chit_draw_periods` WRITE;
/*!40000 ALTER TABLE `chit_draw_periods` DISABLE KEYS */;
INSERT INTO `chit_draw_periods` VALUES (1,'Monthly',0,'Monthly',NULL,'2016-03-04 10:40:57','2016-03-04 10:40:57');
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
  `completed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_chit_schemes_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_schemes`
--

LOCK TABLES `chit_schemes` WRITE;
/*!40000 ALTER TABLE `chit_schemes` DISABLE KEYS */;
INSERT INTO `chit_schemes` VALUES (1,'chit 1','ss',NULL,100000,5,5,'2016-03-04',1,1,'2016-03-04 10:44:33','2016-03-08 16:36:21','1111','11-11-2015',0,NULL,1,0),(2,'chit2','',NULL,50000,5,5,'2016-01-01',1,1,'2016-03-08 13:16:14','2016-03-08 13:16:14','erewr','01-01-2016',0,NULL,1,0),(3,'chit3','',NULL,50000,5,5,'2016-01-01',1,1,'2016-03-08 13:17:28','2016-03-08 13:17:28','we','01-01-2016',0,NULL,1,0);
/*!40000 ALTER TABLE `chit_schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chit_tickets`
--

DROP TABLE IF EXISTS `chit_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chit_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sub_chit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chit_tickets_on_subscriber_id` (`subscriber_id`),
  KEY `index_chit_tickets_on_chit_scheme_id` (`chit_scheme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chit_tickets`
--

LOCK TABLES `chit_tickets` WRITE;
/*!40000 ALTER TABLE `chit_tickets` DISABLE KEYS */;
INSERT INTO `chit_tickets` VALUES (1,'1',1,1,'2016-03-04 10:44:34','2016-03-04 10:44:34',1),(2,'2',2,1,'2016-03-04 10:46:42','2016-03-04 10:46:42',2),(3,'3',3,1,'2016-03-04 10:48:17','2016-03-04 10:48:17',3),(4,'4',4,1,'2016-03-04 10:50:55','2016-03-04 10:50:55',4),(5,'5',5,1,'2016-03-04 10:52:21','2016-03-04 10:52:21',5),(6,'1',1,2,'2016-03-08 13:16:14','2016-03-08 13:16:14',6),(7,'1',1,3,'2016-03-08 13:17:29','2016-03-08 13:17:29',7),(8,'2',6,2,'2016-03-08 13:19:16','2016-03-08 13:19:16',8),(9,'3',7,2,'2016-03-08 14:01:58','2016-03-08 14:01:58',9),(10,'4',8,2,'2016-03-08 14:08:24','2016-03-08 14:08:24',10),(11,'5',9,2,'2016-03-08 14:10:23','2016-03-08 14:10:23',11),(12,'2',2,3,'2016-03-08 14:10:43','2016-03-08 14:10:43',12),(13,'3',4,3,'2016-03-08 14:10:59','2016-03-08 14:10:59',13),(14,'4',5,3,'2016-03-08 14:11:13','2016-03-08 14:11:13',14);
/*!40000 ALTER TABLE `chit_tickets` ENABLE KEYS */;
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
  `divident_amount` float DEFAULT NULL,
  `chit_amount` float DEFAULT NULL,
  `balance_amount` float DEFAULT NULL,
  `collected_amount` float DEFAULT NULL,
  `deducted_amount` float DEFAULT NULL,
  `transfer_sub_chit_id` int(11) DEFAULT NULL,
  `transfer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `installment_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_collection_identifications_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_identifications`
--

LOCK TABLES `collection_identifications` WRITE;
/*!40000 ALTER TABLE `collection_identifications` DISABLE KEYS */;
INSERT INTO `collection_identifications` VALUES (1,'1 Installment-March-2016','1 Installment-March-2016','2016-03-04','2016-04-03',1,'2016-03-04 10:44:34','2016-03-04 10:44:34',0,NULL,1),(2,'2 Installment-April-2016','2 Installment-April-2016','2016-04-04','2016-05-03',1,'2016-03-04 10:44:34','2016-03-04 10:44:34',0,NULL,2),(3,'3 Installment-May-2016','3 Installment-May-2016','2016-05-04','2016-06-03',1,'2016-03-04 10:44:34','2016-03-04 10:44:34',0,NULL,3),(4,'4 Installment-June-2016','4 Installment-June-2016','2016-06-04','2016-07-03',1,'2016-03-04 10:44:34','2016-03-04 10:44:34',0,NULL,4),(5,'5 Installment-July-2016','5 Installment-July-2016','2016-07-04','2016-08-03',1,'2016-03-04 10:44:34','2016-03-04 10:44:34',0,NULL,5),(6,'1 Installment-January-2016','1 Installment-January-2016','2016-01-01','2016-01-31',2,'2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL,1),(7,'2 Installment-February-2016','2 Installment-February-2016','2016-02-01','2016-02-29',2,'2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL,2),(8,'3 Installment-March-2016','3 Installment-March-2016','2016-03-01','2016-03-31',2,'2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL,3),(9,'4 Installment-April-2016','4 Installment-April-2016','2016-04-01','2016-04-30',2,'2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL,4),(10,'5 Installment-May-2016','5 Installment-May-2016','2016-05-01','2016-05-31',2,'2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL,5),(11,'1 Installment-January-2016','1 Installment-January-2016','2016-01-01','2016-01-31',3,'2016-03-08 13:17:29','2016-03-08 13:17:29',0,NULL,1),(12,'2 Installment-February-2016','2 Installment-February-2016','2016-02-01','2016-02-29',3,'2016-03-08 13:17:29','2016-03-08 13:17:29',0,NULL,2),(13,'3 Installment-March-2016','3 Installment-March-2016','2016-03-01','2016-03-31',3,'2016-03-08 13:17:29','2016-03-08 13:17:29',0,NULL,3),(14,'4 Installment-April-2016','4 Installment-April-2016','2016-04-01','2016-04-30',3,'2016-03-08 13:17:29','2016-03-08 13:17:29',0,NULL,4),(15,'5 Installment-May-2016','5 Installment-May-2016','2016-05-01','2016-05-31',3,'2016-03-08 13:17:29','2016-03-08 13:17:29',0,NULL,5);
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
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_companies_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Northern Soft Solution','Northern Soft Solution','2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL,NULL,NULL);
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
INSERT INTO `countries` VALUES (1,'INDIA','IND','Rs','2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (1,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- !binary |-\n  ODA5NTY4NTk3NA==\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear Subscriber new chit scheme chit 1 has been launched with following details\n  chit_total_amount= 100000 no_of_months= 5 start_date= 04-03-2016 subscribe soon\n  t\n',NULL,'2016-03-04 10:44:34',NULL,NULL,NULL,NULL,'2016-03-04 10:44:34','2016-03-04 10:44:34'),(2,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'9898989898\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is rashmi and pasword is rashmi. you can see updates\n  about new schemes at http://localhost:3000.\n',NULL,'2016-03-04 10:46:42',NULL,NULL,NULL,NULL,'2016-03-04 10:46:42','2016-03-04 10:46:42'),(3,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'9898989898\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is ashwini and pasword is ashwini. you can see updates\n  about new schemes at http://localhost:3000.\n',NULL,'2016-03-04 10:48:17',NULL,NULL,NULL,NULL,'2016-03-04 10:48:17','2016-03-04 10:48:17'),(4,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'9909090989\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is kartik and pasword is kartik. you can see updates\n  about new schemes at http://localhost:3000.\n',NULL,'2016-03-04 10:50:55',NULL,NULL,NULL,NULL,'2016-03-04 10:50:55','2016-03-04 10:50:55'),(5,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'9876787898\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is sachin and pasword is sachin. you can see updates\n  about new schemes at http://localhost:3000.\n',NULL,'2016-03-04 10:52:21',NULL,NULL,NULL,NULL,'2016-03-04 10:52:21','2016-03-04 10:52:21'),(6,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- !binary |-\n  ODA5NTY4NTk3NA==\n- !binary |-\n  OTg5ODk4OTg5OA==\n- !binary |-\n  OTg5ODk4OTg5OA==\n- !binary |-\n  OTkwOTA5MDk4OQ==\n- !binary |-\n  OTg3Njc4Nzg5OA==\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: ! \'Dear Subscriber new chit scheme chit2 has been launched with following\n  details chit_total_amount= 50000 no_of_months= 5 start_date= 01-01-2016 subscribe\n  soon to \'\n',NULL,'2016-03-08 13:16:14',NULL,NULL,NULL,NULL,'2016-03-08 13:16:14','2016-03-08 13:16:14'),(7,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- !binary |-\n  ODA5NTY4NTk3NA==\n- !binary |-\n  OTg5ODk4OTg5OA==\n- !binary |-\n  OTg5ODk4OTg5OA==\n- !binary |-\n  OTkwOTA5MDk4OQ==\n- !binary |-\n  OTg3Njc4Nzg5OA==\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: ! \'Dear Subscriber new chit scheme chit3 has been launched with following\n  details chit_total_amount= 50000 no_of_months= 5 start_date= 01-01-2016 subscribe\n  soon to \'\n',NULL,'2016-03-08 13:17:29',NULL,NULL,NULL,NULL,'2016-03-08 13:17:29','2016-03-08 13:17:29'),(8,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'8050448923\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is ss5 and pasword is ss5. you can see updates about\n  new schemes at http://localhost:3000.\n',NULL,'2016-03-08 13:19:16',NULL,NULL,NULL,NULL,'2016-03-08 13:19:16','2016-03-08 13:19:16'),(9,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'8050448926\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is ss6 and pasword is ss6. you can see updates about\n  new schemes at http://localhost:3000.\n',NULL,'2016-03-08 14:01:58',NULL,NULL,NULL,NULL,'2016-03-08 14:01:58','2016-03-08 14:01:58'),(10,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'8050448928\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is ss7 and pasword is ss7. you can see updates about\n  new schemes at http://localhost:3000.\n',NULL,'2016-03-08 14:08:24',NULL,NULL,NULL,NULL,'2016-03-08 14:08:24','2016-03-08 14:08:24'),(11,0,0,'--- !ruby/object:SmsManager\nrecipients:\n- \'8050448921\'\nconfig:\n  sms_settings:\n    username: golpins\n    password: innologiqadmin123\n    sendername: TEKSKL\n    host_url: http://smslane.com/vendorsms/pushsms.aspx?\n    success_code: \'200\'\n    receipt_year: \'2015\'\n    receipt_start_code: \'00001\'\nsendername: TEKSKL\nsms_url: http://smslane.com/vendorsms/pushsms.aspx?\nusername: golpins\npassword: innologiqadmin123\nsuccess_code: \'200\'\nmessage: Dear User,Your username is ss8 and pasword is ss8. you can see updates about\n  new schemes at http://localhost:3000.\n',NULL,'2016-03-08 14:10:23',NULL,NULL,NULL,NULL,'2016-03-08 14:10:23','2016-03-08 14:10:23');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd_details`
--

DROP TABLE IF EXISTS `fd_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fd_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_of_interest` float DEFAULT NULL,
  `fd_amount` float DEFAULT NULL,
  `total_fd_interest` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `interest_base` int(11) DEFAULT NULL,
  `chit_scheme_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_details`
--

LOCK TABLES `fd_details` WRITE;
/*!40000 ALTER TABLE `fd_details` DISABLE KEYS */;
INSERT INTO `fd_details` VALUES (1,'sbi','11',5,100000,5070.83,'2016-03-04','2017-03-04',1,1,'2016-03-04 10:44:33','2016-03-04 10:44:33'),(2,'sfd','asd',11,50000,5591.67,'2016-01-01','2017-01-01',1,2,'2016-03-08 13:16:14','2016-03-08 13:16:14'),(3,'wee','eee',11,50000,5591.67,'2016-01-01','2017-01-01',1,3,'2016-03-08 13:17:28','2016-03-08 13:17:28');
/*!40000 ALTER TABLE `fd_details` ENABLE KEYS */;
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
  `finance_category_type` int(11) DEFAULT NULL,
  `fixed` tinyint(1) DEFAULT '0',
  `changable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_finance_categories_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_categories`
--

LOCK TABLES `finance_categories` WRITE;
/*!40000 ALTER TABLE `finance_categories` DISABLE KEYS */;
INSERT INTO `finance_categories` VALUES (1,'Auction Commission',1,1,0,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(2,'Chit Collection Amount',1,1,0,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(3,'Agent Commission',0,1,0,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(4,'Auction Amount',0,1,0,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(5,'Company Assets',1,1,1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(6,'Company Liability',0,1,1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
INSERT INTO `finance_transactions` VALUES (1,'FdDetail','1',100000,0,1,100000,1,'FdDetail','2016-03-04 10:44:33','2016-03-04 10:44:33',0,NULL),(2,'auction','2',100000,0,1,100000,1,'Auction','2016-03-04 10:44:34','2016-03-04 10:44:34',0,NULL),(3,'FdDetail','3',50000,0,1,50000,2,'FdDetail','2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL),(4,'auction','4',50000,0,1,50000,2,'Auction','2016-03-08 13:16:14','2016-03-08 13:16:14',0,NULL),(5,'FdDetail','5',50000,0,1,50000,3,'FdDetail','2016-03-08 13:17:28','2016-03-08 13:17:28',0,NULL),(6,'auction','6',50000,0,1,50000,3,'Auction','2016-03-08 13:17:29','2016-03-08 13:17:29',0,NULL),(7,'ChitCollectionHistory','7',20000,0,1,20000,1,'ChitCollectionHistory','2016-03-08 16:30:00','2016-03-08 16:30:00',0,NULL),(8,'ChitCollectionHistory','8',20000,0,1,20000,2,'ChitCollectionHistory','2016-03-08 16:30:28','2016-03-08 16:30:28',0,NULL),(9,'ChitCollectionHistory','9',20000,0,1,20000,3,'ChitCollectionHistory','2016-03-08 16:31:08','2016-03-08 16:31:08',0,NULL),(10,'ChitCollectionHistory','10',20000,0,1,20000,4,'ChitCollectionHistory','2016-03-08 16:31:35','2016-03-08 16:31:35',0,NULL),(11,'ChitCollectionHistory','11',20000,0,1,20000,5,'ChitCollectionHistory','2016-03-08 16:32:00','2016-03-08 16:32:00',0,NULL),(12,'ChitCollectionHistory','12',20000,0,1,20000,6,'ChitCollectionHistory','2016-03-08 16:32:23','2016-03-08 16:32:23',0,NULL),(13,'ChitCollectionHistory','13',20000,0,1,20000,7,'ChitCollectionHistory','2016-03-08 16:32:49','2016-03-08 16:32:49',0,NULL),(14,'ChitCollectionHistory','14',20000,0,1,20000,8,'ChitCollectionHistory','2016-03-08 16:33:11','2016-03-08 16:33:11',0,NULL),(15,'ChitCollectionHistory','15',20000,0,1,20000,9,'ChitCollectionHistory','2016-03-08 16:33:36','2016-03-08 16:33:36',0,NULL),(16,'ChitCollectionHistory','16',20000,0,1,20000,10,'ChitCollectionHistory','2016-03-08 16:34:13','2016-03-08 16:34:13',0,NULL),(17,'auction','17',70000,NULL,1,70000,4,'Auction','2016-03-08 16:37:00','2016-03-08 16:37:00',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `introducers`
--

LOCK TABLES `introducers` WRITE;
/*!40000 ALTER TABLE `introducers` DISABLE KEYS */;
INSERT INTO `introducers` VALUES (1,'admin','admin','admin','others','8970043416','admin@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',1,'2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(2,'dd','dd','dd',NULL,'8989898989','dda@gmail.com','gg',2,'2016-03-04 10:46:42','2016-03-04 10:46:42',0,NULL),(3,'gg','gg','gg',NULL,'8989898989','gga@gmail.com','gg',3,'2016-03-04 10:48:17','2016-03-04 10:48:17',0,NULL),(4,'kk','kk','kk',NULL,'9999999999','ka@gmail.com','kk',4,'2016-03-04 10:50:55','2016-03-04 10:50:55',0,NULL),(5,'gg','','gg',NULL,'9999999898','','gg',5,'2016-03-04 10:52:21','2016-03-04 10:52:21',0,NULL),(6,'Shankar','','Kamgond',NULL,'8050448929','','dfdsfdf',6,'2016-03-08 13:19:16','2016-03-08 13:19:16',0,NULL),(7,'Sagar','','Kamgond',NULL,'8050448928','','dfdsf',7,'2016-03-08 14:01:58','2016-03-08 14:01:58',0,NULL),(8,'Shankar','','Kamgond',NULL,'8050448928','','sfsdfsdf',8,'2016-03-08 14:08:24','2016-03-08 14:08:24',0,NULL),(9,'Shankar','','Kamgond',NULL,'8050448928','','vbcvcvvccv',9,'2016-03-08 14:10:23','2016-03-08 14:10:23',0,NULL);
/*!40000 ALTER TABLE `introducers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_accounts`
--

DROP TABLE IF EXISTS `journal_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_accounts`
--

LOCK TABLES `journal_accounts` WRITE;
/*!40000 ALTER TABLE `journal_accounts` DISABLE KEYS */;
INSERT INTO `journal_accounts` VALUES (1,'Cash A/C',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(2,'Bank A/C',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(3,'Chit Scheme A/C',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(4,'Subscriber A/C',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(5,'Agent A/c',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(6,'Income A/c',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(7,'Expence A/C',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(8,'Asset A/c',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57'),(9,'Liability A/c',NULL,0,'2016-03-04 10:40:57','2016-03-04 10:40:57');
/*!40000 ALTER TABLE `journal_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_entries`
--

DROP TABLE IF EXISTS `journal_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterable_id` int(11) DEFAULT NULL,
  `enterable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `naration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_entries`
--

LOCK TABLES `journal_entries` WRITE;
/*!40000 ALTER TABLE `journal_entries` DISABLE KEYS */;
INSERT INTO `journal_entries` VALUES (1,1,'FinanceTransaction',' Being amount deposited to bank account for chit 1 to start it','2016-03-04 10:44:33','2016-03-04 10:44:33','Bank A/c Dr \n to Cash A/c '),(2,2,'FinanceTransaction',' Being amount givern to subscriber-admin admin admin for auction of chit 1 ','2016-03-04 10:44:34','2016-03-04 10:44:34','Cash A/c Dr \n to Subscriber A/c '),(3,3,'FinanceTransaction',' Being amount deposited to bank account for chit2 to start it','2016-03-08 13:16:14','2016-03-08 13:16:14','Bank A/c Dr \n to Cash A/c '),(4,4,'FinanceTransaction',' Being amount givern to subscriber-admin admin admin for auction of chit2 ','2016-03-08 13:16:14','2016-03-08 13:16:14','Cash A/c Dr \n to Subscriber A/c '),(5,5,'FinanceTransaction',' Being amount deposited to bank account for chit3 to start it','2016-03-08 13:17:29','2016-03-08 13:17:29','Bank A/c Dr \n to Cash A/c '),(6,6,'FinanceTransaction',' Being amount givern to subscriber-admin admin admin for auction of chit3 ','2016-03-08 13:17:29','2016-03-08 13:17:29','Cash A/c Dr \n to Subscriber A/c '),(7,7,'FinanceTransaction',' Being amount received  from subscriber--admin admin admin for chit_scheme chit 1','2016-03-08 16:30:00','2016-03-08 16:30:00','Cash A/c Dr \n to ChitScheme A/c '),(8,8,'FinanceTransaction',' Being amount received  from subscriber--admin admin admin for chit_scheme chit 1','2016-03-08 16:30:28','2016-03-08 16:30:28','Cash A/c Dr \n to ChitScheme A/c '),(9,9,'FinanceTransaction',' Being amount received  from subscriber--rashmi a a for chit_scheme chit 1','2016-03-08 16:31:08','2016-03-08 16:31:08','Cash A/c Dr \n to ChitScheme A/c '),(10,10,'FinanceTransaction',' Being amount received  from subscriber--rashmi a a for chit_scheme chit 1','2016-03-08 16:31:36','2016-03-08 16:31:36','Cash A/c Dr \n to ChitScheme A/c '),(11,11,'FinanceTransaction',' Being amount received  from subscriber--ashwini a a for chit_scheme chit 1','2016-03-08 16:32:00','2016-03-08 16:32:00','Cash A/c Dr \n to ChitScheme A/c '),(12,12,'FinanceTransaction',' Being amount received  from subscriber--ashwini a a for chit_scheme chit 1','2016-03-08 16:32:23','2016-03-08 16:32:23','Cash A/c Dr \n to ChitScheme A/c '),(13,13,'FinanceTransaction',' Being amount received  from subscriber--kartik s s for chit_scheme chit 1','2016-03-08 16:32:49','2016-03-08 16:32:49','Cash A/c Dr \n to ChitScheme A/c '),(14,14,'FinanceTransaction',' Being amount received  from subscriber--kartik s s for chit_scheme chit 1','2016-03-08 16:33:11','2016-03-08 16:33:11','Cash A/c Dr \n to ChitScheme A/c '),(15,15,'FinanceTransaction',' Being amount received  from subscriber--sachin ss aa for chit_scheme chit 1','2016-03-08 16:33:36','2016-03-08 16:33:36','Cash A/c Dr \n to ChitScheme A/c '),(16,16,'FinanceTransaction',' Being amount received  from subscriber--sachin ss aa for chit_scheme chit 1','2016-03-08 16:34:13','2016-03-08 16:34:13','Cash A/c Dr \n to ChitScheme A/c '),(17,17,'FinanceTransaction',' Being amount givern to subscriber-sachin ss aa for auction of chit 1 ','2016-03-08 16:37:00','2016-03-08 16:37:00','Cash A/c Dr \n to Subscriber A/c ');
/*!40000 ALTER TABLE `journal_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_entry_details`
--

DROP TABLE IF EXISTS `journal_entry_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_entry_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_account_id` int(11) DEFAULT NULL,
  `journal_entry_id` int(11) DEFAULT NULL,
  `credit` float DEFAULT NULL,
  `debit` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_entry_details`
--

LOCK TABLES `journal_entry_details` WRITE;
/*!40000 ALTER TABLE `journal_entry_details` DISABLE KEYS */;
INSERT INTO `journal_entry_details` VALUES (1,2,1,NULL,100000,'2016-03-04 10:44:33','2016-03-04 10:44:33'),(2,1,1,100000,NULL,'2016-03-04 10:44:33','2016-03-04 10:44:33'),(3,1,2,NULL,100000,'2016-03-04 10:44:34','2016-03-04 10:44:34'),(4,4,2,100000,NULL,'2016-03-04 10:44:34','2016-03-04 10:44:34'),(5,2,3,NULL,50000,'2016-03-08 13:16:14','2016-03-08 13:16:14'),(6,1,3,50000,NULL,'2016-03-08 13:16:14','2016-03-08 13:16:14'),(7,1,4,NULL,50000,'2016-03-08 13:16:14','2016-03-08 13:16:14'),(8,4,4,50000,NULL,'2016-03-08 13:16:14','2016-03-08 13:16:14'),(9,2,5,NULL,50000,'2016-03-08 13:17:29','2016-03-08 13:17:29'),(10,1,5,50000,NULL,'2016-03-08 13:17:29','2016-03-08 13:17:29'),(11,1,6,NULL,50000,'2016-03-08 13:17:29','2016-03-08 13:17:29'),(12,4,6,50000,NULL,'2016-03-08 13:17:29','2016-03-08 13:17:29'),(13,1,7,NULL,20000,'2016-03-08 16:30:00','2016-03-08 16:30:00'),(14,3,7,20000,NULL,'2016-03-08 16:30:00','2016-03-08 16:30:00'),(15,1,8,NULL,20000,'2016-03-08 16:30:28','2016-03-08 16:30:28'),(16,3,8,20000,NULL,'2016-03-08 16:30:28','2016-03-08 16:30:28'),(17,1,9,NULL,20000,'2016-03-08 16:31:08','2016-03-08 16:31:08'),(18,3,9,20000,NULL,'2016-03-08 16:31:08','2016-03-08 16:31:08'),(19,1,10,NULL,20000,'2016-03-08 16:31:36','2016-03-08 16:31:36'),(20,3,10,20000,NULL,'2016-03-08 16:31:36','2016-03-08 16:31:36'),(21,1,11,NULL,20000,'2016-03-08 16:32:00','2016-03-08 16:32:00'),(22,3,11,20000,NULL,'2016-03-08 16:32:00','2016-03-08 16:32:00'),(23,1,12,NULL,20000,'2016-03-08 16:32:23','2016-03-08 16:32:23'),(24,3,12,20000,NULL,'2016-03-08 16:32:23','2016-03-08 16:32:23'),(25,1,13,NULL,20000,'2016-03-08 16:32:49','2016-03-08 16:32:49'),(26,3,13,20000,NULL,'2016-03-08 16:32:49','2016-03-08 16:32:49'),(27,1,14,NULL,20000,'2016-03-08 16:33:11','2016-03-08 16:33:11'),(28,3,14,20000,NULL,'2016-03-08 16:33:11','2016-03-08 16:33:11'),(29,1,15,NULL,20000,'2016-03-08 16:33:36','2016-03-08 16:33:36'),(30,3,15,20000,NULL,'2016-03-08 16:33:36','2016-03-08 16:33:36'),(31,1,16,NULL,20000,'2016-03-08 16:34:13','2016-03-08 16:34:13'),(32,3,16,20000,NULL,'2016-03-08 16:34:13','2016-03-08 16:34:13'),(33,1,17,NULL,70000,'2016-03-08 16:37:00','2016-03-08 16:37:00'),(34,4,17,70000,NULL,'2016-03-08 16:37:00','2016-03-08 16:37:00');
/*!40000 ALTER TABLE `journal_entry_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledgers`
--

DROP TABLE IF EXISTS `ledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_entry_detail_id` int(11) DEFAULT NULL,
  `debit` float DEFAULT NULL,
  `credit` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `journal_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgers`
--

LOCK TABLES `ledgers` WRITE;
/*!40000 ALTER TABLE `ledgers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ledgers` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominees`
--

LOCK TABLES `nominees` WRITE;
/*!40000 ALTER TABLE `nominees` DISABLE KEYS */;
INSERT INTO `nominees` VALUES (1,'admin','admin','admin','others','8970043416','admin@chifund.com','#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India',1,'2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(2,'q','q','q','Mother','8989898989','a@gmail.com','dd',2,'2016-03-04 10:46:42','2016-03-04 10:46:42',0,NULL),(3,'qq','qq','qq','Father','8989898989','ffa@gmail.com','ff',3,'2016-03-04 10:48:17','2016-03-04 10:48:17',0,NULL),(4,'ww','ww','ww','Father','8989890909','wwa@gmail.com','ww',4,'2016-03-04 10:50:55','2016-03-04 10:50:55',0,NULL),(5,'aa','','aa','Wife','9898989898','','bh',5,'2016-03-04 10:52:21','2016-03-04 10:52:21',0,NULL),(6,'Laxman','','Londave','Brother','7259257337','','dsfdsf',6,'2016-03-08 13:19:16','2016-03-08 13:19:16',0,NULL),(7,'Shashikala','Nagappa','Awati','Daughter','7259257337','','dfdsf',7,'2016-03-08 14:01:58','2016-03-08 14:01:58',0,NULL),(8,'Laxman','','Londave','Brother','7760213169','','sdfdsfdf',8,'2016-03-08 14:08:24','2016-03-08 14:08:24',0,NULL),(9,'Laxman','','Awati','Father','7760213169','','jhj',9,'2016-03-08 14:10:23','2016-03-08 14:10:23',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pans`
--

LOCK TABLES `pans` WRITE;
/*!40000 ALTER TABLE `pans` DISABLE KEYS */;
INSERT INTO `pans` VALUES (1,'AGCPL',1,'Subscriber','2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(2,'AGCPL',1,'Company','2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(3,'222',2,'Subscriber','2016-03-04 10:46:42','2016-03-04 10:46:42',0,NULL),(4,'6666666666',3,'Subscriber','2016-03-04 10:48:17','2016-03-04 10:48:17',0,NULL),(5,'22',4,'Subscriber','2016-03-04 10:50:55','2016-03-04 10:50:55',0,NULL),(6,'',5,'Subscriber','2016-03-04 10:52:21','2016-03-04 10:52:21',0,NULL),(7,'',6,'Subscriber','2016-03-08 13:19:16','2016-03-08 13:19:16',0,NULL),(8,'',7,'Subscriber','2016-03-08 14:01:58','2016-03-08 14:01:58',0,NULL),(9,'',8,'Subscriber','2016-03-08 14:08:24','2016-03-08 14:08:24',0,NULL),(10,'',9,'Subscriber','2016-03-08 14:10:23','2016-03-08 14:10:23',0,NULL);
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
INSERT INTO `registrations` VALUES (1,'123456789','04-03-2016',1,'2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',1,'2016-03-04 10:40:52','2016-03-04 10:40:52',0,NULL),(2,'agent',2,'2016-03-04 10:43:10','2016-03-04 10:43:10',0,NULL),(3,'subscriber',3,'2016-03-04 10:46:42','2016-03-04 10:46:42',0,NULL),(4,'subscriber',4,'2016-03-04 10:48:17','2016-03-04 10:48:17',0,NULL),(5,'subscriber',5,'2016-03-04 10:50:56','2016-03-04 10:50:56',0,NULL),(6,'subscriber',6,'2016-03-04 10:52:21','2016-03-04 10:52:21',0,NULL),(7,'agent',7,'2016-03-08 13:14:27','2016-03-08 13:14:27',0,NULL),(8,'agent',8,'2016-03-08 13:14:49','2016-03-08 13:14:49',0,NULL),(9,'subscriber',9,'2016-03-08 13:19:16','2016-03-08 13:19:16',0,NULL),(10,'subscriber',10,'2016-03-08 14:01:58','2016-03-08 14:01:58',0,NULL),(11,'subscriber',11,'2016-03-08 14:08:24','2016-03-08 14:08:24',0,NULL),(12,'subscriber',12,'2016-03-08 14:10:23','2016-03-08 14:10:23',0,NULL);
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
INSERT INTO `schema_migrations` VALUES ('20150126140527',0,NULL),('20150126140610',0,NULL),('20150127082133',0,NULL),('20150127130614',0,NULL),('20150130133729',0,NULL),('20150131141801',0,NULL),('20150131141925',0,NULL),('20150206173928',0,NULL),('20150206181745',0,NULL),('20150206181858',0,NULL),('20150206182047',0,NULL),('20150304120518',0,NULL),('20150304122135',0,NULL),('20150304155932',0,NULL),('20150304191610',0,NULL),('20151028121634',0,NULL),('20151028130440',0,NULL),('20151028135130',0,NULL),('20151028180155',0,NULL),('20151028182711',0,NULL),('20151028193506',0,NULL),('20151029065203',0,NULL),('20151029143931',0,NULL),('20151029144059',0,NULL),('20151030100617',0,NULL),('20151030100741',0,NULL),('20151030112044',0,NULL),('20151030145253',0,NULL),('20151031081704',0,NULL),('20151031141134',0,NULL),('20151031141212',0,NULL),('20151104090411',0,NULL),('20151104112446',0,NULL),('20151104130710',0,NULL),('20151104152036',0,NULL),('20151115194927',0,NULL),('20151125184025',0,NULL),('20151125184842',0,NULL),('20151125185033',0,NULL),('20151125200342',0,NULL),('20151126135433',0,NULL),('20151126142430',0,NULL),('20151126163219',0,NULL),('20151127135013',0,NULL),('20151127135321',0,NULL),('20151127135952',0,NULL),('20151127153301',0,NULL),('20151129074530',0,NULL),('20151129074649',0,NULL),('20151129125635',0,NULL),('20151130122255',0,NULL),('20151130123316',0,NULL),('20151130123415',0,NULL),('20151212070050',0,NULL),('20151219065545',0,NULL),('20151220063848',0,NULL),('20160126045054',0,NULL),('20160127144301',0,NULL),('20160204051307',0,NULL),('20160204131046',0,NULL),('20160216064147',0,NULL),('20160216064203',0,NULL),('20160216070002',0,NULL),('20160222070351',0,NULL),('20160223120812',0,NULL),('20160223130401',0,NULL),('20160223135029',0,NULL),('20160223141745',0,NULL),('20160223160330',0,NULL),('20160224111120',0,NULL),('20160226135224',0,NULL),('20160226135320',0,NULL),('20160227083143',0,NULL),('20160227121815',0,NULL),('20160227130545',0,NULL),('20160228072726',0,NULL),('20160228081646',0,NULL),('20160228092831',0,NULL),('20160228094359',0,NULL),('20160228134323',0,NULL),('20160228140734',0,NULL),('20160229160855',0,NULL),('20160307151917',0,NULL);
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
INSERT INTO `sms_settings` VALUES (1,'sms_on_subscriber_registration',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(2,'sms_on_creating_new_chit',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(3,'sms_on_chit_collection',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(4,'sms_on_auction_date_notification',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL),(5,'sms_on_auction_completion',1,'2016-03-04 10:40:51','2016-03-04 10:40:51',0,NULL);
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
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_staffs_on_user_id` (`user_id`),
  KEY `index_staffs_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (1,'st 01','sneha','a','a','9999999999','20danumirji@gmail.com','bjp','agent','9999999999',2,'2016-03-04 10:43:10','2016-03-04 10:43:10',0,NULL,'09-11-2015',NULL,'9'),(2,'agent1','agent1 ','','','8050448928','','','agent','',7,'2016-03-08 13:14:27','2016-03-08 13:14:27',0,NULL,'08-03-2016',NULL,''),(3,'agent2','agent2','','','8050448928','','','agent','',8,'2016-03-08 13:14:49','2016-03-08 13:14:49',0,NULL,'08-03-2016',NULL,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Andaman and Nicobar Islands','AN',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(2,'Andhra Pradesh','AP',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(3,'Arunachal Pradesh','AR',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(4,'Assam','AS',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(5,'Bihar','BI',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(6,'Chandigarh','CH',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(7,'Dadra and Nagar Haveli','DA',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(8,'Daman and Diu','DM',1,'2016-03-04 10:40:53','2016-03-04 10:40:53',0,NULL),(9,'Delhi','DE',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(10,'Goa','GO',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(11,'Gujarat','GU',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(12,'Haryana','HA',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(13,'Himachal Pradesh','HP',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(14,'Jammu and Kashmir','JA',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(15,'Karnataka','KA',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(16,'Kerala','KE',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(17,'Lakshadweep Islands','LI',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(18,'Madhya Pradesh','MP',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(19,'Maharashtra','MA',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(20,'Manipur','MN',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(21,'Meghalaya','ME',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(22,'Mizoram','MI',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(23,'Nagaland','NA',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(24,'Orissa','OR',1,'2016-03-04 10:40:54','2016-03-04 10:40:54',0,NULL),(25,'Pondicherry','PO',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(26,'Punjab','PU',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(27,'Rajasthan','RA',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(28,'Sikkim','SI',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(29,'Tamil Nadu','TN',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(30,'Tripura','TR',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(31,'Uttar Pradesh','UP',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(32,'West Bengal','WB',1,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL);
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
  `transfer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer_extra_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sub_chits_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_chits`
--

LOCK TABLES `sub_chits` WRITE;
/*!40000 ALTER TABLE `sub_chits` DISABLE KEYS */;
INSERT INTO `sub_chits` VALUES (1,1,1,'2016-03-04 10:44:34','2016-03-04 10:44:34',1,0,NULL,0,NULL,NULL),(2,2,1,'2016-03-04 10:46:42','2016-03-04 10:46:42',1,0,NULL,0,NULL,NULL),(3,3,1,'2016-03-04 10:48:17','2016-03-04 10:48:17',1,0,NULL,0,NULL,NULL),(4,4,1,'2016-03-04 10:50:55','2016-03-04 10:50:55',1,0,NULL,0,NULL,NULL),(5,5,1,'2016-03-04 10:52:21','2016-03-04 10:52:21',1,0,NULL,0,NULL,NULL),(6,1,2,'2016-03-08 13:16:14','2016-03-08 13:16:14',1,0,NULL,0,NULL,NULL),(7,1,3,'2016-03-08 13:17:29','2016-03-08 13:17:29',1,0,NULL,0,NULL,NULL),(8,6,2,'2016-03-08 13:19:16','2016-03-08 13:19:16',2,0,NULL,0,NULL,NULL),(9,7,2,'2016-03-08 14:01:58','2016-03-08 14:01:58',2,0,NULL,0,NULL,NULL),(10,8,2,'2016-03-08 14:08:24','2016-03-08 14:08:24',3,0,NULL,0,NULL,NULL),(11,9,2,'2016-03-08 14:10:23','2016-03-08 14:10:23',2,0,NULL,0,NULL,NULL),(12,2,3,'2016-03-08 14:10:43','2016-03-08 14:10:43',2,0,NULL,0,NULL,NULL),(13,4,3,'2016-03-08 14:10:59','2016-03-08 14:10:59',3,0,NULL,0,NULL,NULL),(14,5,3,'2016-03-08 14:11:13','2016-03-08 14:11:13',2,0,NULL,0,NULL,NULL);
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
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscribers_on_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'admin','admin','admin','2016-03-04','Bachelor of Engineering','22',NULL,'2016-03-04 10:40:52','2016-03-04 10:40:52','admin@chifund.com','8095685974',0,0,NULL,1,NULL),(2,'rashmi','a','a','2016-01-11','','',3,'2016-03-04 10:46:42','2016-03-04 10:46:42','a@gmail.com','9898989898',0,0,NULL,1,'subscriber'),(3,'ashwini','a','a','2016-01-13','','',4,'2016-03-04 10:48:17','2016-03-04 10:48:17','qqa@gmail.com','9898989898',0,0,NULL,1,'subscriber'),(4,'kartik','s','s','2015-11-23','','',5,'2016-03-04 10:50:55','2016-03-04 10:50:56','aaa@gmail.com','9909090989',0,0,NULL,1,'subscriber'),(5,'sachin','ss','aa','2015-12-16','','',6,'2016-03-04 10:52:21','2016-03-04 10:52:21','aaa@gmail.com','9876787898',0,0,NULL,1,'subscriber'),(6,'ss5','ssm5','ssl5','1988-10-05','','',9,'2016-03-08 13:19:16','2016-03-08 13:19:16','ss5@mail.com','8050448923',0,0,NULL,1,'subscriber'),(7,'ss6','','ss6','1988-10-04','','',10,'2016-03-08 14:01:58','2016-03-08 14:01:59','ss6@mail.com','8050448926',0,0,NULL,1,'subscriber'),(8,'ss7','','ssl7','1988-10-07','','',11,'2016-03-08 14:08:24','2016-03-08 14:08:24','ss7@mail.com','8050448928',0,0,NULL,1,'subscriber'),(9,'ss8','ssm8','ssl8','1988-10-05','','',12,'2016-03-08 14:10:23','2016-03-08 14:10:24','ss8@mail.com','8050448921',0,0,NULL,1,'subscriber');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (1,'Bidar','Bidar',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(2,'Belgaum','Belgaum',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(3,'Bijapur','Bijapur',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(4,'Bagalkot','Bagalkot',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(5,'Bellary','Bellary',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(6,'Bangalore Rural District','Bangalore Rural District',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(7,'Bangalore Urban District','Bangalore Urban District',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(8,'Chamarajnagar','Chamarajnagar',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(9,'Chikmagalur','Chikmagalur',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(10,'Chitradurga','Chitradurga',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(11,'Davanagere','Davanagere',15,'2016-03-04 10:40:55','2016-03-04 10:40:55',0,NULL),(12,'Dharwad','Dharwad',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(13,'Dakshina Kannada','Dakshina Kannada',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(14,'Gadag','Gadag',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(15,'Gulbarga','Gulbarga',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(16,'Hassan','Hassan',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(17,'Haveri District','Haveri District',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(18,'Kodagu','Kodagu',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(19,'Kolar','Kolar',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(20,'Koppal','Koppal',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(21,'Mandya','Mandya',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(22,'Mysore','Mysore',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(23,'Raichur','Raichur',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(24,'Shimoga','Shimoga',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(25,'Tumkur','Tumkur',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(26,'Udupi','Udupi',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(27,'Uttara Kannada','Uttara Kannada',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(28,'Ramanagara','Ramanagara',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(29,'Chikballapur','Chikballapur',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL),(30,'Yadagiri','Yadagiri',15,'2016-03-04 10:40:56','2016-03-04 10:40:56',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Admin','Admin','admin@chifund.com','$2a$10$6xhQa1tI830Vm7EX2OS77uV2iTIM7IBBAZlGGcOZPP6oAdIuyc6C.','$2a$10$6xhQa1tI830Vm7EX2OS77u','2016-03-04 10:40:52','2016-03-04 10:40:52','8970043416',NULL,NULL,0,NULL),(2,'st 01','sneha','a','20danumirji@gmail.com','$2a$10$y2pFKEkfTmX2DEYaFv8Dq.4MOMuPzlK9dr6b0NfRQwSWsUNo1MdSW','$2a$10$y2pFKEkfTmX2DEYaFv8Dq.','2016-03-04 10:43:10','2016-03-04 10:43:10','9999999999',NULL,NULL,0,NULL),(3,'rashmi','rashmi','a','a@gmail.com','$2a$10$IJIXeRfj/C4Z1GbUQ.K3y.6Sagf.MUyH3tf2MIe/.3nOmCgaPlMYq','$2a$10$IJIXeRfj/C4Z1GbUQ.K3y.','2016-03-04 10:46:42','2016-03-04 10:46:42','9898989898',NULL,NULL,0,NULL),(4,'ashwini','ashwini','a','qqa@gmail.com','$2a$10$CxphM4okyOA7MucQtIG0fOvycyWIPwNTl2dMUeyYnuV5nuQHmqeVW','$2a$10$CxphM4okyOA7MucQtIG0fO','2016-03-04 10:48:17','2016-03-04 10:48:17','9898989898',NULL,NULL,0,NULL),(5,'kartik','kartik','s','aaa@gmail.com','$2a$10$2IXTXlvHNR8Mif8TRNKfn.sa81FJuUEVIlCAW85DUFOFyIiTKXMia','$2a$10$2IXTXlvHNR8Mif8TRNKfn.','2016-03-04 10:50:56','2016-03-04 10:50:56','9909090989',NULL,NULL,0,NULL),(6,'sachin','sachin','aa','aaa@gmail.com','$2a$10$7.liHer0qW/pQrLjR3kNfuO0YuCNy.gXJpjWjsj5mL1Rsr6ft0ZV6','$2a$10$7.liHer0qW/pQrLjR3kNfu','2016-03-04 10:52:21','2016-03-04 10:52:21','9876787898',NULL,NULL,0,NULL),(7,'agent1','agent1 ','','','$2a$10$x/143pJTCyhB7K7VLdIMuudAKwb/Lq44USrENru3Tqet8BxbAoRyy','$2a$10$x/143pJTCyhB7K7VLdIMuu','2016-03-08 13:14:27','2016-03-08 13:14:27','8050448928',NULL,NULL,0,NULL),(8,'agent2','agent2','','','$2a$10$5fQJ4/o6Q9DowQUutSFOeuoFNpEml/JtFLruyRSjM4mAhykHeJS1K','$2a$10$5fQJ4/o6Q9DowQUutSFOeu','2016-03-08 13:14:49','2016-03-08 13:14:49','8050448928',NULL,NULL,0,NULL),(9,'ss5','ss5','ssl5','ss5@mail.com','$2a$10$DMnCU92ceT7a.X4P1i.rWeAmOrNUHxsgQ3tnipuQqYVvVonM0g9Ty','$2a$10$DMnCU92ceT7a.X4P1i.rWe','2016-03-08 13:19:16','2016-03-08 13:19:16','8050448923',NULL,NULL,0,NULL),(10,'ss6','ss6','ss6','ss6@mail.com','$2a$10$XYlvnHk8hAFpsNGik/3QjucsVlB8AYp0cHo8J/mJrlYqhThWLzNT6','$2a$10$XYlvnHk8hAFpsNGik/3Qju','2016-03-08 14:01:58','2016-03-08 14:01:58','8050448926',NULL,NULL,0,NULL),(11,'ss7','ss7','ssl7','ss7@mail.com','$2a$10$tpJeuzDcok73DCL.gnKfPulkryK7.2j8UwJijjFK6OeH39fskyIQa','$2a$10$tpJeuzDcok73DCL.gnKfPu','2016-03-08 14:08:24','2016-03-08 14:08:24','8050448928',NULL,NULL,0,NULL),(12,'ss8','ss8','ssl8','ss8@mail.com','$2a$10$T3FdAej1DzqKAHOcQEFn9upy1uvkKtSqhfx3zs9NMfqU8DzVlz0.q','$2a$10$T3FdAej1DzqKAHOcQEFn9u','2016-03-08 14:10:23','2016-03-08 14:10:23','8050448921',NULL,NULL,0,NULL);
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

-- Dump completed on 2016-03-08 16:37:47
