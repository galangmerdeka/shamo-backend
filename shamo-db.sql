-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: shamo-backend
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_06_08_135012_create_sessions_table',1),(7,'2022_06_09_003923_add_field_to_users_table',2),(8,'2022_06_09_005121_create_product_categories_table',3),(9,'2022_06_09_005653_create_products_table',4),(10,'2022_06_09_010748_create_products_galleries_table',5),(11,'2022_06_09_010828_create_transactions_table',5),(12,'2022_06_09_010907_create_transactions_items_table',5),(13,'2022_06_09_142108_rename-table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'authToken','783e7ce2c80d3d4c926ee62425ac5f7f2ceaab3e05b5f437c39de65bd4539eae','[\"*\"]',NULL,'2022-06-11 00:57:37','2022-06-11 00:57:37'),(2,'App\\Models\\User',1,'authToken','dcfa7801cb84b222644358e4139e7dbfb3625b0ef65db75453717c1580308582','[\"*\"]',NULL,'2022-06-11 06:20:28','2022-06-11 06:20:28'),(3,'App\\Models\\User',1,'authToken','44f62946e8e7700f31b3913546843673fb79aa950ded19e0d9aa6ffdc9fed8c9','[\"*\"]',NULL,'2022-06-11 06:20:44','2022-06-11 06:20:44'),(4,'App\\Models\\User',1,'authToken','c4452b497954530a2d072736d226939b42f6d64f0075fde11bb95a69da9ed002','[\"*\"]',NULL,'2022-06-11 06:25:43','2022-06-11 06:25:43'),(5,'App\\Models\\User',1,'authToken','55c29438432201388627bc603e399b67bdc56d18dc7fd8b3f7816d047bd44f3f','[\"*\"]',NULL,'2022-06-11 06:28:18','2022-06-11 06:28:18'),(6,'App\\Models\\User',1,'authToken','9650b5760b0a30f2482a47e630b763361668355af724e08f2e84b90ff3bb0bac','[\"*\"]',NULL,'2022-06-11 06:29:22','2022-06-11 06:29:22'),(7,'App\\Models\\User',2,'authToken','5c002658b28f857a469b32e15989a3f424b5d605d57f9e8c983aabd4b15e0ada','[\"*\"]',NULL,'2022-06-11 07:05:21','2022-06-11 07:05:21'),(8,'App\\Models\\User',2,'authToken','3332a44425e48cdc12071fddb3de7d4c20e297ca5a33726af80eae0e0e83ce84','[\"*\"]',NULL,'2022-06-11 07:08:44','2022-06-11 07:08:44'),(9,'App\\Models\\User',2,'authToken','1d7a30effacfb5ed05e06f187dffa60f21691e4900935bfc30c0735ac05894ed','[\"*\"]',NULL,'2022-06-11 07:12:38','2022-06-11 07:12:38'),(10,'App\\Models\\User',2,'authToken','091ad7c9093f10b70eb20296a3dedbcc141e34a3404dbeed24f8b3f9a60afad6','[\"*\"]',NULL,'2022-06-11 07:14:21','2022-06-11 07:14:21'),(11,'App\\Models\\User',2,'authToken','b4658ec924b992e5e7050fb63ce8e5d2a73d0c2c9eff48e08123e691964d3db8','[\"*\"]',NULL,'2022-06-11 07:16:59','2022-06-11 07:16:59'),(12,'App\\Models\\User',2,'authToken','85b7e86d63c4b4ecd76b5b81a64b55e1bffc0f027c2e5db0293b2fce0d0a1f4d','[\"*\"]','2022-06-18 07:48:48','2022-06-18 04:57:09','2022-06-18 07:48:48'),(13,'App\\Models\\User',2,'authToken','ffd5003cddadf3ac465b0cb5373ec52a86f1b3f78a3b6e60cfda27d28471fab6','[\"*\"]',NULL,'2022-06-18 07:38:03','2022-06-18 07:38:03'),(14,'App\\Models\\User',2,'authToken','37a0355048f5459ded24f6a43a1003c1658de073bd140ca92799e7e41c134f80','[\"*\"]',NULL,'2022-06-18 07:38:54','2022-06-18 07:38:54'),(15,'App\\Models\\User',2,'authToken','e8cafcd499c6d1a4b224cfea1861c50b53dc3eeb29b642886b4064256bf870db','[\"*\"]',NULL,'2022-06-18 07:45:18','2022-06-18 07:45:18'),(17,'App\\Models\\User',1,'authToken','5254d17c3b511a399021b3b88077f69e933f6cea19e68d61dcba27cc861ee855','[\"*\"]','2022-06-18 08:11:36','2022-06-18 08:09:05','2022-06-18 08:11:36');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Sport',NULL,'2021-04-14 19:15:27','2021-04-14 19:15:27'),(2,'Hiking',NULL,'2021-04-14 19:15:33','2021-04-14 19:15:33'),(3,'Basketball',NULL,'2021-04-15 03:09:12','2021-04-15 03:09:12'),(4,'Training',NULL,'2021-04-15 03:12:34','2021-04-15 03:21:21'),(5,'Running',NULL,'2021-04-15 03:12:44','2021-04-15 03:12:44'),(6,'All Shoes',NULL,'2021-04-15 03:14:25','2021-04-15 03:14:25');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_galleries`
--

