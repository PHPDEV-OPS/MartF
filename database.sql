-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'mLYti8hI7OyjG44NMU1FdCWRNX2WBzSZ',1,'2025-01-17 18:10:36','2025-01-17 18:10:36','2025-01-17 18:10:36');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2030-01-18 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(2,'Top Slider Image 2','2030-01-18 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 1','2030-01-18 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 2','2030-01-18 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(5,'Homepage middle 3','2030-01-18 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(6,'Homepage big 1','2030-01-18 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(7,'Homepage bottom small','2030-01-18 00:00:00','not_set','SWCKRVZ9HKCC','promotion/7.jpg','/products',0,7,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(8,'Product sidebar','2030-01-18 00:00:00','product-sidebar','3M4LHPSMFG4O','promotion/8.jpg','/products',0,8,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL),(9,'Homepage big 2','2030-01-18 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
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
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Aut velit quod est officia occaecati ducimus qui. Eos occaecati recusandae voluptates repellendus qui id voluptas. Iure ad eos rerum ratione earum perferendis. Voluptatem voluptate eveniet omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(2,'Fashion',0,'Eum rem inventore at. Quia sunt doloribus et officia eligendi. Est cum quia unde dolores. Labore consequatur quidem repudiandae et beatae molestiae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(3,'Electronic',0,'Ut et sequi illum similique iste. Non ipsum illo et aperiam inventore. Maxime minima sit ad repudiandae aliquam incidunt minus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(4,'Commercial',0,'Expedita recusandae nihil natus ea. Quia aut non sunt sapiente labore. In eaque quis voluptatem. Praesentium quo ab quo nam et alias voluptatibus. Et ut illum sed.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-17 18:10:38','2025-01-17 18:10:38');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Mrs. Lavina Wolf','gleason.carrie@example.org','1-283-828-5109','553 Claire Plains\nWolffborough, DC 10892','Sit cupiditate iure at fugit.','Modi sed et accusamus. Asperiores reprehenderit consequuntur eos aut dolores illo qui. Accusantium soluta et aut eos. Magni sit ut distinctio nesciunt ut qui. Optio saepe quaerat possimus inventore adipisci magni aliquid. Ab ea sed temporibus cupiditate iste explicabo dolorem. Dolores provident molestiae qui hic explicabo fuga quia. Qui voluptas repellat modi quia porro. Eius dolorem at aspernatur ut est praesentium quasi. Cupiditate animi vel dolor reprehenderit eum.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(2,'Ignacio Smith','jerrold.mosciski@example.com','239.576.7740','437 Herzog Ford Apt. 824\nWest Florineburgh, NV 08344','Et ut unde ratione.','A quis non sit voluptatibus unde. Rerum fugiat sed suscipit temporibus illum nostrum. Deleniti natus quisquam earum. Aliquid similique explicabo ratione omnis rem. Voluptatem sit rem dolores odit sit voluptatem alias. Quod animi voluptatibus et atque. Dicta dolore eligendi et nam odit. Quibusdam cum fugiat nobis sequi dolorum voluptas maiores nihil. Et a a sed cum aut itaque.',NULL,'unread','2025-01-17 18:10:35','2025-01-17 18:10:35'),(3,'Ramon Senger','tod.wehner@example.com','(254) 407-8218','647 Andres Burgs\nNorth Delilahtown, UT 25584-3077','Sint nihil aliquid quo harum rerum qui.','Nostrum doloribus distinctio repellendus et pariatur tempore modi. Voluptatem dicta aut ex. Beatae odit necessitatibus sed repellendus ad earum. Est nesciunt cumque facere sit. Incidunt rerum sint rerum voluptas aliquid. Dolores nihil voluptatem hic tempore veritatis. Aperiam et dolorem fugit assumenda. Et quia unde et ea quas maxime. Assumenda ut quasi est. Odit dolor animi odit vero. Quia ullam vitae unde velit commodi quo iusto. Voluptatem amet rerum repudiandae rerum sequi porro quam quo.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(4,'Frederique Rempel','cmcdermott@example.com','978-685-9591','92867 Mosciski Wells Suite 152\nKyleborough, CO 37870-6832','Mollitia reprehenderit modi nihil.','Cupiditate praesentium ratione quod inventore tenetur voluptas ea qui. Dolor sequi nemo voluptatem. Deleniti culpa aut minima fugiat dolor autem ab. Minima voluptatem aut qui distinctio. Cupiditate qui sit nihil autem. Consequatur facilis quis pariatur ratione incidunt explicabo est. Qui ab voluptate earum voluptas temporibus. Quam eum est exercitationem amet dolore. Quod et voluptatem reprehenderit recusandae. Temporibus amet nesciunt ratione iure. Et id molestias ea labore nostrum explicabo.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(5,'Norberto Bernhard','fhalvorson@example.org','+1.669.447.4118','73128 Stefan Burgs Suite 058\nReingerfurt, DE 18649','Tempore sunt quae libero non optio qui debitis.','Praesentium corporis harum autem adipisci deserunt dolorem voluptatem. Quas nobis molestiae sunt commodi aut commodi. Temporibus dolorem iste sit non error fugiat nesciunt ipsam. Ut eum enim aut ex sit. Assumenda vel et ullam vitae. Facere dolores facilis quidem harum. Facere est quis aspernatur ipsa qui ea. Ipsa expedita consectetur quas tenetur qui. Tempore voluptatem et eos sed fuga et. Et dicta facilis sit dolores est excepturi temporibus. Modi porro tempora est. In nihil assumenda nam.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(6,'Vincenza Mitchell III','schuppe.judd@example.org','+19155366110','276 Weimann Extensions Apt. 235\nNew Lloyd, IA 15713-4461','Enim ea minima quas molestiae corporis sapiente.','Quibusdam ut facilis veniam sunt accusamus. Nulla rerum et facilis eum. Consequatur eos est cupiditate eligendi. Iste iusto quasi dolorem nihil enim. Qui accusamus fugiat cupiditate sint aut quidem omnis et. Facere ipsum nemo autem deserunt adipisci. Nihil aut sint ut aut reiciendis sint. Facilis ipsam eum veritatis nostrum voluptate. Facilis laboriosam nisi veniam at enim. Numquam earum at quaerat dolor eos.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(7,'Branson Abshire','rose.rodriguez@example.org','(854) 483-0640','43447 Lueilwitz Ports Suite 728\nPort Aaron, OR 89944-5715','Quis beatae id nulla assumenda.','Mollitia quis quasi nihil voluptatem perspiciatis voluptas. Vel odit dolores libero et assumenda. Impedit molestias impedit nesciunt molestiae excepturi sequi. Fugiat et ut illum. In quisquam voluptates alias qui. Iste quo voluptates voluptate inventore voluptate. Ut ullam dolorem est. Dolorem voluptatem deserunt qui autem. Deserunt rerum quos quia earum non.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(8,'Allison Kuhic','kassandra.torphy@example.com','769.544.6217','122 McDermott Brook Apt. 868\nEast Wernerstad, DE 34010','Quibusdam eum odit blanditiis.','Quam rem non est dolor. Sapiente esse cum non id quasi. Odit et deserunt vel cum et quisquam voluptatem dolor. Aspernatur minus fuga omnis eos ipsa ut. Rerum culpa aut sit odit. Cumque voluptate sequi officia rem. Nihil accusamus minus veniam ea nesciunt aut quia. Neque non soluta illo aut minus enim ut ut. Saepe quidem non quaerat non quos. Nemo aut quis animi non corrupti. Quia similique facilis aperiam quam dolor assumenda inventore.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(9,'Darian Kemmer','ona.koelpin@example.net','+1 (971) 700-1796','810 Franz Tunnel\nTristonstad, LA 99639-5854','Dolores excepturi nesciunt voluptas nihil.','Commodi deleniti ratione ipsam culpa sapiente ut natus quis. Dolor odit totam quia dicta quia nihil est. Iure autem non quam laboriosam corrupti. Natus consequatur nulla aut mollitia. Eum dolores molestiae omnis. Et soluta delectus dicta distinctio itaque pariatur est. Exercitationem quaerat enim ad. Totam et modi consequatur explicabo minus expedita.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35'),(10,'Harmon Paucek','crist.evan@example.net','1-443-848-3396','509 Smith Ridges\nPort Sashaport, HI 19017-9188','Et laborum est culpa aut inventore consequuntur.','Minus adipisci asperiores et officiis et. Reprehenderit reprehenderit aut soluta ducimus culpa a. Blanditiis ipsam enim esse modi. Quae suscipit consequatur adipisci esse. Aut autem iste omnis est eum quia neque. Est velit velit recusandae beatae ipsum est nihil esse. Nobis minus qui ullam delectus non sapiente amet est.',NULL,'read','2025-01-17 18:10:35','2025-01-17 18:10:35');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2025-01-17 18:10:09','2025-01-17 18:10:09');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(2,'EUR','€',0,2,1,0,0.84,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(3,'VND','₫',0,0,2,0,23203,'2025-01-17 18:10:09','2025-01-17 18:10:09'),(4,'NGN','₦',1,2,2,0,895.52,'2025-01-17 18:10:09','2025-01-17 18:10:09');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Mossie Orn Sr.','customer@botble.com','+19109289629','AW','Illinois','Lake Orlandohaven','63404 Betsy Motorway',1,1,'2025-01-17 18:10:26','2025-01-17 18:10:26','21186-6291'),(2,'Mossie Orn Sr.','customer@botble.com','+13419342522','PR','Oregon','Windlerchester','696 Delfina Walk',1,0,'2025-01-17 18:10:26','2025-01-17 18:10:26','91369'),(3,'Damon Roob IV','vendor@botble.com','+17706237031','JM','Minnesota','Port Edgarchester','8615 Haley Walk Suite 694',2,1,'2025-01-17 18:10:26','2025-01-17 18:10:26','14302-3741'),(4,'Damon Roob IV','vendor@botble.com','+19784131585','MX','Louisiana','New Leoton','746 Lelia Parks Apt. 593',2,0,'2025-01-17 18:10:26','2025-01-17 18:10:26','60312'),(5,'Ruby Reinger','zsawayn@example.net','+18055791135','TL','Indiana','Velvatown','6430 Gonzalo Canyon',3,1,'2025-01-17 18:10:27','2025-01-17 18:10:27','35885'),(6,'Dr. Mariam Stoltenberg Jr.','cartwright.lucienne@example.net','+12202000164','CR','North Carolina','North Jaydeview','61492 Caden Pine',4,1,'2025-01-17 18:10:27','2025-01-17 18:10:27','38361'),(7,'Prof. Jonatan Lind Sr.','zzieme@example.org','+18288398757','KZ','Alaska','North Mathewbury','2639 Jarod Common',5,1,'2025-01-17 18:10:28','2025-01-17 18:10:28','78544-5992'),(8,'Jakob Kulas','lamar.mccullough@example.com','+16127762771','KR','Hawaii','Powlowskishire','97169 Gage Rue Suite 263',6,1,'2025-01-17 18:10:28','2025-01-17 18:10:28','10084'),(9,'Prof. Angela Gusikowski','casimir.gislason@example.org','+14253329111','ML','Indiana','Wellingtonshire','18423 Frami Pass Suite 302',7,1,'2025-01-17 18:10:28','2025-01-17 18:10:28','12968-3552'),(10,'Selmer Lebsack','gorczany.myrl@example.org','+16579400252','FR','Nebraska','Lake Maudview','4725 Bernier Club',8,1,'2025-01-17 18:10:29','2025-01-17 18:10:29','96324-7166'),(11,'Electa Harris','wfeeney@example.net','+19407254568','CI','Idaho','South Melisafort','4060 Payton Burg',9,1,'2025-01-17 18:10:29','2025-01-17 18:10:29','52271'),(12,'Ashtyn VonRueden','cremin.edgar@example.net','+19478978061','GT','Illinois','South Brennan','2816 Cartwright Loaf',10,1,'2025-01-17 18:10:30','2025-01-17 18:10:30','13574-0201');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Mossie Orn Sr.','customer@botble.com','$2y$12$Y6YUve7j3MEiFqZedUqmROGBhfchXgj7qfcIVq12fWSsqHRFQ33AK','customers/8.jpg','1997-01-02','+13609491892',NULL,'2025-01-17 18:10:26','2025-01-17 18:10:26','2025-01-18 01:10:26',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Damon Roob IV','vendor@botble.com','$2y$12$7sxRfjixc2zzg5lNoqMHs.GqyXJ6aqh2GtWGJuJCKCklWP/caqkD6','customers/1.jpg','1994-01-16','+19257582714',NULL,'2025-01-17 18:10:26','2025-01-17 18:10:46','2025-01-18 01:10:26',NULL,'activated',NULL,NULL,1,'2025-01-18 01:10:46',NULL,0),(3,'Ruby Reinger','zsawayn@example.net','$2y$12$FuLdysGSCEe4A1cDIowSF.m1TS0MHzgjZXntqV4uKZf9YmyxUEZWu','customers/1.jpg','1993-01-13','+12832294628',NULL,'2025-01-17 18:10:27','2025-01-17 18:10:27','2025-01-18 01:10:27',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(4,'Dr. Mariam Stoltenberg Jr.','cartwright.lucienne@example.net','$2y$12$/Oma844WjM41EAg3Sz6Ha.jBV9FWZ/eAeZEoeQYXk5kk064/O2i7K','customers/2.jpg','1998-12-21','+14587458798',NULL,'2025-01-17 18:10:27','2025-01-17 18:10:27','2025-01-18 01:10:27',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(5,'Prof. Jonatan Lind Sr.','zzieme@example.org','$2y$12$dwsyw22CQMexakCVfvyaWeSu3C8SuFkHuzx2t6paJ4MAgydTqNoga','customers/3.jpg','1997-12-30','+17405398725',NULL,'2025-01-17 18:10:28','2025-01-17 18:10:46','2025-01-18 01:10:28',NULL,'activated',NULL,NULL,1,'2025-01-18 01:10:46',NULL,0),(6,'Jakob Kulas','lamar.mccullough@example.com','$2y$12$ET9fCmo7GgncCBK662CYr.Q66ZwNLgOeTgVr.tpTcUUB41nRYyBMC','customers/4.jpg','1989-01-12','+14099408045',NULL,'2025-01-17 18:10:28','2025-01-17 18:10:28','2025-01-18 01:10:28',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(7,'Prof. Angela Gusikowski','casimir.gislason@example.org','$2y$12$C0HiQN2tpdgMYJItZmWDl.MuKAjb2YhOHmh0Z8zj/1gWXNv8ccmlq','customers/5.jpg','1986-01-01','+17153854297',NULL,'2025-01-17 18:10:28','2025-01-17 18:10:28','2025-01-18 01:10:28',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(8,'Selmer Lebsack','gorczany.myrl@example.org','$2y$12$f9RLiqqh4n6pgmm572d41eSsX9nvBKEWc3KJML2xenliaBBLL.rS.','customers/6.jpg','1996-12-28','+19563282327',NULL,'2025-01-17 18:10:29','2025-01-17 18:10:47','2025-01-18 01:10:29',NULL,'activated',NULL,NULL,1,'2025-01-18 01:10:47',NULL,0),(9,'Electa Harris','wfeeney@example.net','$2y$12$PYvWP8bCqxmC9asG8flzjOHV7H9pNHT4vHq2zEG4gB5P7gtKiR4h2','customers/7.jpg','2001-12-24','+15013822191',NULL,'2025-01-17 18:10:29','2025-01-17 18:10:47','2025-01-18 01:10:29',NULL,'activated',NULL,NULL,1,'2025-01-18 01:10:47',NULL,0),(10,'Ashtyn VonRueden','cremin.edgar@example.net','$2y$12$i9JazLeXy14bmt2hnB1gXeVuAb96XINF6qTTBVI8WwEd9kQgFST4e','customers/8.jpg','1998-01-06','+13856141887',NULL,'2025-01-17 18:10:30','2025-01-17 18:10:30','2025-01-18 01:10:30',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,26.4825,20,2),(1,2,21.06,18,1),(1,3,11.4,10,1),(1,4,321.912,7,3),(1,5,436.05,12,5),(1,6,353.76,10,5),(1,7,225.72,17,2),(1,8,405.9468,18,5),(1,9,314.82,15,3),(1,10,804.24,10,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-02-17 00:00:00','published','2025-01-17 18:10:34','2025-01-17 18:10:34');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(2,1,'2 Year',10,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(3,1,'3 Year',20,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(4,2,'4GB',0,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(5,2,'8GB',10,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(6,2,'16GB',20,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(7,3,'Core i5',0,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(8,3,'Core i7',10,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(9,3,'Core i9',20,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(10,4,'128GB',0,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(11,4,'256GB',10,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(12,4,'512GB',20,9999,0,'2025-01-17 18:10:42','2025-01-17 18:10:42');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-01-17 18:10:42','2025-01-17 18:10:42'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-01-17 18:10:42','2025-01-17 18:10:42');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-01-17 18:10:24','2025-01-17 18:10:24',0),(2,'Size','size','text',1,1,1,'published',1,'2025-01-17 18:10:24','2025-01-17 18:10:24',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(6,2,'S','s',NULL,NULL,1,1,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(7,2,'M','m',NULL,NULL,0,2,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(8,2,'L','l',NULL,NULL,0,3,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-01-17 18:10:24','2025-01-17 18:10:24'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-01-17 18:10:24','2025-01-17 18:10:24');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_category_product` VALUES (1,17),(1,20),(2,1),(3,12),(3,13),(4,3),(4,5),(4,19),(5,17),(5,21),(6,5),(6,14),(6,20),(7,9),(8,7),(9,15),(10,2),(10,17),(11,3),(12,2),(12,6),(12,22),(13,18),(14,23),(15,3),(15,4),(16,4),(16,18),(16,22),(17,2),(17,8),(17,13),(18,4),(18,6),(18,10),(18,12),(18,13),(18,22),(18,23),(19,1),(19,2),(19,20),(20,7),(20,16),(21,8),(21,21),(21,23),(22,11),(22,12),(22,16),(23,4),(23,9),(23,14),(23,15),(24,8),(25,3),(26,7),(26,16),(26,18),(26,21),(27,1),(27,23),(28,6),(28,10),(28,13),(29,10),(29,21),(30,10),(30,19),(31,5),(31,15),(31,17),(31,22),(32,6),(32,9),(33,12),(33,19),(34,8),(34,14),(34,18),(34,20),(35,11),(35,15),(36,5),(36,9),(36,11),(36,16),(37,7);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,6),(1,9),(1,12),(1,16),(2,2),(2,3),(2,5),(2,8),(2,18),(2,19),(2,22),(3,1),(3,7),(3,10),(3,11),(3,13),(3,14),(3,15),(3,17),(3,20),(3,21),(3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-01-17 18:10:11','2025-01-17 18:10:11',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-01-17 18:10:11','2025-01-17 18:10:11',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-01-17 18:10:11','2025-01-17 18:10:11',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,5,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,10,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,16,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,8,0,0.00,'fixed',1),(3,12,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,7,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(5,19,0,0.00,'fixed',1),(5,20,0,0.00,'fixed',1),(6,2,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(7,1,0,0.00,'fixed',1),(7,4,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,11,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,10,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,15,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(11,3,0,0.00,'fixed',1),(11,6,0,0.00,'fixed',1),(11,9,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,17,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,3,0,0.00,'fixed',1),(12,16,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(13,1,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,10,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(14,1,0,0.00,'fixed',1),(14,3,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,16,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(16,5,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,18,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,13,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,12,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(20,5,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,16,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"1\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(2,25,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"1\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(3,26,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"1\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(4,32,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(5,32,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(6,32,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(7,32,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(8,33,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(9,33,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(10,33,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(11,33,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:22\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2025-01-17 18:10:22','2025-01-17 18:10:22'),(12,38,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(13,38,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(14,38,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(15,39,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(16,39,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(17,39,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(18,40,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(19,40,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(20,40,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(21,49,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(22,49,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(23,50,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(24,50,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(25,51,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(26,51,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(27,52,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(28,52,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(29,60,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(30,60,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(31,60,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(32,60,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(33,61,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(34,61,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(35,61,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(36,61,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(37,62,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(38,62,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(39,62,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(40,62,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(41,63,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(42,63,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(43,63,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(44,63,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(45,68,'ecommerce/digital-product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(46,68,'ecommerce/digital-product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(47,68,'ecommerce/digital-product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(48,69,'ecommerce/digital-product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(49,69,'ecommerce/digital-product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(50,69,'ecommerce/digital-product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(51,70,'ecommerce/digital-product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(52,70,'ecommerce/digital-product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23'),(53,70,'ecommerce/digital-product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-01-18 01:10:23\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2025-01-17 18:10:23','2025-01-17 18:10:23');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_label_products` VALUES (1,6),(2,9),(2,15),(2,18),(2,21),(3,3),(3,12);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-01-17 18:10:11','2025-01-17 18:10:11'),(2,'New','#02856e','published','2025-01-17 18:10:11','2025-01-17 18:10:11'),(3,'Sale','#fe9931','published','2025-01-17 18:10:11','2025-01-17 18:10:11');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,NULL,0,0),(1,7,NULL,0,0),(1,8,NULL,0,0),(2,6,NULL,0,0),(2,7,NULL,0,0),(2,8,NULL,0,0),(3,1,NULL,0,0),(3,2,NULL,0,0),(3,3,NULL,0,0),(3,4,NULL,0,0),(3,5,NULL,0,0),(4,1,NULL,0,0),(4,2,NULL,0,0),(4,3,NULL,0,0),(4,4,NULL,0,0),(4,5,NULL,0,0),(5,1,NULL,0,0),(5,2,NULL,0,0),(5,3,NULL,0,0),(5,4,NULL,0,0),(5,5,NULL,0,0),(6,1,NULL,0,0),(6,2,NULL,0,0),(6,3,NULL,0,0),(6,4,NULL,0,0),(6,5,NULL,0,0),(7,1,NULL,0,0),(7,2,NULL,0,0),(7,3,NULL,0,0),(7,4,NULL,0,0),(7,5,NULL,0,0),(8,6,NULL,0,0),(8,7,NULL,0,0),(8,8,NULL,0,0),(9,6,NULL,0,0),(9,7,NULL,0,0),(9,8,NULL,0,0),(10,1,NULL,0,0),(10,2,NULL,0,0),(10,3,NULL,0,0),(10,4,NULL,0,0),(10,5,NULL,0,0),(11,6,NULL,0,0),(11,7,NULL,0,0),(11,8,NULL,0,0),(12,6,NULL,0,0),(12,7,NULL,0,0),(12,8,NULL,0,0),(13,6,NULL,0,0),(13,7,NULL,0,0),(13,8,NULL,0,0),(14,1,NULL,0,0),(14,2,NULL,0,0),(14,3,NULL,0,0),(14,4,NULL,0,0),(14,5,NULL,0,0),(15,6,NULL,0,0),(15,7,NULL,0,0),(15,8,NULL,0,0),(16,1,NULL,0,0),(16,2,NULL,0,0),(16,3,NULL,0,0),(16,4,NULL,0,0),(16,5,NULL,0,0),(17,6,NULL,0,0),(17,7,NULL,0,0),(17,8,NULL,0,0),(18,1,NULL,0,0),(18,2,NULL,0,0),(18,3,NULL,0,0),(18,4,NULL,0,0),(18,5,NULL,0,0),(19,6,NULL,0,0),(19,7,NULL,0,0),(19,8,NULL,0,0),(20,6,NULL,0,0),(20,7,NULL,0,0),(20,8,NULL,0,0),(21,1,NULL,0,0),(21,2,NULL,0,0),(21,3,NULL,0,0),(21,4,NULL,0,0),(21,5,NULL,0,0),(22,6,NULL,0,0),(22,7,NULL,0,0),(22,8,NULL,0,0),(23,6,NULL,0,0),(23,7,NULL,0,0),(23,8,NULL,0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,3),(2,3),(2,5),(3,1),(3,5),(4,3),(4,5),(4,6),(5,3),(5,5),(5,6),(6,1),(6,5),(6,6),(7,1),(7,3),(7,6),(8,2),(8,4),(8,6),(9,4),(9,5),(9,6),(10,2),(11,1),(11,3),(11,5),(12,2),(12,3),(12,5),(13,2),(13,3),(13,5),(14,1),(14,2),(14,6),(15,1),(15,3),(15,4),(16,2),(16,5),(16,6),(17,4),(17,5),(17,6),(18,2),(18,5),(19,2),(19,6),(20,2),(20,3),(21,1),(21,6),(22,4),(22,5),(23,1),(23,2),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(2,'Mobile',NULL,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(3,'Iphone',NULL,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(4,'Printer',NULL,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(5,'Office',NULL,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(6,'IT',NULL,'published','2025-01-17 18:10:31','2025-01-17 18:10:31');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (15,1,8),(17,1,9),(19,1,10),(39,1,20),(51,1,26),(57,1,29),(65,1,33),(5,2,3),(9,2,5),(23,2,12),(25,2,13),(49,2,25),(63,2,32),(67,2,34),(73,2,37),(77,2,39),(79,2,40),(89,2,45),(103,2,52),(3,3,2),(27,3,14),(31,3,16),(41,3,21),(45,3,23),(53,3,27),(59,3,30),(61,3,31),(83,3,42),(85,3,43),(93,3,47),(105,3,53),(1,4,1),(7,4,4),(33,4,17),(35,4,18),(43,4,22),(81,4,41),(95,4,48),(97,4,49),(99,4,50),(11,5,6),(13,5,7),(21,5,11),(29,5,15),(37,5,19),(47,5,24),(55,5,28),(69,5,35),(71,5,36),(75,5,38),(87,5,44),(91,5,46),(101,5,51),(2,6,1),(24,6,12),(26,6,13),(32,6,16),(38,6,19),(62,6,31),(76,6,38),(86,6,43),(10,7,5),(12,7,6),(14,7,7),(22,7,11),(30,7,15),(42,7,21),(44,7,22),(46,7,23),(60,7,30),(68,7,34),(84,7,42),(88,7,44),(94,7,47),(98,7,49),(4,8,2),(28,8,14),(48,8,24),(66,8,33),(72,8,36),(80,8,40),(102,8,51),(6,9,3),(20,9,10),(34,9,17),(40,9,20),(58,9,29),(92,9,46),(100,9,50),(104,9,52),(106,9,53),(8,10,4),(16,10,8),(18,10,9),(36,10,18),(50,10,25),(52,10,26),(54,10,27),(56,10,28),(64,10,32),(70,10,35),(74,10,37),(78,10,39),(82,10,41),(90,10,45),(96,10,48);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,2,0),(6,29,3,1),(7,30,4,1),(8,31,4,0),(9,32,5,1),(10,33,5,0),(11,34,6,1),(12,35,7,1),(13,36,7,0),(14,37,8,1),(15,38,9,1),(16,39,9,0),(17,40,9,0),(18,41,10,1),(19,42,10,0),(20,43,10,0),(21,44,11,1),(22,45,11,0),(23,46,12,1),(24,47,12,0),(25,48,12,0),(26,49,13,1),(27,50,13,0),(28,51,13,0),(29,52,13,0),(30,53,14,1),(31,54,14,0),(32,55,14,0),(33,56,14,0),(34,57,15,1),(35,58,15,0),(36,59,16,1),(37,60,17,1),(38,61,17,0),(39,62,17,0),(40,63,17,0),(41,64,18,1),(42,65,19,1),(43,66,19,0),(44,67,20,1),(45,68,21,1),(46,69,21,0),(47,70,21,0),(48,71,22,1),(49,72,22,0),(50,73,22,0),(51,74,23,1),(52,75,23,0),(53,76,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-01-18',
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]',NULL,'SW-189-A0',0,14,0,1,'in_stock',1,7,0,0,80.25,NULL,NULL,NULL,10,17,10,594,NULL,94820,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,1,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'SW-167-A0',0,10,0,1,'in_stock',1,5,0,0,40.5,NULL,NULL,NULL,10,15,11,867,NULL,24735,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,2,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]',NULL,'SW-121-A0',0,15,0,1,'in_stock',1,5,0,0,20,NULL,NULL,NULL,20,18,11,860,NULL,166092,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,2,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'SW-187-A0',0,11,0,1,'in_stock',1,3,0,0,526,447.1,NULL,NULL,18,13,16,810,NULL,180902,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'SW-120-A0',0,10,0,1,'in_stock',1,4,0,0,765,NULL,NULL,NULL,15,19,16,842,NULL,187059,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,1,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]',NULL,'SW-183-A0',0,15,0,1,'in_stock',1,3,0,0,402,NULL,NULL,NULL,18,20,16,863,NULL,97145,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]',NULL,'SW-159-A0',0,20,0,1,'in_stock',1,6,0,0,594,NULL,NULL,NULL,14,19,14,889,NULL,166746,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,2,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]',NULL,'SW-156-A0',0,18,0,1,'in_stock',1,7,0,0,1267,1127.63,NULL,NULL,10,13,18,871,NULL,58953,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]',NULL,'SW-171-A0',0,19,0,1,'in_stock',1,5,0,0,583,NULL,NULL,NULL,16,16,15,711,NULL,122965,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,2,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]',NULL,'SW-170-A0',0,15,0,1,'in_stock',0,2,0,0,1117,NULL,NULL,NULL,20,10,19,783,NULL,4031,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]',NULL,'SW-181-A0',0,17,0,1,'in_stock',0,1,0,0,1256,NULL,NULL,NULL,10,14,13,831,NULL,128246,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]',NULL,'SW-145-A0',0,18,0,1,'in_stock',0,7,0,0,518,429.94,NULL,NULL,13,16,11,692,NULL,3677,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'SW-173-A0',0,19,0,1,'in_stock',0,3,0,0,597,NULL,NULL,NULL,14,12,12,608,NULL,185372,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,3,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]',NULL,'SW-133-A0',0,20,0,1,'in_stock',0,7,0,0,524,NULL,NULL,NULL,18,10,19,641,NULL,27582,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,4,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'SW-123-A0',0,11,0,1,'in_stock',0,6,0,0,558,NULL,NULL,NULL,16,15,20,618,NULL,142936,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]',NULL,'SW-111-A0',0,16,0,1,'in_stock',0,7,0,0,578,462.4,NULL,NULL,16,16,15,823,NULL,151080,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,2,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]',NULL,'SW-172-A0',0,13,0,1,'in_stock',0,7,0,0,529,NULL,NULL,NULL,14,12,14,738,NULL,169491,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,4,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]',NULL,'SW-105-A0',0,17,0,1,'in_stock',0,6,0,0,941,NULL,NULL,NULL,15,16,19,851,NULL,80957,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]',NULL,'SW-139-A0',0,14,0,1,'in_stock',0,1,0,0,1013,NULL,NULL,NULL,13,11,14,639,NULL,7365,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]',NULL,'SW-134-A0',0,15,0,1,'in_stock',0,6,0,0,729,656.1,NULL,NULL,13,11,14,563,NULL,166511,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,4,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]',NULL,'SW-180-A0',0,11,0,1,'in_stock',0,4,0,0,726,NULL,NULL,NULL,14,20,10,641,NULL,112512,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,3,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]',NULL,'SW-179-A0',0,16,0,1,'in_stock',0,2,0,0,565,NULL,NULL,NULL,15,16,14,848,NULL,60466,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]',NULL,'SW-180-A0',0,16,0,1,'in_stock',0,5,0,0,605,NULL,NULL,NULL,18,11,11,877,NULL,51789,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'SW-189-A0',0,14,0,1,'in_stock',0,7,1,0,80.25,NULL,NULL,NULL,10,17,10,594,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'SW-189-A0-A1',0,14,0,1,'in_stock',0,7,1,0,80.25,NULL,NULL,NULL,10,17,10,594,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'SW-189-A0-A2',0,14,0,1,'in_stock',0,7,1,0,80.25,NULL,NULL,NULL,10,17,10,594,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]',NULL,'SW-167-A0',0,10,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,10,15,11,867,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'SW-167-A0-A1',0,10,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,10,15,11,867,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]',NULL,'SW-121-A0',0,15,0,1,'in_stock',0,5,1,0,20,NULL,NULL,NULL,20,18,11,860,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(30,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'SW-187-A0',0,11,0,1,'in_stock',0,3,1,0,526,447.1,NULL,NULL,18,13,16,810,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]',NULL,'SW-187-A0-A1',0,11,0,1,'in_stock',0,3,1,0,526,368.2,NULL,NULL,18,13,16,810,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(32,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]',NULL,'SW-120-A0',0,10,0,1,'in_stock',0,4,1,0,765,NULL,NULL,NULL,15,19,16,842,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'SW-120-A0-A1',0,10,0,1,'in_stock',0,4,1,0,765,NULL,NULL,NULL,15,19,16,842,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(34,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SW-183-A0',0,15,0,1,'in_stock',0,3,1,0,402,NULL,NULL,NULL,18,20,16,863,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(35,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'SW-159-A0',0,20,0,1,'in_stock',0,6,1,0,594,NULL,NULL,NULL,14,19,14,889,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(36,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'SW-159-A0-A1',0,20,0,1,'in_stock',0,6,1,0,594,NULL,NULL,NULL,14,19,14,889,NULL,0,'2025-01-17 18:10:22','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(37,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]',NULL,'SW-156-A0',0,18,0,1,'in_stock',0,7,1,0,1267,1127.63,NULL,NULL,10,13,18,871,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(38,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'SW-171-A0',0,19,0,1,'in_stock',0,5,1,0,583,NULL,NULL,NULL,16,16,15,711,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(39,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'SW-171-A0-A1',0,19,0,1,'in_stock',0,5,1,0,583,NULL,NULL,NULL,16,16,15,711,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(40,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-2.jpg\"]',NULL,'SW-171-A0-A2',0,19,0,1,'in_stock',0,5,1,0,583,NULL,NULL,NULL,16,16,15,711,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(41,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'SW-170-A0',0,15,0,1,'in_stock',0,2,1,0,1117,NULL,NULL,NULL,20,10,19,783,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(42,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'SW-170-A0-A1',0,15,0,1,'in_stock',0,2,1,0,1117,NULL,NULL,NULL,20,10,19,783,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(43,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]',NULL,'SW-170-A0-A2',0,15,0,1,'in_stock',0,2,1,0,1117,NULL,NULL,NULL,20,10,19,783,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(44,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]',NULL,'SW-181-A0',0,17,0,1,'in_stock',0,1,1,0,1256,NULL,NULL,NULL,10,14,13,831,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(45,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'SW-181-A0-A1',0,17,0,1,'in_stock',0,1,1,0,1256,NULL,NULL,NULL,10,14,13,831,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(46,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]',NULL,'SW-145-A0',0,18,0,1,'in_stock',0,7,1,0,518,429.94,NULL,NULL,13,16,11,692,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(47,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'SW-145-A0-A1',0,18,0,1,'in_stock',0,7,1,0,518,362.6,NULL,NULL,13,16,11,692,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(48,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]',NULL,'SW-145-A0-A2',0,18,0,1,'in_stock',0,7,1,0,518,461.02,NULL,NULL,13,16,11,692,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(49,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'SW-173-A0',0,19,0,1,'in_stock',0,3,1,0,597,NULL,NULL,NULL,14,12,12,608,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(50,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'SW-173-A0-A1',0,19,0,1,'in_stock',0,3,1,0,597,NULL,NULL,NULL,14,12,12,608,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(51,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'SW-173-A0-A2',0,19,0,1,'in_stock',0,3,1,0,597,NULL,NULL,NULL,14,12,12,608,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(52,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'SW-173-A0-A3',0,19,0,1,'in_stock',0,3,1,0,597,NULL,NULL,NULL,14,12,12,608,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(53,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'SW-133-A0',0,20,0,1,'in_stock',0,7,1,0,524,NULL,NULL,NULL,18,10,19,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(54,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'SW-133-A0-A1',0,20,0,1,'in_stock',0,7,1,0,524,NULL,NULL,NULL,18,10,19,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(55,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'SW-133-A0-A2',0,20,0,1,'in_stock',0,7,1,0,524,NULL,NULL,NULL,18,10,19,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(56,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'SW-133-A0-A3',0,20,0,1,'in_stock',0,7,1,0,524,NULL,NULL,NULL,18,10,19,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(57,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'SW-123-A0',0,11,0,1,'in_stock',0,6,1,0,558,NULL,NULL,NULL,16,15,20,618,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(58,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'SW-123-A0-A1',0,11,0,1,'in_stock',0,6,1,0,558,NULL,NULL,NULL,16,15,20,618,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(59,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]',NULL,'SW-111-A0',0,16,0,1,'in_stock',0,7,1,0,578,462.4,NULL,NULL,16,16,15,823,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(60,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'SW-172-A0',0,13,0,1,'in_stock',0,7,1,0,529,NULL,NULL,NULL,14,12,14,738,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(61,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]',NULL,'SW-172-A0-A1',0,13,0,1,'in_stock',0,7,1,0,529,NULL,NULL,NULL,14,12,14,738,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(62,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-2.jpg\"]',NULL,'SW-172-A0-A2',0,13,0,1,'in_stock',0,7,1,0,529,NULL,NULL,NULL,14,12,14,738,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(63,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-3.jpg\"]',NULL,'SW-172-A0-A3',0,13,0,1,'in_stock',0,7,1,0,529,NULL,NULL,NULL,14,12,14,738,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(64,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]',NULL,'SW-105-A0',0,17,0,1,'in_stock',0,6,1,0,941,NULL,NULL,NULL,15,16,19,851,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]',NULL,'SW-139-A0',0,14,0,1,'in_stock',0,1,1,0,1013,NULL,NULL,NULL,13,11,14,639,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'SW-139-A0-A1',0,14,0,1,'in_stock',0,1,1,0,1013,NULL,NULL,NULL,13,11,14,639,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'SW-134-A0',0,15,0,1,'in_stock',0,6,1,0,729,656.1,NULL,NULL,13,11,14,563,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]',NULL,'SW-180-A0',0,11,0,1,'in_stock',0,4,1,0,726,NULL,NULL,NULL,14,20,10,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(69,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]',NULL,'SW-180-A0-A1',0,11,0,1,'in_stock',0,4,1,0,726,NULL,NULL,NULL,14,20,10,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(70,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-2.jpg\"]',NULL,'SW-180-A0-A2',0,11,0,1,'in_stock',0,4,1,0,726,NULL,NULL,NULL,14,20,10,641,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(71,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]',NULL,'SW-179-A0',0,16,0,1,'in_stock',0,2,1,0,565,NULL,NULL,NULL,15,16,14,848,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(72,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'SW-179-A0-A1',0,16,0,1,'in_stock',0,2,1,0,565,NULL,NULL,NULL,15,16,14,848,NULL,0,'2025-01-17 18:10:23','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(73,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]',NULL,'SW-179-A0-A2',0,16,0,1,'in_stock',0,2,1,0,565,NULL,NULL,NULL,15,16,14,848,NULL,0,'2025-01-17 18:10:24','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(74,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]',NULL,'SW-180-A0',0,16,0,1,'in_stock',0,5,1,0,605,NULL,NULL,NULL,18,11,11,877,NULL,0,'2025-01-17 18:10:24','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(75,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'SW-180-A0-A1',0,16,0,1,'in_stock',0,5,1,0,605,NULL,NULL,NULL,18,11,11,877,NULL,0,'2025-01-17 18:10:24','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(76,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]',NULL,'SW-180-A0-A2',0,16,0,1,'in_stock',0,5,1,0,605,NULL,NULL,NULL,18,11,11,877,NULL,0,'2025-01-17 18:10:24','2025-01-17 18:10:48',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
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
INSERT INTO `ec_reviews` VALUES (1,2,NULL,NULL,16,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12.jpg\"]'),(2,9,NULL,NULL,15,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/17.jpg\"]'),(3,7,NULL,NULL,6,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-1.jpg\",\"products\\/14.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),(4,4,NULL,NULL,5,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/8-3.jpg\",\"products\\/11-1.jpg\"]'),(5,4,NULL,NULL,12,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4.jpg\",\"products\\/20-2.jpg\",\"products\\/22-2.jpg\"]'),(6,5,NULL,NULL,11,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/21.jpg\"]'),(7,1,NULL,NULL,5,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\"]'),(8,10,NULL,NULL,8,3,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/12-3.jpg\",\"products\\/22-3.jpg\"]'),(9,10,NULL,NULL,9,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4.jpg\",\"products\\/21-1.jpg\"]'),(10,10,NULL,NULL,14,4,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-3.jpg\",\"products\\/12-1.jpg\",\"products\\/22-3.jpg\"]'),(11,4,NULL,NULL,15,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/7.jpg\",\"products\\/20-1.jpg\",\"products\\/23-2.jpg\"]'),(13,4,NULL,NULL,9,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/8-2.jpg\",\"products\\/12-1.jpg\",\"products\\/15-1.jpg\"]'),(14,8,NULL,NULL,10,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/19-1.jpg\"]'),(15,7,NULL,NULL,23,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\"]'),(16,8,NULL,NULL,4,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\"]'),(17,5,NULL,NULL,7,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/12-3.jpg\",\"products\\/18.jpg\"]'),(19,1,NULL,NULL,9,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/18-3.jpg\"]'),(20,7,NULL,NULL,5,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/7.jpg\",\"products\\/12-2.jpg\"]'),(21,4,NULL,NULL,18,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/18.jpg\",\"products\\/21-2.jpg\"]'),(22,4,NULL,NULL,13,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\"]'),(23,5,NULL,NULL,8,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16.jpg\"]'),(24,8,NULL,NULL,23,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9.jpg\",\"products\\/13.jpg\",\"products\\/15.jpg\",\"products\\/22-3.jpg\"]'),(25,9,NULL,NULL,16,4,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10.jpg\"]'),(26,9,NULL,NULL,4,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/21-1.jpg\",\"products\\/22-2.jpg\"]'),(27,2,NULL,NULL,23,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/23.jpg\"]'),(28,10,NULL,NULL,20,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-1.jpg\",\"products\\/16.jpg\",\"products\\/23-3.jpg\"]'),(29,3,NULL,NULL,1,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/11.jpg\"]'),(30,10,NULL,NULL,1,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-2.jpg\",\"products\\/9-2.jpg\",\"products\\/20-2.jpg\",\"products\\/22-3.jpg\"]'),(31,10,NULL,NULL,23,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/15-1.jpg\",\"products\\/17-2.jpg\",\"products\\/21-1.jpg\"]'),(33,9,NULL,NULL,20,4,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/14.jpg\",\"products\\/18.jpg\",\"products\\/22-2.jpg\"]'),(34,9,NULL,NULL,22,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\"]'),(35,10,NULL,NULL,16,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/19-2.jpg\",\"products\\/20-1.jpg\"]'),(36,3,NULL,NULL,3,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/15.jpg\",\"products\\/19-2.jpg\",\"products\\/23-2.jpg\"]'),(37,6,NULL,NULL,3,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/11.jpg\",\"products\\/20-3.jpg\",\"products\\/23.jpg\"]'),(38,3,NULL,NULL,15,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4.jpg\",\"products\\/11-2.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\"]'),(39,10,NULL,NULL,6,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\",\"products\\/14.jpg\",\"products\\/18-2.jpg\",\"products\\/20-2.jpg\"]'),(40,7,NULL,NULL,15,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8.jpg\"]'),(41,2,NULL,NULL,12,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/23-2.jpg\"]'),(42,6,NULL,NULL,18,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/2-2.jpg\",\"products\\/5-2.jpg\",\"products\\/11-2.jpg\"]'),(43,10,NULL,NULL,5,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/6.jpg\",\"products\\/9.jpg\",\"products\\/17-1.jpg\"]'),(44,3,NULL,NULL,12,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/19-2.jpg\",\"products\\/20.jpg\"]'),(45,6,NULL,NULL,12,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/11-2.jpg\",\"products\\/13.jpg\",\"products\\/18-1.jpg\"]'),(46,2,NULL,NULL,22,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/22-2.jpg\"]'),(49,1,NULL,NULL,12,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(50,10,NULL,NULL,19,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-2.jpg\",\"products\\/21-2.jpg\",\"products\\/23-2.jpg\"]'),(51,10,NULL,NULL,17,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/17-2.jpg\"]'),(53,3,NULL,NULL,11,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-1.jpg\",\"products\\/23.jpg\"]'),(54,6,NULL,NULL,2,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/21-2.jpg\"]'),(55,5,NULL,NULL,21,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/12-2.jpg\",\"products\\/19-3.jpg\"]'),(56,8,NULL,NULL,6,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/10-1.jpg\"]'),(58,7,NULL,NULL,12,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10.jpg\",\"products\\/12-1.jpg\"]'),(60,5,NULL,NULL,22,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/11-2.jpg\",\"products\\/12-2.jpg\",\"products\\/13-1.jpg\"]'),(61,4,NULL,NULL,21,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/7.jpg\",\"products\\/23-3.jpg\"]'),(64,6,NULL,NULL,17,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-3.jpg\",\"products\\/5-1.jpg\",\"products\\/16.jpg\",\"products\\/21-2.jpg\"]'),(65,1,NULL,NULL,17,4,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/21-2.jpg\"]'),(66,10,NULL,NULL,11,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/8-1.jpg\",\"products\\/20-2.jpg\"]'),(67,3,NULL,NULL,5,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-1.jpg\",\"products\\/22-1.jpg\"]'),(70,8,NULL,NULL,14,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/14.jpg\",\"products\\/22-1.jpg\"]'),(74,5,NULL,NULL,4,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-3.jpg\",\"products\\/12.jpg\"]'),(75,2,NULL,NULL,2,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/9-2.jpg\",\"products\\/13-1.jpg\"]'),(77,1,NULL,NULL,22,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/21-2.jpg\",\"products\\/21.jpg\",\"products\\/23-3.jpg\"]'),(80,9,NULL,NULL,10,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/15-1.jpg\",\"products\\/16.jpg\",\"products\\/17.jpg\"]'),(82,2,NULL,NULL,3,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9.jpg\",\"products\\/13.jpg\"]'),(83,1,NULL,NULL,8,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/13-1.jpg\"]'),(86,9,NULL,NULL,13,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\",\"products\\/21-1.jpg\"]'),(88,4,NULL,NULL,23,5,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/19-3.jpg\"]'),(89,6,NULL,NULL,13,2,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\"]'),(90,9,NULL,NULL,3,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\"]'),(91,4,NULL,NULL,3,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/6.jpg\",\"products\\/15-1.jpg\"]'),(92,7,NULL,NULL,11,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/18-2.jpg\"]'),(93,3,NULL,NULL,22,5,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/7.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\",\"products\\/20-2.jpg\"]'),(94,4,NULL,NULL,2,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-3.jpg\",\"products\\/6.jpg\",\"products\\/9-2.jpg\"]'),(96,5,NULL,NULL,1,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/7.jpg\",\"products\\/8-1.jpg\",\"products\\/8.jpg\",\"products\\/15.jpg\"]'),(98,3,NULL,NULL,9,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/6.jpg\",\"products\\/15-1.jpg\",\"products\\/22-1.jpg\"]'),(99,5,NULL,NULL,10,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/20-3.jpg\",\"products\\/23.jpg\"]'),(100,10,NULL,NULL,3,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/20-3.jpg\"]'),(101,2,NULL,NULL,19,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\"]'),(102,8,NULL,NULL,7,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-2.jpg\",\"products\\/16.jpg\"]'),(104,6,NULL,NULL,14,5,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/15.jpg\"]'),(106,9,NULL,NULL,7,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/16.jpg\"]'),(108,9,NULL,NULL,19,1,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-1.jpg\",\"products\\/13.jpg\"]'),(109,7,NULL,NULL,9,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/10.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),(110,8,NULL,NULL,17,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/17-2.jpg\"]'),(111,1,NULL,NULL,14,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-1.jpg\",\"products\\/11-1.jpg\",\"products\\/21-1.jpg\"]'),(112,1,NULL,NULL,19,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/13.jpg\"]'),(113,6,NULL,NULL,21,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4.jpg\",\"products\\/11-1.jpg\",\"products\\/23.jpg\"]'),(114,7,NULL,NULL,10,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/16.jpg\"]'),(115,1,NULL,NULL,16,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\",\"products\\/15-1.jpg\",\"products\\/18-3.jpg\",\"products\\/22.jpg\"]'),(116,2,NULL,NULL,8,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\"]'),(117,5,NULL,NULL,17,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/5-3.jpg\",\"products\\/23.jpg\"]'),(118,6,NULL,NULL,7,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/11-2.jpg\",\"products\\/20.jpg\",\"products\\/22-1.jpg\"]'),(120,1,NULL,NULL,20,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/11.jpg\"]'),(122,3,NULL,NULL,23,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-3.jpg\"]'),(123,5,NULL,NULL,16,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/10.jpg\",\"products\\/20-3.jpg\",\"products\\/21-1.jpg\"]'),(125,7,NULL,NULL,8,3,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\"]'),(126,3,NULL,NULL,19,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/12-1.jpg\",\"products\\/16.jpg\",\"products\\/23-3.jpg\"]'),(132,4,NULL,NULL,4,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/9-1.jpg\",\"products\\/18-1.jpg\",\"products\\/21.jpg\"]'),(133,7,NULL,NULL,4,3,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-3.jpg\",\"products\\/14.jpg\",\"products\\/18-2.jpg\"]'),(137,8,NULL,NULL,16,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/17.jpg\"]'),(138,7,NULL,NULL,18,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/17-1.jpg\"]'),(139,10,NULL,NULL,4,4,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\"]'),(140,9,NULL,NULL,23,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/11-2.jpg\",\"products\\/20-2.jpg\",\"products\\/21-1.jpg\"]'),(142,5,NULL,NULL,14,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/10.jpg\",\"products\\/11-1.jpg\",\"products\\/22-3.jpg\"]'),(143,8,NULL,NULL,18,4,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/10.jpg\",\"products\\/11-2.jpg\",\"products\\/17-3.jpg\"]'),(147,10,NULL,NULL,7,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/8-1.jpg\",\"products\\/13-1.jpg\",\"products\\/20.jpg\"]'),(149,7,NULL,NULL,22,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-2.jpg\",\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/21.jpg\"]'),(150,3,NULL,NULL,8,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\",\"products\\/17.jpg\"]'),(151,7,NULL,NULL,19,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/5-3.jpg\",\"products\\/11-1.jpg\",\"products\\/20-2.jpg\"]'),(153,8,NULL,NULL,2,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/22.jpg\"]'),(156,4,NULL,NULL,6,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-3.jpg\"]'),(160,5,NULL,NULL,5,3,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/5-3.jpg\",\"products\\/22-3.jpg\",\"products\\/23-1.jpg\"]'),(161,6,NULL,NULL,16,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/13-1.jpg\",\"products\\/18-3.jpg\",\"products\\/19-2.jpg\"]'),(162,5,NULL,NULL,23,2,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/4-2.jpg\",\"products\\/10-1.jpg\",\"products\\/20-2.jpg\"]'),(163,7,NULL,NULL,1,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/7.jpg\",\"products\\/23-1.jpg\"]'),(164,6,NULL,NULL,4,4,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-2.jpg\",\"products\\/16.jpg\",\"products\\/17-1.jpg\",\"products\\/22-2.jpg\"]'),(165,9,NULL,NULL,9,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10.jpg\",\"products\\/17-2.jpg\"]'),(167,3,NULL,NULL,17,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-3.jpg\",\"products\\/22-2.jpg\"]'),(169,10,NULL,NULL,21,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/18-3.jpg\"]'),(175,2,NULL,NULL,10,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/18-2.jpg\",\"products\\/19-2.jpg\",\"products\\/19.jpg\"]'),(176,5,NULL,NULL,3,2,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/7.jpg\",\"products\\/8-1.jpg\",\"products\\/11-1.jpg\"]'),(178,3,NULL,NULL,21,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/8-2.jpg\",\"products\\/12-1.jpg\",\"products\\/17-3.jpg\"]'),(179,3,NULL,NULL,14,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/18-1.jpg\"]'),(180,4,NULL,NULL,22,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-2.jpg\"]'),(183,9,NULL,NULL,12,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-2.jpg\"]'),(185,4,NULL,NULL,20,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\"]'),(187,3,NULL,NULL,10,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\"]'),(188,8,NULL,NULL,22,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/22-2.jpg\"]'),(189,6,NULL,NULL,11,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/11-1.jpg\",\"products\\/17.jpg\",\"products\\/18-2.jpg\"]'),(192,9,NULL,NULL,17,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/21.jpg\"]'),(194,4,NULL,NULL,1,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9.jpg\",\"products\\/19.jpg\"]'),(197,8,NULL,NULL,15,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/20.jpg\"]'),(198,2,NULL,NULL,5,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\"]'),(200,7,NULL,NULL,13,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/17-3.jpg\",\"products\\/18-2.jpg\"]'),(202,4,NULL,NULL,17,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/16.jpg\"]'),(205,2,NULL,NULL,21,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/17.jpg\"]'),(212,7,NULL,NULL,3,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/14.jpg\"]'),(214,8,NULL,NULL,19,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\",\"products\\/18-2.jpg\"]'),(217,6,NULL,NULL,9,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/12-3.jpg\"]'),(218,1,NULL,NULL,11,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-2.jpg\"]'),(219,7,NULL,NULL,14,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/18-2.jpg\",\"products\\/21-1.jpg\",\"products\\/22-3.jpg\"]'),(227,7,NULL,NULL,17,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/5-3.jpg\"]'),(231,6,NULL,NULL,19,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/20-1.jpg\"]'),(234,8,NULL,NULL,9,1,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-3.jpg\",\"products\\/15.jpg\"]'),(238,9,NULL,NULL,1,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-1.jpg\",\"products\\/12-1.jpg\"]'),(239,6,NULL,NULL,5,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-3.jpg\"]'),(241,3,NULL,NULL,4,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\",\"products\\/21-1.jpg\"]'),(242,1,NULL,NULL,4,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/22-1.jpg\"]'),(243,10,NULL,NULL,13,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),(246,4,NULL,NULL,10,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/10-1.jpg\"]'),(247,10,NULL,NULL,10,3,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-1.jpg\",\"products\\/11-1.jpg\",\"products\\/14.jpg\"]'),(248,2,NULL,NULL,13,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\"]'),(249,1,NULL,NULL,21,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/11.jpg\",\"products\\/12-2.jpg\",\"products\\/22-1.jpg\"]'),(252,2,NULL,NULL,1,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/8-2.jpg\",\"products\\/18-2.jpg\"]'),(255,1,NULL,NULL,23,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/20-2.jpg\"]'),(260,10,NULL,NULL,22,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/16.jpg\",\"products\\/17-3.jpg\"]'),(267,5,NULL,NULL,2,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/12-2.jpg\",\"products\\/20-3.jpg\"]'),(270,3,NULL,NULL,6,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-1.jpg\",\"products\\/12-3.jpg\"]'),(271,8,NULL,NULL,1,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/17-2.jpg\"]'),(274,3,NULL,NULL,7,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/14.jpg\",\"products\\/17-3.jpg\"]'),(276,1,NULL,NULL,13,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4.jpg\",\"products\\/15.jpg\"]'),(279,8,NULL,NULL,20,5,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-1.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\",\"products\\/21.jpg\"]'),(280,2,NULL,NULL,18,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\"]'),(285,5,NULL,NULL,20,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\"]'),(289,2,NULL,NULL,14,3,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/9.jpg\",\"products\\/11.jpg\",\"products\\/22-2.jpg\"]'),(294,9,NULL,NULL,18,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/12-2.jpg\",\"products\\/19-2.jpg\"]'),(296,9,NULL,NULL,2,5,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\"]'),(297,10,NULL,NULL,18,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/23.jpg\"]'),(298,5,NULL,NULL,6,5,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/19-2.jpg\",\"products\\/22-1.jpg\"]'),(300,2,NULL,NULL,9,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-3.jpg\"]'),(301,6,NULL,NULL,6,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\"]'),(308,4,NULL,NULL,16,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-2.jpg\",\"products\\/11.jpg\",\"products\\/18-2.jpg\",\"products\\/18.jpg\"]'),(309,6,NULL,NULL,15,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\",\"products\\/8-3.jpg\",\"products\\/17-2.jpg\",\"products\\/21-1.jpg\"]'),(312,3,NULL,NULL,16,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\",\"products\\/5-3.jpg\",\"products\\/11.jpg\",\"products\\/17-1.jpg\"]'),(340,9,NULL,NULL,8,5,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-3.jpg\",\"products\\/11-3.jpg\",\"products\\/18-3.jpg\"]'),(343,6,NULL,NULL,1,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-3.jpg\",\"products\\/5.jpg\",\"products\\/15-1.jpg\",\"products\\/15.jpg\"]'),(347,3,NULL,NULL,18,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\",\"products\\/8-3.jpg\",\"products\\/10.jpg\",\"products\\/11-2.jpg\"]'),(348,5,NULL,NULL,18,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/8-3.jpg\",\"products\\/13.jpg\"]'),(351,1,NULL,NULL,7,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/4-3.jpg\",\"products\\/23-2.jpg\"]'),(356,7,NULL,NULL,7,3,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/18-3.jpg\"]'),(368,5,NULL,NULL,19,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/23.jpg\"]'),(370,6,NULL,NULL,20,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/5-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22-3.jpg\"]'),(378,9,NULL,NULL,14,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/12.jpg\",\"products\\/20-3.jpg\"]'),(386,2,NULL,NULL,11,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/6.jpg\",\"products\\/8-3.jpg\",\"products\\/20-1.jpg\"]'),(387,10,NULL,NULL,15,4,'Clean & perfect source code','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-3.jpg\",\"products\\/12-1.jpg\",\"products\\/19.jpg\"]'),(394,7,NULL,NULL,2,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12.jpg\",\"products\\/19-3.jpg\"]'),(400,3,NULL,NULL,2,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/21.jpg\",\"products\\/22-3.jpg\"]'),(405,4,NULL,NULL,19,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4.jpg\",\"products\\/21.jpg\",\"products\\/22-2.jpg\"]'),(417,7,NULL,NULL,20,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/5-2.jpg\",\"products\\/9-2.jpg\",\"products\\/13-1.jpg\"]'),(426,4,NULL,NULL,14,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/17-1.jpg\"]'),(430,4,NULL,NULL,8,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/10-1.jpg\",\"products\\/19-2.jpg\"]'),(433,6,NULL,NULL,23,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-2.jpg\",\"products\\/19-3.jpg\"]'),(436,8,NULL,NULL,11,4,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/8-3.jpg\",\"products\\/9-1.jpg\",\"products\\/23-2.jpg\"]'),(443,9,NULL,NULL,5,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/12-3.jpg\",\"products\\/12.jpg\",\"products\\/18-1.jpg\"]'),(448,10,NULL,NULL,2,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\"]'),(450,9,NULL,NULL,6,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-2.jpg\",\"products\\/9.jpg\"]'),(469,8,NULL,NULL,13,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/17-3.jpg\"]'),(470,8,NULL,NULL,3,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-1.jpg\",\"products\\/10.jpg\",\"products\\/19.jpg\"]'),(481,5,NULL,NULL,15,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/11-1.jpg\",\"products\\/20-2.jpg\"]'),(490,2,NULL,NULL,7,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9.jpg\",\"products\\/22-2.jpg\"]'),(492,6,NULL,NULL,8,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/17-2.jpg\",\"products\\/18-2.jpg\",\"products\\/20-2.jpg\"]'),(498,2,NULL,NULL,20,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\",\"products\\/4-1.jpg\",\"products\\/11-1.jpg\",\"products\\/14.jpg\"]'),(502,6,NULL,NULL,22,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/15-1.jpg\"]'),(504,8,NULL,NULL,8,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2-2.jpg\"]'),(520,7,NULL,NULL,21,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/4-1.jpg\",\"products\\/12.jpg\",\"products\\/19-3.jpg\"]'),(523,4,NULL,NULL,7,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-2.jpg\",\"products\\/5.jpg\",\"products\\/8-2.jpg\",\"products\\/20-2.jpg\"]'),(550,2,NULL,NULL,4,4,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-3.jpg\",\"products\\/7.jpg\",\"products\\/20-1.jpg\"]'),(553,2,NULL,NULL,17,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/15.jpg\",\"products\\/17-1.jpg\"]'),(569,9,NULL,NULL,21,2,'Best ecommerce CMS online store!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/15.jpg\",\"products\\/20-2.jpg\"]'),(592,5,NULL,NULL,12,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5.jpg\",\"products\\/11-1.jpg\",\"products\\/23-3.jpg\"]'),(606,8,NULL,NULL,12,1,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/6.jpg\",\"products\\/8-2.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\"]'),(609,1,NULL,NULL,3,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/4-1.jpg\",\"products\\/10-2.jpg\"]'),(611,8,NULL,NULL,21,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-3.jpg\",\"products\\/17-3.jpg\",\"products\\/21.jpg\"]'),(612,10,NULL,NULL,12,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/19-2.jpg\"]'),(633,5,NULL,NULL,9,1,'Good app, good backup service and support. Good documentation.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(635,1,NULL,NULL,10,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9-1.jpg\"]'),(666,8,NULL,NULL,5,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/11-1.jpg\",\"products\\/18-3.jpg\"]'),(744,4,NULL,NULL,11,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\",\"products\\/18-3.jpg\"]'),(753,6,NULL,NULL,10,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/12-2.jpg\",\"products\\/16.jpg\",\"products\\/19-3.jpg\"]'),(767,2,NULL,NULL,6,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/18-1.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\"]'),(828,1,NULL,NULL,18,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/1.jpg\",\"products\\/2-3.jpg\",\"products\\/23-3.jpg\"]'),(855,3,NULL,NULL,13,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/5-1.jpg\",\"products\\/11-3.jpg\",\"products\\/13.jpg\",\"products\\/21-1.jpg\"]'),(881,1,NULL,NULL,2,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/9.jpg\",\"products\\/10-1.jpg\",\"products\\/12-1.jpg\",\"products\\/21.jpg\"]'),(889,9,NULL,NULL,11,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/19.jpg\",\"products\\/21.jpg\"]'),(902,5,NULL,NULL,13,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/20.jpg\"]'),(921,7,NULL,NULL,16,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/8-3.jpg\",\"products\\/13-1.jpg\",\"products\\/20-1.jpg\",\"products\\/22.jpg\"]'),(963,1,NULL,NULL,1,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/3.jpg\",\"products\\/22-2.jpg\"]'),(994,1,NULL,NULL,6,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/20-1.jpg\",\"products\\/21.jpg\"]'),(997,1,NULL,NULL,15,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-01-17 18:10:30','2025-01-17 18:10:30','[\"products\\/2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
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
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-01-17 18:10:35','2025-01-17 18:10:35');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-01-17 18:10:35','2025-01-17 18:10:35'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-01-17 18:10:35','2025-01-17 18:10:35'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-01-17 18:10:35','2025-01-17 18:10:35');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(2,'Performance',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(3,'Battery',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(4,'Display',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL),(2,'Technical Specification',NULL,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `percentage` float DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(2,'None',0,2,'published','2025-01-17 18:10:31','2025-01-17 18:10:31'),(3,'Import Tax',15,3,'published','2025-01-17 18:10:31','2025-01-17 18:10:31');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL),(2,'PAYMENT',1,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL),(3,'ORDER &amp; RETURNS',2,'published','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-01-17 18:10:41','2025-01-17 18:10:41');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `language_meta` VALUES (1,'en_US','54d3f52fa8010775b4ea03894ab82489',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','fecb2ff78801dac99920e932c1bd3657',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','6bb92e0666fbae5babe7eed88b409799',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','9d9697c669c55817abe38b304cf6d3bb',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','ccf6910961d7004409c376408a88f7bb',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','053e79f9a35c8c6abf1c4a0a4c46a773',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2025-01-17 18:10:08','2025-01-17 18:10:08',NULL,'public'),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2025-01-17 18:10:08','2025-01-17 18:10:08',NULL,'public'),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2025-01-17 18:10:08','2025-01-17 18:10:08',NULL,'public'),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2025-01-17 18:10:08','2025-01-17 18:10:08',NULL,'public'),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2025-01-17 18:10:09','2025-01-17 18:10:09',NULL,'public'),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,'public'),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,'public'),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,'public'),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2025-01-17 18:10:10','2025-01-17 18:10:10',NULL,'public'),(16,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,'public'),(17,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,'public'),(18,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,'public'),(19,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,'public'),(20,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,'public'),(21,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2025-01-17 18:10:11','2025-01-17 18:10:11',NULL,'public'),(22,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2025-01-17 18:10:12','2025-01-17 18:10:12',NULL,'public'),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2025-01-17 18:10:12','2025-01-17 18:10:12',NULL,'public'),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2025-01-17 18:10:12','2025-01-17 18:10:12',NULL,'public'),(25,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2025-01-17 18:10:12','2025-01-17 18:10:12',NULL,'public'),(26,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2025-01-17 18:10:12','2025-01-17 18:10:12',NULL,'public'),(27,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2025-01-17 18:10:12','2025-01-17 18:10:12',NULL,'public'),(28,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(29,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(30,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(31,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(32,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(33,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(34,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2025-01-17 18:10:13','2025-01-17 18:10:13',NULL,'public'),(35,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2025-01-17 18:10:14','2025-01-17 18:10:14',NULL,'public'),(36,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2025-01-17 18:10:14','2025-01-17 18:10:14',NULL,'public'),(37,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2025-01-17 18:10:14','2025-01-17 18:10:14',NULL,'public'),(38,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2025-01-17 18:10:14','2025-01-17 18:10:14',NULL,'public'),(39,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2025-01-17 18:10:15','2025-01-17 18:10:15',NULL,'public'),(40,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2025-01-17 18:10:15','2025-01-17 18:10:15',NULL,'public'),(41,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2025-01-17 18:10:15','2025-01-17 18:10:15',NULL,'public'),(42,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2025-01-17 18:10:15','2025-01-17 18:10:15',NULL,'public'),(43,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2025-01-17 18:10:15','2025-01-17 18:10:15',NULL,'public'),(44,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(45,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(46,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(47,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(48,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(49,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(50,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2025-01-17 18:10:16','2025-01-17 18:10:16',NULL,'public'),(51,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(52,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(53,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(54,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(55,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(56,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(57,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2025-01-17 18:10:17','2025-01-17 18:10:17',NULL,'public'),(58,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2025-01-17 18:10:18','2025-01-17 18:10:18',NULL,'public'),(59,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2025-01-17 18:10:18','2025-01-17 18:10:18',NULL,'public'),(60,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2025-01-17 18:10:18','2025-01-17 18:10:18',NULL,'public'),(61,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2025-01-17 18:10:18','2025-01-17 18:10:18',NULL,'public'),(62,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2025-01-17 18:10:18','2025-01-17 18:10:18',NULL,'public'),(63,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2025-01-17 18:10:18','2025-01-17 18:10:18',NULL,'public'),(64,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(65,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(66,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(67,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(68,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(69,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(70,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2025-01-17 18:10:19','2025-01-17 18:10:19',NULL,'public'),(71,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2025-01-17 18:10:20','2025-01-17 18:10:20',NULL,'public'),(72,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2025-01-17 18:10:20','2025-01-17 18:10:20',NULL,'public'),(73,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2025-01-17 18:10:20','2025-01-17 18:10:20',NULL,'public'),(74,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2025-01-17 18:10:20','2025-01-17 18:10:20',NULL,'public'),(75,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2025-01-17 18:10:20','2025-01-17 18:10:20',NULL,'public'),(76,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2025-01-17 18:10:20','2025-01-17 18:10:20',NULL,'public'),(77,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2025-01-17 18:10:21','2025-01-17 18:10:21',NULL,'public'),(78,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2025-01-17 18:10:21','2025-01-17 18:10:21',NULL,'public'),(79,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2025-01-17 18:10:21','2025-01-17 18:10:21',NULL,'public'),(80,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2025-01-17 18:10:21','2025-01-17 18:10:21',NULL,'public'),(81,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2025-01-17 18:10:21','2025-01-17 18:10:21',NULL,'public'),(82,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2025-01-17 18:10:21','2025-01-17 18:10:21',NULL,'public'),(83,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2025-01-17 18:10:24','2025-01-17 18:10:24',NULL,'public'),(84,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2025-01-17 18:10:24','2025-01-17 18:10:24',NULL,'public'),(85,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2025-01-17 18:10:24','2025-01-17 18:10:24',NULL,'public'),(86,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2025-01-17 18:10:24','2025-01-17 18:10:24',NULL,'public'),(87,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2025-01-17 18:10:24','2025-01-17 18:10:24',NULL,'public'),(88,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2025-01-17 18:10:24','2025-01-17 18:10:24',NULL,'public'),(89,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2025-01-17 18:10:25','2025-01-17 18:10:25',NULL,'public'),(90,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2025-01-17 18:10:25','2025-01-17 18:10:25',NULL,'public'),(91,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2025-01-17 18:10:25','2025-01-17 18:10:25',NULL,'public'),(92,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2025-01-17 18:10:25','2025-01-17 18:10:25',NULL,'public'),(93,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2025-01-17 18:10:36','2025-01-17 18:10:36',NULL,'public'),(94,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2025-01-17 18:10:36','2025-01-17 18:10:36',NULL,'public'),(95,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2025-01-17 18:10:36','2025-01-17 18:10:36',NULL,'public'),(96,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2025-01-17 18:10:36','2025-01-17 18:10:36',NULL,'public'),(97,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2025-01-17 18:10:36','2025-01-17 18:10:36',NULL,'public'),(98,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2025-01-17 18:10:36','2025-01-17 18:10:36',NULL,'public'),(99,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2025-01-17 18:10:37','2025-01-17 18:10:37',NULL,'public'),(100,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2025-01-17 18:10:37','2025-01-17 18:10:37',NULL,'public'),(101,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2025-01-17 18:10:37','2025-01-17 18:10:37',NULL,'public'),(102,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2025-01-17 18:10:37','2025-01-17 18:10:37',NULL,'public'),(103,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2025-01-17 18:10:38','2025-01-17 18:10:38',NULL,'public'),(104,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2025-01-17 18:10:38','2025-01-17 18:10:38',NULL,'public'),(105,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2025-01-17 18:10:38','2025-01-17 18:10:38',NULL,'public'),(106,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2025-01-17 18:10:38','2025-01-17 18:10:38',NULL,'public'),(107,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2025-01-17 18:10:39','2025-01-17 18:10:39',NULL,'public'),(108,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2025-01-17 18:10:39','2025-01-17 18:10:39',NULL,'public'),(109,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2025-01-17 18:10:39','2025-01-17 18:10:39',NULL,'public'),(110,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2025-01-17 18:10:39','2025-01-17 18:10:39',NULL,'public'),(111,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2025-01-17 18:10:39','2025-01-17 18:10:39',NULL,'public'),(112,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2025-01-17 18:10:39','2025-01-17 18:10:39',NULL,'public'),(113,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(114,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(115,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(116,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(117,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(118,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(119,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(120,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2025-01-17 18:10:40','2025-01-17 18:10:40',NULL,'public'),(121,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,'public'),(122,0,'app','app',8,'image/png',8667,'general/app.png','[]','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,'public'),(123,0,'coming-soon','coming-soon',8,'image/jpeg',22253,'general/coming-soon.jpg','[]','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,'public'),(124,0,'favicon','favicon',8,'image/png',5047,'general/favicon.png','[]','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,'public'),(125,0,'logo-dark','logo-dark',8,'image/png',1562,'general/logo-dark.png','[]','2025-01-17 18:10:41','2025-01-17 18:10:41',NULL,'public'),(126,0,'logo-light','logo-light',8,'image/png',1529,'general/logo-light.png','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(127,0,'logo','logo',8,'image/png',1441,'general/logo.png','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(128,0,'newsletter','newsletter',8,'image/jpeg',9778,'general/newsletter.jpg','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',944,'general/payment-method-4.jpg','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',964,'general/payment-method-5.jpg','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(134,0,'placeholder','placeholder',8,'image/png',12344,'general/placeholder.png','[]','2025-01-17 18:10:42','2025-01-17 18:10:42',NULL,'public'),(135,0,'1','1',9,'image/png',9022,'stores/1.png','[]','2025-01-17 18:10:43','2025-01-17 18:10:43',NULL,'public'),(136,0,'10','10',9,'image/png',4384,'stores/10.png','[]','2025-01-17 18:10:43','2025-01-17 18:10:43',NULL,'public'),(137,0,'11','11',9,'image/png',4706,'stores/11.png','[]','2025-01-17 18:10:43','2025-01-17 18:10:43',NULL,'public'),(138,0,'12','12',9,'image/png',5075,'stores/12.png','[]','2025-01-17 18:10:43','2025-01-17 18:10:43',NULL,'public'),(139,0,'13','13',9,'image/png',3700,'stores/13.png','[]','2025-01-17 18:10:43','2025-01-17 18:10:43',NULL,'public'),(140,0,'14','14',9,'image/png',4239,'stores/14.png','[]','2025-01-17 18:10:44','2025-01-17 18:10:44',NULL,'public'),(141,0,'15','15',9,'image/png',5304,'stores/15.png','[]','2025-01-17 18:10:44','2025-01-17 18:10:44',NULL,'public'),(142,0,'16','16',9,'image/png',4796,'stores/16.png','[]','2025-01-17 18:10:44','2025-01-17 18:10:44',NULL,'public'),(143,0,'17','17',9,'image/png',4919,'stores/17.png','[]','2025-01-17 18:10:44','2025-01-17 18:10:44',NULL,'public'),(144,0,'2','2',9,'image/png',8598,'stores/2.png','[]','2025-01-17 18:10:44','2025-01-17 18:10:44',NULL,'public'),(145,0,'3','3',9,'image/png',7888,'stores/3.png','[]','2025-01-17 18:10:44','2025-01-17 18:10:44',NULL,'public'),(146,0,'4','4',9,'image/png',8393,'stores/4.png','[]','2025-01-17 18:10:45','2025-01-17 18:10:45',NULL,'public'),(147,0,'5','5',9,'image/png',10159,'stores/5.png','[]','2025-01-17 18:10:45','2025-01-17 18:10:45',NULL,'public'),(148,0,'6','6',9,'image/png',10312,'stores/6.png','[]','2025-01-17 18:10:45','2025-01-17 18:10:45',NULL,'public'),(149,0,'7','7',9,'image/png',3764,'stores/7.png','[]','2025-01-17 18:10:45','2025-01-17 18:10:45',NULL,'public'),(150,0,'8','8',9,'image/png',4237,'stores/8.png','[]','2025-01-17 18:10:45','2025-01-17 18:10:45',NULL,'public'),(151,0,'9','9',9,'image/png',4096,'stores/9.png','[]','2025-01-17 18:10:45','2025-01-17 18:10:45',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2025-01-17 18:10:08','2025-01-17 18:10:08',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2025-01-17 18:10:09','2025-01-17 18:10:09',NULL),(3,0,'products',NULL,'products',0,'2025-01-17 18:10:11','2025-01-17 18:10:11',NULL),(4,0,'customers',NULL,'customers',0,'2025-01-17 18:10:24','2025-01-17 18:10:24',NULL),(5,0,'news',NULL,'news',0,'2025-01-17 18:10:36','2025-01-17 18:10:36',NULL),(6,0,'sliders',NULL,'sliders',0,'2025-01-17 18:10:38','2025-01-17 18:10:38',NULL),(7,0,'promotion',NULL,'promotion',0,'2025-01-17 18:10:40','2025-01-17 18:10:40',NULL),(8,0,'general',NULL,'general',0,'2025-01-17 18:10:41','2025-01-17 18:10:41',NULL),(9,0,'stores',NULL,'stores',0,'2025-01-17 18:10:43','2025-01-17 18:10:43',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-01-17 18:10:41','2025-01-17 18:10:41');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(8,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',1,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Products Of Category',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQs',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(16,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(17,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms & Conditions',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(18,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Refund Policy',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(19,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQs',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(21,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(22,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Affiliate',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(23,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Career',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(24,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact us',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(25,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2025-01-17 18:10:41','2025-01-17 18:10:41');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(2,'Quick links','quick-links','published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(3,'Company','company','published','2025-01-17 18:10:41','2025-01-17 18:10:41'),(4,'Business','business','published','2025-01-17 18:10:41','2025-01-17 18:10:41');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:10','2025-01-17 18:10:10'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:11','2025-01-17 18:10:11'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:11','2025-01-17 18:10:11'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:11','2025-01-17 18:10:11'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2025-01-17 18:10:11','2025-01-17 18:10:11'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2025-01-17 18:10:22','2025-01-17 18:10:22'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-17 18:10:40','2025-01-17 18:10:40'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-17 18:10:40','2025-01-17 18:10:40'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-17 18:10:40','2025-01-17 18:10:40'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-17 18:10:40','2025-01-17 18:10:40'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-17 18:10:40','2025-01-17 18:10:40'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-17 18:10:40','2025-01-17 18:10:40');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2021_08_02_084121_fix_old_shortcode',1),(18,'2022_04_20_100851_add_index_to_media_table',1),(19,'2022_04_20_101046_add_index_to_menu_table',1),(20,'2022_07_10_034813_move_lang_folder_to_root',1),(21,'2022_08_04_051940_add_missing_column_expires_at',1),(22,'2022_09_01_000001_create_admin_notifications_tables',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2023_01_30_024431_add_alt_to_media_table',1),(27,'2023_02_16_042611_drop_table_password_resets',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_04_030654_improve_social_links',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2020_11_18_150916_ads_create_ads_table',2),(41,'2021_12_02_035301_add_ads_translations_table',2),(42,'2023_04_17_062645_add_open_in_new_tab',2),(43,'2023_11_07_023805_add_tablet_mobile_image',2),(44,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(45,'2024_04_27_100730_improve_analytics_setting',3),(46,'2015_06_29_025744_create_audit_history',4),(47,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(48,'2015_06_18_033822_create_blog_table',5),(49,'2021_02_16_092633_remove_default_value_for_author_type',5),(50,'2021_12_03_030600_create_blog_translations',5),(51,'2022_04_19_113923_add_index_to_table_posts',5),(52,'2023_08_29_074620_make_column_author_id_nullable',5),(53,'2024_07_30_091615_fix_order_column_in_categories_table',5),(54,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(55,'2016_06_17_091537_create_contacts_table',6),(56,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(57,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(58,'2024_03_25_000001_update_captcha_settings_for_contact',6),(59,'2024_04_19_063914_create_custom_fields_table',6),(60,'2020_03_05_041139_create_ecommerce_tables',7),(61,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(62,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(63,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(64,'2021_02_18_073505_update_table_ec_reviews',7),(65,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(66,'2021_03_10_025153_change_column_tax_amount',7),(67,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(68,'2021_04_28_074008_ecommerce_create_product_label_table',7),(69,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(70,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(71,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(72,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(73,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(74,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(75,'2021_11_23_071403_correct_languages_for_product_variations',7),(76,'2021_11_28_031808_add_product_tags_translations',7),(77,'2021_12_01_031123_add_featured_image_to_ec_products',7),(78,'2022_01_01_033107_update_table_ec_shipments',7),(79,'2022_02_16_042457_improve_product_attribute_sets',7),(80,'2022_03_22_075758_correct_product_name',7),(81,'2022_04_19_113334_add_index_to_ec_products',7),(82,'2022_04_28_144405_remove_unused_table',7),(83,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(84,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(85,'2022_06_16_095633_add_index_to_some_tables',7),(86,'2022_06_30_035148_create_order_referrals_table',7),(87,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(88,'2022_08_14_032836_create_ec_order_returns_table',7),(89,'2022_08_14_033554_create_ec_order_return_items_table',7),(90,'2022_08_15_040324_add_billing_address',7),(91,'2022_08_30_091114_support_digital_products_table',7),(92,'2022_09_13_095744_create_options_table',7),(93,'2022_09_13_104347_create_option_value_table',7),(94,'2022_10_05_163518_alter_table_ec_order_product',7),(95,'2022_10_12_041517_create_invoices_table',7),(96,'2022_10_12_142226_update_orders_table',7),(97,'2022_10_13_024916_update_table_order_returns',7),(98,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(99,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(100,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(101,'2022_11_19_041643_add_ec_tax_product_table',7),(102,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(103,'2022_12_17_041532_fix_address_in_order_invoice',7),(104,'2022_12_26_070329_create_ec_product_views_table',7),(105,'2023_01_04_033051_fix_product_categories',7),(106,'2023_01_09_050400_add_ec_global_options_translations_table',7),(107,'2023_01_10_093754_add_missing_option_value_id',7),(108,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(109,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(110,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(111,'2023_02_27_095752_remove_duplicate_reviews',7),(112,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(113,'2023_04_21_082427_create_ec_product_categorizables_table',7),(114,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(115,'2023_05_17_025812_fix_invoice_issue',7),(116,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(117,'2023_05_27_144611_fix_exchange_rate_setting',7),(118,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(119,'2023_06_30_042512_create_ec_order_tax_information_table',7),(120,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(121,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(122,'2023_08_15_064505_create_ec_tax_rules_table',7),(123,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(124,'2023_08_22_094114_drop_unique_for_barcode',7),(125,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(126,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(127,'2023_09_19_024955_create_discount_product_categories_table',7),(128,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(129,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(130,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(131,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(132,'2023_12_25_040604_ec_create_review_replies_table',7),(133,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(134,'2024_01_16_070706_fix_translation_tables',7),(135,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(136,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(137,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(138,'2024_03_29_042242_migrate_old_captcha_settings',7),(139,'2024_03_29_093946_create_ec_order_return_histories_table',7),(140,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(141,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(142,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(143,'2024_05_07_073153_improve_table_wishlist',7),(144,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(145,'2024_05_15_021503_fix_invoice_path',7),(146,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(147,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(148,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(149,'2024_07_14_071826_make_customer_email_nullable',7),(150,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(151,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(152,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(153,'2024_08_19_132849_create_specification_tables',7),(154,'2024_09_07_060744_add_author_column_to_specification_tables',7),(155,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(156,'2024_09_25_073928_remove_wrong_product_slugs',7),(157,'2025_01_03_044641_migrate_old_country_data',7),(158,'2025_01_15_050230_migrate_old_theme_options',7),(159,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(160,'2018_07_09_221238_create_faq_table',8),(161,'2021_12_03_082134_create_faq_translations',8),(162,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(163,'2016_10_03_032336_create_languages_table',9),(164,'2023_09_14_022423_add_index_for_language_table',9),(165,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(166,'2021_12_03_075608_create_page_translations',10),(167,'2023_07_06_011444_create_slug_translations_table',10),(168,'2019_11_18_061011_create_country_table',11),(169,'2021_12_03_084118_create_location_translations',11),(170,'2021_12_03_094518_migrate_old_location_data',11),(171,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(172,'2022_01_16_085908_improve_plugin_location',11),(173,'2022_08_04_052122_delete_location_backup_tables',11),(174,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(175,'2023_07_26_041451_add_more_columns_to_location_table',11),(176,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(177,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(178,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(179,'2024_08_17_094600_add_image_into_countries',11),(180,'2025_01_08_093652_add_zip_code_to_cities',11),(181,'2021_07_06_030002_create_marketplace_table',12),(182,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(183,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(184,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(185,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(186,'2021_12_06_031304_update_table_mp_customer_revenues',12),(187,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(188,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(189,'2022_11_02_071413_add_more_info_for_store',12),(190,'2022_11_02_080444_add_tax_info',12),(191,'2023_02_01_062030_add_store_translations',12),(192,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(193,'2023_02_17_023648_fix_store_prefix',12),(194,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(195,'2024_05_07_082630_create_mp_messages_table',12),(196,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(197,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(198,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(199,'2024_09_17_125408_add_square_logo_to_stores_table',12),(200,'2017_10_24_154832_create_newsletter_table',13),(201,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(202,'2017_05_18_080441_create_payment_tables',14),(203,'2021_03_27_144913_add_customer_type_into_table_payments',14),(204,'2021_05_24_034720_make_column_currency_nullable',14),(205,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(206,'2021_10_19_020859_update_metadata_field',14),(207,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(208,'2022_07_07_153354_update_charge_id_in_table_payments',14),(209,'2024_07_04_083133_create_payment_logs_table',14),(210,'2017_07_11_140018_create_simple_slider_table',15),(211,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',16),(212,'2016_10_07_193005_create_translations_table',17),(213,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','pierce.carter@example.net','+15398934027','1930 Marks Unions Suite 908','CL','Hawaii','Alleneberg',2,'stores/1.png',NULL,NULL,'Aut fugit sint et aperiam quis.','Voluptas quasi natus iste et facilis. Et voluptatem excepturi nobis. Distinctio et dolorem ut animi. Et veniam mollitia at.','published',NULL,'2025-01-17 18:10:48','2025-01-17 18:10:48',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','lschimmel@example.net','+12624832335','515 Rempel Mews Suite 219','NC','New York','Grantville',5,'stores/2.png',NULL,NULL,'Ipsa eos ratione est.','Et similique illum ut quasi praesentium illum repudiandae voluptatibus. Aut placeat necessitatibus quia doloremque. Officiis in sed id id possimus.','published',NULL,'2025-01-17 18:10:48','2025-01-17 18:10:48',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','kpadberg@example.org','+17652459776','259 Katharina Summit Apt. 576','LV','Mississippi','Casperhaven',8,'stores/3.png',NULL,NULL,'Illo voluptatem earum officia assumenda.','Sed magni enim pariatur ipsa. Consequatur soluta cupiditate itaque voluptatum. Dolorem recusandae incidunt maxime aut et.','published',NULL,'2025-01-17 18:10:48','2025-01-17 18:10:48',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','schaefer.santa@example.net','+13419941096','288 Libbie Village','KI','Idaho','Port Barneyfort',9,'stores/4.png',NULL,NULL,'Distinctio omnis neque officia sunt quia.','Consectetur aliquam magnam voluptatibus officiis qui alias. Quasi provident quasi incidunt nobis voluptas.','published',NULL,'2025-01-17 18:10:48','2025-01-17 18:10:48',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$SVsVgsuTxNvcjclWIla5/.3WcO6yhJq0uapTep4A9ZW.2f.Vn7S4K','{\"name\":\"Oswaldo Connelly II\",\"number\":\"+17624775947\",\"full_name\":\"Mr. Rasheed Wolff DVM\",\"description\":\"Hyman Osinski\"}','2025-01-17 18:10:46','2025-01-17 18:10:46','bank_transfer',NULL),(2,5,0.00,0.00,0.00,'$2y$12$WDEao9GK6gYO/wglyzAIge6MMJopj8oesTbdnx/jQ3ZAEDHNd4zqC','{\"name\":\"Reanna Morissette\",\"number\":\"+15677401101\",\"full_name\":\"Breana Krajcik\",\"description\":\"Abbey Wilkinson\"}','2025-01-17 18:10:47','2025-01-17 18:10:47','bank_transfer',NULL),(3,8,0.00,0.00,0.00,'$2y$12$dK5CN7RMPj5BkkuDDCESY.Ltca4E5qVWGcnXa06rFSXUlyVt.jm2y','{\"name\":\"Adolphus Rolfson\",\"number\":\"+12795790227\",\"full_name\":\"Cyril Glover\",\"description\":\"Guiseppe Mueller\"}','2025-01-17 18:10:47','2025-01-17 18:10:47','bank_transfer',NULL),(4,9,0.00,0.00,0.00,'$2y$12$QhQQVxYVLG7eHP2o0S6W4O951DAztdL9kWHALWEDI52b0FDgfkyva','{\"name\":\"Mr. Oscar Heathcote\",\"number\":\"+15594352628\",\"full_name\":\"Mr. Salvatore Marquardt\",\"description\":\"Dorris Hettinger\"}','2025-01-17 18:10:48','2025-01-17 18:10:48','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(2,'About us','<p>ONE.\' \'One, indeed!\' said the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like the look of things at all, at all!\' \'Do as I was a most extraordinary noise going on between the executioner, the King, \'that only makes the world she was nine feet high. \'I wish you could draw treacle out of his shrill little voice, the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the last time she had plenty of time as she wandered about.</p><p>I suppose, by being drowned in my life!\' She had already heard her sentence three of the Gryphon, \'that they WOULD not remember the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you were down here with me! There are no mice in the middle of the others all joined in chorus, \'Yes, please do!\' but the tops of the song. \'What trial is it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Cat, and.</p><p>When the procession came opposite to Alice, they all crowded round her, about four feet high. \'Whoever lives there,\' thought Alice, as she spoke, but no result seemed to think to herself, \'Now, what am I then? Tell me that first, and then nodded. \'It\'s no business of MINE.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good many voices all talking at once, she found that it was too much pepper in my life!\' She had just begun to think that.</p><p>Alice, \'it\'s very interesting. I never was so full of smoke from one end to the jury. They were indeed a queer-looking party that assembled on the trumpet, and then a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great crowd assembled about them--all sorts of things, and she, oh! she knows such a dear little puppy it was!\' said Alice, surprised at her feet in a frightened tone. \'The Queen will hear you! You see, she came upon a neat little.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(3,'Terms Of Use','<p>THERE again!\' said Alice sharply, for she felt sure it would be quite as much right,\' said the King. \'When did you ever eat a bat?\' when suddenly, thump! thump! down she came up to her lips. \'I know SOMETHING interesting is sure to happen,\' she said this, she looked down, was an old Crab took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin with; and being so many out-of-the-way things to happen, that it would be the best way to explain the.</p><p>II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, in a tone of great relief. \'Now at OURS they had to fall upon Alice, as she fell very slowly, for she was exactly three inches high). \'But I\'m not particular as to the confused clamour of the jury had a little of it?\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the last word with such sudden violence that Alice quite jumped; but she could not make out at the stick, and made.</p><p>But her sister kissed her, and the baby with some difficulty, as it spoke (it was Bill, I fancy--Who\'s to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Hatter. \'Nor I,\' said the Cat. \'--so long as it left no mark on the look-out for serpents night and day! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter. \'Stolen!\' the King eagerly, and he went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t talk about her repeating \'YOU ARE.</p><p>All this time the Queen had only one way of nursing it, (which was to twist it up into the court, arm-in-arm with the Queen, but she stopped hastily, for the next moment she appeared on the look-out for serpents night and day! Why, I wouldn\'t be so stingy about it, so she set off at once, with a sigh: \'it\'s always tea-time, and we\'ve no time to see what would happen next. \'It\'s--it\'s a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the Hatter. \'I deny it!\' said the youth.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(4,'Terms &amp; Conditions','<p>Alice soon began talking to him,\' said Alice in a fight with another hedgehog, which seemed to Alice with one finger, as he fumbled over the list, feeling very glad to do anything but sit with its head, it WOULD twist itself round and swam slowly back again, and she walked sadly down the middle, wondering how she would catch a bad cold if she could do, lying down on one side, to look through into the garden with one of the singers in the house, and have next to no toys to play croquet.\' Then.</p><p>Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea how to spell \'stupid,\' and that you had been anything near the right way of keeping up the conversation a little. \'\'Tis so,\' said the March Hare was said to the jury. \'Not yet, not yet!\' the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon said to Alice, \'Have you seen the Mock.</p><p>I can remember feeling a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at poor Alice, and she tried to fancy what the moral of that dark hall, and close to her: first, because the chimneys were shaped like ears and the other arm curled round her head. Still she went on, yawning and rubbing its eyes, for it to be Involved in this affair, He trusts to you never to lose YOUR temper!\' \'Hold your tongue!\' said the Knave, \'I didn\'t mean it!\' pleaded poor.</p><p>Hatter trembled so, that Alice said; \'there\'s a large crowd collected round it: there was no label this time she had someone to listen to me! When I used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a very poor speaker,\' said the King. \'It began with the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(5,'Refund Policy','<p>Cat; and this he handed over to the puppy; whereupon the puppy began a series of short charges at the sudden change, but very politely: \'Did you say \"What a pity!\"?\' the Rabbit asked. \'No, I give you fair warning,\' shouted the Queen, stamping on the floor, as it was YOUR table,\' said Alice; \'I must be shutting up like a telescope! I think I can remember feeling a little girl she\'ll think me at home! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Queen, pointing to the.</p><p>I say--that\'s the same words as before, \'and things are \"much of a muchness\"--did you ever see such a thing before, but she saw them, they set to work nibbling at the corners: next the ten courtiers; these were ornamented all over crumbs.\' \'You\'re wrong about the crumbs,\' said the Rabbit say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a doze; but, on being pinched by the time he had a consultation about this, and after a few yards off. The Cat seemed to be a.</p><p>King, \'that saves a world of trouble, you know, upon the other end of trials, \"There was some attempts at applause, which was full of tears, until there was the only difficulty was, that she looked back once or twice, half hoping she might find another key on it, (\'which certainly was not easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why not?\' said the King, going up to the other, looking uneasily at the end.\' \'If you please, sir--\' The Rabbit started violently.</p><p>Alice, \'I\'ve often seen them so often, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good deal on where you want to be?\' it asked. \'Oh, I\'m not particular as to bring tears into her head. Still she went on in a natural way again. \'I should like to go with the other: the only difficulty was, that her flamingo was gone in a tone of great surprise. \'Of course it is,\' said the Cat. \'Do you mean \"purpose\"?\' said Alice. \'Off with her friend. When she got back to them.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(10,'Affiliate','<p>Gryphon said to herself, as she could see it again, but it had been, it suddenly appeared again. \'By-the-bye, what became of the hall; but, alas! either the locks were too large, or the key was lying on their hands and feet at the door--I do wish I hadn\'t mentioned Dinah!\' she said this she looked down at once, with a round face, and was just possible it had been, it suddenly appeared again. \'By-the-bye, what became of the sort,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a.</p><p>King. On this the White Rabbit as he spoke, and the choking of the court with a little timidly, \'why you are very dull!\' \'You ought to be no sort of life! I do hope it\'ll make me larger, it must be what he did not get hold of it; so, after hunting all about for it, while the rest of it had finished this short speech, they all crowded together at one and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can say.\' This was such a thing as \"I get what I get\" is the reason.</p><p>King, and the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the loveliest garden you ever see such a nice soft thing to eat or drink something or other; but the wise little Alice herself, and nibbled a little house in it about four feet high. \'Whoever lives there,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should say \"With what porpoise?\"\' \'Don\'t you mean that you had been to the seaside once in her face, and was just.</p><p>Jack-in-the-box, and up the little golden key and hurried off to other parts of the birds hurried off at once: one old Magpie began wrapping itself up very sulkily and crossed over to herself, \'Why, they\'re only a mouse that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m not Ada,\' she said, without even looking round. \'I\'ll fetch the executioner went off like an arrow. The Cat\'s head with great emphasis, looking hard at Alice as she could do to hold it. As soon as the Caterpillar.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(11,'Career','<p>WOULD twist itself round and look up in her hand, and a sad tale!\' said the Mock Turtle with a bound into the open air. \'IF I don\'t put my arm round your waist,\' the Duchess sneezed occasionally; and as for the White Rabbit, jumping up in great disgust, and walked off; the Dormouse into the court, \'Bring me the list of singers. \'You may go,\' said the King; and the fall NEVER come to the Knave. The Knave shook his grey locks, \'I kept all my limbs very supple By the use of a globe of goldfish.</p><p>She ate a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of getting up and said, \'It WAS a narrow escape!\' said Alice, surprised at her rather inquisitively, and seemed to be talking in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came upon a neat little house, on the look-out for serpents night and day! Why, I do wonder what you\'re doing!\' cried Alice, with a whiting. Now you know.\' \'And what an ignorant.</p><p>I will prosecute YOU.--Come, I\'ll take no denial; We must have prizes.\' \'But who is to do this, so that they must needs come wriggling down from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this the White Rabbit, who was sitting on the door of which was lit up by a very curious to see you any more!\' And here Alice began telling them her adventures from the shock of being all alone here!\' As she said to the baby, and not to be rude, so she went round.</p><p>Rabbit was no \'One, two, three, and away,\' but they all spoke at once, while all the rats and--oh dear!\' cried Alice (she was obliged to say when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said the Cat. \'--so long as there was Mystery,\' the Mock Turtle. \'Certainly not!\' said Alice to herself, \'to be going messages for a.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2026-01-18 01:10:40\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2025-01-17 18:10:40','2025-01-17 18:10:40');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `post_categories` VALUES (2,1),(4,1),(1,2),(3,2),(2,3),(3,3),(1,4),(4,4),(1,5),(4,5),(2,6),(4,6),(1,7),(4,7),(1,8),(4,8),(2,9),(4,9),(1,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2272,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',181,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2290,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2011,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2499,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1123,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1688,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',942,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',492,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',343,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1291,NULL,'2025-01-17 18:10:38','2025-01-17 18:10:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-01-17 18:10:36','2025-01-17 18:10:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2025-01-17 18:10:42'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2025-01-17 18:10:42'),(4,'analytics_dashboard_widgets','0','2025-01-17 18:10:03','2025-01-17 18:10:03'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-01-17 18:10:04','2025-01-17 18:10:04'),(6,'api_layer_api_key','',NULL,'2025-01-17 18:10:42'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-01-17 18:10:07','2025-01-17 18:10:07'),(12,'language_hide_default','1',NULL,'2025-01-17 18:10:42'),(13,'language_switcher_display','dropdown',NULL,'2025-01-17 18:10:42'),(14,'language_display','all',NULL,'2025-01-17 18:10:42'),(15,'language_hide_languages','[]',NULL,'2025-01-17 18:10:42'),(16,'simple_slider_using_assets','0',NULL,NULL),(17,'media_random_hash','c8880eb46c2c8216834e70deb6f4672f',NULL,'2025-01-17 18:10:42'),(18,'payment_cod_status','1',NULL,'2025-01-17 18:10:42'),(19,'payment_bank_transfer_status','1',NULL,'2025-01-17 18:10:42'),(20,'theme','martfury',NULL,'2025-01-17 18:10:42'),(21,'show_admin_bar','1',NULL,'2025-01-17 18:10:42'),(22,'admin_favicon','general/favicon.png',NULL,'2025-01-17 18:10:42'),(23,'admin_logo','general/logo-light.png',NULL,'2025-01-17 18:10:42'),(24,'permalink-botble-blog-models-post','blog',NULL,'2025-01-17 18:10:42'),(25,'permalink-botble-blog-models-category','blog',NULL,'2025-01-17 18:10:42'),(26,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-01-17 18:10:42'),(27,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-01-17 18:10:42'),(28,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-01-17 18:10:42'),(29,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-01-17 18:10:42'),(30,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-01-17 18:10:42'),(31,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-01-17 18:10:42'),(32,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-01-17 18:10:42'),(33,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-01-17 18:10:42'),(34,'ecommerce_product_sku_format','MF-2443-[%S]',NULL,'2025-01-17 18:10:42'),(35,'ecommerce_enable_product_specification','1',NULL,'2025-01-17 18:10:42'),(36,'ecommerce_store_name','Martfury',NULL,NULL),(37,'ecommerce_store_phone','1800979769',NULL,NULL),(38,'ecommerce_store_address','502 New Street',NULL,NULL),(39,'ecommerce_store_state','Brighton VIC',NULL,NULL),(40,'ecommerce_store_city','Brighton VIC',NULL,NULL),(41,'ecommerce_store_country','AU',NULL,NULL),(42,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(43,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(44,'theme-martfury-copyright','© %Y MartFury. All Rights Reserved.',NULL,NULL),(45,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(46,'theme-martfury-logo','general/logo.png',NULL,NULL),(47,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(48,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(49,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(50,'theme-martfury-email','contact@martfury.co',NULL,NULL),(51,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(52,'theme-martfury-homepage_id','1',NULL,NULL),(53,'theme-martfury-blog_page_id','6',NULL,NULL),(54,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(55,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(56,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(57,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(58,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(59,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(60,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(61,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(62,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(63,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(64,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(65,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(66,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(67,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(68,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(69,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(70,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(71,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(72,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(73,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(74,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(75,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(76,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(77,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(78,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(79,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(80,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(81,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(82,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(83,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(84,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(85,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(86,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(87,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(88,'theme-martfury-primary_font','Work Sans',NULL,NULL),(89,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(90,'theme-martfury-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(91,'theme-martfury-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(92,'theme-martfury-lazy_load_images','1',NULL,NULL),(93,'theme-martfury-lazy_load_placeholder_image','general/placeholder.png',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2025-01-17 18:10:40','2025-01-17 18:10:40'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2025-01-17 18:10:40','2025-01-17 18:10:40'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2025-01-17 18:10:40','2025-01-17 18:10:40');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-01-17 18:10:40','2025-01-17 18:10:40');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-01-17 18:10:09','2025-01-17 18:10:09'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:10','2025-01-17 18:10:10'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:11','2025-01-17 18:10:11'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:11','2025-01-17 18:10:11'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-01-17 18:10:11','2025-01-17 18:10:11'),(45,'dual-camera-20mp-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:48'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(49,'smart-watch-external-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:48'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(53,'samsung-smart-phone-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:48'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(57,'sound-intone-i65-earphone-white-version-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:48'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(61,'samsung-gear-vr-virtual-reality-headset-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:48'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(65,'mvmth-classical-leather-watch-in-black-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:48'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:22','2025-01-17 18:10:22'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-01-17 18:10:31','2025-01-17 18:10:31'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-01-17 18:10:31','2025-01-17 18:10:31'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-01-17 18:10:31','2025-01-17 18:10:31'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-01-17 18:10:31','2025-01-17 18:10:31'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-01-17 18:10:31','2025-01-17 18:10:31'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-01-17 18:10:31','2025-01-17 18:10:31'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-01-17 18:10:38','2025-01-17 18:10:38'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-01-17 18:10:38','2025-01-17 18:10:38'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-01-17 18:10:38','2025-01-17 18:10:38'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-01-17 18:10:38','2025-01-17 18:10:38'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-01-17 18:10:38','2025-01-17 18:10:38'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-01-17 18:10:38','2025-01-17 18:10:41'),(94,'home',1,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(104,'career',11,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-01-17 18:10:40','2025-01-17 18:10:40'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-01-17 18:10:48','2025-01-17 18:10:48'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-01-17 18:10:48','2025-01-17 18:10:48'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-01-17 18:10:48','2025-01-17 18:10:48'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-01-17 18:10:48','2025-01-17 18:10:48'),(110,'dual-camera-20mp-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(111,'dual-camera-20mp-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(112,'dual-camera-20mp-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(113,'smart-watches',27,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(114,'smart-watches',28,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(115,'beat-headphone',29,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(116,'red-black-headphone',30,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(117,'red-black-headphone',31,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(118,'smart-watch-external-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(119,'smart-watch-external-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(120,'nikon-hd-camera',34,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(121,'audio-equipment',35,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(122,'audio-equipment',36,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(123,'smart-televisions',37,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(124,'samsung-smart-phone-digital',38,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(125,'samsung-smart-phone-digital',39,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(126,'samsung-smart-phone-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(127,'herschel-leather-duffle-bag-in-brown-color',41,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(128,'herschel-leather-duffle-bag-in-brown-color',42,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(129,'herschel-leather-duffle-bag-in-brown-color',43,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(130,'xbox-one-wireless-controller-black-color',44,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(131,'xbox-one-wireless-controller-black-color',45,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(132,'epsion-plaster-printer',46,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(133,'epsion-plaster-printer',47,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(134,'epsion-plaster-printer',48,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(135,'sound-intone-i65-earphone-white-version-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(136,'sound-intone-i65-earphone-white-version-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(137,'sound-intone-i65-earphone-white-version-digital',51,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(138,'sound-intone-i65-earphone-white-version-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(139,'bo-play-mini-bluetooth-speaker',53,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(140,'bo-play-mini-bluetooth-speaker',54,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(141,'bo-play-mini-bluetooth-speaker',55,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(142,'bo-play-mini-bluetooth-speaker',56,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(143,'apple-macbook-air-retina-133-inch-laptop',57,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(144,'apple-macbook-air-retina-133-inch-laptop',58,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(145,'apple-macbook-air-retina-12-inch-laptop',59,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(146,'samsung-gear-vr-virtual-reality-headset-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(147,'samsung-gear-vr-virtual-reality-headset-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(148,'samsung-gear-vr-virtual-reality-headset-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(149,'samsung-gear-vr-virtual-reality-headset-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(150,'aveeno-moisturizing-body-shower-450ml',64,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(151,'nyx-beauty-couton-pallete-makeup-12',65,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(152,'nyx-beauty-couton-pallete-makeup-12',66,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(153,'nyx-beauty-couton-pallete-makeup-12',67,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(154,'mvmth-classical-leather-watch-in-black-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(155,'mvmth-classical-leather-watch-in-black-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(156,'mvmth-classical-leather-watch-in-black-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(157,'baxter-care-hair-kit-for-bearded-mens',71,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(158,'baxter-care-hair-kit-for-bearded-mens',72,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(159,'baxter-care-hair-kit-for-bearded-mens',73,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(160,'ciate-palemore-lipstick-bold-red-color',74,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(161,'ciate-palemore-lipstick-bold-red-color',75,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48'),(162,'ciate-palemore-lipstick-bold-red-color',76,'Botble\\Ecommerce\\Models\\Product','products','2025-01-17 18:10:48','2025-01-17 18:10:48');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-17 18:10:38','2025-01-17 18:10:38'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-17 18:10:38','2025-01-17 18:10:38'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-17 18:10:38','2025-01-17 18:10:38'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-17 18:10:38','2025-01-17 18:10:38'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-17 18:10:38','2025-01-17 18:10:38');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lesch.luigi@heathcote.com',NULL,'$2y$12$AOxF99q29FZ0q8mAFaa2oevxQjfvXcRt7f72TNjpapS3Dsr91W3YC',NULL,'2025-01-17 18:10:36','2025-01-17 18:10:36','Kari','Beatty','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2025-01-17 18:10:42','2025-01-17 18:10:42'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2025-01-17 18:10:42','2025-01-17 18:10:42');
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

-- Dump completed on 2025-01-18  8:10:54
