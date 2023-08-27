CREATE DATABASE  IF NOT EXISTS `projet_django` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projet_django`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: projet_django
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add soumission',7,'add_soumission'),(26,'Can change soumission',7,'change_soumission'),(27,'Can delete soumission',7,'delete_soumission'),(28,'Can view soumission',7,'view_soumission'),(29,'Can add projet',8,'add_projet'),(30,'Can change projet',8,'change_projet'),(31,'Can delete projet',8,'delete_projet'),(32,'Can view projet',8,'view_projet');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_projet`
--

DROP TABLE IF EXISTS `authentication_projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_projet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `matiere` varchar(100) NOT NULL,
  `fichier_projet` varchar(100) NOT NULL,
  `statut` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_projet`
--

LOCK TABLES `authentication_projet` WRITE;
/*!40000 ALTER TABLE `authentication_projet` DISABLE KEYS */;
INSERT INTO `authentication_projet` VALUES (1,'Modules','Django ','ddd','En cours ');
/*!40000 ALTER TABLE `authentication_projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_soumission`
--

DROP TABLE IF EXISTS `authentication_soumission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_soumission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fichier_soumission` varchar(100) NOT NULL,
  `note` decimal(4,2) DEFAULT NULL,
  `commentaire` longtext,
  `etudiant_id` bigint NOT NULL,
  `projet_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authentication_soumi_etudiant_id_056261e3_fk_authentic` (`etudiant_id`),
  KEY `authentication_soumi_projet_id_b927a036_fk_authentic` (`projet_id`),
  CONSTRAINT `authentication_soumi_etudiant_id_056261e3_fk_authentic` FOREIGN KEY (`etudiant_id`) REFERENCES `authentication_user` (`id`),
  CONSTRAINT `authentication_soumi_projet_id_b927a036_fk_authentic` FOREIGN KEY (`projet_id`) REFERENCES `authentication_projet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_soumission`
--

LOCK TABLES `authentication_soumission` WRITE;
/*!40000 ALTER TABLE `authentication_soumission` DISABLE KEYS */;
INSERT INTO `authentication_soumission` VALUES (1,'soumissions/black-dashboard-django-master.zip',12.00,'tutut',4,1);
/*!40000 ALTER TABLE `authentication_soumission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_user`
--

DROP TABLE IF EXISTS `authentication_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `is_enseignant` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_etudiant` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_user`
--

LOCK TABLES `authentication_user` WRITE;
/*!40000 ALTER TABLE `authentication_user` DISABLE KEYS */;
INSERT INTO `authentication_user` VALUES (1,'pbkdf2_sha256$600000$iMMOTwk4q7UnxsqJY8Utdi$mS9T4Rnx0XIVzjm0KJYO/WwEylNGwgcJy9700UoUwNY=','2023-08-11 19:48:22.002306',0,'Rub','Ruben','Dzh','',0,1,'2023-08-11 18:17:14.512486','200','1900-01-01',0,0,1),(2,'pbkdf2_sha256$600000$yiufqvTX1ub5e6SOX9hVBw$XRw20PdqTjjR8OK96M3qkHHZmNJZBnpUtgRLzc8CYnM=',NULL,0,'Rub300','fff','jhlf','',0,1,'2023-08-11 18:42:15.571301','200','1900-01-01',0,0,1),(3,'pbkdf2_sha256$600000$pLpcKDuXQHAVTSQzIgDB6j$J6GMQmrg6C9dI37nrMEz65UZ84K1pryHu5cnM78Zpc8=','2023-08-11 21:06:27.552671',0,'dhzsarah5@gmail.com','Ruben','Dzh200','',0,1,'2023-08-11 21:04:43.860989','200','2002-04-11',1,0,0),(4,'pbkdf2_sha256$600000$7dDuEhWjvCwBskHSfNT1N9$fBG9RXo2m+7nAEYhGtoRZ1lRsOrNSLZ7nOcJuZka4ds=','2023-08-18 10:03:47.937298',0,'Dhzruben@gmail.com','ruben','Dzeha','',0,1,'2023-08-16 20:30:02.354498','N20','2003-04-29',1,0,0);
/*!40000 ALTER TABLE `authentication_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_user_groups`
--

DROP TABLE IF EXISTS `authentication_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authentication_user_groups_user_id_group_id_8af031ac_uniq` (`user_id`,`group_id`),
  KEY `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` (`group_id`),
  CONSTRAINT `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `authentication_user_groups_user_id_30868577_fk` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_user_groups`
--

LOCK TABLES `authentication_user_groups` WRITE;
/*!40000 ALTER TABLE `authentication_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_user_user_permissions`
--

DROP TABLE IF EXISTS `authentication_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authentication_user_user_user_id_permission_id_ec51b09f_uniq` (`user_id`,`permission_id`),
  KEY `authentication_user__permission_id_ea6be19a_fk_auth_perm` (`permission_id`),
  CONSTRAINT `authentication_user__permission_id_ea6be19a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `authentication_user_user_permissions_user_id_736ebf7e_fk` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_user_user_permissions`
--

LOCK TABLES `authentication_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `authentication_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(8,'authentication','projet'),(7,'authentication','soumission'),(6,'authentication','user'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-30 10:58:35.429843'),(2,'contenttypes','0002_remove_content_type_name','2023-07-30 10:58:35.570805'),(3,'auth','0001_initial','2023-07-30 10:58:35.970840'),(4,'auth','0002_alter_permission_name_max_length','2023-07-30 10:58:36.078435'),(5,'auth','0003_alter_user_email_max_length','2023-07-30 10:58:36.101060'),(6,'auth','0004_alter_user_username_opts','2023-07-30 10:58:36.123725'),(7,'auth','0005_alter_user_last_login_null','2023-07-30 10:58:36.157672'),(8,'auth','0006_require_contenttypes_0002','2023-07-30 10:58:36.173072'),(9,'auth','0007_alter_validators_add_error_messages','2023-07-30 10:58:36.205748'),(10,'auth','0008_alter_user_username_max_length','2023-07-30 10:58:36.230132'),(11,'auth','0009_alter_user_last_name_max_length','2023-07-30 10:58:36.255098'),(12,'auth','0010_alter_group_name_max_length','2023-07-30 10:58:36.312229'),(13,'auth','0011_update_proxy_permissions','2023-07-30 10:58:36.340670'),(14,'auth','0012_alter_user_first_name_max_length','2023-07-30 10:58:36.370422'),(15,'authentication','0001_initial','2023-07-30 10:58:36.903783'),(16,'admin','0001_initial','2023-07-30 10:58:37.153332'),(17,'admin','0002_logentry_remove_auto_add','2023-07-30 10:58:37.186365'),(18,'admin','0003_logentry_add_action_flag_choices','2023-07-30 10:58:37.219857'),(19,'authentication','0002_alter_user_id','2023-07-30 10:58:38.060144'),(20,'sessions','0001_initial','2023-07-30 10:58:38.151158'),(21,'authentication','0003_projet_soumission','2023-08-23 17:26:05.272231');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8019t0i58mi1ha7e7hmz14uj59q98k2h','.eJxVjMEOwiAQRP-FsyGw3QL16L3fQFgWpGpoUtqT8d9tkx70NMm8N_MWPmxr8VtLi59YXAWKy29HIT5TPQA_Qr3PMs51XSaShyJP2uQ4c3rdTvfvoIRW9rVxbJBVhsg6qJyMZmcAWDnIg9aEexJCcIM10SBRrzq01gJhp6kH8fkC2XM3DA:1qWwKD:gTcQ8kerisaih9J40OpJe_mhzKwRcCUrRjpN2eMnOBQ','2023-09-01 10:03:25.150073'),('88pblcifzkgloetzp7dhwh2qyji5veav','.eJxVjMEOwiAQRP-FsyGw3QL16L3fQFgWpGpoUtqT8d9tkx70NMm8N_MWPmxr8VtLi59YXAWKy29HIT5TPQA_Qr3PMs51XSaShyJP2uQ4c3rdTvfvoIRW9rVxbJBVhsg6qJyMZmcAWDnIg9aEexJCcIM10SBRrzq01gJhp6kH8fkC2XM3DA:1qWwKZ:usEzr8hVg8LUPB9Sfw2PApzWrL5ttglGSrlq72BQskY','2023-09-01 10:03:47.944360'),('veu8q4q5fyarclyx6ig5he03z6m606dy','e30:1qUWmT:AJf0kQomw-mDZj3AQEe7LNen-Ln876GKJ2mHzvByMKY','2023-08-25 18:22:37.399091');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'projet_django'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27 20:36:18
