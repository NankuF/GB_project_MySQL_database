-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answerpayment`
--

DROP TABLE IF EXISTS `answerpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answerpayment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `paid` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `answerpayment_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `answerpayment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Ответ платежной системы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answerpayment`
--

LOCK TABLES `answerpayment` WRITE;
/*!40000 ALTER TABLE `answerpayment` DISABLE KEYS */;
INSERT INTO `answerpayment` VALUES (1,1,101,1,'1984-10-07 18:02:05','1971-05-07 07:51:26'),(2,2,103,0,'1992-04-22 22:21:36','2013-04-21 19:19:48'),(3,3,104,0,'2020-09-03 01:03:53','1972-04-14 04:48:01'),(4,4,105,0,'2014-08-27 13:31:18','1972-06-04 07:39:45'),(5,5,106,0,'1994-08-20 06:18:50','2015-06-29 05:55:45'),(6,6,107,0,'1993-12-26 01:31:04','2019-10-27 10:47:53'),(7,7,108,0,'1989-02-12 01:00:44','2008-10-30 11:13:56'),(8,8,109,0,'2008-09-30 03:38:21','1983-01-08 20:00:59'),(9,9,111,1,'1988-06-17 03:40:43','1987-05-03 01:12:28'),(10,10,113,0,'1974-03-31 00:39:11','2007-08-02 04:32:43'),(11,11,115,1,'1986-03-21 12:09:03','2021-01-17 00:51:28'),(12,12,116,0,'2014-12-31 04:09:28','1979-07-10 19:08:37'),(13,13,117,0,'1993-12-31 09:20:05','1985-06-08 06:30:11'),(14,14,118,0,'2000-02-27 03:06:47','1979-04-10 17:32:51'),(15,15,125,1,'1975-07-07 18:33:15','1988-04-19 09:04:04'),(16,16,126,0,'2007-08-13 09:33:51','1993-10-12 22:03:05'),(17,17,127,0,'1990-04-15 04:21:18','1985-12-17 08:06:38'),(18,18,129,1,'2000-05-14 12:56:49','2014-10-07 18:54:13'),(19,19,131,1,'1998-04-17 00:42:25','1991-12-12 18:56:06'),(20,20,132,1,'1973-09-13 13:37:23','2018-07-14 07:31:24'),(21,21,135,1,'2013-05-15 16:25:45','1986-06-04 00:37:16'),(22,22,136,0,'1976-12-24 21:16:15','1994-03-25 11:27:13'),(23,23,137,1,'2012-11-21 11:03:26','1983-02-27 18:20:15'),(24,24,138,1,'2012-12-18 09:36:24','2002-01-03 18:45:52'),(25,25,140,1,'2000-10-27 15:21:04','2007-11-05 22:05:39'),(26,26,143,1,'1985-12-25 00:58:06','2009-02-18 10:36:33'),(27,27,146,0,'2015-10-18 08:03:23','2000-11-18 00:20:08'),(28,28,147,0,'1981-01-27 19:50:44','2019-08-02 11:21:29'),(29,29,149,1,'1970-08-15 03:18:54','2015-04-06 05:22:19'),(30,30,150,1,'1994-07-16 01:10:20','2003-01-20 05:01:07'),(31,31,151,1,'1986-09-16 23:04:38','2013-06-20 08:16:44'),(32,32,152,1,'2003-05-06 09:45:28','1977-08-30 00:54:29'),(33,33,153,0,'2009-05-26 16:11:38','2000-01-18 11:59:16'),(34,34,156,1,'1991-07-15 14:28:23','1971-10-11 21:26:21'),(35,35,157,0,'2005-12-20 22:37:24','2004-10-18 22:42:08'),(36,36,158,1,'1990-02-08 06:34:52','2008-09-07 02:05:59'),(37,37,159,0,'1998-06-23 16:18:09','1988-03-06 12:02:18'),(38,38,161,1,'2009-04-11 09:48:51','1996-12-01 02:26:33'),(39,39,165,1,'1990-06-04 02:15:07','1997-12-19 01:09:06'),(40,40,166,0,'2006-11-07 14:44:07','1993-12-29 01:55:16'),(41,41,167,0,'1993-03-26 23:19:26','1985-08-11 10:23:17'),(42,42,170,1,'2019-07-13 23:19:39','1977-04-05 14:38:09'),(43,43,173,0,'2006-04-17 11:32:00','2014-05-15 07:40:28'),(44,44,174,1,'1987-12-06 17:49:39','2005-08-29 08:28:39'),(45,45,175,0,'1997-05-05 11:55:31','2017-02-02 04:14:04'),(46,46,176,0,'2002-02-14 07:57:58','2010-09-07 17:50:23'),(47,47,177,1,'1973-07-08 22:08:21','1992-08-07 16:45:52'),(48,48,179,0,'2000-11-14 16:27:43','2017-01-04 12:15:38'),(49,49,182,1,'1978-04-28 09:10:15','1996-12-24 01:10:17'),(50,50,185,1,'1982-10-05 04:35:56','2016-07-20 00:32:24');
/*!40000 ALTER TABLE `answerpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Корзина покупок пользователя';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,101,1),(2,103,2),(3,104,3),(4,105,4),(5,106,5),(6,107,6),(7,108,7),(8,109,8),(9,111,9),(10,113,10),(11,115,11),(12,116,12),(13,117,13),(14,118,14),(15,125,15),(16,126,16),(17,127,17),(18,129,18),(19,131,19),(20,132,20),(21,135,21),(22,136,22),(23,137,23),(24,138,24),(25,140,25),(26,143,26),(27,146,27),(28,147,28),(29,149,29),(30,150,30),(31,151,31),(32,152,32),(33,153,33),(34,156,34),(35,157,35),(36,158,36),(37,159,37),(38,161,38),(39,165,39),(40,166,40),(41,167,41),(42,170,42),(43,173,43),(44,174,44),(45,175,45),(46,176,46),(47,177,47),(48,179,48),(49,182,49),(50,185,50),(51,187,51),(52,188,52),(53,190,53),(54,192,54),(55,193,55),(56,194,56),(57,195,57),(58,197,58),(59,198,59),(60,200,60),(61,101,61),(62,103,62),(63,104,63),(64,105,64),(65,106,65),(66,107,66),(67,108,67),(68,109,68),(69,111,69),(70,113,70),(71,115,71),(72,116,72),(73,117,73),(74,118,74),(75,125,75),(76,126,76),(77,127,77),(78,129,78),(79,131,79),(80,132,80),(81,135,81),(82,136,82),(83,137,83),(84,138,84),(85,140,85),(86,143,86),(87,146,87),(88,147,88),(89,149,89),(90,150,90),(91,151,91),(92,152,92),(93,153,93),(94,156,94),(95,157,95),(96,158,96),(97,159,97),(98,161,98),(99,165,99),(100,166,100);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Категории товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'atque'),(2,'natus'),(3,'impedit'),(4,'maxime'),(5,'in'),(6,'nihil'),(7,'ut'),(8,'non'),(9,'a'),(10,'ut'),(11,'eius'),(12,'sint'),(13,'est'),(14,'id'),(15,'omnis'),(16,'neque'),(17,'expedita'),(18,'voluptas'),(19,'aspernatur'),(20,'laboriosam'),(21,'sapiente'),(22,'maiores'),(23,'quibusdam'),(24,'inventore'),(25,'dolor'),(26,'aut'),(27,'et'),(28,'repellendus'),(29,'veniam'),(30,'ullam');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product` (
  `category_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Категории_товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,1),(1,31),(1,61),(1,91),(2,2),(2,32),(2,62),(2,92),(3,3),(3,33),(3,63),(3,93),(4,4),(4,34),(4,64),(4,94),(5,5),(5,35),(5,65),(5,95),(6,6),(6,36),(6,66),(6,96),(7,7),(7,37),(7,67),(7,97),(8,8),(8,38),(8,68),(8,98),(9,9),(9,39),(9,69),(9,99),(10,10),(10,40),(10,70),(10,100),(11,11),(11,41),(11,71),(12,12),(12,42),(12,72),(13,13),(13,43),(13,73),(14,14),(14,44),(14,74),(15,15),(15,45),(15,75),(16,16),(16,46),(16,76),(17,17),(17,47),(17,77),(18,18),(18,48),(18,78),(19,19),(19,49),(19,79),(20,20),(20,50),(20,80),(21,21),(21,51),(21,81),(22,22),(22,52),(22,82),(23,23),(23,53),(23,83),(24,24),(24,54),(24,84),(25,25),(25,55),(25,85),(26,26),(26,56),(26,86),(27,27),(27,57),(27,87),(28,28),(28,58),(28,88),(29,29),(29,59),(29,89),(30,30),(30,60),(30,90);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(10) unsigned DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_at` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cкидки на товар';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,1,'qui',3,'2013-03-31 09:57:14','1996-03-07 04:45:10','2000-03-20 16:59:35'),(2,2,'architecto',12,'1977-02-12 04:09:00','1988-07-21 21:11:52','1983-10-31 03:56:18'),(3,3,'tempore',3,'2001-04-10 17:09:24','2010-01-04 14:05:15','2011-08-28 17:48:44'),(4,4,'animi',10,'2013-06-14 07:34:35','1988-12-28 02:34:24','1998-07-25 17:09:12'),(5,5,'et',15,'1990-05-07 13:57:46','2012-10-28 21:23:47','2006-09-04 22:04:12'),(6,6,'incidunt',14,'2019-12-02 13:04:17','2007-08-02 01:05:43','1984-12-23 03:21:58'),(7,7,'vero',0,'1973-10-13 03:12:34','2018-02-20 15:06:02','2001-09-05 23:09:14'),(8,8,'et',0,'1987-09-01 12:04:50','1974-05-24 00:34:15','1992-07-09 22:35:43'),(9,9,'impedit',6,'2018-08-18 06:00:34','1979-05-16 05:00:40','1995-03-05 06:51:23'),(10,10,'deserunt',9,'1994-11-26 08:21:17','1990-12-03 15:23:04','1996-06-07 23:48:05');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventdiscount` int(10) unsigned DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_at` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Маркетинговые акции - отдельный вид скидок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'et',9,'2002-07-07 07:35:02','1980-08-04 04:11:03','1994-04-20 17:48:23'),(2,2,'qui',24,'1995-11-28 03:44:51','1991-10-21 06:06:54','2012-10-04 05:34:59'),(3,3,'deserunt',13,'2003-12-23 02:59:44','1978-05-11 05:29:29','1987-11-12 09:49:25'),(4,4,'illo',4,'2013-03-17 06:27:54','1984-09-29 12:49:21','2008-06-20 08:45:50'),(5,5,'neque',25,'1972-11-06 02:29:04','1989-05-28 05:03:04','2002-12-18 21:43:27'),(6,6,'ea',9,'1979-01-15 06:25:53','2017-11-30 11:05:34','1980-05-26 00:21:55'),(7,7,'neque',11,'1972-07-18 11:01:41','2018-04-24 12:03:38','1990-08-30 06:14:03'),(8,8,'nam',20,'2017-08-06 22:36:15','1973-12-29 12:14:25','1983-05-08 03:19:17'),(9,9,'consequuntur',5,'1971-10-26 03:42:29','2016-08-21 21:59:51','1980-06-21 22:27:33'),(10,10,'eaque',9,'2013-10-11 05:55:02','2012-09-27 20:00:36','1983-03-16 15:25:22');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paidproduct`
