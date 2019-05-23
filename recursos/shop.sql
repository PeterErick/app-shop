-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.36-MariaDB

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
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_details_cart_id_foreign` (`cart_id`),
  KEY `cart_details_product_id_foreign` (`product_id`),
  CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  CONSTRAINT `cart_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
INSERT INTO `cart_details` VALUES (13,1,9,1,0,'2019-01-10 01:49:29','2019-01-10 01:49:29'),(14,1,1,21,0,'2019-01-10 01:49:40','2019-01-10 01:49:40'),(17,1,6,1,0,'2019-01-10 02:09:10','2019-01-10 02:09:10'),(18,4,20,1,0,'2019-01-10 04:09:18','2019-01-10 04:09:18'),(19,4,9,1,0,'2019-01-10 04:13:41','2019-01-10 04:13:41'),(20,4,7,1,0,'2019-01-10 04:13:50','2019-01-10 04:13:50');
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,NULL,NULL,'Pending',1,'2019-01-09 01:26:41','2019-01-10 03:07:55'),(2,NULL,NULL,'Active',2,'2019-01-09 03:29:45','2019-01-09 03:29:45'),(3,NULL,NULL,'Active',1,'2019-01-10 03:07:55','2019-01-10 03:07:55'),(4,NULL,NULL,'Active',3,'2019-01-10 04:08:57','2019-01-10 04:08:57');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Quidem','Nam et saepe autem tempora nihil rerum explicabo quia voluptas.',NULL,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(2,'Consequatur','Necessitatibus eum ut officiis atque laborum qui ex magni deleniti quae sunt.',NULL,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(3,'Omnis','Non unde exercitationem quis dolorem est explicabo sequi et nemo harum.',NULL,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(4,'Laudantium','Eum id nobis cupiditate ex cumque maxime dolorem repellat iure voluptatem qui pariatur facilis.',NULL,'2019-01-09 01:16:42','2019-01-09 01:16:42');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (83,'2014_10_12_000000_create_users_table',1),(84,'2014_10_12_100000_create_password_resets_table',1),(85,'2018_11_06_160140_create_categories_table',1),(86,'2018_11_06_173628_create_products_table',1),(87,'2018_11_06_193056_create_product_images_table',1),(88,'2019_01_07_174724_create_carts_table',1),(89,'2019_01_07_174813_create_cart_details_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://lorempixel.com/250/250/?59276',1,1,'2019-01-09 01:16:42','2019-01-10 04:15:05'),(2,'https://lorempixel.com/250/250/?73394',0,1,'2019-01-09 01:16:42','2019-01-10 04:15:05'),(3,'https://lorempixel.com/250/250/?40873',0,1,'2019-01-09 01:16:42','2019-01-10 04:15:05'),(4,'https://lorempixel.com/250/250/?32266',0,1,'2019-01-09 01:16:42','2019-01-10 04:15:05'),(5,'https://lorempixel.com/250/250/?79782',0,1,'2019-01-09 01:16:42','2019-01-10 04:15:05'),(6,'https://lorempixel.com/250/250/?48746',0,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(7,'https://lorempixel.com/250/250/?20931',0,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(8,'https://lorempixel.com/250/250/?70685',0,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(9,'https://lorempixel.com/250/250/?42094',0,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(10,'https://lorempixel.com/250/250/?76073',0,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(11,'https://lorempixel.com/250/250/?41629',0,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(12,'https://lorempixel.com/250/250/?71614',0,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(13,'https://lorempixel.com/250/250/?88709',0,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(14,'https://lorempixel.com/250/250/?19540',0,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(15,'https://lorempixel.com/250/250/?21132',0,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(16,'https://lorempixel.com/250/250/?55105',0,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(17,'https://lorempixel.com/250/250/?97242',0,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(18,'https://lorempixel.com/250/250/?60336',0,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(19,'https://lorempixel.com/250/250/?91878',0,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(20,'https://lorempixel.com/250/250/?98141',0,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(21,'https://lorempixel.com/250/250/?65186',0,5,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(22,'https://lorempixel.com/250/250/?66361',0,5,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(23,'https://lorempixel.com/250/250/?75188',0,5,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(24,'https://lorempixel.com/250/250/?51754',0,5,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(25,'https://lorempixel.com/250/250/?85024',0,5,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(26,'https://lorempixel.com/250/250/?15737',0,6,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(27,'https://lorempixel.com/250/250/?45646',0,6,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(28,'https://lorempixel.com/250/250/?18065',0,6,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(29,'https://lorempixel.com/250/250/?53394',0,6,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(30,'https://lorempixel.com/250/250/?52806',0,6,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(31,'https://lorempixel.com/250/250/?10327',0,7,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(32,'https://lorempixel.com/250/250/?97586',0,7,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(33,'https://lorempixel.com/250/250/?41819',0,7,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(34,'https://lorempixel.com/250/250/?57696',0,7,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(35,'https://lorempixel.com/250/250/?30150',0,7,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(36,'https://lorempixel.com/250/250/?70982',0,8,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(37,'https://lorempixel.com/250/250/?77874',0,8,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(38,'https://lorempixel.com/250/250/?53873',0,8,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(39,'https://lorempixel.com/250/250/?11106',0,8,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(40,'https://lorempixel.com/250/250/?74986',0,8,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(41,'https://lorempixel.com/250/250/?41085',0,9,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(42,'https://lorempixel.com/250/250/?61216',0,9,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(43,'https://lorempixel.com/250/250/?80526',0,9,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(44,'https://lorempixel.com/250/250/?74426',0,9,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(45,'https://lorempixel.com/250/250/?74734',0,9,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(46,'https://lorempixel.com/250/250/?34992',0,10,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(47,'https://lorempixel.com/250/250/?43270',0,10,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(48,'https://lorempixel.com/250/250/?24611',0,10,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(49,'https://lorempixel.com/250/250/?54303',0,10,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(50,'https://lorempixel.com/250/250/?11143',0,10,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(51,'https://lorempixel.com/250/250/?71590',0,11,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(52,'https://lorempixel.com/250/250/?21585',0,11,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(53,'https://lorempixel.com/250/250/?18173',0,11,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(54,'https://lorempixel.com/250/250/?82451',0,11,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(55,'https://lorempixel.com/250/250/?70252',0,11,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(56,'https://lorempixel.com/250/250/?44719',0,12,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(57,'https://lorempixel.com/250/250/?99056',0,12,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(58,'https://lorempixel.com/250/250/?65320',0,12,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(59,'https://lorempixel.com/250/250/?13735',0,12,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(60,'https://lorempixel.com/250/250/?71747',0,12,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(61,'https://lorempixel.com/250/250/?44571',0,13,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(62,'https://lorempixel.com/250/250/?97803',0,13,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(63,'https://lorempixel.com/250/250/?90803',0,13,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(64,'https://lorempixel.com/250/250/?65962',0,13,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(65,'https://lorempixel.com/250/250/?19194',0,13,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(66,'https://lorempixel.com/250/250/?97214',0,14,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(67,'https://lorempixel.com/250/250/?82592',0,14,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(68,'https://lorempixel.com/250/250/?92439',0,14,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(69,'https://lorempixel.com/250/250/?77035',0,14,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(70,'https://lorempixel.com/250/250/?13051',0,14,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(71,'https://lorempixel.com/250/250/?36192',0,15,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(72,'https://lorempixel.com/250/250/?20694',0,15,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(73,'https://lorempixel.com/250/250/?25507',0,15,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(74,'https://lorempixel.com/250/250/?23474',0,15,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(75,'https://lorempixel.com/250/250/?29847',0,15,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(76,'https://lorempixel.com/250/250/?26241',0,16,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(77,'https://lorempixel.com/250/250/?55161',0,16,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(78,'https://lorempixel.com/250/250/?33204',0,16,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(79,'https://lorempixel.com/250/250/?63347',0,16,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(80,'https://lorempixel.com/250/250/?54878',0,16,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(81,'https://lorempixel.com/250/250/?41261',0,17,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(82,'https://lorempixel.com/250/250/?41305',0,17,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(83,'https://lorempixel.com/250/250/?58417',0,17,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(84,'https://lorempixel.com/250/250/?66436',0,17,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(85,'https://lorempixel.com/250/250/?89903',0,17,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(86,'https://lorempixel.com/250/250/?33901',0,18,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(87,'https://lorempixel.com/250/250/?63330',0,18,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(88,'https://lorempixel.com/250/250/?14759',0,18,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(89,'https://lorempixel.com/250/250/?23927',0,18,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(90,'https://lorempixel.com/250/250/?29810',0,18,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(91,'https://lorempixel.com/250/250/?81067',0,19,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(92,'https://lorempixel.com/250/250/?59307',0,19,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(93,'https://lorempixel.com/250/250/?19150',0,19,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(94,'https://lorempixel.com/250/250/?54657',0,19,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(95,'https://lorempixel.com/250/250/?13516',0,19,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(96,'https://lorempixel.com/250/250/?15171',0,20,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(97,'https://lorempixel.com/250/250/?15699',0,20,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(98,'https://lorempixel.com/250/250/?75099',0,20,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(99,'https://lorempixel.com/250/250/?72012',0,20,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(100,'https://lorempixel.com/250/250/?52153',0,20,'2019-01-09 01:16:42','2019-01-09 01:16:42');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Deserunt non non','Atque eum laboriosam quibusdam blanditiis autem animi minima quam qui quo reiciendis pariatur.','Odit qui ad numquam aspernatur ad. Qui dolor et modi inventore. Porro excepturi dolore aut est.',24.95,1,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(2,'Qui consequuntur deleniti','Culpa cupiditate quia distinctio velit assumenda nihil.','Magnam qui eveniet consequatur illum reprehenderit quibusdam. Doloremque autem labore ipsum et expedita. Harum ab harum ab voluptatum ipsam.',54.15,1,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(3,'Est sit','Possimus at cumque id quam ut rerum possimus quas rerum illo.','Ex iusto eos porro rerum rem ipsum cum sit. Et unde quaerat distinctio rerum ratione.',147.84,1,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(4,'Voluptatibus id qui','Corrupti voluptatem est optio adipisci magnam et culpa ex officiis illum in laudantium.','Aliquid tenetur fuga error eos. Sapiente repudiandae consequatur voluptatum numquam dolor. Maiores sit ab in hic. Libero ea ratione earum suscipit voluptate nemo.',5.09,1,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(5,'Aut ut aliquam pariatur','Vitae ut modi explicabo animi quibusdam non qui.','Quo rerum quo enim quis consequatur adipisci et. Ut neque molestiae vel quis et nihil. Sunt animi aut omnis. Quia assumenda et harum consectetur qui ut dolor.',86.05,1,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(6,'Et cum ut itaque inventore','Illum officiis harum recusandae aspernatur neque quidem est sequi cum fugiat non consequatur.','Deserunt sit dolores rem. Ratione quidem quo saepe ab eius itaque eum. Libero alias inventore nobis velit est maiores. Quia eum vitae adipisci et. Libero qui laboriosam omnis qui amet perspiciatis.',115.52,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(7,'Quibusdam consequatur sint','Minus qui velit ea porro culpa temporibus.','Quia sit qui doloremque non fugiat a corporis. Autem incidunt autem qui. Earum dignissimos nemo excepturi illum deserunt unde. Minima dicta itaque voluptate nostrum omnis.',29.57,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(8,'Quo maxime blanditiis','Non accusantium quidem omnis qui rem at enim.','Consequatur optio veritatis eligendi qui porro ut. Deleniti totam qui corrupti iste sequi aut fuga ex. Et aut ab veritatis.',128.69,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(9,'Velit mollitia soluta','Neque aut voluptatem voluptatem voluptate provident voluptas sunt aut voluptas consectetur.','Et qui animi iure et. Cupiditate labore numquam dolorem assumenda. Mollitia deleniti beatae sint alias. Non provident et delectus aut quia quia.',35.30,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(10,'Laudantium aperiam et perspiciatis','At quaerat nam provident inventore ullam nihil voluptatum beatae est debitis.','Ut velit et et et sit et harum. Omnis excepturi ab voluptatem neque. Odit est vitae sed sint. Saepe similique aut labore et.',54.02,2,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(11,'Sequi enim corrupti repellat','Quo unde doloremque commodi repellendus accusamus optio.','Fugit reprehenderit est et ipsa. Iusto dolore deserunt vel odio perspiciatis qui quasi. Labore quos neque excepturi dolores non cupiditate.',33.25,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(12,'Qui velit voluptas autem','Rem illum suscipit aut qui vitae est qui impedit dolorem.','Eius eligendi nostrum aut. Doloribus minima ut ut nihil et et consectetur. Et et ipsa magni nam a eveniet quis. Dicta placeat eveniet consequatur eveniet deleniti velit.',144.23,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(13,'Accusamus minima et','Ad voluptatem dolores et ipsum repellendus totam quaerat dignissimos mollitia accusamus cupiditate facilis.','Deserunt praesentium dicta enim hic magni. Ut tenetur reprehenderit perferendis quasi. Fuga hic dignissimos a exercitationem. Vitae et quia voluptatem eius nemo accusantium.',71.05,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(14,'Est a consequatur ipsum','Et quidem expedita atque sunt perferendis inventore odit consectetur qui et quasi vitae.','Debitis provident sit error laboriosam ullam. Soluta at temporibus qui maiores aut quas quae laborum. Atque provident expedita temporibus quidem culpa id.',129.73,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(15,'Consequuntur omnis minus commodi','Atque enim architecto quod eveniet quibusdam officia aliquam.','Fugit architecto quo velit maiores dolores provident omnis. Ex tempore cum error quis laboriosam eaque dolores. Quae quis voluptas perspiciatis omnis ea minus aut.',59.79,3,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(16,'Est animi','Aut aliquid rem ea voluptas temporibus cum ex minus.','Dolorem sed tempora in. Necessitatibus vero cumque corporis.',25.78,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(17,'Id praesentium ab','Et sit suscipit praesentium eius enim nam error sit quia qui accusamus modi quo.','Officia error temporibus id cum. Omnis et perspiciatis cupiditate quia provident. Accusantium enim provident nemo quod labore atque.',49.02,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(18,'Occaecati eius impedit','Ipsum perspiciatis magnam vel cupiditate ex aut est neque assumenda tenetur.','Suscipit eveniet quia accusantium tempora. Quis voluptatem id nesciunt esse necessitatibus nemo ratione. Nihil dicta eum omnis rerum perferendis optio.',97.97,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(19,'Dolor sed sunt porro','Ad in eos accusamus a ipsam aut velit.','Laboriosam est reiciendis iste. Quod quis eaque sit dolorem rerum voluptatum. Voluptates et aut quis dolores ut sint tempora.',25.59,4,'2019-01-09 01:16:42','2019-01-09 01:16:42'),(20,'Nemo et sint perspiciatis','Architecto eveniet qui voluptate ut ut corporis.','Vel cupiditate nihil exercitationem et et eaque. Qui tempora est sapiente. Libero libero assumenda iste magni. Voluptatem eum eos deserunt necessitatibus rem illum culpa.',86.11,4,'2019-01-09 01:16:42','2019-01-09 01:16:42');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Peter Parker','pedrossanz33@gmail.com',NULL,'$2y$10$x0xXhPro9sgd/ZuWHUG9.e.CQGiyxx2KM7u3DzJ1nSkKKLeY5VjVa',1,'LooT7WWzjk2HSYhXkynvvsPxhsZWHx4BRXgigdeIl16VWIeBn7rDt8A6uZNH','2019-01-09 01:16:42','2019-01-09 01:16:42'),(2,'Elizabeth','ashcatsupmaster@gmail.com',NULL,'$10$x0xXhPro9sgd/ZuWHUG9.e.CQGiyxx2KM7u3DzJ1nSkKKLeY5VjVa',0,'ybLX3Vq4bxslg6vkgdhQfuiiT8Rkx4g5aODCoNg9UF9rson1iEFyRdyBz8BG','2019-01-09 03:29:45','2019-01-09 03:29:45'),(3,'Elizabeth','fheda.taz3194@gmail.com',NULL,'$2y$10$bzZ6oGtl7fsyNj4vDEh1w.3tRYeFeUUnR14rHrqeHfokRmczcvS7W',0,'UP46EQdBEwZdZXDFMEtmFIV2QH57M9eNJ58f4KW8iQi6y7AQXEeGYNQO1zo3','2019-01-10 04:08:57','2019-01-10 04:08:57');
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

-- Dump completed on 2019-01-09 16:19:58
