-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'O45TbmrbO4n9c2sKUfVn9i4J64X2K8zj',1,'2024-02-24 01:26:44','2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,2,'DQ99WxNaxv4kOYmVJstT5bSX10Mdc4nr',1,'2024-02-24 01:26:44','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2029-02-24 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(2,'Homepage middle 2','2029-02-24 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(3,'Homepage middle 3','2029-02-24 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(4,'Slide right 1','2029-02-24 00:00:00','not_set','WF2VEBKBGUFA','promotion/4.jpg','/products',0,4,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(5,'Slide right 2','2029-02-24 00:00:00','not_set','YKE9S2TUEEJB','promotion/5.jpg','/products',0,5,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(6,'Homepage medium 1','2029-02-24 00:00:00','not_set','DHAEBCMWGYJG','promotion/6.jpg','/products',0,6,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(7,'Homepage medium 1','2029-02-24 00:00:00','not_set','MDEUVQI9QPKM','promotion/7.jpg','/products',0,7,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(8,'Homepage medium 3','2029-02-24 00:00:00','not_set','EYMG7NGZTHJL','promotion/8.jpg','/products',0,8,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(9,'Homepage medium 4','2029-02-24 00:00:00','not_set','NKWBGV6NAC3M','promotion/9.jpg','/products',0,9,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL),(10,'Homepage medium 5','2029-02-24 00:00:00','not_set','7W3YFO7XE422','promotion/10.jpg','/products',0,10,'published','2024-02-24 01:26:45','2024-02-24 01:26:45',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Velit sint non fugiat porro in harum odio. Dicta inventore amet omnis eos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(2,'Fashion',0,'Libero rerum nostrum qui quas consectetur at corrupti. Perspiciatis quasi inventore eos dolor fugit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(3,'Electronic',0,'Quia fugiat recusandae vel possimus fugiat modi fuga. Voluptate voluptas qui voluptatem ipsam et ut ab. Molestiae nihil delectus et non libero quis. Culpa amet vitae et ut ex sequi commodi debitis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(4,'Commercial',0,'Occaecati quia voluptatem voluptatem earum. Dolorem animi velit nihil rem. Animi accusamus deleniti quidem earum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:26:43','2024-02-24 01:26:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2024-02-24 01:26:27','2024-02-24 01:26:27');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(2,'EUR','€',0,2,1,0,0.84,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(3,'VND','₫',0,0,2,0,23203,'2024-02-24 01:26:27','2024-02-24 01:26:27'),(4,'NGN','₦',1,2,2,0,895.52,'2024-02-24 01:26:27','2024-02-24 01:26:27');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Vena Grady','customer@botble.com','+17542321343','CY','Idaho','Cadenstad','70445 Karl Cape Apt. 879',1,1,'2024-02-24 01:26:29','2024-02-24 01:26:29','52972'),(2,'Vena Grady','customer@botble.com','+18319059606','PT','Alaska','O\'Connellborough','1053 Aric Trail',1,0,'2024-02-24 01:26:29','2024-02-24 01:26:29','84480-6050'),(3,'Mr. Blake Larkin','john.smith@botble.com','+16789304195','NG','Wisconsin','Serenityborough','173 Jacobs Row Suite 345',2,1,'2024-02-24 01:26:29','2024-02-24 01:26:29','21096'),(4,'Mr. Blake Larkin','john.smith@botble.com','+16788947216','TM','Georgia','Lourdesfort','753 Marquardt Shoal Suite 083',2,0,'2024-02-24 01:26:29','2024-02-24 01:26:29','63298-4553'),(5,'Lucius Mayer','watson.rosenbaum@example.com','+15209474982','AZ','Delaware','Jacobibury','660 Delaney Plain Apt. 763',3,1,'2024-02-24 01:26:29','2024-02-24 01:26:29','38462'),(6,'Reginald O\'Hara','acormier@example.com','+17378089846','IR','Idaho','West Joelle','78448 Bradtke Mount Suite 363',4,1,'2024-02-24 01:26:30','2024-02-24 01:26:30','27106'),(7,'Alisha Bartoletti Sr.','sawayn.koby@example.net','+17347915344','YT','New Hampshire','West Gaetano','60363 Shanny Throughway',5,1,'2024-02-24 01:26:30','2024-02-24 01:26:30','18178-2975'),(8,'Zoe Stanton','luettgen.ashleigh@example.net','+18566148787','CI','Wyoming','Lake Lynn','988 Larue Place Suite 764',6,1,'2024-02-24 01:26:30','2024-02-24 01:26:30','68016'),(9,'Helmer Hartmann','wuckert.macie@example.com','+15749172803','IQ','Minnesota','Lake Mose','4306 Garry Brook Suite 496',7,1,'2024-02-24 01:26:31','2024-02-24 01:26:31','28665-1802'),(10,'Earlene Schaefer IV','boberbrunner@example.net','+13083826545','CD','California','West Jermainechester','14682 Fisher Island',8,1,'2024-02-24 01:26:31','2024-02-24 01:26:31','41173'),(11,'Celia Schaefer','bcummings@example.net','+16469323479','BQ','Louisiana','Botsfordside','72881 Paucek Row',9,1,'2024-02-24 01:26:31','2024-02-24 01:26:31','64993'),(12,'Lynn Walker','koelpin.catherine@example.net','+12535638340','LS','Indiana','East Bertrand','8725 Noble Shore Suite 073',10,1,'2024-02-24 01:26:31','2024-02-24 01:26:31','09163');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Vena Grady','customer@botble.com','$2y$12$9F3JRkVd9SMju8gsbP1ZH.eolft6ItfjV1NMAcU1QdE1lJa7zA1d.','customers/10.jpg','1991-02-16','+14083130685',NULL,'2024-02-24 01:26:29','2024-02-24 01:26:29','2024-02-24 08:26:29',NULL,'activated',NULL),(2,'Mr. Blake Larkin','john.smith@botble.com','$2y$12$SY3o7V3Q7IJqrX7kpMw7Qerf/XJ3ZXhq2593GzJXzWu/ctqas96uO','customers/5.jpg','1978-02-03','+14452344048',NULL,'2024-02-24 01:26:29','2024-02-24 01:26:29','2024-02-24 08:26:29',NULL,'activated',NULL),(3,'Lucius Mayer','watson.rosenbaum@example.com','$2y$12$FHvFFV43HI5joQD1VtRAP.2dzyZytQRJXtUF2i./n4YILLITMjzJS','customers/1.jpg','1987-02-12','+12319329608',NULL,'2024-02-24 01:26:29','2024-02-24 01:26:29','2024-02-24 08:26:29',NULL,'activated',NULL),(4,'Reginald O\'Hara','acormier@example.com','$2y$12$OQP.v2ctvJj1khv03WwhfOnG2nPPHn/C9FCdG/qjdiS8JM/7Y4gRa','customers/2.jpg','2001-02-16','+12199243221',NULL,'2024-02-24 01:26:30','2024-02-24 01:26:30','2024-02-24 08:26:30',NULL,'activated',NULL),(5,'Alisha Bartoletti Sr.','sawayn.koby@example.net','$2y$12$a9eGvc0vtgklkYu.KI2hLuBhc.g4DOWBtFqPPa0VVM2nbVMcVUcgu','customers/3.jpg','1976-02-19','+14849514541',NULL,'2024-02-24 01:26:30','2024-02-24 01:26:30','2024-02-24 08:26:30',NULL,'activated',NULL),(6,'Zoe Stanton','luettgen.ashleigh@example.net','$2y$12$SoEf2yNHG9UV6pLKyn.QteUUHKKO5Wvjn6OMNhKP/g0xuDguIsZOy','customers/4.jpg','2002-01-30','+14354083867',NULL,'2024-02-24 01:26:30','2024-02-24 01:26:30','2024-02-24 08:26:30',NULL,'activated',NULL),(7,'Helmer Hartmann','wuckert.macie@example.com','$2y$12$.Ew7yqtXP3KzdXtdWiJMeewJeKPks/1zel4.npWec7Sgo/3kXkVfK','customers/5.jpg','1996-01-29','+13417412195',NULL,'2024-02-24 01:26:31','2024-02-24 01:26:31','2024-02-24 08:26:31',NULL,'activated',NULL),(8,'Earlene Schaefer IV','boberbrunner@example.net','$2y$12$W5.ufNOTtwPHnC5z7yQjqOjJgFejpJaNfYNDGhmx3Lc7nKJuSIQkS','customers/6.jpg','1984-01-31','+17312685338',NULL,'2024-02-24 01:26:31','2024-02-24 01:26:31','2024-02-24 08:26:31',NULL,'activated',NULL),(9,'Celia Schaefer','bcummings@example.net','$2y$12$Aup6VlZePj9gjVUrbylCOOWDpGpGY3s1bywbuzA/bcZaEyFPhB7e.','customers/7.jpg','1983-02-07','+18452168952',NULL,'2024-02-24 01:26:31','2024-02-24 01:26:31','2024-02-24 08:26:31',NULL,'activated',NULL),(10,'Lynn Walker','koelpin.catherine@example.net','$2y$12$VIJJ.BiqSHpvPC8VkA2LmOeZv9U.hdqZ5NoJ8k73GtrykXcdPkC7e','customers/8.jpg','1981-01-27','+17632095764',NULL,'2024-02-24 01:26:31','2024-02-24 01:26:31','2024-02-24 08:26:31',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,25,69.8175,19,5),(2,31,26.52,9,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2024-03-12 00:00:00','published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(2,'Gadgets &amp; Accessories','2024-04-07 00:00:00','published','2024-02-24 01:26:38','2024-02-24 01:26:38');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(1,2,'2 Year',10,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(1,3,'3 Year',20,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,4,'4GB',0,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,5,'8GB',10,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,6,'16GB',20,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,7,'Core i5',0,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,8,'Core i7',10,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,9,'Core i9',20,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,10,'128GB',0,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,11,'256GB',10,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,12,'512GB',20,9999,0,'2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',32,'Smart Home Speaker (Digital)',NULL,'products/1.jpg',3,244.00,732.00,24.40,0.00,756.40,'{\"sku\":\"HS-125-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(2,1,'Botble\\Ecommerce\\Models\\Product',84,'Black Glasses',NULL,'products/22-1.jpg',3,130.00,390.00,13.00,0.00,403.00,'{\"sku\":\"HS-130-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(3,1,'Botble\\Ecommerce\\Models\\Product',106,'Red &amp; Black Headphone',NULL,'products/28.jpg',1,51.00,51.00,5.10,0.00,56.10,'{\"sku\":\"HS-156-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(4,2,'Botble\\Ecommerce\\Models\\Product',35,'Headphone Ultra Bass',NULL,'products/2-1.jpg',2,379.00,758.00,37.90,0.00,795.90,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(5,2,'Botble\\Ecommerce\\Models\\Product',63,'Apple Keyboard (Digital)',NULL,'products/13-1.jpg',2,117.00,234.00,11.70,0.00,245.70,'{\"sku\":\"HS-124-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(6,2,'Botble\\Ecommerce\\Models\\Product',88,'Phillips Mouse',NULL,'products/23-1.jpg',1,126.00,126.00,12.60,0.00,138.60,'{\"sku\":\"HS-132-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(7,2,'Botble\\Ecommerce\\Models\\Product',101,'Beat Headphone',NULL,'products/27.jpg',2,20.00,40.00,2.00,0.00,42.00,'{\"sku\":\"HS-149-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(8,3,'Botble\\Ecommerce\\Models\\Product',47,'Leather Watch Band',NULL,'products/7.jpg',1,113.00,113.00,11.30,0.00,124.30,'{\"sku\":\"HS-110-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(9,3,'Botble\\Ecommerce\\Models\\Product',53,'Apple iPhone 13 Plus',NULL,'products/8.jpg',3,113.00,339.00,11.30,0.00,350.30,'{\"sku\":\"HS-146-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(10,3,'Botble\\Ecommerce\\Models\\Product',88,'Phillips Mouse',NULL,'products/23-1.jpg',2,126.00,252.00,12.60,0.00,264.60,'{\"sku\":\"HS-132-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(11,3,'Botble\\Ecommerce\\Models\\Product',94,'Dual Camera 20MP (Digital)',NULL,'products/25-1.jpg',2,80.25,160.50,8.03,0.00,168.53,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(12,4,'Botble\\Ecommerce\\Models\\Product',36,'Headphone Ultra Bass',NULL,'products/2-2.jpg',3,379.00,1137.00,37.90,0.00,1174.90,'{\"sku\":\"HS-119-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(13,4,'Botble\\Ecommerce\\Models\\Product',52,'Apple iPhone 13 Plus',NULL,'products/8-1.jpg',2,113.00,226.00,11.30,0.00,237.30,'{\"sku\":\"HS-146-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(14,4,'Botble\\Ecommerce\\Models\\Product',71,'Apple Airpods Serial 3',NULL,'products/16.jpg',1,130.00,130.00,13.00,0.00,143.00,'{\"sku\":\"HS-137-A0\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(15,4,'Botble\\Ecommerce\\Models\\Product',74,'Black Smart Watches',NULL,'products/18.jpg',1,112.00,112.00,11.20,0.00,123.20,'{\"sku\":\"HS-145-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(16,5,'Botble\\Ecommerce\\Models\\Product',54,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,118.00,354.00,11.80,0.00,365.80,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(17,5,'Botble\\Ecommerce\\Models\\Product',85,'Black Glasses',NULL,'products/22.jpg',2,130.00,260.00,13.00,0.00,273.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(18,5,'Botble\\Ecommerce\\Models\\Product',89,'Gaming Keyboard',NULL,'products/24.jpg',2,121.00,242.00,12.10,0.00,254.10,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(19,5,'Botble\\Ecommerce\\Models\\Product',111,'Smart Televisions',NULL,'products/30-1.jpg',2,115.00,230.00,11.50,0.00,241.50,'{\"sku\":\"HS-190-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-24 01:26:39','2024-02-24 01:26:39'),(20,6,'Botble\\Ecommerce\\Models\\Product',36,'Headphone Ultra Bass',NULL,'products/2-2.jpg',2,379.00,758.00,37.90,0.00,795.90,'{\"sku\":\"HS-119-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(21,6,'Botble\\Ecommerce\\Models\\Product',59,'Apple Watch Serial 7',NULL,'products/11.jpg',3,115.00,345.00,11.50,0.00,356.50,'{\"sku\":\"HS-197-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(22,6,'Botble\\Ecommerce\\Models\\Product',66,'Apple Keyboard (Digital)',NULL,'products/13.jpg',2,117.00,234.00,11.70,0.00,245.70,'{\"sku\":\"HS-124-A0-A4\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(23,6,'Botble\\Ecommerce\\Models\\Product',89,'Gaming Keyboard',NULL,'products/24.jpg',2,121.00,242.00,12.10,0.00,254.10,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(24,7,'Botble\\Ecommerce\\Models\\Product',48,'Leather Watch Band',NULL,'products/7-1.jpg',1,113.00,113.00,11.30,0.00,124.30,'{\"sku\":\"HS-110-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(25,7,'Botble\\Ecommerce\\Models\\Product',56,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',1,118.00,118.00,11.80,0.00,129.80,'{\"sku\":\"HS-189-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(26,7,'Botble\\Ecommerce\\Models\\Product',67,'MacSafe 80W',NULL,'products/14.jpg',2,116.00,232.00,11.60,0.00,243.60,'{\"sku\":\"HS-193-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(27,7,'Botble\\Ecommerce\\Models\\Product',106,'Red &amp; Black Headphone',NULL,'products/28.jpg',3,51.00,153.00,5.10,0.00,158.10,'{\"sku\":\"HS-156-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(28,8,'Botble\\Ecommerce\\Models\\Product',80,'Macbook Pro 2015 13 inch',NULL,'products/20-1.jpg',1,112.00,112.00,11.20,0.00,123.20,'{\"sku\":\"HS-193-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(29,8,'Botble\\Ecommerce\\Models\\Product',97,'Dual Camera 20MP (Digital)',NULL,'products/25.jpg',2,80.25,160.50,8.03,0.00,168.53,'{\"sku\":\"HS-119-A0-A4\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(30,8,'Botble\\Ecommerce\\Models\\Product',109,'Audio Equipment (Digital)',NULL,'products/29.jpg',2,54.00,108.00,5.40,0.00,113.40,'{\"sku\":\"HS-197-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(31,8,'Botble\\Ecommerce\\Models\\Product',112,'Samsung Smart TV',NULL,'products/31.jpg',1,52.00,52.00,5.20,0.00,57.20,'{\"sku\":\"HS-120-A0\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(32,9,'Botble\\Ecommerce\\Models\\Product',75,'Black Smart Watches',NULL,'products/18-1.jpg',1,112.00,112.00,11.20,0.00,123.20,'{\"sku\":\"HS-145-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(33,9,'Botble\\Ecommerce\\Models\\Product',81,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',2,125.00,250.00,12.50,0.00,262.50,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(34,9,'Botble\\Ecommerce\\Models\\Product',83,'Black Glasses',NULL,'products/22.jpg',2,130.00,260.00,13.00,0.00,273.00,'{\"sku\":\"HS-130-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(35,9,'Botble\\Ecommerce\\Models\\Product',107,'Audio Equipment (Digital)',NULL,'products/29.jpg',1,54.00,54.00,5.40,0.00,59.40,'{\"sku\":\"HS-197-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(36,10,'Botble\\Ecommerce\\Models\\Product',39,'Chikie - Bluetooth Speaker',NULL,'products/4.jpg',3,73.00,219.00,7.30,0.00,226.30,'{\"sku\":\"HS-133-A0\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(37,10,'Botble\\Ecommerce\\Models\\Product',41,'Chikie - Bluetooth Speaker',NULL,'products/4-2.jpg',2,73.00,146.00,7.30,0.00,153.30,'{\"sku\":\"HS-133-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(38,10,'Botble\\Ecommerce\\Models\\Product',94,'Dual Camera 20MP (Digital)',NULL,'products/25-1.jpg',3,80.25,240.75,8.03,0.00,248.78,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(39,10,'Botble\\Ecommerce\\Models\\Product',96,'Dual Camera 20MP (Digital)',NULL,'products/25.jpg',3,80.25,240.75,8.03,0.00,248.78,'{\"sku\":\"HS-119-A0-A3\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-02-24 01:26:40','2024-02-24 01:26:40'),(40,11,'Botble\\Ecommerce\\Models\\Product',55,'Macbook Pro 2015 (Digital)',NULL,'products/9-1.jpg',3,118.00,354.00,11.80,0.00,365.80,'{\"sku\":\"HS-189-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(41,11,'Botble\\Ecommerce\\Models\\Product',93,'Dual Camera 20MP (Digital)',NULL,'products/25.jpg',1,80.25,80.25,8.03,0.00,88.28,'{\"sku\":\"HS-119-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(42,11,'Botble\\Ecommerce\\Models\\Product',100,'Smart Watches',NULL,'products/26-2.jpg',3,40.50,121.50,4.05,0.00,125.55,'{\"sku\":\"HS-196-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(43,12,'Botble\\Ecommerce\\Models\\Product',97,'Dual Camera 20MP (Digital)',NULL,'products/25.jpg',3,80.25,240.75,8.03,0.00,248.78,'{\"sku\":\"HS-119-A0-A4\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(44,12,'Botble\\Ecommerce\\Models\\Product',102,'Beat Headphone',NULL,'products/27-1.jpg',2,20.00,40.00,2.00,0.00,42.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(45,13,'Botble\\Ecommerce\\Models\\Product',34,'Headphone Ultra Bass',NULL,'products/2.jpg',3,379.00,1137.00,37.90,0.00,1174.90,'{\"sku\":\"HS-119-A0\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(46,13,'Botble\\Ecommerce\\Models\\Product',49,'Leather Watch Band',NULL,'products/7.jpg',2,113.00,226.00,11.30,0.00,237.30,'{\"sku\":\"HS-110-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(47,14,'Botble\\Ecommerce\\Models\\Product',45,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5-2.jpg',2,50.00,100.00,5.00,0.00,105.00,'{\"sku\":\"HS-135-A0-A2\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(48,14,'Botble\\Ecommerce\\Models\\Product',91,'Gaming Keyboard',NULL,'products/24.jpg',2,121.00,242.00,12.10,0.00,254.10,'{\"sku\":\"HS-178-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(49,15,'Botble\\Ecommerce\\Models\\Product',45,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5-2.jpg',3,50.00,150.00,5.00,0.00,155.00,'{\"sku\":\"HS-135-A0-A2\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(50,15,'Botble\\Ecommerce\\Models\\Product',81,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,125.00,375.00,12.50,0.00,387.50,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(51,16,'Botble\\Ecommerce\\Models\\Product',49,'Leather Watch Band',NULL,'products/7.jpg',2,113.00,226.00,11.30,0.00,237.30,'{\"sku\":\"HS-110-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(52,16,'Botble\\Ecommerce\\Models\\Product',61,'Macbook Pro 13 inch',NULL,'products/12.jpg',3,110.00,330.00,11.00,0.00,341.00,'{\"sku\":\"HS-153-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(53,16,'Botble\\Ecommerce\\Models\\Product',102,'Beat Headphone',NULL,'products/27-1.jpg',2,20.00,40.00,2.00,0.00,42.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(54,16,'Botble\\Ecommerce\\Models\\Product',103,'Beat Headphone',NULL,'products/27.jpg',1,20.00,20.00,2.00,0.00,22.00,'{\"sku\":\"HS-149-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-24 01:26:41','2024-02-24 01:26:41'),(55,17,'Botble\\Ecommerce\\Models\\Product',42,'Chikie - Bluetooth Speaker',NULL,'products/4-3.jpg',1,73.00,73.00,7.30,0.00,80.30,'{\"sku\":\"HS-133-A0-A3\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(56,17,'Botble\\Ecommerce\\Models\\Product',43,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5.jpg',1,50.00,50.00,5.00,0.00,55.00,'{\"sku\":\"HS-135-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(57,17,'Botble\\Ecommerce\\Models\\Product',79,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',1,112.00,112.00,11.20,0.00,123.20,'{\"sku\":\"HS-193-A0\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(58,17,'Botble\\Ecommerce\\Models\\Product',99,'Smart Watches',NULL,'products/26-1.jpg',1,40.50,40.50,4.05,0.00,44.55,'{\"sku\":\"HS-196-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(59,18,'Botble\\Ecommerce\\Models\\Product',73,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',2,124.00,248.00,12.40,0.00,260.40,'{\"sku\":\"HS-151-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(60,18,'Botble\\Ecommerce\\Models\\Product',82,'Historic Alarm Clock (Digital)',NULL,'products/21-1.jpg',2,125.00,250.00,12.50,0.00,262.50,'{\"sku\":\"HS-196-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(61,18,'Botble\\Ecommerce\\Models\\Product',99,'Smart Watches',NULL,'products/26-1.jpg',1,40.50,40.50,4.05,0.00,44.55,'{\"sku\":\"HS-196-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(62,19,'Botble\\Ecommerce\\Models\\Product',61,'Macbook Pro 13 inch',NULL,'products/12.jpg',3,110.00,330.00,11.00,0.00,341.00,'{\"sku\":\"HS-153-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(63,19,'Botble\\Ecommerce\\Models\\Product',87,'Phillips Mouse',NULL,'products/23.jpg',3,126.00,378.00,12.60,0.00,390.60,'{\"sku\":\"HS-132-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(64,20,'Botble\\Ecommerce\\Models\\Product',90,'Gaming Keyboard',NULL,'products/24-1.jpg',2,121.00,242.00,12.10,0.00,254.10,'{\"sku\":\"HS-178-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(65,20,'Botble\\Ecommerce\\Models\\Product',94,'Dual Camera 20MP (Digital)',NULL,'products/25-1.jpg',2,80.25,160.50,8.03,0.00,168.53,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(66,20,'Botble\\Ecommerce\\Models\\Product',95,'Dual Camera 20MP (Digital)',NULL,'products/25.jpg',1,80.25,80.25,8.03,0.00,88.28,'{\"sku\":\"HS-119-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42'),(67,20,'Botble\\Ecommerce\\Models\\Product',113,'Samsung Smart TV',NULL,'products/31-1.jpg',2,52.00,104.00,5.20,0.00,109.20,'{\"sku\":\"HS-120-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-24 01:26:42','2024-02-24 01:26:42');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Earlene Schaefer IV','',NULL,'boberbrunner@example.net','+13083826545','14682 Fisher Island, West Jermainechester, California, CD',NULL,1173.00,42.50,0.00,0.00,'1','default',NULL,NULL,1215.50,NULL,1,'pending',NULL,'2024-02-10 17:26:38','2024-02-24 01:26:38'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Lynn Walker','',NULL,'koelpin.catherine@example.net','+12535638340','8725 Noble Shore Suite 073, East Bertrand, Indiana, LS',NULL,1158.00,64.20,0.00,0.00,'1','default',NULL,NULL,1222.20,NULL,2,'completed','2024-02-24 01:26:39','2024-02-14 13:26:39','2024-02-24 01:26:39'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Celia Schaefer','',NULL,'bcummings@example.net','+16469323479','72881 Paucek Row, Botsfordside, Louisiana, BQ',NULL,864.50,43.23,0.00,0.00,'1','default',NULL,NULL,907.73,NULL,3,'completed','2024-02-24 01:26:39','2024-02-12 01:26:39','2024-02-24 01:26:39'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Lucius Mayer','',NULL,'watson.rosenbaum@example.com','+15209474982','660 Delaney Plain Apt. 763, Jacobibury, Delaware, AZ',NULL,1605.00,73.40,0.00,0.00,'1','default',NULL,NULL,1678.40,NULL,4,'completed','2024-02-24 01:26:39','2024-02-15 13:26:39','2024-02-24 01:26:39'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Mr. Blake Larkin','',NULL,'john.smith@botble.com','+16789304195','173 Jacobs Row Suite 345, Serenityborough, Wisconsin, NG',NULL,1086.00,48.40,0.00,0.00,'1','default',NULL,NULL,1134.40,NULL,5,'completed','2024-02-24 01:26:39','2024-02-13 09:26:39','2024-02-24 01:26:39'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Alisha Bartoletti Sr.','',NULL,'sawayn.koby@example.net','+17347915344','60363 Shanny Throughway, West Gaetano, New Hampshire, YT',NULL,1579.00,73.20,0.00,0.00,'1','default',NULL,NULL,1652.20,NULL,6,'completed','2024-02-24 01:26:39','2024-02-16 13:26:39','2024-02-24 01:26:39'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Zoe Stanton','',NULL,'luettgen.ashleigh@example.net','+18566148787','988 Larue Place Suite 764, Lake Lynn, Wyoming, CI',NULL,616.00,39.80,0.00,0.00,'1','default',NULL,NULL,655.80,NULL,7,'pending',NULL,'2024-02-18 05:26:40','2024-02-24 01:26:40'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Mr. Blake Larkin','',NULL,'john.smith@botble.com','+16789304195','173 Jacobs Row Suite 345, Serenityborough, Wisconsin, NG',NULL,432.50,29.83,0.00,0.00,'1','default',NULL,NULL,462.33,NULL,8,'completed','2024-02-24 01:26:40','2024-02-14 07:26:40','2024-02-24 01:26:40'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Lucius Mayer','',NULL,'watson.rosenbaum@example.com','+15209474982','660 Delaney Plain Apt. 763, Jacobibury, Delaware, AZ',NULL,676.00,42.10,0.00,0.00,'1','default',NULL,NULL,718.10,NULL,9,'pending',NULL,'2024-02-17 01:26:40','2024-02-24 01:26:40'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Lucius Mayer','',NULL,'watson.rosenbaum@example.com','+15209474982','660 Delaney Plain Apt. 763, Jacobibury, Delaware, AZ',NULL,846.50,30.65,0.00,0.00,'1','default',NULL,NULL,877.15,NULL,10,'completed','2024-02-24 01:26:40','2024-02-22 05:26:40','2024-02-24 01:26:40'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Lynn Walker','',NULL,'koelpin.catherine@example.net','+12535638340','8725 Noble Shore Suite 073, East Bertrand, Indiana, LS',NULL,555.75,23.88,0.00,0.00,'1','default',NULL,NULL,579.63,NULL,11,'completed','2024-02-24 01:26:41','2024-02-17 09:26:41','2024-02-24 01:26:41'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Reginald O\'Hara','',NULL,'acormier@example.com','+17378089846','78448 Bradtke Mount Suite 363, West Joelle, Idaho, IR',NULL,280.75,10.03,0.00,0.00,'1','default',NULL,NULL,290.78,NULL,12,'completed','2024-02-24 01:26:41','2024-02-21 01:26:41','2024-02-24 01:26:41'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Mr. Blake Larkin','',NULL,'john.smith@botble.com','+16789304195','173 Jacobs Row Suite 345, Serenityborough, Wisconsin, NG',NULL,1363.00,49.20,0.00,0.00,'1','default',NULL,NULL,1412.20,NULL,13,'pending',NULL,'2024-02-19 09:26:41','2024-02-24 01:26:41'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Zoe Stanton','',NULL,'luettgen.ashleigh@example.net','+18566148787','988 Larue Place Suite 764, Lake Lynn, Wyoming, CI',NULL,342.00,17.10,0.00,0.00,'1','default',NULL,NULL,359.10,NULL,14,'completed','2024-02-24 01:26:41','2024-02-22 21:26:41','2024-02-24 01:26:41'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Alisha Bartoletti Sr.','',NULL,'sawayn.koby@example.net','+17347915344','60363 Shanny Throughway, West Gaetano, New Hampshire, YT',NULL,525.00,17.50,0.00,0.00,'1','default',NULL,NULL,542.50,NULL,15,'completed','2024-02-24 01:26:41','2024-02-20 01:26:41','2024-02-24 01:26:41'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Lucius Mayer','',NULL,'watson.rosenbaum@example.com','+15209474982','660 Delaney Plain Apt. 763, Jacobibury, Delaware, AZ',NULL,616.00,26.30,0.00,0.00,'1','default',NULL,NULL,642.30,NULL,16,'pending',NULL,'2024-02-22 19:26:41','2024-02-24 01:26:41'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Lucius Mayer','',NULL,'watson.rosenbaum@example.com','+15209474982','660 Delaney Plain Apt. 763, Jacobibury, Delaware, AZ',NULL,275.50,27.55,0.00,0.00,'1','default',NULL,NULL,303.05,NULL,17,'completed','2024-02-24 01:26:42','2024-02-23 17:26:42','2024-02-24 01:26:42'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Vena Grady','',NULL,'customer@botble.com','+17542321343','70445 Karl Cape Apt. 879, Cadenstad, Idaho, CY',NULL,538.50,28.95,0.00,0.00,'1','default',NULL,NULL,567.45,NULL,18,'pending',NULL,'2024-02-23 13:26:42','2024-02-24 01:26:42'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Earlene Schaefer IV','',NULL,'boberbrunner@example.net','+13083826545','14682 Fisher Island, West Jermainechester, California, CD',NULL,708.00,23.60,0.00,0.00,'1','default',NULL,NULL,731.60,NULL,19,'pending',NULL,'2024-02-22 13:26:42','2024-02-24 01:26:42'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Alisha Bartoletti Sr.','',NULL,'sawayn.koby@example.net','+17347915344','60363 Shanny Throughway, West Gaetano, New Hampshire, YT',NULL,586.75,33.35,0.00,0.00,'1','default',NULL,NULL,620.10,NULL,20,'completed','2024-02-24 01:26:42','2024-02-23 23:26:42','2024-02-24 01:26:42');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Earlene Schaefer IV','+13083826545','boberbrunner@example.net','CD','California','West Jermainechester','14682 Fisher Island',1,'41173','shipping_address'),(2,'Lynn Walker','+12535638340','koelpin.catherine@example.net','LS','Indiana','East Bertrand','8725 Noble Shore Suite 073',2,'09163','shipping_address'),(3,'Celia Schaefer','+16469323479','bcummings@example.net','BQ','Louisiana','Botsfordside','72881 Paucek Row',3,'64993','shipping_address'),(4,'Lucius Mayer','+15209474982','watson.rosenbaum@example.com','AZ','Delaware','Jacobibury','660 Delaney Plain Apt. 763',4,'38462','shipping_address'),(5,'Mr. Blake Larkin','+16789304195','john.smith@botble.com','NG','Wisconsin','Serenityborough','173 Jacobs Row Suite 345',5,'21096','shipping_address'),(6,'Alisha Bartoletti Sr.','+17347915344','sawayn.koby@example.net','YT','New Hampshire','West Gaetano','60363 Shanny Throughway',6,'18178-2975','shipping_address'),(7,'Zoe Stanton','+18566148787','luettgen.ashleigh@example.net','CI','Wyoming','Lake Lynn','988 Larue Place Suite 764',7,'68016','shipping_address'),(8,'Mr. Blake Larkin','+16789304195','john.smith@botble.com','NG','Wisconsin','Serenityborough','173 Jacobs Row Suite 345',8,'21096','shipping_address'),(9,'Lucius Mayer','+15209474982','watson.rosenbaum@example.com','AZ','Delaware','Jacobibury','660 Delaney Plain Apt. 763',9,'38462','shipping_address'),(10,'Lucius Mayer','+15209474982','watson.rosenbaum@example.com','AZ','Delaware','Jacobibury','660 Delaney Plain Apt. 763',10,'38462','shipping_address'),(11,'Lynn Walker','+12535638340','koelpin.catherine@example.net','LS','Indiana','East Bertrand','8725 Noble Shore Suite 073',11,'09163','shipping_address'),(12,'Reginald O\'Hara','+17378089846','acormier@example.com','IR','Idaho','West Joelle','78448 Bradtke Mount Suite 363',12,'27106','shipping_address'),(13,'Mr. Blake Larkin','+16789304195','john.smith@botble.com','NG','Wisconsin','Serenityborough','173 Jacobs Row Suite 345',13,'21096','shipping_address'),(14,'Zoe Stanton','+18566148787','luettgen.ashleigh@example.net','CI','Wyoming','Lake Lynn','988 Larue Place Suite 764',14,'68016','shipping_address'),(15,'Alisha Bartoletti Sr.','+17347915344','sawayn.koby@example.net','YT','New Hampshire','West Gaetano','60363 Shanny Throughway',15,'18178-2975','shipping_address'),(16,'Lucius Mayer','+15209474982','watson.rosenbaum@example.com','AZ','Delaware','Jacobibury','660 Delaney Plain Apt. 763',16,'38462','shipping_address'),(17,'Lucius Mayer','+15209474982','watson.rosenbaum@example.com','AZ','Delaware','Jacobibury','660 Delaney Plain Apt. 763',17,'38462','shipping_address'),(18,'Vena Grady','+17542321343','customer@botble.com','CY','Idaho','Cadenstad','70445 Karl Cape Apt. 879',18,'52972','shipping_address'),(19,'Earlene Schaefer IV','+13083826545','boberbrunner@example.net','CD','California','West Jermainechester','14682 Fisher Island',19,'41173','shipping_address'),(20,'Alisha Bartoletti Sr.','+17347915344','sawayn.koby@example.net','YT','New Hampshire','West Gaetano','60363 Shanny Throughway',20,'18178-2975','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-02-10 17:26:38','2024-02-10 17:26:38'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-02-10 17:26:38','2024-02-10 17:26:38'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(4,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-02-14 13:26:39','2024-02-14 13:26:39'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-02-14 13:26:39','2024-02-14 13:26:39'),(7,'confirm_payment','Payment was confirmed (amount $1,222.20) by %user_name%',0,2,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-02-12 01:26:39','2024-02-12 01:26:39'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-02-12 01:26:39','2024-02-12 01:26:39'),(11,'confirm_payment','Payment was confirmed (amount $907.73) by %user_name%',0,3,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-02-15 13:26:39','2024-02-15 13:26:39'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-02-15 13:26:39','2024-02-15 13:26:39'),(15,'confirm_payment','Payment was confirmed (amount $1,678.40) by %user_name%',0,4,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-13 09:26:39','2024-02-13 09:26:39'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-13 09:26:39','2024-02-13 09:26:39'),(20,'confirm_payment','Payment was confirmed (amount $1,134.40) by %user_name%',0,5,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-02-16 13:26:39','2024-02-16 13:26:39'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-02-16 13:26:39','2024-02-16 13:26:39'),(25,'confirm_payment','Payment was confirmed (amount $1,652.20) by %user_name%',0,6,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39'),(26,'create_shipment','Created shipment for order',0,6,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-02-18 05:26:40','2024-02-18 05:26:40'),(29,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-02-18 05:26:40','2024-02-18 05:26:40'),(30,'create_shipment','Created shipment for order',0,7,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-14 07:26:40','2024-02-14 07:26:40'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-14 07:26:40','2024-02-14 07:26:40'),(33,'confirm_payment','Payment was confirmed (amount $462.33) by %user_name%',0,8,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-02-17 01:26:40','2024-02-17 01:26:40'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-02-17 01:26:40','2024-02-17 01:26:40'),(37,'create_shipment','Created shipment for order',0,9,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-02-22 05:26:40','2024-02-22 05:26:40'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-02-22 05:26:40','2024-02-22 05:26:40'),(40,'confirm_payment','Payment was confirmed (amount $877.15) by %user_name%',0,10,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40'),(41,'create_shipment','Created shipment for order',0,10,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-02-17 09:26:41','2024-02-17 09:26:41'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-02-17 09:26:41','2024-02-17 09:26:41'),(45,'confirm_payment','Payment was confirmed (amount $579.63) by %user_name%',0,11,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-02-21 01:26:41','2024-02-21 01:26:41'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-02-21 01:26:41','2024-02-21 01:26:41'),(49,'confirm_payment','Payment was confirmed (amount $290.78) by %user_name%',0,12,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-02-19 09:26:41','2024-02-19 09:26:41'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-02-19 09:26:41','2024-02-19 09:26:41'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-02-22 21:26:41','2024-02-22 21:26:41'),(56,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-02-22 21:26:41','2024-02-22 21:26:41'),(57,'confirm_payment','Payment was confirmed (amount $359.10) by %user_name%',0,14,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-02-20 01:26:41','2024-02-20 01:26:41'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-02-20 01:26:41','2024-02-20 01:26:41'),(61,'confirm_payment','Payment was confirmed (amount $542.50) by %user_name%',0,15,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-02-22 19:26:41','2024-02-22 19:26:41'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-02-22 19:26:41','2024-02-22 19:26:41'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-02-23 17:26:42','2024-02-23 17:26:42'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-02-23 17:26:42','2024-02-23 17:26:42'),(70,'confirm_payment','Payment was confirmed (amount $303.05) by %user_name%',0,17,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(71,'create_shipment','Created shipment for order',0,17,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-02-23 13:26:42','2024-02-23 13:26:42'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-02-23 13:26:42','2024-02-23 13:26:42'),(74,'create_shipment','Created shipment for order',0,18,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-02-22 13:26:42','2024-02-22 13:26:42'),(76,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-02-22 13:26:42','2024-02-22 13:26:42'),(77,'create_shipment','Created shipment for order',0,19,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-02-23 23:26:42','2024-02-23 23:26:42'),(79,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-02-23 23:26:42','2024-02-23 23:26:42'),(80,'confirm_payment','Payment was confirmed (amount $620.10) by %user_name%',0,20,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(81,'create_shipment','Created shipment for order',0,20,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(82,'update_status','Order confirmed by %user_name%',0,4,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(83,'update_status','Order confirmed by %user_name%',0,5,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(84,'update_status','Order confirmed by %user_name%',0,6,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(85,'update_status','Order confirmed by %user_name%',0,10,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(86,'update_status','Order confirmed by %user_name%',0,12,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42'),(87,'update_status','Order confirmed by %user_name%',0,15,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,244.00,24.40,'{\"sku\":\"HS-125-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,32,'Smart Home Speaker (Digital)','products/1.jpg',2016.00,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','digital',6,NULL),(2,1,3,130.00,13.00,'{\"sku\":\"HS-130-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,84,'Black Glasses','products/22-1.jpg',2103.00,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','physical',0,NULL),(3,1,1,51.00,5.10,'{\"sku\":\"HS-156-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,106,'Red & Black Headphone','products/28.jpg',505.00,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','physical',0,NULL),(4,2,2,379.00,37.90,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,35,'Headphone Ultra Bass','products/2-1.jpg',1094.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(5,2,2,117.00,11.70,'{\"sku\":\"HS-124-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,63,'Apple Keyboard (Digital)','products/13-1.jpg',1160.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','digital',5,NULL),(6,2,1,126.00,12.60,'{\"sku\":\"HS-132-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,88,'Phillips Mouse','products/23-1.jpg',712.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(7,2,2,20.00,2.00,'{\"sku\":\"HS-149-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,101,'Beat Headphone','products/27.jpg',1464.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(8,3,1,113.00,11.30,'{\"sku\":\"HS-110-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,47,'Leather Watch Band','products/7.jpg',678.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(9,3,3,113.00,11.30,'{\"sku\":\"HS-146-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,53,'Apple iPhone 13 Plus','products/8.jpg',1938.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(10,3,2,126.00,12.60,'{\"sku\":\"HS-132-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,88,'Phillips Mouse','products/23-1.jpg',1424.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(11,3,2,80.25,8.03,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,94,'Dual Camera 20MP (Digital)','products/25-1.jpg',1406.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','digital',10,NULL),(12,4,3,379.00,37.90,'{\"sku\":\"HS-119-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,36,'Headphone Ultra Bass','products/2-2.jpg',1641.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(13,4,2,113.00,11.30,'{\"sku\":\"HS-146-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,52,'Apple iPhone 13 Plus','products/8-1.jpg',1292.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(14,4,1,130.00,13.00,'{\"sku\":\"HS-137-A0\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,71,'Apple Airpods Serial 3','products/16.jpg',743.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(15,4,1,112.00,11.20,'{\"sku\":\"HS-145-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,74,'Black Smart Watches','products/18.jpg',514.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(16,5,3,118.00,11.80,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,54,'Macbook Pro 2015 (Digital)','products/9.jpg',2079.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','digital',1,NULL),(17,5,2,130.00,13.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,85,'Black Glasses','products/22.jpg',1402.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(18,5,2,121.00,12.10,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,89,'Gaming Keyboard','products/24.jpg',1702.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(19,5,2,115.00,11.50,'{\"sku\":\"HS-190-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,111,'Smart Televisions','products/30-1.jpg',1372.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(20,6,2,379.00,37.90,'{\"sku\":\"HS-119-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,36,'Headphone Ultra Bass','products/2-2.jpg',1094.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(21,6,3,115.00,11.50,'{\"sku\":\"HS-197-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,59,'Apple Watch Serial 7','products/11.jpg',2001.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(22,6,2,117.00,11.70,'{\"sku\":\"HS-124-A0-A4\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,66,'Apple Keyboard (Digital)','products/13.jpg',1160.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','digital',6,NULL),(23,6,2,121.00,12.10,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,89,'Gaming Keyboard','products/24.jpg',1702.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','physical',0,NULL),(24,7,1,113.00,11.30,'{\"sku\":\"HS-110-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,48,'Leather Watch Band','products/7-1.jpg',678.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(25,7,1,118.00,11.80,'{\"sku\":\"HS-189-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,56,'Macbook Pro 2015 (Digital)','products/9.jpg',693.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',4,NULL),(26,7,2,116.00,11.60,'{\"sku\":\"HS-193-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,67,'MacSafe 80W','products/14.jpg',1338.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(27,7,3,51.00,5.10,'{\"sku\":\"HS-156-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,106,'Red & Black Headphone','products/28.jpg',1515.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(28,8,1,112.00,11.20,'{\"sku\":\"HS-193-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,80,'Macbook Pro 2015 13 inch','products/20-1.jpg',704.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(29,8,2,80.25,8.03,'{\"sku\":\"HS-119-A0-A4\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,97,'Dual Camera 20MP (Digital)','products/25.jpg',1406.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',6,NULL),(30,8,2,54.00,5.40,'{\"sku\":\"HS-197-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,109,'Audio Equipment (Digital)','products/29.jpg',1186.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',10,NULL),(31,8,1,52.00,5.20,'{\"sku\":\"HS-120-A0\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,112,'Samsung Smart TV','products/31.jpg',832.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(32,9,1,112.00,11.20,'{\"sku\":\"HS-145-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,75,'Black Smart Watches','products/18-1.jpg',514.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(33,9,2,125.00,12.50,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,81,'Historic Alarm Clock (Digital)','products/21.jpg',1616.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',7,NULL),(34,9,2,130.00,13.00,'{\"sku\":\"HS-130-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,83,'Black Glasses','products/22.jpg',1402.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(35,9,1,54.00,5.40,'{\"sku\":\"HS-197-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,107,'Audio Equipment (Digital)','products/29.jpg',593.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',3,NULL),(36,10,3,73.00,7.30,'{\"sku\":\"HS-133-A0\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,39,'Chikie - Bluetooth Speaker','products/4.jpg',2142.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(37,10,2,73.00,7.30,'{\"sku\":\"HS-133-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,41,'Chikie - Bluetooth Speaker','products/4-2.jpg',1428.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','physical',0,NULL),(38,10,3,80.25,8.03,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,94,'Dual Camera 20MP (Digital)','products/25-1.jpg',2109.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',3,NULL),(39,10,3,80.25,8.03,'{\"sku\":\"HS-119-A0-A3\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,96,'Dual Camera 20MP (Digital)','products/25.jpg',2109.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','digital',9,NULL),(40,11,3,118.00,11.80,'{\"sku\":\"HS-189-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,55,'Macbook Pro 2015 (Digital)','products/9-1.jpg',2079.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','digital',2,NULL),(41,11,1,80.25,8.03,'{\"sku\":\"HS-119-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,93,'Dual Camera 20MP (Digital)','products/25.jpg',703.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','digital',2,NULL),(42,11,3,40.50,4.05,'{\"sku\":\"HS-196-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,100,'Smart Watches','products/26-2.jpg',1950.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(43,12,3,80.25,8.03,'{\"sku\":\"HS-119-A0-A4\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,97,'Dual Camera 20MP (Digital)','products/25.jpg',2109.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','digital',5,NULL),(44,12,2,20.00,2.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,102,'Beat Headphone','products/27-1.jpg',1464.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(45,13,3,379.00,37.90,'{\"sku\":\"HS-119-A0\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,34,'Headphone Ultra Bass','products/2.jpg',1641.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(46,13,2,113.00,11.30,'{\"sku\":\"HS-110-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,49,'Leather Watch Band','products/7.jpg',1356.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(47,14,2,50.00,5.00,'{\"sku\":\"HS-135-A0-A2\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,45,'Camera Hikvision HK-35VS8 (Digital)','products/5-2.jpg',1202.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','digital',8,NULL),(48,14,2,121.00,12.10,'{\"sku\":\"HS-178-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,91,'Gaming Keyboard','products/24.jpg',1702.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(49,15,3,50.00,5.00,'{\"sku\":\"HS-135-A0-A2\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,45,'Camera Hikvision HK-35VS8 (Digital)','products/5-2.jpg',1803.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','digital',6,NULL),(50,15,3,125.00,12.50,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,81,'Historic Alarm Clock (Digital)','products/21.jpg',2424.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','digital',4,NULL),(51,16,2,113.00,11.30,'{\"sku\":\"HS-110-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,49,'Leather Watch Band','products/7.jpg',1356.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(52,16,3,110.00,11.00,'{\"sku\":\"HS-153-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,61,'Macbook Pro 13 inch','products/12.jpg',2049.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(53,16,2,20.00,2.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,102,'Beat Headphone','products/27-1.jpg',1464.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(54,16,1,20.00,2.00,'{\"sku\":\"HS-149-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,103,'Beat Headphone','products/27.jpg',732.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','physical',0,NULL),(55,17,1,73.00,7.30,'{\"sku\":\"HS-133-A0-A3\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,42,'Chikie - Bluetooth Speaker','products/4-3.jpg',714.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(56,17,1,50.00,5.00,'{\"sku\":\"HS-135-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,43,'Camera Hikvision HK-35VS8 (Digital)','products/5.jpg',601.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','digital',5,NULL),(57,17,1,112.00,11.20,'{\"sku\":\"HS-193-A0\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,79,'Macbook Pro 2015 13 inch','products/20.jpg',704.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(58,17,1,40.50,4.05,'{\"sku\":\"HS-196-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,99,'Smart Watches','products/26-1.jpg',650.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(59,18,2,124.00,12.40,'{\"sku\":\"HS-151-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,73,'Cool Smart Watches (Digital)','products/17.jpg',1682.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','digital',6,NULL),(60,18,2,125.00,12.50,'{\"sku\":\"HS-196-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,82,'Historic Alarm Clock (Digital)','products/21-1.jpg',1616.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','digital',3,NULL),(61,18,1,40.50,4.05,'{\"sku\":\"HS-196-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,99,'Smart Watches','products/26-1.jpg',650.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(62,19,3,110.00,11.00,'{\"sku\":\"HS-153-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,61,'Macbook Pro 13 inch','products/12.jpg',2049.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(63,19,3,126.00,12.60,'{\"sku\":\"HS-132-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,87,'Phillips Mouse','products/23.jpg',2136.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(64,20,2,121.00,12.10,'{\"sku\":\"HS-178-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,90,'Gaming Keyboard','products/24-1.jpg',1702.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL),(65,20,2,80.25,8.03,'{\"sku\":\"HS-119-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,94,'Dual Camera 20MP (Digital)','products/25-1.jpg',1406.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','digital',9,NULL),(66,20,1,80.25,8.03,'{\"sku\":\"HS-119-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,95,'Dual Camera 20MP (Digital)','products/25.jpg',703.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','digital',6,NULL),(67,20,2,52.00,5.20,'{\"sku\":\"HS-120-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,113,'Samsung Smart TV','products/31-1.jpg',1664.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',8,'1','default','completed',1215.50,42.50,0.00,NULL,NULL,0.00,1173.00,1,NULL,1,'2024-02-24 01:26:39','xGZ4H0MOgzu46c4yWFpKCb2c0iYwx',1,'2024-02-10 17:26:38','2024-02-24 01:26:39',NULL),(2,'#10000002',10,'1','default','pending',1222.20,64.20,0.00,NULL,NULL,0.00,1158.00,1,NULL,1,NULL,'eytmnqUvY6Mu0lLPn2fXOVWhbY90F',2,'2024-02-14 13:26:39','2024-02-24 01:26:39',NULL),(3,'#10000003',9,'1','default','pending',907.73,43.23,0.00,NULL,NULL,0.00,864.50,1,NULL,1,NULL,'qHe6fF6NUR5X13Q8eHvKBMMXVLfpj',3,'2024-02-12 01:26:39','2024-02-24 01:26:39',NULL),(4,'#10000004',3,'1','default','completed',1678.40,73.40,0.00,NULL,NULL,0.00,1605.00,1,NULL,1,'2024-02-24 01:26:42','O4aBysKmhF7dtbp7QtDfi3YCS9VB7',4,'2024-02-15 13:26:39','2024-02-24 01:26:42',NULL),(5,'#10000005',2,'1','default','completed',1134.40,48.40,0.00,NULL,NULL,0.00,1086.00,1,NULL,1,'2024-02-24 01:26:42','PpMm7nPqr3pnV15YT2G7WKBykuYUj',5,'2024-02-13 09:26:39','2024-02-24 01:26:42',NULL),(6,'#10000006',5,'1','default','completed',1652.20,73.20,0.00,NULL,NULL,0.00,1579.00,1,NULL,1,'2024-02-24 01:26:42','AuWAxWXDLPl2zL2gfm5eA6xce19n9',6,'2024-02-16 13:26:39','2024-02-24 01:26:42',NULL),(7,'#10000007',6,'1','default','pending',655.80,39.80,0.00,NULL,NULL,0.00,616.00,1,NULL,1,NULL,'v8FZngbwWU46tVszuvFoB0fx3idPI',7,'2024-02-18 05:26:40','2024-02-24 01:26:40',NULL),(8,'#10000008',2,'1','default','pending',462.33,29.83,0.00,NULL,NULL,0.00,432.50,1,NULL,1,NULL,'JYxmDOPsJsihQJjgNT20iWiqthkvr',8,'2024-02-14 07:26:40','2024-02-24 01:26:40',NULL),(9,'#10000009',3,'1','default','pending',718.10,42.10,0.00,NULL,NULL,0.00,676.00,1,NULL,1,NULL,'yLgHsE9z2v3XD4HKkrlkpdcUq8ZFM',9,'2024-02-17 01:26:40','2024-02-24 01:26:40',NULL),(10,'#10000010',3,'1','default','completed',877.15,30.65,0.00,NULL,NULL,0.00,846.50,1,NULL,1,'2024-02-24 01:26:42','Y7qTBWvhggW68eYjsj2dOg8L5YObo',10,'2024-02-22 05:26:40','2024-02-24 01:26:42',NULL),(11,'#10000011',10,'1','default','pending',579.63,23.88,0.00,NULL,NULL,0.00,555.75,1,NULL,1,NULL,'WrZXe7yE5H09QZ5Ewo9kEAp8rOjmU',11,'2024-02-17 09:26:41','2024-02-24 01:26:41',NULL),(12,'#10000012',4,'1','default','completed',290.78,10.03,0.00,NULL,NULL,0.00,280.75,1,NULL,1,'2024-02-24 01:26:42','yYK2fWLdmJ76uLqn57VhtS5TkTBXC',12,'2024-02-21 01:26:41','2024-02-24 01:26:42',NULL),(13,'#10000013',2,'1','default','pending',1412.20,49.20,0.00,NULL,NULL,0.00,1363.00,1,NULL,1,NULL,'LFOumfME7Ar2L2AfxZ1OYhxr1MS59',13,'2024-02-19 09:26:41','2024-02-24 01:26:41',NULL),(14,'#10000014',6,'1','default','pending',359.10,17.10,0.00,NULL,NULL,0.00,342.00,1,NULL,1,NULL,'7zxnfRYY7t5hEbG2L6aUCNbSgaQXv',14,'2024-02-22 21:26:41','2024-02-24 01:26:41',NULL),(15,'#10000015',5,'1','default','completed',542.50,17.50,0.00,NULL,NULL,0.00,525.00,1,NULL,1,'2024-02-24 01:26:42','99JUCYsyYXx1UB0rDU8vWGE1bHkIX',15,'2024-02-20 01:26:41','2024-02-24 01:26:42',NULL),(16,'#10000016',3,'1','default','completed',642.30,26.30,0.00,NULL,NULL,0.00,616.00,1,NULL,1,'2024-02-24 01:26:42','K0gG6pEKcpvR7UzxdiDVThhqXeLe2',16,'2024-02-22 19:26:41','2024-02-24 01:26:42',NULL),(17,'#10000017',3,'1','default','pending',303.05,27.55,0.00,NULL,NULL,0.00,275.50,1,NULL,1,NULL,'aAjEMYRsAYGCPylL9MDTKGPvQKxG3',17,'2024-02-23 17:26:42','2024-02-24 01:26:42',NULL),(18,'#10000018',1,'1','default','pending',567.45,28.95,0.00,NULL,NULL,0.00,538.50,1,NULL,1,NULL,'KAB4FALZIflS9w2LmYpIKWnjJ9wcn',18,'2024-02-23 13:26:42','2024-02-24 01:26:42',NULL),(19,'#10000019',8,'1','default','pending',731.60,23.60,0.00,NULL,NULL,0.00,708.00,1,NULL,1,NULL,'Uo67gkvNqqMZi5K3VaarhhfBmbi7F',19,'2024-02-22 13:26:42','2024-02-24 01:26:42',NULL),(20,'#10000020',5,'1','default','pending',620.10,33.35,0.00,NULL,NULL,0.00,586.75,1,NULL,1,NULL,'7nOFOzRbVVQpl00QErsyiFGn0Cbee',20,'2024-02-23 23:26:42','2024-02-24 01:26:42',NULL);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-02-24 01:26:28','2024-02-24 01:26:28',1),(2,'Size','size','text',1,1,1,'published',1,'2024-02-24 01:26:28','2024-02-24 01:26:28',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(6,2,'S','s',NULL,NULL,1,1,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(7,2,'M','m',NULL,NULL,0,2,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(8,2,'L','l',NULL,NULL,0,3,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-02-24 01:26:28','2024-02-24 01:26:28'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-02-24 01:26:28','2024-02-24 01:26:28');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television',0,NULL,'published',0,'product-categories/p-1.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-tv',NULL),(2,'Home Audio & Theaters',1,NULL,'published',0,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(3,'TV & Videos',1,NULL,'published',1,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(4,'Camera, Photos & Videos',1,NULL,'published',2,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(5,'Cellphones & Accessories',1,NULL,'published',3,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(6,'Headphones',1,NULL,'published',4,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(7,'Videos games',1,NULL,'published',5,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(8,'Wireless Speakers',1,NULL,'published',6,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(9,'Office Electronic',1,NULL,'published',7,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(10,'Mobile',0,NULL,'published',1,'product-categories/p-2.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-responsive',NULL),(11,'Digital Cables',10,NULL,'published',0,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(12,'Audio & Video Cables',10,NULL,'published',1,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(13,'Batteries',10,NULL,'published',2,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(14,'Headphone',0,NULL,'published',2,'product-categories/p-3.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-headphones',NULL),(15,'Computer & Tablets',14,NULL,'published',0,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(16,'Laptop',14,NULL,'published',1,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(17,'Monitors',14,NULL,'published',2,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(18,'Computer Components',14,NULL,'published',3,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(19,'Watches',0,NULL,'published',3,'product-categories/p-4.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-watch',NULL),(20,'Drive & Storages',19,NULL,'published',0,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(21,'Gaming Laptop',19,NULL,'published',1,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(22,'Security & Protection',19,NULL,'published',2,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(23,'Accessories',19,NULL,'published',3,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL,NULL),(24,'Game',0,NULL,'published',4,'product-categories/p-5.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-console',NULL),(25,'Camera',0,NULL,'published',5,'product-categories/p-6.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-camera',NULL),(26,'Audio',0,NULL,'published',6,'product-categories/p-7.png',1,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-music-system',NULL),(27,'Mobile & Tablet',0,NULL,'published',7,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-responsive',NULL),(28,'Accessories',0,NULL,'published',8,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-plugins',NULL),(29,'Home Audio & Theater',0,NULL,'published',9,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-music-system',NULL),(30,'Tv & Smart Box',0,NULL,'published',10,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-monitor',NULL),(31,'Printer',0,NULL,'published',11,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-printer',NULL),(32,'Computer',0,NULL,'published',12,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-tv',NULL),(33,'Fax Machine',0,NULL,'published',13,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-fax',NULL),(34,'Mouse',0,NULL,'published',14,NULL,0,'2024-02-24 01:26:28','2024-02-24 01:26:28','flaticon-mouse',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,5),(1,22),(1,25),(1,26),(2,6),(2,24),(3,9),(3,11),(3,27),(4,4),(4,29),(4,31),(5,3),(5,15),(6,7),(6,21),(7,12),(7,16),(7,23),(8,14),(8,19),(8,30),(10,17),(10,20),(10,28),(11,8),(11,18),(12,1),(12,10),(12,13);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,2),(1,5),(1,6),(1,8),(1,9),(1,12),(1,13),(1,15),(1,16),(1,21),(1,26),(1,28),(2,7),(2,10),(2,14),(2,18),(2,22),(2,25),(2,29),(2,30),(2,31),(3,3),(3,4),(3,11),(3,17),(3,19),(3,20),(3,23),(3,24),(3,27);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-02-24 01:26:28','2024-02-24 01:26:28',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-02-24 01:26:28','2024-02-24 01:26:28',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-02-24 01:26:28','2024-02-24 01:26:28',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,11,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,21,0,0.00,'fixed',1),(1,27,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(3,1,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,27,0,0.00,'fixed',1),(3,30,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,18,0,0.00,'fixed',1),(4,25,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,6,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,24,0,0.00,'fixed',1),(6,27,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,16,0,0.00,'fixed',1),(7,27,0,0.00,'fixed',1),(7,31,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,27,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,25,0,0.00,'fixed',1),(9,27,0,0.00,'fixed',1),(10,3,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,21,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,29,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,11,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(12,27,0,0.00,'fixed',1),(13,16,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(13,21,0,0.00,'fixed',1),(13,27,0,0.00,'fixed',1),(14,3,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,29,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,24,0,0.00,'fixed',1),(16,6,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,26,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(17,30,0,0.00,'fixed',1),(17,31,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,29,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(21,9,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(21,29,0,0.00,'fixed',1),(22,1,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,21,0,0.00,'fixed',1),(22,29,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,28,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1),(24,14,0,0.00,'fixed',1),(24,19,0,0.00,'fixed',1),(24,31,0,0.00,'fixed',1),(25,8,0,0.00,'fixed',1),(25,14,0,0.00,'fixed',1),(25,26,0,0.00,'fixed',1),(26,5,0,0.00,'fixed',1),(26,16,0,0.00,'fixed',1),(26,17,0,0.00,'fixed',1),(26,23,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,24,0,0.00,'fixed',1),(27,25,0,0.00,'fixed',1),(27,30,0,0.00,'fixed',1),(28,10,0,0.00,'fixed',1),(28,20,0,0.00,'fixed',1),(28,26,0,0.00,'fixed',1),(28,29,0,0.00,'fixed',1),(29,23,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,28,0,0.00,'fixed',1),(29,31,0,0.00,'fixed',1),(30,14,0,0.00,'fixed',1),(30,16,0,0.00,'fixed',1),(30,22,0,0.00,'fixed',1),(30,29,0,0.00,'fixed',1),(31,9,0,0.00,'fixed',1),(31,21,0,0.00,'fixed',1),(31,22,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,32,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(2,32,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(3,32,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(4,32,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(5,33,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(6,33,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(7,33,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(8,33,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(9,43,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(10,43,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(11,43,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(12,43,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(13,44,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(14,44,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(15,44,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(16,44,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(17,45,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(18,45,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(19,45,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(20,45,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-24 01:26:36','2024-02-24 01:26:36'),(21,54,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:36\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(22,54,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(23,55,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(24,55,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(25,56,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(26,56,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(27,62,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(28,62,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(29,63,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(30,63,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(31,64,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(32,64,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(33,65,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(34,65,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(35,66,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(36,66,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(37,72,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(38,73,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(39,81,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(40,81,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(41,82,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(42,82,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:37\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:37','2024-02-24 01:26:37'),(43,93,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(44,93,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(45,94,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(46,94,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(47,95,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(48,95,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(49,96,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(50,96,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(51,97,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(52,97,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(53,107,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"29\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(54,107,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(55,108,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"29\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(56,108,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(57,109,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"29\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38'),(58,109,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:26:38\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2024-02-24 01:26:38','2024-02-24 01:26:38');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,15),(1,18),(1,24),(1,27),(2,9),(2,12),(2,21),(2,30),(3,6);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-02-24 01:26:28','2024-02-24 01:26:28'),(2,'New','#02856e','published','2024-02-24 01:26:28','2024-02-24 01:26:28'),(3,'Sale','#fe9931','published','2024-02-24 01:26:28','2024-02-24 01:26:28');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,5),(2,4),(2,6),(3,2),(3,4),(4,2),(4,4),(4,6),(5,1),(5,2),(5,4),(6,1),(6,2),(6,4),(7,3),(7,4),(7,6),(8,4),(8,6),(9,5),(9,6),(10,4),(10,6),(11,2),(11,4),(12,1),(12,2),(12,5),(13,2),(13,3),(13,6),(14,3),(15,3),(15,4),(15,6),(16,2),(16,4),(16,6),(17,1),(17,2),(17,6),(18,1),(18,2),(18,6),(19,1),(19,4),(20,1),(20,5),(20,6),(21,2),(21,5),(22,1),(22,2),(22,6),(23,2),(23,3),(23,4),(24,3),(24,4),(24,6),(25,3),(25,4),(26,1),(27,1),(27,3),(27,4),(28,4),(28,6),(29,1),(29,4),(29,6),(30,2),(30,3),(30,5),(31,1),(31,2),(31,3);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(2,'Mobile',NULL,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(3,'Iphone',NULL,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(4,'Printer',NULL,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(5,'Office',NULL,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(6,'IT',NULL,'published','2024-02-24 01:26:38','2024-02-24 01:26:38');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(11,1,6),(21,1,11),(23,1,12),(31,1,16),(33,1,17),(37,1,19),(59,1,30),(73,1,37),(77,1,39),(85,1,43),(87,1,44),(99,1,50),(109,1,55),(117,1,59),(129,1,65),(17,2,9),(29,2,15),(57,2,29),(61,2,31),(71,2,36),(75,2,38),(83,2,42),(93,2,47),(101,2,51),(103,2,52),(105,2,53),(115,2,58),(131,2,66),(3,3,2),(9,3,5),(19,3,10),(25,3,13),(43,3,22),(49,3,25),(65,3,33),(79,3,40),(91,3,46),(95,3,48),(97,3,49),(119,3,60),(133,3,67),(137,3,69),(151,3,76),(155,3,78),(1,4,1),(7,4,4),(27,4,14),(39,4,20),(41,4,21),(51,4,26),(53,4,27),(55,4,28),(81,4,41),(107,4,54),(111,4,56),(113,4,57),(125,4,63),(135,4,68),(139,4,70),(141,4,71),(143,4,72),(145,4,73),(161,4,81),(163,4,82),(13,5,7),(15,5,8),(35,5,18),(45,5,23),(47,5,24),(63,5,32),(67,5,34),(69,5,35),(89,5,45),(121,5,61),(123,5,62),(127,5,64),(147,5,74),(149,5,75),(153,5,77),(157,5,79),(159,5,80),(22,6,11),(44,6,22),(52,6,26),(58,6,29),(72,6,36),(80,6,40),(96,6,48),(100,6,50),(116,6,58),(130,6,65),(134,6,67),(142,6,71),(154,6,77),(158,6,79),(6,7,3),(14,7,7),(20,7,10),(26,7,13),(34,7,17),(42,7,21),(46,7,23),(62,7,31),(66,7,33),(68,7,34),(70,7,35),(82,7,41),(108,7,54),(122,7,61),(132,7,66),(160,7,80),(162,7,81),(164,7,82),(2,8,1),(10,8,5),(12,8,6),(32,8,16),(50,8,25),(54,8,27),(56,8,28),(88,8,44),(90,8,45),(94,8,47),(104,8,52),(112,8,56),(124,8,62),(128,8,64),(138,8,69),(146,8,73),(150,8,75),(8,9,4),(38,9,19),(40,9,20),(60,9,30),(74,9,37),(84,9,42),(98,9,49),(102,9,51),(110,9,55),(114,9,57),(118,9,59),(120,9,60),(136,9,68),(144,9,72),(4,10,2),(16,10,8),(18,10,9),(24,10,12),(28,10,14),(30,10,15),(36,10,18),(48,10,24),(64,10,32),(76,10,38),(78,10,39),(86,10,43),(92,10,46),(106,10,53),(126,10,63),(140,10,70),(148,10,74),(152,10,76),(156,10,78);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,1,1),(2,33,1,0),(3,34,2,1),(4,35,2,0),(5,36,2,0),(6,37,3,1),(7,38,3,0),(8,39,4,1),(9,40,4,0),(10,41,4,0),(11,42,4,0),(12,43,5,1),(13,44,5,0),(14,45,5,0),(15,46,6,1),(16,47,7,1),(17,48,7,0),(18,49,7,0),(19,50,7,0),(20,51,8,1),(21,52,8,0),(22,53,8,0),(23,54,9,1),(24,55,9,0),(25,56,9,0),(26,57,10,1),(27,58,10,0),(28,59,11,1),(29,60,11,0),(30,61,12,1),(31,62,13,1),(32,63,13,0),(33,64,13,0),(34,65,13,0),(35,66,13,0),(36,67,14,1),(37,68,14,0),(38,69,15,1),(39,70,15,0),(40,71,16,1),(41,72,17,1),(42,73,17,0),(43,74,18,1),(44,75,18,0),(45,76,19,1),(46,77,19,0),(47,78,19,0),(48,79,20,1),(49,80,20,0),(50,81,21,1),(51,82,21,0),(52,83,22,1),(53,84,22,0),(54,85,22,0),(55,86,22,0),(56,87,23,1),(57,88,23,0),(58,89,24,1),(59,90,24,0),(60,91,24,0),(61,92,24,0),(62,93,25,1),(63,94,25,0),(64,95,25,0),(65,96,25,0),(66,97,25,0),(67,98,26,1),(68,99,26,0),(69,100,26,0),(70,101,27,1),(71,102,27,0),(72,103,27,0),(73,104,28,1),(74,105,28,0),(75,106,28,0),(76,107,29,1),(77,108,29,0),(78,109,29,0),(79,110,30,1),(80,111,30,0),(81,112,31,1),(82,113,31,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-02-24',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(1,28,0),(2,28,0),(1,29,0),(2,29,0),(1,30,0),(2,30,0),(1,31,0),(2,31,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-125-A0',0,11,0,1,1,6,0,0,244,NULL,NULL,NULL,11.00,15.00,19.00,672.00,1,142264,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-119-A0',0,20,0,1,1,2,0,0,379,NULL,NULL,NULL,11.00,12.00,14.00,547.00,1,38126,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-174-A0',0,13,0,1,1,5,0,0,361,NULL,NULL,NULL,12.00,15.00,11.00,592.00,1,144039,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-133-A0',0,18,0,1,1,7,0,0,73,61.32,NULL,NULL,10.00,13.00,19.00,714.00,1,36500,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(5,'Camera Hikvision HK-35VS8 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-135-A0',0,20,0,1,1,3,0,0,50,NULL,NULL,NULL,18.00,13.00,14.00,601.00,1,59125,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-142-A0',0,17,0,1,1,7,0,0,57,NULL,NULL,NULL,15.00,13.00,17.00,760.00,1,125381,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-110-A0',0,19,0,1,1,6,0,0,113,NULL,NULL,NULL,20.00,14.00,15.00,678.00,1,186085,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-146-A0',0,15,0,1,1,7,0,0,113,90.4,NULL,NULL,14.00,17.00,15.00,646.00,1,95303,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(9,'Macbook Pro 2015 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-189-A0',0,20,0,1,1,6,0,0,118,NULL,NULL,NULL,17.00,11.00,16.00,693.00,1,68735,'2024-02-24 01:26:35','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-146-A0',0,12,0,1,1,2,0,0,340,NULL,NULL,NULL,14.00,12.00,17.00,543.00,1,126287,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-197-A0',0,17,0,1,1,1,0,0,115,NULL,NULL,NULL,15.00,17.00,20.00,667.00,1,174123,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-153-A0',0,11,0,1,1,2,0,0,110,96.8,NULL,NULL,12.00,18.00,19.00,683.00,1,189153,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(13,'Apple Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-124-A0',0,18,0,1,1,3,0,0,117,NULL,NULL,NULL,17.00,15.00,14.00,580.00,1,34126,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-193-A0',0,15,0,1,1,2,0,0,116,NULL,NULL,NULL,12.00,11.00,15.00,669.00,1,46963,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-127-A0',0,12,0,1,1,2,0,0,119,NULL,NULL,NULL,13.00,10.00,17.00,707.00,1,180152,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','HS-137-A0',0,15,0,1,1,5,0,0,130,98.8,NULL,NULL,16.00,10.00,13.00,743.00,1,40520,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(17,'Cool Smart Watches (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\"]','HS-151-A0',0,20,0,1,1,2,0,0,124,NULL,NULL,NULL,17.00,15.00,19.00,841.00,1,38923,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-145-A0',0,18,0,1,1,6,0,0,112,NULL,NULL,NULL,10.00,19.00,18.00,514.00,1,99560,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-185-A0',0,17,0,1,1,6,0,0,118,NULL,NULL,NULL,10.00,16.00,15.00,808.00,1,2909,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-193-A0',0,14,0,1,1,2,0,0,112,79.52,NULL,NULL,16.00,11.00,14.00,704.00,1,76312,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(21,'Historic Alarm Clock (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-196-A0',0,13,0,1,1,5,0,0,125,NULL,NULL,NULL,14.00,12.00,10.00,808.00,1,127649,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-130-A0',0,15,0,1,1,5,0,0,130,NULL,NULL,NULL,14.00,14.00,16.00,701.00,1,124487,'2024-02-24 01:26:35','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-132-A0',0,12,0,1,1,7,0,0,126,NULL,NULL,NULL,10.00,14.00,10.00,712.00,1,3529,'2024-02-24 01:26:36','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-178-A0',0,20,0,1,1,2,0,0,121,104.06,NULL,NULL,14.00,11.00,19.00,851.00,1,73881,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(25,'Dual Camera 20MP (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\"]','HS-119-A0',0,15,0,1,0,1,0,0,80.25,NULL,NULL,NULL,14.00,20.00,10.00,703.00,1,19692,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(26,'Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]','HS-196-A0',0,19,0,1,0,3,0,0,40.5,NULL,NULL,NULL,19.00,12.00,16.00,650.00,1,49005,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(27,'Beat Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]','HS-149-A0',0,14,0,1,0,2,0,0,20,NULL,NULL,NULL,16.00,20.00,13.00,732.00,1,48800,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(28,'Red &amp; Black Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\"]','HS-156-A0',0,17,0,1,0,2,0,0,51,43.35,NULL,NULL,15.00,13.00,17.00,505.00,1,6545,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(29,'Audio Equipment (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\"]','HS-197-A0',0,18,0,1,0,7,0,0,54,NULL,NULL,NULL,16.00,20.00,19.00,593.00,1,118620,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(30,'Smart Televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\"]','HS-190-A0',0,20,0,1,0,2,0,0,115,NULL,NULL,NULL,13.00,20.00,18.00,686.00,1,102626,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(31,'Samsung Smart TV','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]','HS-120-A0',0,14,0,1,0,5,0,0,52,NULL,NULL,NULL,11.00,10.00,16.00,832.00,1,39783,'2024-02-24 01:26:36','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(32,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-125-A0',0,11,0,1,0,6,1,0,244,NULL,NULL,NULL,11.00,15.00,19.00,672.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(33,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-125-A0-A1',0,11,0,1,0,6,1,0,244,NULL,NULL,NULL,11.00,15.00,19.00,672.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(34,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-119-A0',0,20,0,1,0,2,1,0,379,NULL,NULL,NULL,11.00,12.00,14.00,547.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(35,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-119-A0-A1',0,20,0,1,0,2,1,0,379,NULL,NULL,NULL,11.00,12.00,14.00,547.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(36,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','HS-119-A0-A2',0,20,0,1,0,2,1,0,379,NULL,NULL,NULL,11.00,12.00,14.00,547.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(37,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-174-A0',0,13,0,1,0,5,1,0,361,NULL,NULL,NULL,12.00,15.00,11.00,592.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(38,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-174-A0-A1',0,13,0,1,0,5,1,0,361,NULL,NULL,NULL,12.00,15.00,11.00,592.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(39,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-133-A0',0,18,0,1,0,7,1,0,73,61.32,NULL,NULL,10.00,13.00,19.00,714.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(40,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-133-A0-A1',0,18,0,1,0,7,1,0,73,60.59,NULL,NULL,10.00,13.00,19.00,714.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(41,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','HS-133-A0-A2',0,18,0,1,0,7,1,0,73,55.48,NULL,NULL,10.00,13.00,19.00,714.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(42,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-3.jpg\"]','HS-133-A0-A3',0,18,0,1,0,7,1,0,73,52.56,NULL,NULL,10.00,13.00,19.00,714.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(43,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-135-A0',0,20,0,1,0,3,1,0,50,NULL,NULL,NULL,18.00,13.00,14.00,601.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(44,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-135-A0-A1',0,20,0,1,0,3,1,0,50,NULL,NULL,NULL,18.00,13.00,14.00,601.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(45,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','HS-135-A0-A2',0,20,0,1,0,3,1,0,50,NULL,NULL,NULL,18.00,13.00,14.00,601.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(46,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-142-A0',0,17,0,1,0,7,1,0,57,NULL,NULL,NULL,15.00,13.00,17.00,760.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(47,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-110-A0',0,19,0,1,0,6,1,0,113,NULL,NULL,NULL,20.00,14.00,15.00,678.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(48,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-110-A0-A1',0,19,0,1,0,6,1,0,113,NULL,NULL,NULL,20.00,14.00,15.00,678.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(49,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-110-A0-A2',0,19,0,1,0,6,1,0,113,NULL,NULL,NULL,20.00,14.00,15.00,678.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(50,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-110-A0-A3',0,19,0,1,0,6,1,0,113,NULL,NULL,NULL,20.00,14.00,15.00,678.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(51,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-146-A0',0,15,0,1,0,7,1,0,113,90.4,NULL,NULL,14.00,17.00,15.00,646.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(52,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-146-A0-A1',0,15,0,1,0,7,1,0,113,100.57,NULL,NULL,14.00,17.00,15.00,646.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(53,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-146-A0-A2',0,15,0,1,0,7,1,0,113,83.62,NULL,NULL,14.00,17.00,15.00,646.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(54,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-189-A0',0,20,0,1,0,6,1,0,118,NULL,NULL,NULL,17.00,11.00,16.00,693.00,NULL,0,'2024-02-24 01:26:36','2024-02-24 01:26:36','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(55,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-189-A0-A1',0,20,0,1,0,6,1,0,118,NULL,NULL,NULL,17.00,11.00,16.00,693.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(56,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-189-A0-A2',0,20,0,1,0,6,1,0,118,NULL,NULL,NULL,17.00,11.00,16.00,693.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(57,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-146-A0',0,12,0,1,0,2,1,0,340,NULL,NULL,NULL,14.00,12.00,17.00,543.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(58,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-146-A0-A1',0,12,0,1,0,2,1,0,340,NULL,NULL,NULL,14.00,12.00,17.00,543.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(59,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-197-A0',0,17,0,1,0,1,1,0,115,NULL,NULL,NULL,15.00,17.00,20.00,667.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(60,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-197-A0-A1',0,17,0,1,0,1,1,0,115,NULL,NULL,NULL,15.00,17.00,20.00,667.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(61,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-153-A0',0,11,0,1,0,2,1,0,110,96.8,NULL,NULL,12.00,18.00,19.00,683.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(62,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-124-A0',0,18,0,1,0,3,1,0,117,NULL,NULL,NULL,17.00,15.00,14.00,580.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(63,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-124-A0-A1',0,18,0,1,0,3,1,0,117,NULL,NULL,NULL,17.00,15.00,14.00,580.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(64,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-124-A0-A2',0,18,0,1,0,3,1,0,117,NULL,NULL,NULL,17.00,15.00,14.00,580.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(65,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-124-A0-A3',0,18,0,1,0,3,1,0,117,NULL,NULL,NULL,17.00,15.00,14.00,580.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(66,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-124-A0-A4',0,18,0,1,0,3,1,0,117,NULL,NULL,NULL,17.00,15.00,14.00,580.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(67,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-193-A0',0,15,0,1,0,2,1,0,116,NULL,NULL,NULL,12.00,11.00,15.00,669.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(68,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-193-A0-A1',0,15,0,1,0,2,1,0,116,NULL,NULL,NULL,12.00,11.00,15.00,669.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(69,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-127-A0',0,12,0,1,0,2,1,0,119,NULL,NULL,NULL,13.00,10.00,17.00,707.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(70,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-127-A0-A1',0,12,0,1,0,2,1,0,119,NULL,NULL,NULL,13.00,10.00,17.00,707.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(71,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-137-A0',0,15,0,1,0,5,1,0,130,98.8,NULL,NULL,16.00,10.00,13.00,743.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(72,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-151-A0',0,20,0,1,0,2,1,0,124,NULL,NULL,NULL,17.00,15.00,19.00,841.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(73,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-151-A0-A1',0,20,0,1,0,2,1,0,124,NULL,NULL,NULL,17.00,15.00,19.00,841.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(74,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-145-A0',0,18,0,1,0,6,1,0,112,NULL,NULL,NULL,10.00,19.00,18.00,514.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(75,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-145-A0-A1',0,18,0,1,0,6,1,0,112,NULL,NULL,NULL,10.00,19.00,18.00,514.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(76,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-185-A0',0,17,0,1,0,6,1,0,118,NULL,NULL,NULL,10.00,16.00,15.00,808.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(77,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-185-A0-A1',0,17,0,1,0,6,1,0,118,NULL,NULL,NULL,10.00,16.00,15.00,808.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(78,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-185-A0-A2',0,17,0,1,0,6,1,0,118,NULL,NULL,NULL,10.00,16.00,15.00,808.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(79,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-193-A0',0,14,0,1,0,2,1,0,112,79.52,NULL,NULL,16.00,11.00,14.00,704.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(80,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-193-A0-A1',0,14,0,1,0,2,1,0,112,89.6,NULL,NULL,16.00,11.00,14.00,704.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(81,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-196-A0',0,13,0,1,0,5,1,0,125,NULL,NULL,NULL,14.00,12.00,10.00,808.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(82,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-196-A0-A1',0,13,0,1,0,5,1,0,125,NULL,NULL,NULL,14.00,12.00,10.00,808.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(83,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-130-A0',0,15,0,1,0,5,1,0,130,NULL,NULL,NULL,14.00,14.00,16.00,701.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(84,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-130-A0-A1',0,15,0,1,0,5,1,0,130,NULL,NULL,NULL,14.00,14.00,16.00,701.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(85,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-130-A0-A2',0,15,0,1,0,5,1,0,130,NULL,NULL,NULL,14.00,14.00,16.00,701.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(86,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-130-A0-A3',0,15,0,1,0,5,1,0,130,NULL,NULL,NULL,14.00,14.00,16.00,701.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(87,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-132-A0',0,12,0,1,0,7,1,0,126,NULL,NULL,NULL,10.00,14.00,10.00,712.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(88,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-132-A0-A1',0,12,0,1,0,7,1,0,126,NULL,NULL,NULL,10.00,14.00,10.00,712.00,NULL,0,'2024-02-24 01:26:37','2024-02-24 01:26:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(89,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-178-A0',0,20,0,1,0,2,1,0,121,104.06,NULL,NULL,14.00,11.00,19.00,851.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(90,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-178-A0-A1',0,20,0,1,0,2,1,0,121,108.9,NULL,NULL,14.00,11.00,19.00,851.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(91,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-178-A0-A2',0,20,0,1,0,2,1,0,121,88.33,NULL,NULL,14.00,11.00,19.00,851.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(92,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-178-A0-A3',0,20,0,1,0,2,1,0,121,106.48,NULL,NULL,14.00,11.00,19.00,851.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(93,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-119-A0',0,15,0,1,0,1,1,0,80.25,NULL,NULL,NULL,14.00,20.00,10.00,703.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(94,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25-1.jpg\"]','HS-119-A0-A1',0,15,0,1,0,1,1,0,80.25,NULL,NULL,NULL,14.00,20.00,10.00,703.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(95,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-119-A0-A2',0,15,0,1,0,1,1,0,80.25,NULL,NULL,NULL,14.00,20.00,10.00,703.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(96,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-119-A0-A3',0,15,0,1,0,1,1,0,80.25,NULL,NULL,NULL,14.00,20.00,10.00,703.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(97,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-119-A0-A4',0,15,0,1,0,1,1,0,80.25,NULL,NULL,NULL,14.00,20.00,10.00,703.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(98,'Smart Watches',NULL,NULL,'published','[\"products\\/26.jpg\"]','HS-196-A0',0,19,0,1,0,3,1,0,40.5,NULL,NULL,NULL,19.00,12.00,16.00,650.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(99,'Smart Watches',NULL,NULL,'published','[\"products\\/26-1.jpg\"]','HS-196-A0-A1',0,19,0,1,0,3,1,0,40.5,NULL,NULL,NULL,19.00,12.00,16.00,650.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(100,'Smart Watches',NULL,NULL,'published','[\"products\\/26-2.jpg\"]','HS-196-A0-A2',0,19,0,1,0,3,1,0,40.5,NULL,NULL,NULL,19.00,12.00,16.00,650.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(101,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-149-A0',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,16.00,20.00,13.00,732.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(102,'Beat Headphone',NULL,NULL,'published','[\"products\\/27-1.jpg\"]','HS-149-A0-A1',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,16.00,20.00,13.00,732.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(103,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-149-A0-A2',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,16.00,20.00,13.00,732.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(104,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-156-A0',0,17,0,1,0,2,1,0,51,43.35,NULL,NULL,15.00,13.00,17.00,505.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(105,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/28-1.jpg\"]','HS-156-A0-A1',0,17,0,1,0,2,1,0,51,45.39,NULL,NULL,15.00,13.00,17.00,505.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(106,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-156-A0-A2',0,17,0,1,0,2,1,0,51,40.8,NULL,NULL,15.00,13.00,17.00,505.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(107,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-197-A0',0,18,0,1,0,7,1,0,54,NULL,NULL,NULL,16.00,20.00,19.00,593.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(108,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29-1.jpg\"]','HS-197-A0-A1',0,18,0,1,0,7,1,0,54,NULL,NULL,NULL,16.00,20.00,19.00,593.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(109,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-197-A0-A2',0,18,0,1,0,7,1,0,54,NULL,NULL,NULL,16.00,20.00,19.00,593.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(110,'Smart Televisions',NULL,NULL,'published','[\"products\\/30.jpg\"]','HS-190-A0',0,20,0,1,0,2,1,0,115,NULL,NULL,NULL,13.00,20.00,18.00,686.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(111,'Smart Televisions',NULL,NULL,'published','[\"products\\/30-1.jpg\"]','HS-190-A0-A1',0,20,0,1,0,2,1,0,115,NULL,NULL,NULL,13.00,20.00,18.00,686.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(112,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-120-A0',0,14,0,1,0,5,1,0,52,NULL,NULL,NULL,11.00,10.00,16.00,832.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(113,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31-1.jpg\"]','HS-120-A0-A1',0,14,0,1,0,5,1,0,52,NULL,NULL,NULL,11.00,10.00,16.00,832.00,NULL,0,'2024-02-24 01:26:38','2024-02-24 01:26:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,2,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\"]'),(2,4,8,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\"]'),(3,4,20,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/19-1.jpg\",\"products\\/20.jpg\",\"products\\/28-1.jpg\"]'),(4,5,21,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/6.jpg\",\"products\\/18-1.jpg\"]'),(5,1,15,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/14.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\"]'),(6,10,2,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\",\"products\\/18-2.jpg\",\"products\\/24-1.jpg\",\"products\\/30-1.jpg\"]'),(7,10,5,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/17.jpg\"]'),(8,5,29,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/8.jpg\"]'),(9,1,11,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\",\"products\\/13-1.jpg\",\"products\\/19.jpg\",\"products\\/28.jpg\"]'),(10,8,8,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/31.jpg\"]'),(11,8,18,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/11.jpg\"]'),(12,6,29,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/11.jpg\",\"products\\/15.jpg\",\"products\\/29-1.jpg\"]'),(13,6,23,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/4-3.jpg\",\"products\\/15.jpg\"]'),(14,7,19,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/8.jpg\"]'),(15,3,23,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/6-1.jpg\",\"products\\/9-1.jpg\",\"products\\/12-1.jpg\"]'),(16,3,8,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/15.jpg\",\"products\\/23-1.jpg\"]'),(18,8,21,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(19,3,20,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/12.jpg\"]'),(20,5,9,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/16.jpg\",\"products\\/22.jpg\",\"products\\/25.jpg\",\"products\\/26-1.jpg\"]'),(21,9,22,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/3-2.jpg\",\"products\\/18-1.jpg\",\"products\\/21-1.jpg\"]'),(22,9,9,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-1.jpg\",\"products\\/24.jpg\",\"products\\/25-1.jpg\",\"products\\/27.jpg\"]'),(23,10,22,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/20-1.jpg\"]'),(24,9,16,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/10-1.jpg\",\"products\\/25.jpg\"]'),(25,5,25,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7.jpg\"]'),(26,4,21,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\"]'),(27,1,12,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-3.jpg\",\"products\\/7.jpg\",\"products\\/25-1.jpg\",\"products\\/28-1.jpg\"]'),(28,8,20,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-2.jpg\",\"products\\/9-1.jpg\",\"products\\/12-1.jpg\",\"products\\/25-1.jpg\"]'),(29,3,10,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/4-2.jpg\",\"products\\/15-1.jpg\",\"products\\/16.jpg\"]'),(30,9,15,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11.jpg\"]'),(31,9,14,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-2.jpg\",\"products\\/19-1.jpg\",\"products\\/29.jpg\",\"products\\/30.jpg\"]'),(32,4,12,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/9.jpg\"]'),(33,3,15,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\",\"products\\/21-1.jpg\",\"products\\/27-1.jpg\"]'),(34,8,7,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/26-2.jpg\"]'),(35,7,27,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\"]'),(36,9,30,4.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-2.jpg\",\"products\\/8-1.jpg\"]'),(37,5,1,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/15-1.jpg\"]'),(38,2,12,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/20.jpg\"]'),(40,7,29,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/16.jpg\",\"products\\/28-1.jpg\"]'),(41,9,2,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/10-1.jpg\",\"products\\/21-1.jpg\"]'),(42,7,12,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-2.jpg\",\"products\\/7-1.jpg\",\"products\\/11-1.jpg\"]'),(44,2,4,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/25.jpg\",\"products\\/30.jpg\"]'),(45,2,28,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\",\"products\\/25-1.jpg\"]'),(46,7,15,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7.jpg\",\"products\\/24.jpg\",\"products\\/25.jpg\",\"products\\/28.jpg\"]'),(48,4,1,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\",\"products\\/11.jpg\"]'),(49,10,27,5.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\"]'),(50,10,19,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/24.jpg\",\"products\\/31-1.jpg\"]'),(51,10,11,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\",\"products\\/21.jpg\"]'),(52,2,11,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\"]'),(53,10,28,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\"]'),(54,10,23,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/3.jpg\",\"products\\/5-2.jpg\",\"products\\/26-1.jpg\"]'),(55,5,5,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/28-1.jpg\"]'),(56,5,2,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10.jpg\",\"products\\/27.jpg\"]'),(57,1,26,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\",\"products\\/18-1.jpg\",\"products\\/25.jpg\"]'),(58,5,24,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7.jpg\",\"products\\/11-1.jpg\"]'),(60,8,27,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/9-1.jpg\",\"products\\/17.jpg\"]'),(62,8,4,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-1.jpg\",\"products\\/27-1.jpg\"]'),(63,5,22,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/8-1.jpg\",\"products\\/24-1.jpg\"]'),(64,8,12,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/9.jpg\",\"products\\/19-1.jpg\",\"products\\/23.jpg\"]'),(65,6,27,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13-1.jpg\"]'),(66,7,18,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\"]'),(67,7,10,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\"]'),(68,9,4,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7.jpg\"]'),(71,1,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-2.jpg\",\"products\\/17.jpg\",\"products\\/27.jpg\"]'),(73,7,9,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/23.jpg\"]'),(75,1,17,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10-1.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(76,2,14,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(77,8,29,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\",\"products\\/23.jpg\"]'),(79,3,28,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/4-1.jpg\",\"products\\/23-1.jpg\",\"products\\/26.jpg\"]'),(81,3,14,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11-1.jpg\"]'),(83,3,4,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/4-2.jpg\",\"products\\/6-1.jpg\",\"products\\/12-1.jpg\"]'),(84,7,26,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/3.jpg\",\"products\\/4.jpg\",\"products\\/28-1.jpg\"]'),(85,6,10,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\"]'),(86,2,30,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/17.jpg\"]'),(89,5,13,5.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/15-1.jpg\"]'),(91,9,28,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7.jpg\",\"products\\/11-1.jpg\",\"products\\/19.jpg\",\"products\\/30.jpg\"]'),(92,4,18,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/16.jpg\",\"products\\/21-1.jpg\",\"products\\/26.jpg\"]'),(93,10,3,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/9-1.jpg\",\"products\\/25.jpg\"]'),(94,10,21,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/14.jpg\",\"products\\/22.jpg\",\"products\\/27.jpg\",\"products\\/29-1.jpg\"]'),(95,3,3,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6.jpg\",\"products\\/7.jpg\",\"products\\/18-2.jpg\",\"products\\/28-1.jpg\"]'),(96,7,13,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\"]'),(97,1,14,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/19-1.jpg\",\"products\\/28.jpg\"]'),(98,8,6,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/7-1.jpg\",\"products\\/11.jpg\",\"products\\/29-1.jpg\"]'),(101,6,18,1.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/25-1.jpg\"]'),(102,7,24,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\",\"products\\/28-1.jpg\"]'),(106,3,12,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/25-1.jpg\"]'),(107,8,19,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/17.jpg\"]'),(109,9,25,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/5-1.jpg\",\"products\\/15-1.jpg\"]'),(111,9,18,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/20-1.jpg\"]'),(112,7,8,1.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\",\"products\\/30-1.jpg\",\"products\\/30.jpg\"]'),(113,7,17,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/22.jpg\",\"products\\/26.jpg\"]'),(114,3,5,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/25-1.jpg\"]'),(115,7,3,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/20.jpg\"]'),(118,2,5,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/9-1.jpg\",\"products\\/24-1.jpg\",\"products\\/25-1.jpg\"]'),(119,4,19,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\",\"products\\/26.jpg\"]'),(122,4,4,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\"]'),(123,5,17,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/4-2.jpg\",\"products\\/17.jpg\",\"products\\/27.jpg\"]'),(124,6,9,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/24-1.jpg\"]'),(126,2,19,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/27.jpg\"]'),(128,6,14,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/15.jpg\",\"products\\/22-1.jpg\",\"products\\/29.jpg\"]'),(131,1,27,2.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/12.jpg\",\"products\\/13.jpg\",\"products\\/14.jpg\",\"products\\/25.jpg\"]'),(132,10,26,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-2.jpg\",\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/19-1.jpg\"]'),(133,2,7,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/20.jpg\"]'),(134,4,28,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/5-3.jpg\",\"products\\/12-1.jpg\"]'),(135,10,24,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/18-2.jpg\",\"products\\/19-1.jpg\"]'),(138,1,19,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/5-3.jpg\",\"products\\/10.jpg\",\"products\\/21-1.jpg\"]'),(139,9,26,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13-1.jpg\"]'),(140,5,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/24-1.jpg\"]'),(142,1,29,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/26-2.jpg\"]'),(143,2,2,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\"]'),(145,4,22,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/9-1.jpg\",\"products\\/14.jpg\"]'),(147,8,26,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-2.jpg\",\"products\\/15.jpg\",\"products\\/27.jpg\"]'),(148,1,4,5.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/25.jpg\"]'),(149,6,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\"]'),(150,4,30,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13.jpg\"]'),(153,5,7,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\",\"products\\/4-2.jpg\",\"products\\/6-1.jpg\",\"products\\/26.jpg\"]'),(154,6,5,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\"]'),(156,5,31,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/19.jpg\",\"products\\/31-1.jpg\"]'),(159,9,13,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\",\"products\\/7-1.jpg\",\"products\\/14.jpg\"]'),(162,1,22,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/14.jpg\"]'),(163,2,10,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/28.jpg\"]'),(164,8,1,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/17.jpg\"]'),(165,2,1,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/24-1.jpg\",\"products\\/27-1.jpg\"]'),(167,4,24,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\"]'),(168,6,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\"]'),(171,8,23,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13-1.jpg\",\"products\\/31.jpg\"]'),(172,9,29,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/15.jpg\"]'),(173,2,24,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\"]'),(174,4,14,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\"]'),(175,7,22,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/24-1.jpg\"]'),(178,10,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/20.jpg\"]'),(180,4,3,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/7.jpg\",\"products\\/19-1.jpg\",\"products\\/24.jpg\"]'),(181,8,3,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/15.jpg\",\"products\\/26.jpg\"]'),(185,6,28,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13-1.jpg\"]'),(186,3,9,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/28.jpg\"]'),(187,1,16,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\",\"products\\/25-1.jpg\"]'),(189,6,30,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/8.jpg\"]'),(191,1,23,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/11-1.jpg\",\"products\\/11.jpg\",\"products\\/17.jpg\"]'),(192,7,2,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\",\"products\\/25-1.jpg\"]'),(193,2,8,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13-1.jpg\",\"products\\/30.jpg\"]'),(194,9,23,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10-1.jpg\",\"products\\/20.jpg\"]'),(196,2,6,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\",\"products\\/9-1.jpg\",\"products\\/21-1.jpg\"]'),(202,4,26,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/3-1.jpg\",\"products\\/7.jpg\",\"products\\/28-1.jpg\"]'),(203,8,13,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/5-3.jpg\",\"products\\/27-1.jpg\"]'),(205,8,5,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/22.jpg\",\"products\\/31-1.jpg\"]'),(206,9,19,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10.jpg\",\"products\\/13-1.jpg\",\"products\\/25.jpg\"]'),(207,5,20,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/7-1.jpg\",\"products\\/9-1.jpg\",\"products\\/26.jpg\"]'),(208,7,20,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/17.jpg\",\"products\\/21.jpg\",\"products\\/28-1.jpg\"]'),(209,5,10,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\",\"products\\/13.jpg\",\"products\\/28.jpg\",\"products\\/31-1.jpg\"]'),(210,2,25,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/14.jpg\",\"products\\/23.jpg\",\"products\\/24-1.jpg\"]'),(211,10,1,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/27.jpg\"]'),(212,6,17,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/14.jpg\"]'),(213,10,13,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/28.jpg\"]'),(214,6,15,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/5.jpg\",\"products\\/15-1.jpg\"]'),(217,7,23,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/9-1.jpg\"]'),(218,5,30,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6-1.jpg\"]'),(221,9,27,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/3.jpg\",\"products\\/27-1.jpg\"]'),(222,2,9,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6.jpg\",\"products\\/25.jpg\"]'),(223,7,25,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/25.jpg\"]'),(225,3,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6-1.jpg\",\"products\\/26.jpg\"]'),(226,4,7,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\"]'),(227,6,2,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/9.jpg\",\"products\\/14.jpg\",\"products\\/20-1.jpg\"]'),(228,10,20,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\"]'),(237,7,1,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/13-1.jpg\",\"products\\/14.jpg\",\"products\\/20.jpg\"]'),(239,2,26,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/21.jpg\",\"products\\/28-1.jpg\"]'),(242,2,31,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/10.jpg\"]'),(243,3,27,5.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11.jpg\",\"products\\/24-1.jpg\",\"products\\/31-1.jpg\"]'),(244,1,13,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/7-1.jpg\",\"products\\/21-1.jpg\",\"products\\/25.jpg\"]'),(245,8,30,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/2-2.jpg\",\"products\\/29-1.jpg\"]'),(246,10,25,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/6-1.jpg\",\"products\\/6.jpg\"]'),(252,1,5,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/2-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),(253,9,11,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/15-1.jpg\",\"products\\/30-1.jpg\",\"products\\/31-1.jpg\"]'),(256,1,7,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/21.jpg\",\"products\\/27.jpg\"]'),(257,5,12,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/12-1.jpg\",\"products\\/23-1.jpg\",\"products\\/23.jpg\",\"products\\/25.jpg\"]'),(259,1,8,5.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/6-1.jpg\",\"products\\/14.jpg\",\"products\\/18.jpg\"]'),(265,10,4,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\"]'),(268,6,20,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/12-1.jpg\",\"products\\/17.jpg\"]'),(272,2,3,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/29-1.jpg\"]'),(274,3,24,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\"]'),(275,9,1,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6.jpg\",\"products\\/20-1.jpg\",\"products\\/29.jpg\"]'),(276,7,4,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6.jpg\",\"products\\/30.jpg\"]'),(280,5,23,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/10-1.jpg\",\"products\\/23.jpg\"]'),(281,10,12,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/8-1.jpg\",\"products\\/15-1.jpg\",\"products\\/19-1.jpg\"]'),(282,8,15,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/24-1.jpg\"]'),(283,3,6,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13.jpg\",\"products\\/16.jpg\",\"products\\/30-1.jpg\",\"products\\/31-1.jpg\"]'),(284,8,10,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\"]'),(285,9,5,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\"]'),(289,1,3,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/5-1.jpg\",\"products\\/11-1.jpg\"]'),(294,2,23,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/6.jpg\"]'),(296,2,17,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-3.jpg\",\"products\\/15.jpg\",\"products\\/29.jpg\"]'),(297,3,21,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/25.jpg\",\"products\\/26-2.jpg\"]'),(305,5,28,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-3.jpg\",\"products\\/30.jpg\"]'),(308,5,11,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/4.jpg\",\"products\\/5-3.jpg\",\"products\\/31.jpg\"]'),(312,10,31,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/6.jpg\",\"products\\/22-1.jpg\",\"products\\/25.jpg\"]'),(313,4,11,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/18-2.jpg\"]'),(314,8,14,4.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\",\"products\\/24-1.jpg\"]'),(317,7,31,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/8-1.jpg\"]'),(318,9,24,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\"]'),(319,10,30,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\",\"products\\/29-1.jpg\"]'),(320,5,26,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/19-1.jpg\",\"products\\/20-1.jpg\"]'),(323,7,28,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10-1.jpg\",\"products\\/11-1.jpg\"]'),(324,9,31,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/5-1.jpg\",\"products\\/26.jpg\"]'),(328,5,27,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11.jpg\",\"products\\/17.jpg\",\"products\\/18.jpg\"]'),(333,3,18,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/8-1.jpg\",\"products\\/13-1.jpg\",\"products\\/15.jpg\"]'),(335,9,3,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/26-1.jpg\"]'),(336,2,15,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/30-1.jpg\"]'),(340,1,10,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-1.jpg\"]'),(345,3,17,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/4-1.jpg\",\"products\\/18-2.jpg\",\"products\\/30.jpg\"]'),(346,5,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/15-1.jpg\",\"products\\/19-1.jpg\"]'),(351,7,21,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/11.jpg\",\"products\\/14.jpg\"]'),(355,7,6,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/7-1.jpg\"]'),(357,8,24,1.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\"]'),(358,9,8,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-2.jpg\",\"products\\/29-1.jpg\"]'),(360,8,11,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\"]'),(365,6,7,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\",\"products\\/13-1.jpg\",\"products\\/14-1.jpg\",\"products\\/25-1.jpg\"]'),(367,10,9,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/20-1.jpg\",\"products\\/30.jpg\",\"products\\/31-1.jpg\"]'),(371,2,21,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/15-1.jpg\",\"products\\/26-1.jpg\",\"products\\/30-1.jpg\"]'),(373,1,21,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/6.jpg\"]'),(376,9,17,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/24.jpg\"]'),(380,10,7,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\"]'),(384,5,3,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\"]'),(387,4,23,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/27.jpg\",\"products\\/28-1.jpg\"]'),(390,9,21,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/10-1.jpg\",\"products\\/16.jpg\",\"products\\/20.jpg\"]'),(395,10,18,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6.jpg\",\"products\\/30-1.jpg\"]'),(396,2,16,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/10.jpg\",\"products\\/26-2.jpg\",\"products\\/26.jpg\"]'),(402,4,9,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\",\"products\\/6.jpg\"]'),(403,8,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\",\"products\\/17.jpg\",\"products\\/27.jpg\"]'),(404,6,19,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/18-2.jpg\",\"products\\/20-1.jpg\"]'),(405,6,31,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/19.jpg\",\"products\\/21-1.jpg\",\"products\\/30-1.jpg\"]'),(406,10,29,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/6-1.jpg\"]'),(412,6,12,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/12.jpg\",\"products\\/15-1.jpg\",\"products\\/21.jpg\"]'),(413,10,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/19-1.jpg\"]'),(416,2,22,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),(422,3,16,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/22.jpg\"]'),(425,6,25,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\"]'),(426,10,6,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/11-1.jpg\",\"products\\/16.jpg\",\"products\\/31.jpg\"]'),(428,1,6,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-1.jpg\",\"products\\/12.jpg\"]'),(432,3,31,2.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\"]'),(436,9,7,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\",\"products\\/31.jpg\"]'),(437,6,24,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/19-1.jpg\"]'),(439,3,26,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/9.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\"]'),(440,6,8,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\",\"products\\/14.jpg\",\"products\\/28-1.jpg\"]'),(446,9,6,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/13.jpg\"]'),(449,5,19,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\",\"products\\/5-3.jpg\",\"products\\/11.jpg\",\"products\\/30.jpg\"]'),(450,2,29,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\"]'),(454,1,31,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/8-1.jpg\",\"products\\/14.jpg\"]'),(456,6,11,2.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/18-2.jpg\",\"products\\/22.jpg\"]'),(457,2,27,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/28.jpg\"]'),(469,3,30,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\",\"products\\/15.jpg\",\"products\\/22.jpg\",\"products\\/29-1.jpg\"]'),(477,3,19,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6-1.jpg\",\"products\\/11.jpg\",\"products\\/25-1.jpg\",\"products\\/26.jpg\"]'),(480,6,16,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\",\"products\\/3-1.jpg\",\"products\\/19-1.jpg\",\"products\\/26.jpg\"]'),(503,9,10,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/15.jpg\",\"products\\/25.jpg\",\"products\\/30-1.jpg\"]'),(504,1,25,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/17.jpg\",\"products\\/23.jpg\",\"products\\/26-2.jpg\"]'),(509,8,31,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/24-1.jpg\",\"products\\/25-1.jpg\"]'),(515,2,13,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/13-1.jpg\",\"products\\/15.jpg\",\"products\\/26.jpg\"]'),(522,10,15,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/15-1.jpg\",\"products\\/26-2.jpg\",\"products\\/27-1.jpg\",\"products\\/28.jpg\"]'),(526,3,29,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/22.jpg\",\"products\\/26-1.jpg\"]'),(529,4,10,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/26.jpg\"]'),(549,1,2,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/16.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\",\"products\\/21.jpg\"]'),(555,5,14,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/10-1.jpg\",\"products\\/18-1.jpg\",\"products\\/21-1.jpg\"]'),(565,4,6,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/9-1.jpg\"]'),(566,10,17,5.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/30-1.jpg\"]'),(583,8,16,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/14-1.jpg\"]'),(586,8,28,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\",\"products\\/8-1.jpg\",\"products\\/13-1.jpg\"]'),(592,7,11,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/8-1.jpg\",\"products\\/14-1.jpg\",\"products\\/17.jpg\"]'),(602,4,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/8.jpg\",\"products\\/21.jpg\",\"products\\/26-2.jpg\",\"products\\/29.jpg\"]'),(608,8,9,5.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\",\"products\\/5-1.jpg\",\"products\\/15.jpg\"]'),(610,5,16,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-1.jpg\",\"products\\/8.jpg\",\"products\\/26-1.jpg\"]'),(620,1,30,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\"]'),(635,1,28,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4.jpg\"]'),(646,4,15,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2.jpg\",\"products\\/22-1.jpg\"]'),(648,3,1,3.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/6.jpg\"]'),(650,2,20,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-3.jpg\",\"products\\/28.jpg\"]'),(657,10,14,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/27-1.jpg\"]'),(666,10,16,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-1.jpg\",\"products\\/4.jpg\",\"products\\/5-3.jpg\",\"products\\/19-1.jpg\"]'),(673,4,25,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-3.jpg\",\"products\\/30-1.jpg\",\"products\\/30.jpg\"]'),(680,6,6,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-2.jpg\",\"products\\/4-1.jpg\",\"products\\/4-3.jpg\",\"products\\/29-1.jpg\"]'),(683,9,20,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3-2.jpg\",\"products\\/14.jpg\",\"products\\/18-2.jpg\",\"products\\/20-1.jpg\"]'),(685,6,22,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11-1.jpg\",\"products\\/30.jpg\"]'),(719,3,2,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-3.jpg\",\"products\\/3-2.jpg\"]'),(722,8,17,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18.jpg\",\"products\\/24-1.jpg\",\"products\\/26-1.jpg\"]'),(726,7,14,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/3.jpg\",\"products\\/9-1.jpg\",\"products\\/16.jpg\",\"products\\/27-1.jpg\"]'),(732,7,30,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5-3.jpg\",\"products\\/9-1.jpg\",\"products\\/13.jpg\"]'),(737,5,4,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/31.jpg\"]'),(740,4,17,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/2-2.jpg\",\"products\\/3-2.jpg\",\"products\\/4-3.jpg\",\"products\\/5-2.jpg\"]'),(746,8,25,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/4-2.jpg\"]'),(755,2,18,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/7.jpg\",\"products\\/12.jpg\",\"products\\/14-1.jpg\"]'),(756,5,15,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/6-1.jpg\",\"products\\/29.jpg\"]'),(761,6,13,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/11.jpg\",\"products\\/14-1.jpg\"]'),(768,7,7,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/27-1.jpg\"]'),(773,1,18,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/1-2.jpg\",\"products\\/26-1.jpg\"]'),(806,6,26,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/19-1.jpg\"]'),(816,4,27,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\"]'),(839,6,4,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/18-1.jpg\",\"products\\/20.jpg\",\"products\\/23.jpg\"]'),(855,3,7,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/21.jpg\",\"products\\/30-1.jpg\"]'),(859,6,3,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/19.jpg\",\"products\\/30.jpg\"]'),(928,1,24,2.00,'Clean & perfect source code','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/5.jpg\"]'),(946,7,5,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:26:38','2024-02-24 01:26:38','[\"products\\/22-1.jpg\",\"products\\/24.jpg\",\"products\\/27-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-02-10 17:26:38','2024-02-10 17:26:38','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-02-22 09:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(3,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,1,1,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2024-02-14 13:26:39','2024-02-14 13:26:39','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2024-02-22 11:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2024-02-12 01:26:39','2024-02-12 01:26:39','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2024-02-22 13:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2024-02-15 13:26:39','2024-02-15 13:26:39','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2024-02-22 15:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2024-02-13 09:26:39','2024-02-13 09:26:39','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2024-02-22 17:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\ACL\\Models\\User'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2024-02-16 13:26:39','2024-02-16 13:26:39','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2024-02-22 19:26:40','2024-02-24 01:26:40','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2024-02-24 01:26:40','2024-02-24 01:26:40','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2024-02-18 05:26:40','2024-02-18 05:26:40','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2024-02-22 21:26:40','2024-02-24 01:26:40','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2024-02-14 07:26:40','2024-02-14 07:26:40','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2024-02-22 23:26:40','2024-02-24 01:26:40','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2024-02-17 01:26:40','2024-02-17 01:26:40','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2024-02-23 01:26:40','2024-02-24 01:26:40','Botble\\ACL\\Models\\User'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2024-02-22 05:26:40','2024-02-22 05:26:40','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2024-02-23 03:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(27,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2024-02-17 09:26:41','2024-02-17 09:26:41','Botble\\ACL\\Models\\User'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2024-02-23 05:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(29,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2024-02-21 01:26:41','2024-02-21 01:26:41','Botble\\ACL\\Models\\User'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2024-02-23 07:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(32,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2024-02-19 09:26:41','2024-02-19 09:26:41','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2024-02-23 09:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2024-02-22 21:26:41','2024-02-22 21:26:41','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2024-02-23 11:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2024-02-20 01:26:41','2024-02-20 01:26:41','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2024-02-23 13:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2024-02-22 19:26:41','2024-02-22 19:26:41','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2024-02-23 15:26:42','2024-02-24 01:26:42','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,16,'2024-02-24 01:26:42','2024-02-24 01:26:42','Botble\\ACL\\Models\\User'),(42,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2024-02-23 17:26:42','2024-02-23 17:26:42','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2024-02-23 17:26:42','2024-02-24 01:26:42','Botble\\ACL\\Models\\User'),(44,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2024-02-23 13:26:42','2024-02-23 13:26:42','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2024-02-23 19:26:42','2024-02-24 01:26:42','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2024-02-22 13:26:42','2024-02-22 13:26:42','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2024-02-23 21:26:42','2024-02-24 01:26:42','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2024-02-23 23:26:42','2024-02-23 23:26:42','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2024-02-23 23:26:42','2024-02-24 01:26:42','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,4624.00,NULL,NULL,'','delivered',1215.50,'completed','pending',0.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','JJD0056034671','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:26:39','2024-02-24 08:26:39',NULL,NULL),(2,2,NULL,4430.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','JJD0084731814','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 08:26:39',NULL,NULL,NULL),(3,3,NULL,5446.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','JJD0029185821','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:26:39',NULL,NULL,NULL),(4,4,NULL,4190.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','JJD0074835001','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 08:26:39','2024-02-24 08:26:39',NULL,NULL),(5,5,NULL,6555.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:39','2024-02-24 01:26:39','JJD0063927249','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:26:39','2024-02-24 08:26:39',NULL,NULL),(6,6,NULL,5957.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','JJD0059525083','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 08:26:40','2024-02-24 08:26:40',NULL,NULL),(7,7,NULL,4224.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','JJD0035741672','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 08:26:40',NULL,NULL,NULL),(8,8,NULL,4128.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','JJD0048046799','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:26:40',NULL,NULL,NULL),(9,9,NULL,4125.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:40','2024-02-24 01:26:40','JJD0092440342','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 08:26:40',NULL,NULL,NULL),(10,10,NULL,7788.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','JJD0031197287','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 08:26:41','2024-02-24 08:26:41',NULL,NULL),(11,11,NULL,4732.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','JJD0076678755','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 08:26:41',NULL,NULL,NULL),(12,12,NULL,3573.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','JJD0031468627','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 08:26:41','2024-02-24 08:26:41',NULL,NULL),(13,13,NULL,2997.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','JJD0026760524','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:26:41',NULL,NULL,NULL),(14,14,NULL,2904.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','JJD0045291493','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 08:26:41',NULL,NULL,NULL),(15,15,NULL,4227.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:41','2024-02-24 01:26:41','JJD0014464200','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:26:41','2024-02-24 08:26:41',NULL,NULL),(16,16,NULL,5601.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','JJD004326036','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:26:42','2024-02-24 08:26:42',NULL,NULL),(17,17,NULL,2669.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','JJD0063575376','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:26:42',NULL,NULL,NULL),(18,18,NULL,3948.00,NULL,NULL,'','approved',567.45,'pending','pending',0.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','JJD0096593660','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:26:42',NULL,NULL,NULL),(19,19,NULL,4185.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','JJD0085119386','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:26:42',NULL,NULL,NULL),(20,20,NULL,5475.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:26:42','2024-02-24 01:26:42','JJD002564378','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:26:42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-02-24 01:26:38','2024-02-24 01:26:38');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-02-24 01:26:38','2024-02-24 01:26:38');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(2,'None',0.000000,2,'published','2024-02-24 01:26:38','2024-02-24 01:26:38'),(3,'Import Tax',15.000000,3,'published','2024-02-24 01:26:38','2024-02-24 01:26:38');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-02-24 01:26:44','2024-02-24 01:26:44',NULL),(2,'Payment',1,'published','2024-02-24 01:26:44','2024-02-24 01:26:44',NULL),(3,'Order &amp; Returns',2,'published','2024-02-24 01:26:44','2024-02-24 01:26:44',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','77be59d560c149bebcf24a561729efd9',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','b92fad91dc024174cf6146e90ca60ead',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','ba21859b94686efb943ec08c0413ddf9',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','8f02f9f3a462d4a282f2fbf31004974d',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','9440b0805a25ea73c900330d1a356afc',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','9fe078ca9cc9ebea87c24590b3b33326',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',9803,'brands/1.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(2,0,'2','2',1,'image/png',9803,'brands/2.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(3,0,'3','3',1,'image/png',9803,'brands/3.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(4,0,'4','4',1,'image/png',9803,'brands/4.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(5,0,'5','5',1,'image/png',9803,'brands/5.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(6,0,'6','6',1,'image/png',9803,'brands/6.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(7,0,'7','7',1,'image/png',9803,'brands/7.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(8,0,'p-1','p-1',2,'image/png',9803,'product-categories/p-1.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(9,0,'p-2','p-2',2,'image/png',9803,'product-categories/p-2.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(10,0,'p-3','p-3',2,'image/png',9803,'product-categories/p-3.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(11,0,'p-4','p-4',2,'image/png',9803,'product-categories/p-4.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(12,0,'p-5','p-5',2,'image/png',9803,'product-categories/p-5.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(13,0,'p-6','p-6',2,'image/png',9803,'product-categories/p-6.png','[]','2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(14,0,'p-7','p-7',2,'image/png',9803,'product-categories/p-7.png','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(15,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(16,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(17,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(18,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(19,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(20,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(21,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(22,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(23,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(24,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(25,0,'1-1','1-1',4,'image/jpeg',9803,'products/1-1.jpg','[]','2024-02-24 01:26:31','2024-02-24 01:26:31',NULL),(26,0,'1-2','1-2',4,'image/jpeg',9803,'products/1-2.jpg','[]','2024-02-24 01:26:31','2024-02-24 01:26:31',NULL),(27,0,'1-3','1-3',4,'image/jpeg',9803,'products/1-3.jpg','[]','2024-02-24 01:26:31','2024-02-24 01:26:31',NULL),(28,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2024-02-24 01:26:31','2024-02-24 01:26:31',NULL),(29,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(30,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(31,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(32,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(33,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(37,0,'14-1','14-1',4,'image/jpeg',9803,'products/14-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(38,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(39,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(40,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(41,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(42,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(43,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(44,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(45,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(46,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(47,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2024-02-24 01:26:32','2024-02-24 01:26:32',NULL),(48,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(49,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(50,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(51,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(52,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(53,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(54,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(55,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(56,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(57,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(58,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(59,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(60,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(61,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(62,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(63,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(64,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(65,0,'26-2','26-2',4,'image/jpeg',9803,'products/26-2.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(66,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2024-02-24 01:26:33','2024-02-24 01:26:33',NULL),(67,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(68,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(69,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(70,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(71,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(72,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(73,0,'3-1','3-1',4,'image/jpeg',9803,'products/3-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(74,0,'3-2','3-2',4,'image/jpeg',9803,'products/3-2.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(75,0,'3-3','3-3',4,'image/jpeg',9803,'products/3-3.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(76,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(77,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(78,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(79,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(80,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(81,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(82,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(83,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(84,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(85,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(86,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2024-02-24 01:26:34','2024-02-24 01:26:34',NULL),(87,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(88,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(89,0,'6-1','6-1',4,'image/jpeg',9803,'products/6-1.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(90,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(91,0,'7-1','7-1',4,'image/jpeg',9803,'products/7-1.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(92,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(93,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(94,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(95,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(96,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2024-02-24 01:26:35','2024-02-24 01:26:35',NULL),(97,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2024-02-24 01:26:42','2024-02-24 01:26:42',NULL),(98,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2024-02-24 01:26:42','2024-02-24 01:26:42',NULL),(99,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(100,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(101,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(102,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(103,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(104,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(105,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(106,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(107,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(108,0,'1','1',6,'image/jpeg',9803,'testimonials/1.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(109,0,'2','2',6,'image/jpeg',9803,'testimonials/2.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(110,0,'3','3',6,'image/jpeg',9803,'testimonials/3.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(111,0,'4','4',6,'image/jpeg',9803,'testimonials/4.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(112,0,'1','1',7,'image/jpeg',11475,'sliders/1.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(113,0,'2','2',7,'image/jpeg',11475,'sliders/2.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(114,0,'3','3',7,'image/jpeg',11475,'sliders/3.jpg','[]','2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(115,0,'american-express','american-express',8,'image/png',2381,'general/american-express.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(116,0,'b-1','b-1',8,'image/jpeg',6042,'general/b-1.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(117,0,'b-2','b-2',8,'image/jpeg',6042,'general/b-2.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(118,0,'b-3','b-3',8,'image/jpeg',6042,'general/b-3.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(119,0,'discover','discover',8,'image/png',1711,'general/discover.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(120,0,'favicon','favicon',8,'image/png',960,'general/favicon.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(121,0,'furniture-banner3','furniture-banner3',8,'image/jpeg',26362,'general/furniture-banner3.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(122,0,'insta-1','insta-1',8,'image/jpeg',1556,'general/insta-1.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(123,0,'logo-light','logo-light',8,'image/png',3145,'general/logo-light.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(124,0,'logo','logo',8,'image/png',3306,'general/logo.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(125,0,'master-card','master-card',8,'image/png',2540,'general/master-card.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(126,0,'newsletter','newsletter',8,'image/jpeg',5748,'general/newsletter.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(127,0,'paypal','paypal',8,'image/png',1937,'general/paypal.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(128,0,'visa','visa',8,'image/png',2041,'general/visa.png','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(129,0,'1','1',9,'image/jpeg',13645,'promotion/1.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(130,0,'10','10',9,'image/jpeg',19195,'promotion/10.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(131,0,'2','2',9,'image/jpeg',13930,'promotion/2.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(132,0,'3','3',9,'image/jpeg',16561,'promotion/3.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(133,0,'4','4',9,'image/jpeg',17689,'promotion/4.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(134,0,'5','5',9,'image/jpeg',17665,'promotion/5.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(135,0,'6','6',9,'image/jpeg',8445,'promotion/6.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(136,0,'7','7',9,'image/jpeg',8675,'promotion/7.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(137,0,'8','8',9,'image/jpeg',9228,'promotion/8.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(138,0,'9','9',9,'image/jpeg',11178,'promotion/9.jpg','[]','2024-02-24 01:26:45','2024-02-24 01:26:45',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-02-24 01:26:27','2024-02-24 01:26:27',NULL),(3,0,'customers',NULL,'customers',0,'2024-02-24 01:26:28','2024-02-24 01:26:28',NULL),(4,0,'products',NULL,'products',0,'2024-02-24 01:26:31','2024-02-24 01:26:31',NULL),(5,0,'news',NULL,'news',0,'2024-02-24 01:26:42','2024-02-24 01:26:42',NULL),(6,0,'testimonials',NULL,'testimonials',0,'2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(7,0,'sliders',NULL,'sliders',0,'2024-02-24 01:26:43','2024-02-24 01:26:43',NULL),(8,0,'general',NULL,'general',0,'2024-02-24 01:26:45','2024-02-24 01:26:45',NULL),(9,0,'promotion',NULL,'promotion',0,'2024-02-24 01:26:45','2024-02-24 01:26:45',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,1,1,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,1,1,10,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Homepage 2',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,1,1,11,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Homepage 3',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(5,1,1,12,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Homepage 4',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(6,1,1,13,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Homepage 5',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(7,1,1,14,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Homepage 6',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(8,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(9,1,0,NULL,NULL,'#',NULL,0,'Shop',NULL,'_self',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(10,1,9,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Product Category',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(11,1,9,1,'Botble\\Ecommerce\\Models\\Brand','/brands/fashion-live',NULL,0,'Brand',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(12,1,9,1,'Botble\\Ecommerce\\Models\\ProductTag','/product-tags/electronic',NULL,0,'Product Tag',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(13,1,9,NULL,NULL,'products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(14,1,0,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(15,1,14,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(16,1,14,1,'Botble\\Blog\\Models\\Category','/blog/ecommerce',NULL,0,'Blog Category',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(17,1,14,1,'Botble\\Blog\\Models\\Tag','/tag/general',NULL,0,'Blog Tag',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(18,1,14,NULL,NULL,'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Blog Single',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(19,1,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(20,1,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(21,2,0,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(22,2,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(23,2,0,6,'Botble\\Page\\Models\\Page','/location',NULL,0,'Location',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(24,2,0,7,'Botble\\Page\\Models\\Page','/affiliates',NULL,0,'Affiliates',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(25,2,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(26,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Television',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(27,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Mobile',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(28,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Headphone',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(29,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Watches',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(30,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Game',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:45'),(31,4,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(32,4,0,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(33,4,0,NULL,NULL,'customer/orders',NULL,0,'Orders',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(34,4,0,NULL,NULL,'/orders/tracking',NULL,0,'Order tracking',NULL,'_self',0,'2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,'Useful Links','useful-links','published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,'Categories','categories','published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,'My Account','my-account','published','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(3,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(5,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:35','2024-02-24 01:26:35'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:26:36','2024-02-24 01:26:36'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-24 01:26:44','2024-02-24 01:26:44'),(33,'sub_title','[\"New Tranding\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-24 01:26:44','2024-02-24 01:26:44'),(34,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-24 01:26:44','2024-02-24 01:26:44'),(35,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2020_11_18_150916_ads_create_ads_table',2),(34,'2021_12_02_035301_add_ads_translations_table',2),(35,'2023_04_17_062645_add_open_in_new_tab',2),(36,'2023_11_07_023805_add_tablet_mobile_image',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2015_06_18_033822_create_blog_table',4),(40,'2021_02_16_092633_remove_default_value_for_author_type',4),(41,'2021_12_03_030600_create_blog_translations',4),(42,'2022_04_19_113923_add_index_to_table_posts',4),(43,'2023_08_29_074620_make_column_author_id_nullable',4),(44,'2016_06_17_091537_create_contacts_table',5),(45,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(46,'2020_03_05_041139_create_ecommerce_tables',6),(47,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(48,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(49,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(50,'2021_02_18_073505_update_table_ec_reviews',6),(51,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(52,'2021_03_10_025153_change_column_tax_amount',6),(53,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(54,'2021_04_28_074008_ecommerce_create_product_label_table',6),(55,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(56,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(57,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(58,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(59,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(60,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(61,'2021_11_23_071403_correct_languages_for_product_variations',6),(62,'2021_11_28_031808_add_product_tags_translations',6),(63,'2021_12_01_031123_add_featured_image_to_ec_products',6),(64,'2022_01_01_033107_update_table_ec_shipments',6),(65,'2022_02_16_042457_improve_product_attribute_sets',6),(66,'2022_03_22_075758_correct_product_name',6),(67,'2022_04_19_113334_add_index_to_ec_products',6),(68,'2022_04_28_144405_remove_unused_table',6),(69,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(70,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(71,'2022_06_16_095633_add_index_to_some_tables',6),(72,'2022_06_30_035148_create_order_referrals_table',6),(73,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(74,'2022_08_14_032836_create_ec_order_returns_table',6),(75,'2022_08_14_033554_create_ec_order_return_items_table',6),(76,'2022_08_15_040324_add_billing_address',6),(77,'2022_08_30_091114_support_digital_products_table',6),(78,'2022_09_13_095744_create_options_table',6),(79,'2022_09_13_104347_create_option_value_table',6),(80,'2022_10_05_163518_alter_table_ec_order_product',6),(81,'2022_10_12_041517_create_invoices_table',6),(82,'2022_10_12_142226_update_orders_table',6),(83,'2022_10_13_024916_update_table_order_returns',6),(84,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(85,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(86,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(87,'2022_11_19_041643_add_ec_tax_product_table',6),(88,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(89,'2022_12_17_041532_fix_address_in_order_invoice',6),(90,'2022_12_26_070329_create_ec_product_views_table',6),(91,'2023_01_04_033051_fix_product_categories',6),(92,'2023_01_09_050400_add_ec_global_options_translations_table',6),(93,'2023_01_10_093754_add_missing_option_value_id',6),(94,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(95,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(96,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(97,'2023_02_27_095752_remove_duplicate_reviews',6),(98,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(99,'2023_04_21_082427_create_ec_product_categorizables_table',6),(100,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(101,'2023_05_17_025812_fix_invoice_issue',6),(102,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(103,'2023_05_27_144611_fix_exchange_rate_setting',6),(104,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(105,'2023_06_30_042512_create_ec_order_tax_information_table',6),(106,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(107,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(108,'2023_08_15_064505_create_ec_tax_rules_table',6),(109,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(110,'2023_08_22_094114_drop_unique_for_barcode',6),(111,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(112,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(113,'2023_09_19_024955_create_discount_product_categories_table',6),(114,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(115,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(116,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(117,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(118,'2023_12_25_040604_ec_create_review_replies_table',6),(119,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(120,'2024_01_16_070706_fix_translation_tables',6),(121,'2024_01_23_075227_add_proof_file_to_ec_orders_table',6),(122,'2018_07_09_221238_create_faq_table',7),(123,'2021_12_03_082134_create_faq_translations',7),(124,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(125,'2016_10_03_032336_create_languages_table',8),(126,'2023_09_14_022423_add_index_for_language_table',8),(127,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(128,'2021_12_03_075608_create_page_translations',9),(129,'2023_07_06_011444_create_slug_translations_table',9),(130,'2019_11_18_061011_create_country_table',10),(131,'2021_12_03_084118_create_location_translations',10),(132,'2021_12_03_094518_migrate_old_location_data',10),(133,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(134,'2022_01_16_085908_improve_plugin_location',10),(135,'2022_08_04_052122_delete_location_backup_tables',10),(136,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(137,'2023_07_26_041451_add_more_columns_to_location_table',10),(138,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(139,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(140,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(141,'2017_10_24_154832_create_newsletter_table',11),(142,'2017_05_18_080441_create_payment_tables',12),(143,'2021_03_27_144913_add_customer_type_into_table_payments',12),(144,'2021_05_24_034720_make_column_currency_nullable',12),(145,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(146,'2021_10_19_020859_update_metadata_field',12),(147,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(148,'2022_07_07_153354_update_charge_id_in_table_payments',12),(149,'2017_07_11_140018_create_simple_slider_table',13),(150,'2018_07_09_214610_create_testimonial_table',14),(151,'2021_12_03_083642_create_testimonials_translations',14),(152,'2016_10_07_193005_create_translations_table',15),(153,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider with_product_categories=\"\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,'Contact us','<div>[contact-form][/contact-form]</div><div>[google-map]959 Homestead Street Eastlake, NYC[/google-map]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(4,'About us','<p>Queen of Hearts, who only bowed and smiled in reply. \'Please come back with the grin, which remained some time after the candle is like after the others. \'We must burn the house before she had known them all her coaxing. Hardly knowing what she was small enough to get dry very soon. \'Ahem!\' said the King, who had been looking at the righthand bit again, and that\'s very like a Jack-in-the-box, and up the conversation dropped, and the Hatter grumbled: \'you shouldn\'t have put it right; \'not that.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(5,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(6,'Location','<p>I\'m mad?\' said Alice. \'Of course you don\'t!\' the Hatter went on, \'\"--found it advisable to go on for some time after the candle is like after the rest waited in silence. At last the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to avoid shrinking away altogether. \'That WAS a curious croquet-ground in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse only growled in reply. \'Please come back and finish your story!\' Alice.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(7,'Affiliates','<p>Alice did not appear, and after a pause: \'the reason is, that there\'s any one of them at dinn--\' she checked herself hastily, and said anxiously to herself, as she couldn\'t answer either question, it didn\'t sound at all what had become of me? They\'re dreadfully fond of pretending to be managed? I suppose I ought to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice. \'Why not?\' said the Mock Turtle. \'And how many miles I\'ve fallen by this time). \'Don\'t.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(8,'Brands','<p>[all-brands][/all-brands]</p>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(10,'Homepage 2','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale style=\"style-2\" title=\"Deal Of The Days\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks featured_product_title=\"Featured Products\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Subscribe Our Newsletter\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(11,'Homepage 3','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Worldwide\" icon2=\"flaticon-money-back\" title2=\"Money Returns\" subtitle2=\"30 Days money return\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Customer Support\" icon4=\"flaticon-lock\" title4=\"Payment Security\" subtitle4=\"Safe Payment\"][/our-features]</div><div>[product-blocks featured_product_title=\"Exclusive Products\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products style=\"style-3\" title=\"Trending Items\"][/trending-products]</div><div>[instagram title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands style=\"style-3\" title=\"Our Brands\"][/featured-brands]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(12,'Homepage 4','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories style=\"style-4\" link=\"products\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products style=\"style-4\" number_of_displays=\"8\" title=\"Our Top Products\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Big Sale Deal\" description=\"Sale 40% Off\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks style=\"style-4\" on_sale_product_title=\"Special Offers\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news title=\"Latest News\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(13,'Homepage 5','<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[trending-products ads_key=\"YKE9S2TUEEJB\" title=\"Trending Products\"][/trending-products]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44'),(14,'Homepage 6','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections style=\"style-6\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[featured-brands title=\"Our Brands\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'GPNASR8DSZ','cod',NULL,1215.50,1,'pending','confirm',8,NULL,NULL,'2024-02-24 01:26:38','2024-02-24 01:26:38','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'BGFEB8BQFW','paypal',NULL,1222.20,2,'completed','confirm',10,NULL,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'42VAXCYBYR','sslcommerz',NULL,907.73,3,'completed','confirm',9,NULL,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'1INAOB4HMI','paystack',NULL,1678.40,4,'completed','confirm',3,NULL,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'ZJOFSR5LLT','stripe',NULL,1134.40,5,'completed','confirm',2,NULL,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'PEHBQROXGJ','sslcommerz',NULL,1652.20,6,'completed','confirm',5,NULL,NULL,'2024-02-24 01:26:39','2024-02-24 01:26:39','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'XHXCINQL4C','bank_transfer',NULL,655.80,7,'pending','confirm',6,NULL,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'RL06B1AJZZ','sslcommerz',NULL,462.33,8,'completed','confirm',2,NULL,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'6YDETERLJK','bank_transfer',NULL,718.10,9,'pending','confirm',3,NULL,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'PRG46DCFAY','mollie',NULL,877.15,10,'completed','confirm',3,NULL,NULL,'2024-02-24 01:26:40','2024-02-24 01:26:40','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'HUWSIK7V3W','razorpay',NULL,579.63,11,'completed','confirm',10,NULL,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'K774IXWZ6P','paypal',NULL,290.78,12,'completed','confirm',4,NULL,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'FC5EFSDNWU','bank_transfer',NULL,1412.20,13,'pending','confirm',2,NULL,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'63KYKACNLW','stripe',NULL,359.10,14,'completed','confirm',6,NULL,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'EBJJZOKKFV','razorpay',NULL,542.50,15,'completed','confirm',5,NULL,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'EDQ26SGYYG','bank_transfer',NULL,642.30,16,'pending','confirm',3,NULL,NULL,'2024-02-24 01:26:41','2024-02-24 01:26:41','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'SH9TL7OSYS','paypal',NULL,303.05,17,'completed','confirm',3,NULL,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'3TXH0IY3IU','cod',NULL,567.45,18,'pending','confirm',1,NULL,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'HU4SCFVHUR','bank_transfer',NULL,731.60,19,'pending','confirm',8,NULL,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'OIREZOPMZC','paystack',NULL,620.10,20,'completed','confirm',5,NULL,NULL,'2024-02-24 01:26:42','2024-02-24 01:26:42','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(4,1),(1,2),(3,2),(2,3),(4,3),(1,4),(3,4),(1,5),(4,5),(2,6),(3,6),(2,7),(3,7),(1,8),(4,8),(2,9),(4,9),(1,10),(4,10),(2,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',285,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1189,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1203,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',980,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1075,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2467,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1865,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2289,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',501,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',862,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1427,NULL,'2024-02-24 01:26:43','2024-02-24 01:26:43');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-02-24 01:26:44'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-02-24 01:26:44'),(8,'language_hide_default','1',NULL,'2024-02-24 01:26:44'),(10,'language_display','all',NULL,'2024-02-24 01:26:44'),(11,'language_hide_languages','[]',NULL,'2024-02-24 01:26:44'),(12,'media_random_hash','fbbb40441b642d8a852d96d80a086e63',NULL,NULL),(13,'payment_cod_status','1',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'theme','shopwise',NULL,NULL),(16,'show_admin_bar','1',NULL,NULL),(17,'language_switcher_display','dropdown',NULL,NULL),(18,'admin_favicon','general/favicon.png',NULL,NULL),(19,'admin_logo','general/logo-light.png',NULL,NULL),(20,'permalink-botble-blog-models-post','blog',NULL,NULL),(21,'permalink-botble-blog-models-category','blog',NULL,NULL),(22,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(29,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,NULL),(30,'ecommerce_product_sku_format','SW-2443-[%S]',NULL,NULL),(31,'simple_slider_using_assets','0',NULL,NULL),(32,'ecommerce_store_name','Shopwise',NULL,NULL),(33,'ecommerce_store_phone','123-456-7890',NULL,NULL),(34,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(35,'ecommerce_store_state','New York',NULL,NULL),(36,'ecommerce_store_city','New York',NULL,NULL),(37,'ecommerce_store_country','US',NULL,NULL),(38,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,NULL),(39,'theme-shopwise-seo_description','Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',NULL,NULL),(40,'theme-shopwise-copyright','© 2024 Botble Technologies. All Rights Reserved.',NULL,NULL),(41,'theme-shopwise-favicon','general/favicon.png',NULL,NULL),(42,'theme-shopwise-logo','general/logo.png',NULL,NULL),(43,'theme-shopwise-logo_footer','general/logo-light.png',NULL,NULL),(44,'theme-shopwise-address','959 Homestead Street Eastlake, NYC',NULL,NULL),(45,'theme-shopwise-hotline','123-456-7890',NULL,NULL),(46,'theme-shopwise-email','info@sitename.com',NULL,NULL),(47,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,NULL),(48,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,NULL),(49,'theme-shopwise-homepage_id','1',NULL,NULL),(50,'theme-shopwise-blog_page_id','3',NULL,NULL),(51,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(52,'theme-shopwise-cookie_consent_learn_more_url','https://shopwise.test/cookie-policy',NULL,NULL),(53,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(54,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,NULL),(58,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg','products','Get up to 50% off Today Only!',1,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(2,1,'Man Fashion','sliders/2.jpg','products','50% off in all products',2,'2024-02-24 01:26:44','2024-02-24 01:26:44'),(3,1,'Summer Sale','sliders/3.jpg','products','Taking your Viewing Experience to Next Level',3,'2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2024-02-24 01:26:44','2024-02-24 01:26:44');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:26:27','2024-02-24 01:26:27'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:26:28','2024-02-24 01:26:28'),(42,'smart-home-speaker-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:45'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(45,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(46,'camera-hikvision-hk-35vs8-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:46'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(49,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(50,'macbook-pro-2015-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:46'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(53,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(54,'apple-keyboard-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:46'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(57,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(58,'cool-smart-watches-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:46'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(61,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(62,'historic-alarm-clock-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:46'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:35','2024-02-24 01:26:35'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(65,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(66,'dual-camera-20mp-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:46'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(69,'red-black-headphone',28,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(70,'audio-equipment-digital',29,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:46'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:36','2024-02-24 01:26:36'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:26:38','2024-02-24 01:26:38'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:26:38','2024-02-24 01:26:38'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:26:38','2024-02-24 01:26:38'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:26:38','2024-02-24 01:26:38'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:26:38','2024-02-24 01:26:38'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:26:38','2024-02-24 01:26:38'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:26:43','2024-02-24 01:26:43'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:26:43','2024-02-24 01:26:43'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:26:43','2024-02-24 01:26:43'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:26:43','2024-02-24 01:26:43'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:26:43','2024-02-24 01:26:43'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:26:43','2024-02-24 01:26:44'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(104,'location',6,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(108,'homepage-2',10,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(109,'homepage-3',11,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(110,'homepage-4',12,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(111,'homepage-5',13,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(112,'homepage-6',14,'Botble\\Page\\Models\\Page','','2024-02-24 01:26:44','2024-02-24 01:26:44'),(113,'smart-home-speaker-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(114,'smart-home-speaker-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(115,'headphone-ultra-bass',34,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(116,'headphone-ultra-bass',35,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(117,'headphone-ultra-bass',36,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(118,'boxed-bluetooth-headphone',37,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(119,'boxed-bluetooth-headphone',38,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(120,'chikie-bluetooth-speaker',39,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(121,'chikie-bluetooth-speaker',40,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(122,'chikie-bluetooth-speaker',41,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(123,'chikie-bluetooth-speaker',42,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(124,'camera-hikvision-hk-35vs8-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(125,'camera-hikvision-hk-35vs8-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(126,'camera-hikvision-hk-35vs8-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(127,'camera-samsung-ss-24',46,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(128,'leather-watch-band',47,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(129,'leather-watch-band',48,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(130,'leather-watch-band',49,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(131,'leather-watch-band',50,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(132,'apple-iphone-13-plus',51,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(133,'apple-iphone-13-plus',52,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(134,'apple-iphone-13-plus',53,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(135,'macbook-pro-2015-digital',54,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(136,'macbook-pro-2015-digital',55,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(137,'macbook-pro-2015-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(138,'macbook-air-12-inch',57,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(139,'macbook-air-12-inch',58,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(140,'apple-watch-serial-7',59,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(141,'apple-watch-serial-7',60,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(142,'macbook-pro-13-inch',61,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(143,'apple-keyboard-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(144,'apple-keyboard-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(145,'apple-keyboard-digital',64,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(146,'apple-keyboard-digital',65,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(147,'apple-keyboard-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(148,'macsafe-80w',67,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(149,'macsafe-80w',68,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(150,'hand-playstation',69,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(151,'hand-playstation',70,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(152,'apple-airpods-serial-3',71,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(153,'cool-smart-watches-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(154,'cool-smart-watches-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(155,'black-smart-watches',74,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(156,'black-smart-watches',75,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(157,'leather-watch-band-serial-3',76,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(158,'leather-watch-band-serial-3',77,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(159,'leather-watch-band-serial-3',78,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(160,'macbook-pro-2015-13-inch',79,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(161,'macbook-pro-2015-13-inch',80,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(162,'historic-alarm-clock-digital',81,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(163,'historic-alarm-clock-digital',82,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(164,'black-glasses',83,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(165,'black-glasses',84,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(166,'black-glasses',85,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(167,'black-glasses',86,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(168,'phillips-mouse',87,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(169,'phillips-mouse',88,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(170,'gaming-keyboard',89,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(171,'gaming-keyboard',90,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(172,'gaming-keyboard',91,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(173,'gaming-keyboard',92,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(174,'dual-camera-20mp-digital',93,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(175,'dual-camera-20mp-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(176,'dual-camera-20mp-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(177,'dual-camera-20mp-digital',96,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(178,'dual-camera-20mp-digital',97,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(179,'smart-watches',98,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(180,'smart-watches',99,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(181,'smart-watches',100,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(182,'beat-headphone',101,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(183,'beat-headphone',102,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(184,'beat-headphone',103,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(185,'red-black-headphone',104,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(186,'red-black-headphone',105,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(187,'red-black-headphone',106,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(188,'audio-equipment-digital',107,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(189,'audio-equipment-digital',108,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(190,'audio-equipment-digital',109,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(191,'smart-televisions',110,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(192,'smart-televisions',111,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(193,'samsung-smart-tv',112,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46'),(194,'samsung-smart-tv',113,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:26:46','2024-02-24 01:26:46');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:26:43','2024-02-24 01:26:43');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2024-02-24 01:26:43','2024-02-24 01:26:43'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2024-02-24 01:26:43','2024-02-24 01:26:43');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'eleonore70@miller.biz',NULL,'$2y$12$brut4m2S.kj.olmAZ7sASOcMdaveoens5omJG7mgQcXFn/IwzbZXu',NULL,'2024-02-24 01:26:44','2024-02-24 01:26:44','Tremayne','Emard','botble',NULL,1,1,NULL,NULL),(2,'cheyenne.sporer@lemke.biz',NULL,'$2y$12$kMXtcjEs9O/p4cv/E.ZF9.o7H5yP4rL2xk6QEo7oi5.oY.nqIYidq',NULL,'2024-02-24 01:26:44','2024-02-24 01:26:44','Miguel','Stoltenberg','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2024-02-24 01:26:45','2024-02-24 01:26:45'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2024-02-24 01:26:45','2024-02-24 01:26:45'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-02-24 01:26:45','2024-02-24 01:26:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-24 15:26:47