LOCK TABLES `product_galleries` WRITE;
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
INSERT INTO `product_galleries` VALUES (1,2,'public/gallery/sW4VtliQPYnwvlbpxL5x6ZhKvbgBWT84OoiDyRsE.png',NULL,'2021-04-15 03:30:43','2021-04-15 03:30:43'),(2,2,'public/gallery/ESsUP5CCJDFU9M2VENusfqpNTMnTmhaBJ1aXgObY.png',NULL,'2021-04-15 03:30:43','2021-04-15 03:30:43'),(3,2,'public/gallery/XraXaJ1wpPTxKLiu7aeUNeS6ahKzcbXNDEdaoDhl.png',NULL,'2021-04-15 03:30:43','2021-04-15 03:30:43'),(4,2,'public/gallery/dZCrPlwJFELXoLijEN54znQEdVHrR5XYJ2JJF9fz.png',NULL,'2021-04-15 03:30:43','2021-04-15 03:30:43'),(5,2,'public/gallery/aG8N8BxYfrsFCNrS4Dy0dzRFJ8kGSeq0YfcBG5Y1.png',NULL,'2021-04-15 03:30:43','2021-04-15 03:30:43'),(6,2,'public/gallery/eCb0D1Co2QPkxBgHnNkug8sCPZK4Cqo2pfRxxXbC.png',NULL,'2021-04-15 03:30:43','2021-04-15 03:30:43'),(7,3,'public/gallery/MUwSao1nhz93t143rnGukQ3n3zsQOzT7bds6LaNL.png',NULL,'2021-05-04 00:23:36','2021-05-04 00:23:36'),(8,3,'public/gallery/ypjT3Q93S4m4JJZU1AmFSvKGlYkzEozgquMuDlEl.png',NULL,'2021-05-04 00:23:36','2021-05-04 00:23:36'),(9,3,'public/gallery/TpHwMvS5Qt16ZrWGCNvRig06Hil1KC32nhfytqJr.png',NULL,'2021-05-04 00:23:36','2021-05-04 00:23:36'),(10,3,'public/gallery/790HDAkKC716Yz3mhY8dLpb1YprJbJcAyFSV9jfj.png',NULL,'2021-05-04 00:23:36','2021-05-04 00:23:36'),(11,3,'public/gallery/OnoxNehpuncIDkrxLjkIuwvLk5ZhOoA0w7jqPpYo.png',NULL,'2021-05-04 00:23:36','2021-05-04 00:23:36'),(12,3,'public/gallery/mUgYSLli5dluYD7RN0f0ATJqG3A3JwwWYRP9S0l6.png',NULL,'2021-05-04 00:23:36','2021-05-04 00:23:36'),(13,4,'public/gallery/qFURuaDw1Q50uD6x4iBY2vSHOCj4J7L2P5kJbj2Q.png',NULL,'2021-05-04 00:24:38','2021-05-04 00:24:38'),(14,4,'public/gallery/1GdKEYEWsSLWAfPBYA0SadJDiN8mTysVeXlQJdPn.png',NULL,'2021-05-04 00:24:38','2021-05-04 00:24:38'),(15,4,'public/gallery/X6mVmUz9WJeReWF8VEWSUmGv2FGrsYPRdQjZx2GE.png',NULL,'2021-05-04 00:24:38','2021-05-04 00:24:38'),(16,4,'public/gallery/Dvx61EybFLptTyacEOsQXUTMIRxv23zKVX0kYOqP.png',NULL,'2021-05-04 00:24:38','2021-05-04 00:24:38'),(17,4,'public/gallery/Apzm7xatqXoWDCk11BkeifpEc9tJKrQgjTEeY9qN.png',NULL,'2021-05-04 00:24:38','2021-05-04 00:24:38'),(18,4,'public/gallery/jLfKPCiFi3iamxOfxanObW7o24iHVldFLDjI7RQe.png',NULL,'2021-05-04 00:24:38','2021-05-04 00:24:38'),(19,5,'public/gallery/c9SCBcdBsTGg0denYuTrUhudkY0TrrXqe3ef5cnk.png',NULL,'2021-05-04 00:25:28','2021-05-04 00:25:28'),(20,5,'public/gallery/u2yGoCdP1tcu3z5X672fXO8RQKCeXVhiaRvksWQN.png',NULL,'2021-05-04 00:25:28','2021-05-04 00:25:28'),(21,5,'public/gallery/IzeGtHfVqz4PaCZJQwuZSA4kp7TbZ75SxSKEvLwm.png',NULL,'2021-05-04 00:25:28','2021-05-04 00:25:28'),(22,5,'public/gallery/Q14TGPSj8xDd3Qdlk4H36kk2XSnneHorALvBibVq.png',NULL,'2021-05-04 00:25:28','2021-05-04 00:25:28'),(23,5,'public/gallery/kG9M8bitYoL3bklD5WjM8qjl7lyr4iv4YM0Uwd2c.png',NULL,'2021-05-04 00:25:28','2021-05-04 00:25:28'),(24,5,'public/gallery/EO6AVZfnniMiMlAe3wqkSWKYs9GgrVsnB3NYu5Ag.png',NULL,'2021-05-04 00:25:28','2021-05-04 00:25:28'),(25,6,'public/gallery/XYbi0Tp87wf5kLvzC5GxJlFKP0YdCi7eh8G5PMjS.png',NULL,'2021-05-04 00:26:32','2021-05-04 00:26:32'),(26,6,'public/gallery/lVdI2v3PjixwUU8xz8Zqv0yBaPQ2CMCuQHhjuC9K.png',NULL,'2021-05-04 00:26:32','2021-05-04 00:26:32'),(27,6,'public/gallery/Szl5Nu8oNAUH0l7XldPQxIOKLzGZ827oPHnUOxzB.png',NULL,'2021-05-04 00:26:32','2021-05-04 00:26:32'),(28,6,'public/gallery/XQVrG0hujZhGILIMzFmma5mZe1Noi3GlWLHo8ImS.png',NULL,'2021-05-04 00:26:32','2021-05-04 00:26:32'),(29,6,'public/gallery/LAPcmx2zKHS8fiuTncNmaTZxfIxwryaon5A0IKea.png','2021-05-04 00:26:39','2021-05-04 00:26:32','2021-05-04 00:26:39'),(30,6,'public/gallery/w3nUzuGE0HQhT0VwtWQt83XiU6150TXWIKzF9Qrq.png',NULL,'2021-05-04 00:26:32','2021-05-04 00:26:32'),(31,6,'public/gallery/BtnLPXafDx5MmH1leGM7KyU2rN1MEJBYdtvOZA0k.png',NULL,'2021-05-04 00:26:32','2021-05-04 00:26:32'),(32,7,'public/gallery/hScbD2WYpPV2Cduxa579cR12xlUWC7260jEVkSzj.png','2021-05-04 00:27:51','2021-05-04 00:27:11','2021-05-04 00:27:51'),(33,7,'public/gallery/1wpSewvlFXFs290PnK4H0y61LxWLtRqUJnCcY2rf.png','2021-05-04 00:27:51','2021-05-04 00:27:11','2021-05-04 00:27:51'),(34,7,'public/gallery/QOcB4MFYLPzBRligBq4sBKCxa5jNPJGGUK845WVR.png','2021-05-04 00:27:56','2021-05-04 00:27:11','2021-05-04 00:27:56'),(35,7,'public/gallery/JBZIm95hybdZz2B6XlJq2v9hfpX1ppnKdjaWazwz.png','2021-05-04 00:27:56','2021-05-04 00:27:11','2021-05-04 00:27:56'),(36,7,'public/gallery/LhdN0uvRM8hb32RYqlxNH4ydvXuBKL3wnQID5VGS.png','2021-05-04 00:27:55','2021-05-04 00:27:11','2021-05-04 00:27:55'),(37,7,'public/gallery/oTmNxsUyB7ByKUoKhhgVNqOP6jK4y64xTqNnbrtg.png','2021-05-04 00:27:54','2021-05-04 00:27:11','2021-05-04 00:27:54'),(38,7,'public/gallery/MzhR0xpvB6zYSXKNksVJ6aIjXDb3CWo6p5egXUUZ.png','2021-05-04 00:29:17','2021-05-04 00:28:09','2021-05-04 00:29:17'),(39,7,'public/gallery/YwW4wNL22f3Hd3jYnZiqpEmfP1qK2Bqm912w4H6E.png','2021-05-04 00:29:18','2021-05-04 00:28:09','2021-05-04 00:29:18'),(40,7,'public/gallery/QR0oz5YUthRsPz1PAW8aJJ7FAvR2dVhA8dDBwMJN.png','2021-05-04 00:29:21','2021-05-04 00:28:09','2021-05-04 00:29:21'),(41,7,'public/gallery/0mZSWCQtXfiGzf1gH5uqI5o4jlyUkSxrOmjPCUbA.png','2021-05-04 00:29:21','2021-05-04 00:28:09','2021-05-04 00:29:21'),(42,7,'public/gallery/CTtoA6xervJUiIvk0E5zmD2JgrbjdCz9OBh2gdBw.png','2021-05-04 00:29:20','2021-05-04 00:28:09','2021-05-04 00:29:20'),(43,7,'public/gallery/JCk5ShoAe2GRlR4Yvn63fyuoze2FXFEM4RobuxQd.png','2021-05-04 00:29:20','2021-05-04 00:28:09','2021-05-04 00:29:20'),(44,8,'public/gallery/gLgH5SDUGrQNP0HkYWTr87LC497EW039LNPCms90.png',NULL,'2021-05-04 00:29:36','2021-05-04 00:29:36'),(45,8,'public/gallery/645jUMcrYWMhphBRGTsX2ZJzBe7JZhcDcEZMNS4M.png',NULL,'2021-05-04 00:29:36','2021-05-04 00:29:36'),(46,8,'public/gallery/0YPzKg685DRjvVLsaPumz1t7j1QRMyW5GJbcUdOV.png',NULL,'2021-05-04 00:29:36','2021-05-04 00:29:36'),(47,8,'public/gallery/UUOeRtPYbwRoyimhZzK0FcEOfeMMbGetuRuY41QY.png',NULL,'2021-05-04 00:29:36','2021-05-04 00:29:36'),(48,8,'public/gallery/c4BD6bYKpXq5EKhx0pEJLehbzexXToEBk3A6HpOs.png',NULL,'2021-05-04 00:29:36','2021-05-04 00:29:36'),(49,8,'public/gallery/WAczik636z63hiXK3KyIz9PFGgxTjxMq2fYfR42E.png',NULL,'2021-05-04 00:29:36','2021-05-04 00:29:36'),(50,7,'public/gallery/3zZbek9csRbVli6YNp6eyprU0AcwtCOUqo8SnvGj.png',NULL,'2021-05-04 00:30:16','2021-05-04 00:30:16'),(51,7,'public/gallery/l1uCVNTynsM9JlXtJtqNtaFamdbISNRdFN4S8uTM.png',NULL,'2021-05-04 00:30:16','2021-05-04 00:30:16'),(52,7,'public/gallery/dYrEbp7xexd4LFkCm0cFYdGbt8LUMjlS8v6IDJow.png',NULL,'2021-05-04 00:30:16','2021-05-04 00:30:16'),(53,7,'public/gallery/jQ59oaXzFUTooQQksfz3YHUChIJwWKhZYdZMSKjO.png',NULL,'2021-05-04 00:30:16','2021-05-04 00:30:16'),(54,7,'public/gallery/MZB5bUC7ejdyDEeQ9PYhkLmyQgHIfWoM7RL8RyFi.png',NULL,'2021-05-04 00:30:16','2021-05-04 00:30:16'),(55,7,'public/gallery/jywHbOFNbOn6FlDfRPpZtKG2iXhtL1CW9w94KAry.png',NULL,'2021-05-04 00:30:16','2021-05-04 00:30:16'),(56,9,'public/gallery/NESrP9wKlmCS71gXGwBaHDZWodXkrBGnNkJsnwjI.png',NULL,'2021-05-04 00:30:53','2021-05-04 00:30:53'),(57,9,'public/gallery/FmP0uF4O2Cf0NTC9yZpgkBsMXLESo5wd3yfXX7JG.png',NULL,'2021-05-04 00:30:53','2021-05-04 00:30:53'),(58,9,'public/gallery/c0D9t7RQODbezeIHiAZ1dhlsaMbWcPv8eNfNG1NA.png',NULL,'2021-05-04 00:30:53','2021-05-04 00:30:53'),(59,9,'public/gallery/Bwlaa32z7XrYPCdyr6fyrHFfPPxsYqgTXLiaxd2X.png',NULL,'2021-05-04 00:30:53','2021-05-04 00:30:53'),(60,9,'public/gallery/y8ZwOtxTipVnRghgVeCj83S1eXDu8iZIhQoYOQO9.png',NULL,'2021-05-04 00:30:53','2021-05-04 00:30:53'),(61,9,'public/gallery/IDAKMX25RuNmqqLkHIunbTHo1ouS72rtHBJZImSx.png',NULL,'2021-05-04 00:30:53','2021-05-04 00:30:53'),(62,10,'public/gallery/YQHYOz4y5NRrDm8r6ngF7ssVMEUTdPb30mFq2dLm.png',NULL,'2021-05-04 04:43:14','2021-05-04 04:43:14'),(63,10,'public/gallery/M4h5l656VhQKR64bgRyIeux1yZpLDxGOpM5gpgPA.png',NULL,'2021-05-04 04:43:14','2021-05-04 04:43:14'),(64,10,'public/gallery/88aLFwFs4JoxQjdYydbpkJ9wpAS7azZVuQaBEY43.png',NULL,'2021-05-04 04:43:14','2021-05-04 04:43:14'),(65,10,'public/gallery/Z20EKmAKx6FRD6DDR1om2jAv8We8wjY5QwQo5TzA.png',NULL,'2021-05-04 04:43:14','2021-05-04 04:43:14'),(66,10,'public/gallery/5OptzcHlYUBbBFjvnxIaCTWwL3Qmsar2J05IXiLr.png',NULL,'2021-05-04 04:43:14','2021-05-04 04:43:14'),(67,10,'public/gallery/ePKMdaszrkhK8zVXCFEeqR2cDZebhogO2flpx7Ky.png',NULL,'2021-05-04 04:43:14','2021-05-04 04:43:14'),(68,12,'public/gallery/dzF9cWN45AWvmvhRpDdoeulXSr45m6lTBB5bDKYS.png',NULL,'2021-05-04 04:44:49','2021-05-04 04:44:49'),(69,12,'public/gallery/Wew0DogWeaCG0YLwLYzCJi2JIAmnEJhbKBkHoITG.png',NULL,'2021-05-04 04:44:49','2021-05-04 04:44:49'),(70,12,'public/gallery/4GMLx75LlaGVqae60RCiDvuUxkG5jlEvzzNC3jA7.png',NULL,'2021-05-04 04:44:49','2021-05-04 04:44:49'),(71,12,'public/gallery/rz1igOAWiyTCaLv8cgMiNdcE66E46xw29Pfbx9po.png',NULL,'2021-05-04 04:44:49','2021-05-04 04:44:49'),(72,12,'public/gallery/5B5GlsNMHwtEYwKBktMiM5QmD0Y6HxjZT3OtLbeM.png',NULL,'2021-05-04 04:44:49','2021-05-04 04:44:49'),(73,12,'public/gallery/3kAA8cjoJTOwL6EurjDG3S6BU1tGdBM5aqht3o6P.png',NULL,'2021-05-04 04:44:49','2021-05-04 04:44:49'),(74,11,'public/gallery/8PgnXVnKdP7CxA9964a471VjLW5w7NebyIIYLxWO.png',NULL,'2021-05-04 04:45:34','2021-05-04 04:45:34'),(75,11,'public/gallery/lt5vTvAy43qTFwTmtM8oOzRgUC6VBL1NThjBYRmE.png',NULL,'2021-05-04 04:45:34','2021-05-04 04:45:34'),(76,11,'public/gallery/SvbtpI8FRwn1WcPHatgANVdwsuWGWMHlph3fF0Vg.png',NULL,'2021-05-04 04:45:34','2021-05-04 04:45:34'),(77,11,'public/gallery/dpyuy0z2X0sQbkpEQ6xtmluhDBGztFGhPGHmD3RG.png',NULL,'2021-05-04 04:45:34','2021-05-04 04:45:34'),(78,11,'public/gallery/YqmGv70Th5htQoVvYX9fhPJrhwpi1GAZ1ntycKmr.png',NULL,'2021-05-04 04:45:34','2021-05-04 04:45:34'),(79,11,'public/gallery/7R55a60B9hRvsThaA1B4GtyxunvPHq1LimvK6kFq.png',NULL,'2021-05-04 04:45:34','2021-05-04 04:45:34'),(80,13,'public/gallery/UB6Hud677C0XcZRb9GXcJZLhkkkXtSI8QIOvMDzO.png',NULL,'2021-05-04 04:46:41','2021-05-04 04:46:41'),(81,13,'public/gallery/oVsmhP6fqoDcwgIrv0N7dGDxv8gISDbH8Oq9sPGX.png',NULL,'2021-05-04 04:46:41','2021-05-04 04:46:41'),(82,13,'public/gallery/84sfU4r74fjqtUgBFWU5YH511MsmqtfGWS0A8TzZ.png',NULL,'2021-05-04 04:46:41','2021-05-04 04:46:41'),(83,13,'public/gallery/64xbpGIm62Lparx8wOwMOIZupCoVoUgDeQs89aWX.png',NULL,'2021-05-04 04:46:41','2021-05-04 04:46:41'),(84,13,'public/gallery/6GN1PAGdU0ntATOe0OEgLvFUPeqF4ADbs7tcciXs.png',NULL,'2021-05-04 04:46:41','2021-05-04 04:46:41'),(85,13,'public/gallery/Tj9dASovJQO17dELPYToBuzWMmnvFbdOJEvXfvpS.png',NULL,'2021-05-04 04:46:41','2021-05-04 04:46:41'),(86,14,'public/gallery/b96xpO10KGYt6dW6vYIQfr7QOJmbvXQo8iQI16vj.png',NULL,'2021-05-04 04:48:15','2021-05-04 04:48:15'),(87,14,'public/gallery/IfFaceaymXMzPBhYpe7kwFFHdRzG4Oao7L80lxjF.png',NULL,'2021-05-04 04:48:15','2021-05-04 04:48:15'),(88,14,'public/gallery/TGaMlw7PXNsQqTwXVxk6bRdbwwLN8Cr1dUWhwY5p.png',NULL,'2021-05-04 04:48:15','2021-05-04 04:48:15'),(89,14,'public/gallery/qN80yZuZSH0ttmbWcjuxe5x9EX6PCVS1NmJSzyHm.png',NULL,'2021-05-04 04:48:15','2021-05-04 04:48:15'),(90,14,'public/gallery/oSKGFne9QnmnxHRasn6HgVXqzODQpw3P0wZeCcSC.png',NULL,'2021-05-04 04:48:15','2021-05-04 04:48:15'),(91,14,'public/gallery/fyM8v6IxoZetItazb5TD44fJLyHmd938PP9kUxM9.png',NULL,'2021-05-04 04:48:15','2021-05-04 04:48:15'),(92,15,'public/gallery/SqUULXkmKLu40B4cVnfnYiCFnw44TR1PmZOgWWvf.png',NULL,'2021-05-04 04:49:21','2021-05-04 04:49:21'),(93,15,'public/gallery/NNwXNbpRtHc5Cbczw1Y2iwbZIERAXtM2BhjUxDhc.png',NULL,'2021-05-04 04:49:21','2021-05-04 04:49:21'),(94,15,'public/gallery/KXhNCNdbPCNTjbgQX29f7myTL1LnvkzW2zM2vWwm.png',NULL,'2021-05-04 04:49:21','2021-05-04 04:49:21'),(95,15,'public/gallery/Ga6KcCukUNWmNM5kArfZNi9uqHhaeoUcFUNPZoDZ.png',NULL,'2021-05-04 04:49:21','2021-05-04 04:49:21'),(96,15,'public/gallery/0uQYkvALkdYdQY7OTmLbDQJIoVL044iqWCGEoCkh.png',NULL,'2021-05-04 04:49:21','2021-05-04 04:49:21'),(97,15,'public/gallery/UZc0qDBNsKqYHJI4v9adCLKaH3NmFoFaM6FXDbcT.png',NULL,'2021-05-04 04:49:21','2021-05-04 04:49:21'),(98,17,'public/gallery/w9DhdAdrh5BjTHZawMvonKTzLR9bUWRfUynbeslT.png',NULL,'2021-05-04 04:49:46','2021-05-04 04:49:46'),(99,17,'public/gallery/YYsmpkkuXNSkxc9lE2JKG64TXY3LgZ72dBhlBrRP.png',NULL,'2021-05-04 04:49:46','2021-05-04 04:49:46'),(100,17,'public/gallery/JqWUVUrwC8dHm0Kv2hMo6yNdTIrxVtSJqLVDcXOt.png',NULL,'2021-05-04 04:49:46','2021-05-04 04:49:46'),(101,17,'public/gallery/FwYy22FBuCJMBzg4TTbHZz0LLjYiVsQLhzfB4omC.png',NULL,'2021-05-04 04:49:46','2021-05-04 04:49:46'),(102,17,'public/gallery/MGRkzQDllJefDpXXBmUE8IxAfe0HAdQzzs3XbkXK.png',NULL,'2021-05-04 04:49:46','2021-05-04 04:49:46'),(103,17,'public/gallery/MHoxHNpcxGDZTG8f5vlutBG8mxAya0YeDVSqwTfo.png',NULL,'2021-05-04 04:49:46','2021-05-04 04:49:46'),(104,16,'public/gallery/YfkNtUQcTkiYrjI1NsxbY27Qb0UjchQX0jQeZtym.png',NULL,'2021-05-04 04:50:13','2021-05-04 04:50:13'),(105,16,'public/gallery/fgwNZHBIaCeWJKCtv7CgibNTQgBXi5FPbJF84O9A.png',NULL,'2021-05-04 04:50:13','2021-05-04 04:50:13'),(106,16,'public/gallery/QMGe9BsqcOq1UO2qCtj3PuvmpNI3PRPYGM2qf7R1.png',NULL,'2021-05-04 04:50:13','2021-05-04 04:50:13'),(107,16,'public/gallery/j64FbXsWKJVHyMpZ7TBhxlXme2eKSZ8ETRlfDVuC.png',NULL,'2021-05-04 04:50:13','2021-05-04 04:50:13'),(108,16,'public/gallery/E5PH9qPFVzKhfKmSeCz70VWCUZjGhl9uF4gXD0l4.png',NULL,'2021-05-04 04:50:13','2021-05-04 04:50:13'),(109,16,'public/gallery/1CVv4vw7NfXvUPpWsWAvx41KlR1FNKmNT7Nt5Qyu.png',NULL,'2021-05-04 04:50:13','2021-05-04 04:50:13');
/*!40000 ALTER TABLE `product_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(17,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `tags` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Adidas NMD',200.00,'Ini adalah sepatu sport',NULL,1,NULL,'2021-04-14 19:16:06','2021-04-14 19:16:06'),(2,'Ultra 4D 5 Shoes',285.00,'When the adidas Ultraboost debuted back\r\nin 2015, it had an impact that spilled beyond\r\nthe world of running. For this version of t...',NULL,5,NULL,'2021-04-15 03:17:22','2021-04-15 03:27:20'),(3,'SL 20 Shoes',123.00,'These adidas SL20 Shoes will back your play. \r\nLightweight cushioning gives you a faster \r\npush-off and a snappy feel.',NULL,5,NULL,'2021-04-15 03:18:19','2021-04-15 03:39:03'),(4,'Ultra 4D 5 Shoes',285.00,'When the adidas Ultraboost debuted back \r\nin 2015, it had an impact that spilled beyond \r\nthe world of running.',NULL,5,NULL,'2021-04-15 03:18:51','2021-04-15 03:40:20'),(5,'Ultraboots 20 Shoes',206.00,'Wear your values on your feet with these adi\r\ndas running shoes. Rocking the wild colours \r\nshows you\'re not shy about standing out.',NULL,5,NULL,'2021-04-15 03:19:08','2021-04-15 03:43:19'),(6,'LEGOÂ® SPORT SHOES',92.00,'These shoes keep kids comfortable through\r\nplaytime, whether that means running around\r\non building universes out of bricks.',NULL,4,NULL,'2021-04-15 03:20:03','2021-05-04 00:33:37'),(7,'Fortarun Runningâ€¨Shoes 2020',34.00,'Whether they\'re headed to school, day care\r\nor the playground with friends, send them\r\nout in all-day foot support with these adidas.',NULL,4,NULL,'2021-04-15 03:21:05','2021-05-04 00:36:17'),(8,'Supernove Runningâ€¨Shoes',83.00,'Two kinds of cushioning in the midsole give\r\nyou flexibility and responsiveness right where\r\nyou need them.',NULL,4,NULL,'2021-04-15 03:22:10','2021-05-04 00:37:14'),(9,'Faito Summer.RDYâ€¨Tokyo Shoes',76.00,'Whether you\'re running out the front door to\r\nlog a few miles or want to bring a running-\r\ninspired style statement to your everyday.',NULL,4,NULL,'2021-04-15 03:22:39','2021-05-04 00:38:53'),(10,'DAME 7 SHOES',125.00,'Show up in big game style whether you\'re trying out for the team or challenging a friend to some one-on-one in the park.',NULL,3,NULL,'2021-05-04 00:40:05','2021-05-04 04:52:12'),(11,'Pro boots low shoes',57.00,'The superlight midsole features an innovative\r\ndrop-in that provides outstanding energy \r\nreturn every time you plant.',NULL,3,NULL,'2021-05-04 00:40:30','2021-05-04 04:55:13'),(12,'D.O.N ISSUE 2.0â€¨Shoes',111.00,'These signature shoes from Mitchell and\r\nadidas Basketball feature graphics that\r\nhighlight the young All-Star\'s style.',NULL,3,NULL,'2021-05-04 04:35:31','2021-05-04 04:56:00'),(13,'Harden Vol. 4 Shoes',137.00,'Most guys are finished by late in the fourth\r\nquarter. That\'s when James Harden is just\r\ngetting started.',NULL,3,NULL,'2021-05-04 04:36:51','2021-05-04 04:56:57'),(14,'Terrex urban lowâ€¨ Hiking Shoes',143.00,'Unpaved trails and mixed surfaces are easy\r\nwhen you have the traction and support you\r\nneed. Casual enough for the daily commute.',NULL,2,NULL,'2021-05-04 04:37:22','2021-05-04 04:59:49'),(15,'TERREX EASTRAIL HIKING SHOES',54.00,'Built for a stable feel and confident traction\r\non wet, uneven terrain. Stack up the trail\r\nmiles in these lightweight hiking shoes',NULL,2,NULL,'2021-05-04 04:38:04','2021-05-04 05:10:09'),(16,'TERREX AX3 HIKING SHOES',83.00,'GORE-TEX Upper Mesh and synthetic uppers\r\nwill encase each foot in durable comfort. \r\nContinental Rubber Outs',NULL,2,NULL,'2021-05-04 04:38:29','2021-05-04 05:14:10'),(17,'TERREX TRAILMAKER HIKING SHOES',34.00,'The adidas Terrex Trailmaker Hiking Shoes\r\nblend responsive running-shoe design with\r\ntrail-shoe support.',NULL,2,NULL,'2021-05-04 04:38:53','2021-05-04 05:04:09');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
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
INSERT INTO `sessions` VALUES ('7mSQkk44cYQulgNpiNEw5C33nma0Tv4zfsipYevg',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTZjODlLZ01TYktMZjhBbndpdWREb3FRbFBkOU1aNDlRbUdRa1BaMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9zaGFtby1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1655553315),('MOhPBhN2L0RebgMu1qb7FOxaw8KlLMEORtHxGWs0',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFFKZ08wbE15dXdrTU81eTZnaXRhVXdlSDJBTXl0Zzg0cWs3SFRjQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9zaGFtby1iYWNrZW5kLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1654781862),('x4KqKzGVsj90ycjKhAyaN61EN5u4RKHmbs8viWSl',NULL,'127.0.0.1','PostmanRuntime/7.29.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1BuRkJpNFJVcERnMzN4QWVFb2lwOGsxZUVQRlFBanJBVEJhd0VieiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9zaGFtby1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1655553274),('xvjRWuN5y6r4bxC9fJVVEnSiyjbQqtFlPxMwsOcu',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0o5bnlCM3lFRHJwNlRmbHdvbEVwRVc2Mlhid1RWUEpSZEt6M0VWYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9zaGFtby1iYWNrZW5kLnRlc3QvcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1654696491),('Zqhysd7VW6BQZhVvyT4XRiMmo5HJpWBBcSik3Wse',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRENndmJkdVBrb3cwNXFaQmZQTVBhcHJMZWpjMVgzQVp1blkxN1U2bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9zaGFtby1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1654937446);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_items`
--

DROP TABLE IF EXISTS `transaction_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_items`
--

LOCK TABLES `transaction_items` WRITE;
/*!40000 ALTER TABLE `transaction_items` DISABLE KEYS */;
INSERT INTO `transaction_items` VALUES (1,2,1,1,2,'2021-04-14 19:11:14','2021-04-14 19:11:14'),(2,2,2,1,2,'2021-04-14 19:11:14','2021-04-14 19:11:14'),(3,2,3,1,2,'2021-04-14 19:11:14','2021-04-14 19:11:14'),(4,2,1,2,2,'2021-04-14 19:30:45','2021-04-14 19:30:45'),(5,2,2,2,2,'2021-04-14 19:30:45','2021-04-14 19:30:45'),(6,2,3,2,2,'2021-04-14 19:30:45','2021-04-14 19:30:45'),(7,2,1,3,2,'2021-04-14 19:32:37','2021-04-14 19:32:37'),(8,3,5,4,1,'2021-05-04 21:53:30','2021-05-04 21:53:30'),(9,3,1,5,1,'2021-05-04 21:54:07','2021-05-04 21:54:07'),(10,3,2,6,1,'2021-05-04 22:19:05','2021-05-04 22:19:05'),(11,3,6,7,1,'2021-05-04 22:44:39','2021-05-04 22:44:39'),(12,3,3,7,1,'2021-05-04 22:44:39','2021-05-04 22:44:39'),(13,3,2,8,1,'2021-05-04 22:48:44','2021-05-04 22:48:44');
/*!40000 ALTER TABLE `transaction_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `total_price` double(17,2) NOT NULL DEFAULT '0.00',
  `shipping_price` double(17,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,2,'Kota Cimahi','MANUAL',2000.00,100.00,'SUCCESS',NULL,'2021-04-14 19:11:14','2021-04-14 19:11:52'),(2,2,'Kota Cimahi','MANUAL',2000.00,100.00,'PENDING',NULL,'2021-04-14 19:30:45','2021-04-14 19:30:45'),(3,2,'Kota Cimahi','MANUAL',2000.00,100.00,'PENDING',NULL,'2021-04-14 19:32:37','2021-04-14 19:32:37'),(4,3,'Marsemoon','MANUAL',206.00,0.00,'PENDING',NULL,'2021-05-04 21:53:30','2021-05-04 21:53:30'),(5,3,'Marsemoon','MANUAL',200.00,0.00,'PENDING',NULL,'2021-05-04 21:54:07','2021-05-04 21:54:07'),(6,3,'Marsemoon','MANUAL',285.00,0.00,'PENDING',NULL,'2021-05-04 22:19:05','2021-05-04 22:19:05'),(7,3,'Marsemoon','MANUAL',215.00,0.00,'PENDING',NULL,'2021-05-04 22:44:39','2021-05-04 22:44:39'),(8,3,'Marsemoon','MANUAL',285.00,0.00,'PENDING',NULL,'2021-05-04 22:48:44','2021-05-04 22:48:44');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jennie test 1','jennie.kim@blackpink.co','jenniekim2','08965552000','USER',NULL,'$2y$10$zbTVWLc5dSA5EmrqIh0IludZAlCykF0lzREpObMdPfLOxeDo6qOvy',NULL,NULL,NULL,'17|uA09NuwedBv6yrb3WkQTtAwv0vNZn3WahkA0AzR0',NULL,NULL,'2022-06-11 00:57:37','2022-06-18 08:11:36'),(2,'Galang10','galang@mail.com','merdeka','08965552122','USER',NULL,'$2y$10$cdjmMzXA9kK6aDt5/GKFFenmjS9msxW9AT/7PZh2s9tJHHBSPh9l6',NULL,NULL,NULL,'15|umiKlUB9F1foLVfHF0N9KcpdNBKTlwerE9FDBc6u',NULL,NULL,'2022-06-11 07:05:21','2022-06-18 07:48:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shamo-backend'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-16 19:17:25