--

DROP TABLE IF EXISTS `paidproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paidproduct` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `answerpayment_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `user_id` (`user_id`),
  KEY `answerpayment_id` (`answerpayment_id`),
  CONSTRAINT `paidproduct_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `paidproduct_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `paidproduct_ibfk_3` FOREIGN KEY (`answerpayment_id`) REFERENCES `answerpayment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Оплаченный товар';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paidproduct`
--

LOCK TABLES `paidproduct` WRITE;
/*!40000 ALTER TABLE `paidproduct` DISABLE KEYS */;
INSERT INTO `paidproduct` VALUES (1,1,101,1,'1995-02-06 23:44:16','1979-08-07 07:20:27'),(2,2,103,2,'1996-04-19 09:08:51','1993-08-10 04:13:52'),(3,3,104,3,'2019-11-22 04:04:15','2018-09-06 02:05:11'),(4,4,105,4,'2012-09-12 18:32:06','1973-08-24 04:36:53'),(5,5,106,5,'1979-05-01 15:42:50','1998-09-25 00:26:36'),(6,6,107,6,'1980-02-29 05:51:26','2015-09-17 17:40:55'),(7,7,108,7,'2016-10-17 16:01:49','2008-10-21 15:55:01'),(8,8,109,8,'2014-12-15 18:30:36','1988-10-02 21:59:53'),(9,9,111,9,'1987-12-19 19:46:29','1972-12-20 06:12:23'),(10,10,113,10,'1988-07-30 12:36:26','2011-07-02 01:09:57'),(11,11,115,11,'2016-10-31 07:03:01','2012-09-24 08:12:20'),(12,12,116,12,'2012-03-11 12:54:47','1982-01-29 07:09:41'),(13,13,117,13,'2006-05-09 18:09:10','1984-05-10 17:43:57'),(14,14,118,14,'2002-10-14 05:14:26','2006-06-28 03:18:48'),(15,15,125,15,'1999-12-04 17:49:35','1977-08-25 21:14:46'),(16,16,126,16,'1979-02-13 09:35:27','1996-04-18 13:12:47'),(17,17,127,17,'1983-08-25 11:05:28','1997-11-27 03:10:30'),(18,18,129,18,'1999-11-18 01:54:59','1985-12-16 12:40:18'),(19,19,131,19,'2008-11-27 17:05:23','1982-03-04 10:49:19'),(20,20,132,20,'2002-10-28 09:31:10','2005-02-03 00:53:56'),(21,21,135,21,'2019-12-12 11:07:20','1974-07-30 01:10:34'),(22,22,136,22,'1993-05-09 20:47:09','2001-01-22 13:07:36'),(23,23,137,23,'1970-01-23 06:16:20','1993-01-07 21:55:01'),(24,24,138,24,'1995-05-12 08:38:25','2006-05-30 07:56:23'),(25,25,140,25,'1984-12-08 08:04:23','1974-01-20 23:22:47'),(26,26,143,26,'2000-09-09 10:04:06','2001-05-20 05:48:40'),(27,27,146,27,'1980-07-25 18:33:25','1971-03-02 08:53:20'),(28,28,147,28,'2015-04-22 05:39:10','1976-11-05 11:40:38'),(29,29,149,29,'1987-02-28 03:02:30','2012-10-13 11:47:59'),(30,30,150,30,'2002-03-31 21:20:13','2012-06-02 11:44:31');
/*!40000 ALTER TABLE `paidproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcard`
--

DROP TABLE IF EXISTS `productcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcard` (
  `product_id` bigint(20) unsigned NOT NULL,
  `ad_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_google_ads` bigint(20) DEFAULT NULL,
  `code_yandex_ads` bigint(20) DEFAULT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `productcard_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Карточка товара на сайте, выдергивающая основные данные из product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcard`
--

LOCK TABLES `productcard` WRITE;
/*!40000 ALTER TABLE `productcard` DISABLE KEYS */;
INSERT INTO `productcard` VALUES (1,'1',6923097680129,88686233),(2,'6',7939262566197,69952340),(3,'5',7736576365405,88676524),(4,'2',2290029966465,77165473),(5,'2',8484660736868,36659371),(6,'3',4134412465792,74498369),(7,'1',3134318807710,78391093),(8,'7',3953230604395,68828974),(9,'5',1840887341273,55278423),(10,'6',9238683153091,35356837),(11,'5',2614696800080,50491506),(12,'2',9502649575617,99794392),(13,'8',8430830746434,95443102),(14,'5',2298747045639,54139503),(15,'2',1665756038920,75368364),(16,'5',5055723910889,92653795),(17,'9',6733874676951,57595917),(18,'8',9528248948461,14534348),(19,'2',1188347162304,79890045),(20,'1',7869744300455,70167016),(21,'5',9682492048718,5388769),(22,'4',6882839763271,35870944),(23,'3',746320825830,80037316),(24,'7',8772054877854,7270734),(25,'4',3137296800032,36405367),(26,'8',7675046842476,85903548),(27,'5',258313838845,42627876),(28,'9',3142978686484,64993515),(29,'1',8142070179339,84625625),(30,'7',7647297920647,49543247),(31,'1',514193689411,89290606),(32,'4',3888664045028,96197233),(33,'6',7835891835300,5117222),(34,'7',3805562046445,35595458),(35,'3',7172973756116,1938913),(36,'3',7167321277085,82074821),(37,'6',1460366622213,70559071),(38,'4',4952690617647,80512714),(39,'9',3684072753414,44090005),(40,'1',7090220016021,95921310),(41,'9',9497166855635,86636063),(42,'6',8368270210133,46593238),(43,'3',1869267531172,66217862),(44,'3',5125723954517,75067014),(45,'8',4805040051038,2735672),(46,'9',3365498289892,83282003),(47,'1',6452962280107,9099968),(48,'5',2134431785668,55301886),(49,'2',9910595921806,15381446),(50,'2',1143139966065,2857466),(51,'4',3334255046948,54203150),(52,'4',4790476231508,62989688),(53,'8',845309525034,53879479),(54,'9',5532906240426,64714448),(55,'1',8874258156534,87194395),(56,'4',4622358175092,69858956),(57,'7',920730026920,95762258),(58,'5',47454678072,89429068),(59,'5',4051120220744,11763710),(60,'9',5332870731964,4884422),(61,'8',109888715140,44776237),(62,'6',7027483884685,46154439),(63,'5',310900634640,9831810),(64,'1',8251138651479,16421967),(65,'2',8167980050363,94439137),(66,'4',7530272107914,44538200),(67,'9',8780168123149,18872057),(68,'3',4820297691240,60273109),(69,'6',9732701286315,51567521),(70,'7',6984019286027,95530758),(71,'2',6927433565323,49072211),(72,'3',2532137085653,29976386),(73,'1',9243260927224,93592536),(74,'1',2980566514563,82633875),(75,'5',5491865014908,8256065),(76,'9',8041648825527,91444240),(77,'2',5300852759886,68565701),(78,'5',2839496128480,35040576),(79,'1',9446504924373,6618735),(80,'4',491414900015,79799799),(81,'5',6006221367902,89050095),(82,'1',68641984097,33792392),(83,'2',6817710854922,82619558),(84,'6',5269730937634,86668965),(85,'6',6664215600956,8014337),(86,'1',3973026853813,42677710),(87,'2',7525904459837,5484409),(88,'5',1560557463875,15786630),(89,'8',2999944024129,47309425),(90,'4',1188327224985,19440958),(91,'9',6668035578174,82729455),(92,'6',3515566462768,10718254),(93,'7',7424254406600,60103185),(94,'5',318750700522,90891984),(95,'1',132993432640,51113780),(96,'4',4984165254804,74984305),(97,'8',8219642197234,46951625),(98,'4',8119450429223,86679930),(99,'2',1685494119583,9397620),(100,'9',9181101180622,20577216);
/*!40000 ALTER TABLE `productcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pieces` bigint(20) NOT NULL,
  `cost` decimal(19,4) NOT NULL,
  `currency` enum('rub','usd','euro') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Вся информация о товаре';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'velit',3,286198.5700,'euro','Eos omnis accusantium est. Nam fuga velit ut harum labore dolorum numquam. Incidunt nemo consequuntur quam vitae voluptas dignissimos necessitatibus. Ullam culpa qui consequatur alias minima.'),(2,'beatae',5,770.9979,'usd','Corrupti culpa et deleniti nihil voluptas quia quis. Impedit quod deserunt tempora qui magni nobis. Qui corporis sit nemo facere. A qui minus exercitationem voluptas minima quae.'),(3,'facilis',3,271567.4368,'usd','Quos aut ab nulla labore quibusdam et. Quia facere commodi explicabo quas sint. Delectus et reiciendis at placeat eligendi temporibus numquam. Ex dignissimos fuga sit omnis. Ut magni ipsam quaerat.'),(4,'laborum',7,12819085.3983,'rub','Perferendis laborum maiores et eos ad cum corrupti. Ratione sit vel sit provident nihil sit beatae. Veniam cumque porro ab enim. Odit maiores qui placeat id sit voluptas.'),(5,'occaecati',7,27215252.3676,'usd','Minus sed consectetur aut a vel iste a. Placeat dicta voluptatem provident ab molestias quaerat. Alias et qui nobis aut magni similique. Tempore ab consequatur ea nisi neque deserunt repellat.'),(6,'ad',8,0.7360,'euro','Sit et ipsam maiores quod. Molestiae consequatur ratione sed quam. Hic ipsa nam ea tempora.'),(7,'laboriosam',8,586.2214,'rub','Eius ipsam ut qui voluptatem ratione dicta est. Illum sint totam eveniet. Eius accusamus quia maiores minima ut sint praesentium in. Enim impedit molestiae asperiores ad ut quaerat accusamus animi.'),(8,'quo',9,771.1422,'euro','Quam ipsam explicabo inventore porro. Sed rerum porro et distinctio. Odio molestias voluptatem et cum dignissimos facilis sapiente.'),(9,'officiis',5,18.2244,'euro','Cupiditate quasi officiis eius maxime dolorem. Quia dolor et eligendi aliquam. Minus consequatur placeat enim id.'),(10,'ut',3,642432720.9000,'rub','Tenetur dolore similique a autem cupiditate ab. Deleniti nostrum pariatur sed dolore consequatur placeat. Totam dignissimos quidem corrupti est aut nihil. Qui vel labore fugiat ut.'),(11,'quo',7,677026.9207,'usd','At ratione non architecto quae laboriosam laborum. Tempora est temporibus et asperiores enim ut. Animi hic ut fugit modi voluptates laborum.'),(12,'voluptates',8,1193.0000,'euro','Et maxime adipisci officia ut. Quisquam adipisci eos voluptates ullam qui voluptas. Aut dolorem voluptas accusantium ipsa molestias. Corporis enim ducimus placeat vel eius. Error libero alias architecto ut asperiores recusandae qui vel.'),(13,'dolor',7,2.0000,'usd','Vero perspiciatis dolorum enim temporibus qui nihil. Sed quia ut adipisci sunt. Et incidunt accusamus ipsa.'),(14,'nulla',2,0.0000,'rub','Dolores blanditiis in cumque quo ipsam sunt quibusdam. Praesentium quo voluptas officia ea optio quia sunt. Est modi qui reiciendis ut nisi itaque. Sed recusandae voluptate possimus sit et ut sint. Voluptatem impedit mollitia aut quidem voluptatem suscipit.'),(15,'fugit',1,6.0000,'rub','Non voluptatem suscipit ab rerum. Eaque aut quia doloribus et necessitatibus aut doloremque doloremque. Totam unde eum est illum ipsa repellat doloribus.'),(16,'debitis',7,4.3000,'rub','Commodi recusandae vel excepturi officiis ut provident non. Aut earum incidunt eaque ullam veniam. Doloribus voluptas voluptatum consequatur officiis.'),(17,'illo',9,2603.2355,'rub','Voluptate beatae laborum ipsum sed. Consequatur repellat quos vel suscipit dolores similique. Dignissimos molestiae dolor nam totam rem ullam.'),(18,'ducimus',3,996.6091,'usd','Placeat vel aut mollitia neque. Est et mollitia vitae aut. Nisi dolorem delectus ut qui quam rerum perspiciatis.'),(19,'dicta',7,106.4200,'euro','Consequatur aut blanditiis aut tenetur dolorem saepe. Et voluptas ipsam eius voluptatem qui. Modi laudantium et id consectetur enim et.'),(20,'cumque',1,18586991.5532,'euro','Vitae expedita quia sit ratione necessitatibus asperiores. Ea sit quaerat similique rerum veritatis. Alias recusandae et quia velit illo perspiciatis.'),(21,'laboriosam',4,64576388.5770,'usd','Ullam sed accusamus delectus et quae dolore. Enim voluptatem voluptate aspernatur possimus culpa ea. Modi maiores exercitationem aspernatur iusto. Voluptatibus id eos qui cupiditate pariatur ducimus ut.'),(22,'minus',8,0.0000,'euro','Voluptatem vero assumenda libero. Ratione in eum vel ullam est dolorem inventore. Cum velit dolorem veritatis quo consectetur facilis dolor sed. Dolorem rerum enim id qui. Sunt sed itaque dolore sint error in.'),(23,'modi',2,0.0000,'euro','Nihil ea tempora inventore eum. Impedit reiciendis beatae et nemo vel corrupti quo. Vitae distinctio consequatur nesciunt commodi.'),(24,'doloribus',8,0.0000,'euro','Minima possimus vel alias nihil harum perspiciatis repellat. Quod ea quas velit ipsam. Est aut et aliquam magnam beatae.'),(25,'neque',5,28.0000,'rub','Autem amet eaque reiciendis consequatur molestiae harum. Ea ut veniam tempora pariatur. Debitis asperiores velit amet. Distinctio dicta enim sit earum quis aliquid.'),(26,'nisi',2,0.2679,'usd','Delectus expedita quae non dolore quo facilis. Ea totam vel dicta ipsa. Sit minus est ducimus sit expedita voluptatem eum dignissimos.'),(27,'vel',3,0.0000,'rub','Consequatur quisquam architecto omnis rerum sit consequatur. Sapiente perferendis molestiae id nostrum. Dolor voluptatem temporibus doloremque nisi atque. Similique porro ea repudiandae et.'),(28,'quia',9,0.0000,'euro','Veniam unde quia sapiente suscipit iusto et. Voluptates aut voluptatibus temporibus autem omnis maiores. Eligendi aspernatur aut nihil sunt delectus quia ea.'),(29,'enim',8,2974915.1000,'rub','Consequuntur et qui ut quia itaque dolores mollitia. Itaque eveniet reprehenderit quidem ea necessitatibus perferendis totam. Et eaque et enim et.'),(30,'rerum',3,9286.0975,'rub','Non sit earum inventore quis. Et at odio dicta. Libero magnam nihil sint dolor. Minima eum voluptas porro voluptas mollitia qui. Enim unde nihil laborum vitae non.'),(31,'soluta',4,0.0000,'euro','Deleniti sit dolore maiores deleniti dolores. Minima nisi ut et architecto aperiam modi accusantium autem. Quia beatae magni distinctio repellendus et. Et in voluptatem deserunt quis.'),(32,'optio',9,1.4600,'usd','Sed est voluptate qui ut adipisci. Repudiandae est sed et odit veritatis culpa. Quis eos maiores iure et a sed. Natus necessitatibus praesentium inventore porro consequatur mollitia dolorum necessitatibus.'),(33,'vel',5,4042.9503,'usd','Est consequatur ea odit et magni. Aut enim quo enim suscipit. Illum autem distinctio ipsum in.'),(34,'dicta',9,29693.0000,'rub','Ipsa sapiente voluptatibus ea aspernatur quibusdam consequatur. Ut ut beatae dignissimos iusto harum id. Voluptatem optio ducimus dolores aliquam. Aut est quia est blanditiis laborum ex saepe.'),(35,'quidem',7,215621121.0000,'usd','Labore corrupti autem officia autem deserunt nihil. Labore maxime quasi sunt ratione. Beatae voluptatem ea impedit quasi quasi autem. Odio rerum consequatur quo numquam.'),(36,'sapiente',2,2110.7042,'euro','Ipsam blanditiis quia neque sit eius. Totam deserunt a vel amet quia reiciendis. Consequatur quisquam laboriosam minus vel voluptatum inventore. Aut enim in maxime necessitatibus repudiandae rerum iste. Maiores minus architecto non sit sint.'),(37,'quo',6,523196.7157,'rub','Dolor officia quod dolores quaerat doloremque. Qui fugit laboriosam eos ratione iusto qui sunt. Dolorem perferendis aut consequatur in qui nihil enim est.'),(38,'officiis',6,324.0060,'rub','Veritatis aut sapiente incidunt adipisci corrupti est. Aspernatur magni debitis eveniet itaque natus ipsa. Cupiditate iusto maiores consequatur qui est. Qui eos nobis illo dolores consequatur similique.'),(39,'porro',1,0.8000,'euro','Amet nihil at impedit velit illo. Maxime sapiente consequatur libero laboriosam doloribus iure. Molestiae unde maxime distinctio corrupti quia.'),(40,'ut',6,39059359.9500,'rub','Labore officiis pariatur nesciunt et illo. Debitis eveniet quia exercitationem quibusdam. Ducimus dolores aut quisquam sit nemo. Non a quas atque fugiat molestiae iusto.'),(41,'vitae',2,98.1400,'usd','Enim corporis dolore architecto quae labore. Possimus asperiores voluptatem unde. Nihil enim harum et reiciendis. Facere maiores labore repellat dolorem laborum.'),(42,'ea',7,0.0000,'usd','Deserunt incidunt minus quam dolorum numquam. Aut voluptatem facilis laudantium. Vel non dolorem sapiente voluptatem saepe error voluptate. Consectetur quo cumque omnis nihil.'),(43,'voluptate',6,34029264.8962,'euro','Facilis et amet dolorem. Rem accusantium voluptatem laboriosam id expedita ullam aut a. Culpa et et consequatur dolores est eos a.'),(44,'ea',5,6870701.9000,'rub','Veniam aliquid tempore autem. In iure voluptate esse consequatur amet qui ducimus ut. Voluptates aut est quos nam et sapiente dolor. Distinctio incidunt ut laudantium.'),(45,'vel',8,1.8504,'rub','Praesentium at nobis ad. Commodi tenetur illo recusandae doloremque. Corrupti rem voluptatem consequuntur accusamus esse.'),(46,'quibusdam',6,15049420.4831,'euro','Dignissimos sunt quia hic illum. Quia voluptatem id molestias voluptas doloremque excepturi et. Suscipit blanditiis dolorem maiores reprehenderit inventore deleniti.'),(47,'quam',8,297983197.1922,'euro','Eius officia minima corrupti rerum fugiat voluptatum ullam. Quia harum sunt eos enim accusantium voluptate. Explicabo quis doloribus rem minima.'),(48,'at',6,32705804.4190,'usd','Nihil expedita rerum quia necessitatibus voluptatem perferendis. Suscipit vitae rerum quidem ab. Laudantium quis minus voluptatem vel. Tempore reiciendis dolores rerum alias.'),(49,'facilis',2,524.0653,'usd','Eum itaque eos harum molestiae in vitae quo. Autem officiis culpa qui. Laborum ab vel excepturi rerum quidem laboriosam consectetur. Ut doloremque sunt in veritatis aut ut illo eius.'),(50,'sit',3,247.1300,'rub','Quod illo mollitia cum dicta aut. Sed vel animi doloribus rerum pariatur. Harum eaque natus necessitatibus aspernatur veritatis sapiente nemo.'),(51,'similique',8,150878593.3915,'rub','Ut cupiditate soluta maiores. Repellendus rerum autem itaque animi. Impedit ut et praesentium sint sint quibusdam.'),(52,'officiis',7,444561662.7406,'euro','In cupiditate sunt consequatur blanditiis repellat animi neque accusantium. Quibusdam aut officiis distinctio quam maxime aut. Quia et harum dolore ut sit consectetur illo et.'),(53,'rerum',3,11795.4199,'usd','In beatae omnis voluptas aut aspernatur voluptate. Rerum aut et aut tenetur dicta deserunt. Error et velit qui eos hic ipsum ipsa.'),(54,'praesentium',1,3676.3600,'usd','Consequuntur qui eaque debitis voluptas perferendis hic qui ipsum. Animi tempore rem deleniti qui voluptas est. Rem ut sint sint soluta id eum et. Porro qui sapiente ut culpa.'),(55,'culpa',8,491.7902,'usd','Velit id nemo nam totam porro tempore temporibus. Distinctio nemo harum suscipit fugit et vel quia. Non hic voluptatum dignissimos cum aut eos. Dolor qui quisquam quisquam.'),(56,'autem',6,6744647.7700,'usd','Earum maiores qui illo tempora. Voluptas quam ab aut qui. Quo quo voluptatem qui ut maiores. Odio blanditiis quaerat unde. Provident dolores porro eum.'),(57,'dolorem',3,661217.7504,'rub','Esse voluptatibus neque quia hic reprehenderit consequatur ipsam nostrum. Expedita aliquid architecto molestias quos aut nisi. Dolor quod iste tempore in eum quia omnis. Et sit earum fuga et.'),(58,'accusantium',5,437011383.2453,'euro','Ut omnis officiis non voluptas in fugit quaerat. Non laboriosam et numquam voluptas saepe. In quia vel voluptas quisquam.'),(59,'nemo',4,311.2070,'usd','Laboriosam ducimus qui possimus architecto. Cum reiciendis similique neque et rem minima mollitia. Quia dolor eum et.'),(60,'voluptatem',3,178214.8032,'rub','Maxime cupiditate qui in. Est corporis ut cum earum et deleniti et. Repellat suscipit delectus non molestias.'),(61,'pariatur',2,642002.7679,'euro','Qui illo delectus laudantium et sit. Aut delectus esse nulla adipisci. Aut sunt repudiandae numquam tempore quisquam explicabo. Voluptas non officiis voluptate quo rerum necessitatibus eligendi.'),(62,'sit',3,87.0000,'euro','Unde ratione repellat laudantium et ab explicabo. Est repellat qui aut aut placeat est commodi. Est eius et dolore et corrupti aut porro.'),(63,'aliquam',4,191.8000,'rub','Suscipit ea incidunt tempore natus maxime accusamus eos dolorem. Quis a atque ipsa et molestiae sit aliquid. Voluptatum sed maxime in sint libero. Quidem incidunt vitae a aliquam temporibus.'),(64,'optio',2,285775.6701,'usd','Cumque assumenda aut fuga architecto aspernatur. Unde sed a sed beatae natus dignissimos neque. Corporis eaque dicta possimus voluptates accusantium nam id.'),(65,'laborum',9,2259970.4000,'rub','Unde et sint totam et et in non. Incidunt ipsa cupiditate possimus optio. Mollitia ut dolorem delectus dolor et error est id.'),(66,'consequatur',9,3093434.9533,'rub','Corrupti officiis quis fugiat odit. Suscipit dignissimos quia aut non aut quia corporis. Suscipit iure modi sit.'),(67,'nulla',7,112965566.3480,'euro','Quibusdam vero velit et eius ad voluptatem. Eveniet eveniet reiciendis aut qui autem molestias earum. Facere a architecto amet perspiciatis.'),(68,'assumenda',6,4.9248,'euro','Quas similique ipsa voluptatem cum aut in. Recusandae molestiae saepe similique explicabo similique delectus deleniti. Sed quia et ea adipisci quia dolorem. Aspernatur enim enim aut modi asperiores quos placeat dolore.'),(69,'est',7,0.1700,'euro','Illo porro quis reprehenderit. Cumque deleniti error tenetur nesciunt quis rerum voluptas. Aut nihil expedita provident cumque dolorum. Exercitationem expedita error minima et.'),(70,'pariatur',9,279616.1578,'usd','Voluptatem dolorum consequuntur sunt qui ad vel. Aut est asperiores omnis non laudantium aut voluptatem. Molestiae magnam maiores non aut ut. Ipsa porro omnis veniam voluptas quia.'),(71,'et',2,49318547.0000,'euro','Assumenda rerum accusamus saepe necessitatibus soluta dignissimos. Rerum qui ducimus porro dolores non quis. Voluptas et aut consequatur non et mollitia praesentium. Voluptatem eum aperiam totam.'),(72,'ut',3,58.0538,'euro','Suscipit nam ut ut voluptatem rerum laborum earum. Autem molestiae hic exercitationem voluptatum. Ipsum delectus temporibus nihil.'),(73,'commodi',4,58474.2874,'rub','Voluptatem omnis in ipsa sapiente temporibus eveniet. Provident labore nihil qui minima. Sed porro ea voluptatum et.'),(74,'voluptas',1,2.1000,'usd','Quis quibusdam illo ut aut. Ea quos nihil dicta sit blanditiis. Adipisci dolores molestias aliquid rerum ipsam quaerat.'),(75,'dicta',5,17.7592,'usd','Perspiciatis expedita sapiente distinctio quaerat. Aut at soluta qui perspiciatis quibusdam. Ut totam ab qui fugit nam consequuntur sequi.'),(76,'et',2,435399908.3200,'euro','Culpa aliquid aut voluptas quos ut. Inventore nulla et odit molestiae. Earum omnis unde vitae eum animi sed tempore ea.'),(77,'totam',1,37.6937,'rub','Laborum beatae vero rerum. Id harum eligendi consectetur ut odio asperiores ut. Minima et temporibus est laudantium cum deleniti architecto.'),(78,'vero',5,22147.1012,'rub','Quos aspernatur distinctio sequi. Sunt qui suscipit minima ut repellendus. Molestias maiores nemo exercitationem sunt et est soluta et.'),(79,'repellendus',3,0.0000,'rub','Amet quia praesentium labore et modi. Est sed fuga labore. Eos nemo voluptatem accusamus ut debitis.'),(80,'quis',3,3.3000,'rub','Iure exercitationem voluptates provident tempore quo ut animi necessitatibus. Porro debitis nesciunt nihil iusto culpa rerum ut. Id ullam eum officia qui earum. Et enim possimus perspiciatis enim delectus magnam.'),(81,'voluptatum',4,435001.3988,'euro','Nobis ea et voluptatem velit. Voluptatum quasi error cumque beatae. Ullam ad nostrum suscipit nulla similique ex facilis.'),(82,'aut',3,2004.0844,'euro','Ut ex dolorem amet et error aspernatur aut. Odio quos optio vero saepe aliquid et. Ab et quia consequatur animi atque praesentium fugit. Iste quia repudiandae autem ipsa.'),(83,'commodi',9,182972283.0000,'rub','Aut sed atque dolorum enim. Nam qui omnis iusto commodi molestiae. Qui nam atque provident sit esse. Itaque fuga numquam neque at enim quae.'),(84,'quia',8,31352.9906,'rub','Cumque modi sunt beatae quaerat non sit eaque sunt. Libero commodi quia deleniti odit animi eum. Praesentium voluptatibus natus eaque modi. Omnis illum unde reprehenderit sint dolores voluptates.'),(85,'impedit',1,2076928.8400,'euro','Molestiae hic tempore consectetur quibusdam minima. Qui illum amet quia magnam. Officia iusto sit voluptates sed. Voluptatem aut praesentium voluptas ullam non nulla quo.'),(86,'maiores',4,0.0000,'usd','Numquam assumenda nihil atque aut molestias nemo hic. Quia consectetur at sunt odio et non laudantium. Quae itaque sed pariatur fuga. Quo voluptates et fuga minima aut. Voluptatem natus architecto aperiam.'),(87,'rerum',7,7.0000,'rub','Rerum omnis accusantium et dolorem saepe. Ratione repellat rerum accusamus consequuntur mollitia nisi eius. Illo voluptatem magni sed et. Commodi iusto quos eum et.'),(88,'dolorum',3,3232.9410,'rub','Voluptatem consequatur et laudantium magnam aperiam enim. Quia recusandae dolores id aut consequatur dolor aut. Fugiat quisquam quaerat aut quia rem.'),(89,'explicabo',4,2962.7542,'usd','Ipsam tempore consequatur rem quis. Dolores vel facere illo. Tempora ratione quam qui quae quia.'),(90,'et',6,59896.8000,'rub','Qui reiciendis consequatur impedit aliquam est incidunt corporis. Sint cupiditate sint nam. Neque recusandae et illum sed dolorum aut.'),(91,'placeat',6,70.8000,'rub','Voluptatem odit nam doloribus et nobis doloremque. Illo consequatur sed ut dicta totam ut minus. Nulla excepturi ut dolorum ullam enim odit error.'),(92,'facilis',3,208.0603,'euro','Vitae suscipit sint voluptatem error ut deleniti illo. Ipsa aut atque sit enim harum qui unde. Cupiditate quis aut ut vero aperiam. Sit sed et delectus occaecati omnis quas quam.'),(93,'vero',5,0.0000,'euro','Qui minus praesentium veritatis consequatur sed. Velit sit minima et animi quis.'),(94,'quia',6,2630354.5899,'euro','Saepe rerum iusto quos et ducimus accusamus sunt. Perferendis sit assumenda consequatur voluptates ut laudantium. Non et ratione consequuntur quaerat praesentium minus.'),(95,'consequatur',2,1546606.8000,'usd','Doloribus necessitatibus quasi cumque asperiores quasi. Aut qui rerum non quod ut. Expedita possimus alias quaerat laudantium. Consequatur sint et placeat tempore reprehenderit.'),(96,'autem',2,72228.8890,'euro','Dignissimos est officiis dolores perspiciatis ut. Minus accusantium nisi vel deserunt veritatis optio sed veniam. Soluta veniam aut ex possimus nihil.'),(97,'maiores',7,209.0530,'usd','Rerum sint eligendi in commodi tempore aliquid iusto. Et blanditiis sit sed itaque totam est. Blanditiis possimus delectus sed eveniet dolores eos.'),(98,'et',8,609217461.4995,'euro','Ea sint repellendus pariatur dolorem at tenetur maxime. Qui illum fugit quo ad perspiciatis et commodi. Placeat dolore totam repellat minima qui excepturi adipisci excepturi.'),(99,'voluptas',1,1631.6814,'usd','Ratione quaerat ut deserunt minima reprehenderit rerum aut. Eaque voluptatem assumenda cum aspernatur quo voluptates. Sint eum molestiae perspiciatis vel totam accusamus veritatis. Facilis at illum possimus facilis qui quaerat.'),(100,'autem',1,668347183.8186,'usd','Qui esse consequatur est deserunt sapiente. Minus ad voluptatem voluptates odit iure sint eaque sunt. Unde quam dolor ex consequatur ut est et. Porro maxime et qui magni harum.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Расширенная информация о пользователе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (101,'36210 Botsford Lodge\nRunolfsdottirhaven, ME 45742-9422',46),(103,'14531 Jarred Vista Suite 948\nChadfurt, CA 05716',504725),(104,'5295 Conroy Way Apt. 913\nEast Jovaniton, WV 47633-0169',6535028),(105,'84451 Daisha Harbors Suite 127\nNorth Selina, GA 57907-7264',2088794),(106,'83733 Bernier Walk Suite 589\nPort Gilesstad, SC 12653-0500',6),(107,'89215 Emelie Viaduct\nEast Angieport, DE 45311-4429',0),(108,'962 Rupert Islands Suite 492\nJackelineborough, WV 26798',454),(109,'356 Laurence Lane\nHeaneymouth, MN 57831',9903922),(111,'341 Wuckert Union Apt. 953\nWest Vickie, LA 11306',765),(113,'0317 Noelia Way Suite 420\nChristinaburgh, MI 70163',30),(115,'861 Volkman Points\nGleasonfort, PA 44995-9038',1574718),(116,'193 Braun Springs Suite 072\nLake Herberttown, HI 08621',74),(117,'393 Lupe Parkway Apt. 004\nReedshire, DC 16003-1155',57),(118,'7128 Veum Walks\nLake Alberta, NJ 30874',6274),(125,'9243 Bradtke Place Apt. 978\nQuigleyland, AL 43955',7919),(126,'768 Rosenbaum Forks\nMarjolaineshire, DC 92181-3487',76419773),(127,'57064 Herbert Manor\nRobelshire, CA 26520-3904',194357831),(129,'257 Bins Inlet Suite 064\nCormiershire, HI 22192',504156),(131,'7481 Bogisich Squares\nLake Elviefort, IN 14601',216181708),(132,'4243 Katharina Underpass Apt. 978\nIsaacberg, RI 47001',41734806),(135,'81983 Elyssa Forest Apt. 927\nWest Arjunberg, UT 60767-7872',206),(136,'92590 Hand Valley\nLake Kim, AK 86860',973),(137,'02716 Andreane Squares\nEast Erica, MA 22105',4130),(138,'04299 Johnston Port Suite 136\nWest Virginieside, CA 57010-3804',0),(140,'5700 Fadel Ports Apt. 070\nRhetthaven, NJ 51737',94541586),(143,'990 Wilma Knoll Apt. 348\nToyburgh, TX 16789-4522',8158419),(146,'947 Ursula Mountain Suite 285\nNorth Alisaborough, IN 12177-0871',0),(147,'240 Rylee Stravenue Apt. 108\nWest Loyal, WI 39134',95442862),(149,'690 Terry Ports\nLake Royce, IL 58471-2330',934427),(150,'02186 Ewell Valleys\nHoytburgh, CO 18158-7466',1070075),(151,'7629 Retha Branch Suite 989\nLake Brayan, AK 15093-2866',50),(152,'838 Davon Circle Suite 990\nWest Edwardomouth, WY 16666-5865',4),(153,'11159 Rodriguez Stravenue Suite 122\nJacobsonport, MT 70054',278553333),(156,'414 Lura Lock\nHaroldstad, IN 88802-1632',4927),(157,'6331 Willow Pine\nAbigaleton, OK 97726',2488),(158,'420 Mckenna Plaza Apt. 521\nNatalieview, MA 59631',639181370),(159,'2270 Sporer Point Apt. 740\nMetzchester, WV 50630-7586',9615157),(161,'45955 Gerhold Centers Apt. 737\nHirthebury, WI 36323',17529),(165,'0321 Terry Mount\nLake Marilynefort, WA 79836',5497246),(166,'70455 Bert Rest Apt. 075\nDavismouth, CO 14131-8336',17),(167,'09151 Alba Lodge Suite 108\nSporerland, NV 00845',784918926),(170,'48758 Verlie Estates\nFriesenfort, NV 50327',76),(173,'32015 Kutch Island Apt. 349\nShieldschester, UT 22090-8672',6889683),(174,'448 Prosacco Rue\nConsidinemouth, NC 45193',522695),(175,'314 Adams Extension Apt. 524\nNew Javon, ND 81174-7586',0),(176,'4546 Walker Divide\nLeschmouth, AZ 74191-9026',914871646),(177,'22544 Dejon Station\nNorth Jordonland, WV 57838',16311),(179,'231 Cummerata Radial\nHarveyside, MN 47756',365),(182,'845 Zboncak Ridge\nNew Stefan, FL 72143-1814',7),(185,'28557 Hartmann Greens Apt. 518\nNorth Randitown, MI 52345',22239904),(187,'2748 Jaydon Corner Suite 649\nWest Melissaton, SD 15580',0),(188,'6778 Hilda Springs\nLehnerfurt, MT 56226',56321),(190,'505 Goodwin Groves\nEast Lucy, WA 30390-8520',82992),(192,'4930 Caitlyn Tunnel Suite 970\nLake Evalynmouth, KY 21997-1695',6),(193,'11767 Kreiger Pine\nSchulistville, MS 89863',0),(194,'6598 Russel Throughway\nElianview, TX 58954-7546',80),(195,'03195 Swaniawski Avenue Apt. 519\nCordellborough, MN 62111',833439183),(197,'3545 Hartmann Junction Apt. 675\nReeseland, GA 33394-3088',386),(198,'93021 Edgardo Parks Apt. 975\nNorth Ilaburgh, SD 99657-9307',8),(200,'41651 Sonya Coves\nNew Arnaldofort, MS 94807-9568',82);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Информация о Пользователе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (101,'Unique','Effertz',0,'eleonore.murray@example.net','2020-11-05 19:49:57','1977-12-06 15:57:12'),(103,'Brionna','Veum',493323,'xfahey@example.com','1988-07-06 13:49:56','2008-03-13 14:15:41'),(104,'April','Yundt',951940,'marielle.osinski@example.org','2009-12-19 07:08:04','2017-10-12 17:03:48'),(105,'Caleigh','Schmitt',88,'shagenes@example.org','1994-05-09 12:45:57','1998-05-02 04:32:49'),(106,'Winifred','Lueilwitz',447138914,'jessy13@example.net','1990-10-15 08:18:28','2016-10-19 02:00:35'),(107,'Rahsaan','Feest',1,'maymie.cummerata@example.org','2005-12-07 05:45:22','2012-04-21 23:57:17'),(108,'Lonny','Bernier',66470,'noelia.mann@example.org','2019-02-23 06:34:15','1981-12-16 14:22:45'),(109,'Alicia','Padberg',872559,'hvolkman@example.org','1981-01-29 08:24:33','1978-02-15 04:14:06'),(111,'Gregg','Davis',328186,'daniela50@example.net','1998-12-26 15:44:41','1991-12-28 18:28:32'),(113,'Francesco','Ferry',839,'idella74@example.net','2007-09-24 03:34:38','2018-09-04 18:41:42'),(115,'Kayden','Kassulke',165578,'graham.gleichner@example.org','1981-12-23 02:31:27','1980-02-05 10:23:04'),(116,'Bettye','Fahey',892522,'carroll.riley@example.org','1983-02-11 07:54:30','1974-05-08 03:03:25'),(117,'Nicole','Moore',49,'luther19@example.org','1977-10-02 15:20:07','2013-03-09 07:03:56'),(118,'Madeline','Conn',1319501584,'alexie.lindgren@example.org','1983-01-20 04:43:48','2012-04-15 04:21:58'),(125,'Javon','Corwin',322,'huels.oliver@example.org','2002-10-31 06:01:41','2015-06-08 18:53:15'),(126,'Kelly','Reynolds',856,'ryan.filiberto@example.org','1979-03-16 21:38:25','1971-01-10 22:32:48'),(127,'Elian','Turcotte',91,'litzy.collier@example.com','1993-04-13 22:06:56','2019-11-03 06:36:44'),(129,'Maxine','Dietrich',184260,'brandon.schaden@example.com','2008-03-20 18:33:54','1973-07-29 21:15:08'),(131,'Estevan','Gerhold',25,'zieme.sheila@example.org','1991-05-12 09:32:27','1992-11-29 06:35:29'),(132,'Sienna','Effertz',8911848400,'eichmann.lorna@example.com','1993-04-22 16:27:08','1987-11-15 00:42:00'),(135,'Andreanne','Stracke',396,'eleanora26@example.com','1994-04-30 08:02:16','1970-04-20 22:24:16'),(136,'Zoie','Yost',147,'heller.eldora@example.com','2016-05-31 15:56:11','1982-09-17 13:30:55'),(137,'Birdie','Shanahan',306,'rippin.natalie@example.org','1980-08-05 09:39:26','2002-02-15 11:14:17'),(138,'Zane','Fahey',98055,'kyle.hirthe@example.com','1976-11-03 21:09:58','1992-05-26 05:13:09'),(140,'Mireya','Ankunding',702909,'kovacek.antone@example.com','1992-03-18 02:46:52','2017-02-24 20:36:51'),(143,'Mitchell','Lang',106,'rebecca68@example.net','1993-11-27 21:29:48','2003-01-04 14:18:08'),(146,'Adelia','Gleason',60,'jsawayn@example.org','1987-04-19 06:48:39','2019-09-27 15:02:54'),(147,'Hilbert','Murazik',743294,'leo.gislason@example.net','1980-09-12 04:59:52','1985-12-20 10:16:04'),(149,'Kayli','Schmitt',482396,'tillman.demetris@example.org','2009-04-21 04:01:37','1971-03-11 04:44:32'),(150,'Erica','Gorczany',64,'kzemlak@example.org','1992-04-05 13:54:18','2005-02-12 13:03:29'),(151,'Alda','Kerluke',6555722209,'qleannon@example.com','1976-02-13 18:39:30','1977-05-25 19:22:01'),(152,'Marta','Johns',12,'marilie.block@example.org','1980-08-04 00:12:36','1971-09-10 12:15:49'),(153,'Hailie','Mueller',257606,'aufderhar.charles@example.com','2009-06-10 15:17:02','1989-01-13 18:59:37'),(156,'Dagmar','Kutch',50,'kelly.dietrich@example.com','2008-06-30 07:17:16','1977-02-28 23:20:21'),(157,'Cathryn','Brakus',381913,'ima82@example.com','1994-11-07 00:07:07','2020-06-11 06:22:29'),(158,'Morgan','Heaney',10,'uwintheiser@example.org','1983-06-11 21:43:16','1978-04-02 20:10:56'),(159,'Hassan','Stamm',524335609,'leonard55@example.org','1995-09-06 04:09:40','2002-02-26 21:44:47'),(161,'Joan','Wisozk',55,'amills@example.net','2002-08-07 07:57:37','1995-01-18 13:04:23'),(165,'Gay','Doyle',648837,'graham.tania@example.com','2003-12-18 22:40:05','1982-07-22 18:40:57'),(166,'Andre','Ruecker',9872638223,'mossie.hoppe@example.net','2012-03-28 20:33:13','1993-10-02 09:38:52'),(167,'Amy','Blanda',21,'alan.lueilwitz@example.com','2000-04-24 13:02:19','2002-11-30 13:49:06'),(170,'Ulises','McClure',363,'langworth.skye@example.net','2020-08-18 01:22:31','1983-02-16 19:53:16'),(173,'Donald','Feeney',480176,'barrows.jolie@example.org','1992-11-23 13:36:02','1974-08-28 06:34:44'),(174,'Edison','Nikolaus',827355,'christiansen.celine@example.org','1978-11-02 21:33:10','2002-04-26 21:46:59'),(175,'Carmel','Douglas',240,'zfeest@example.net','1987-07-24 21:20:48','1993-01-15 01:21:04'),(176,'Zetta','Stamm',3351267973,'igreenholt@example.org','2003-06-20 23:02:56','2014-09-28 08:25:24'),(177,'Laura','Cartwright',673,'kattie37@example.org','2013-01-19 06:09:54','1997-08-27 00:23:43'),(179,'Darren','Brekke',386,'octavia.bauch@example.net','2019-08-25 17:43:25','1988-10-06 05:09:50'),(182,'Karlie','Stamm',35155,'keegan.crona@example.net','1998-07-31 21:49:09','2002-09-25 03:47:11'),(185,'Stewart','Feest',40,'pansy91@example.net','2007-05-19 01:43:10','2013-04-11 19:03:29'),(187,'Liana','Pouros',813,'kathryn95@example.org','1995-07-01 10:23:45','2012-10-22 17:06:15'),(188,'Bret','Flatley',35,'letitia77@example.net','2003-11-26 09:06:35','2007-12-10 23:28:24'),(190,'Elmore','Bartoletti',972,'alowe@example.com','2001-02-05 04:17:25','2000-09-24 07:58:03'),(192,'Nora','O\'Kon',57,'yhodkiewicz@example.org','1986-07-16 18:34:34','2003-03-26 05:17:58'),(193,'Dandre','Bosco',96,'qreilly@example.net','2000-03-03 22:09:08','1990-03-01 01:53:18'),(194,'Otis','Rice',502,'jaquan.schoen@example.net','1970-05-09 08:57:14','2012-01-11 00:13:17'),(195,'Dora','Weissnat',681,'homenick.joy@example.org','2001-07-21 15:31:58','1998-04-25 20:16:23'),(197,'Sharon','Rice',63,'vilma62@example.org','1974-06-06 03:01:07','2012-05-24 20:44:12'),(198,'Joanne','Jerde',69,'smith.kyle@example.org','1997-06-02 19:08:09','2013-08-09 20:51:44'),(200,'Mike','Raynor',260402,'fdeckow@example.org','2004-07-27 20:34:50','2001-04-14 11:25:53');
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

-- Dump completed on 2021-01-19 19:41:27
