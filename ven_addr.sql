-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: ven_addr
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.10.1

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add vendor',7,'add_vendor'),(26,'Can change vendor',7,'change_vendor'),(27,'Can delete vendor',7,'delete_vendor'),(28,'Can view vendor',7,'view_vendor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$Bu0ni0oUjL5SzswTE2JZfV$rUIG5zATXwSfPJPG3mlJ5Rho6iZGx8feJ5xzb2E22AA=','2021-11-05 02:27:06.162975',1,'haynes245','','','hrc245@gmail.com',1,1,'2021-10-21 16:09:32.628675'),(2,'pbkdf2_sha256$260000$qQ4jeUZWO0gqMBcQMCrsc8$4RHeyKGFjCUCFZOl+0wnThWfVGAV7Pjv1538YICClpw=','2021-11-04 01:48:06.034597',0,'haynes345','','','hrc345@gmail.com',0,1,'2021-11-02 15:45:20.235822'),(3,'pbkdf2_sha256$260000$8y4vpOOCLb2Rc77io59zvE$xNc28hF7E9aKcL0sKJ01+DmCLs0MCf9qp7WwwOoife4=',NULL,0,'haynes445','','','',0,1,'2021-11-04 00:49:48.576588');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-29 01:55:52.233417','10','ADV/EXPO',3,'',7,1),(2,'2021-10-29 01:56:14.712712','27','APMSA',3,'',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'vendors','vendor');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-21 13:26:18.458636'),(2,'auth','0001_initial','2021-10-21 13:26:29.517362'),(3,'admin','0001_initial','2021-10-21 13:26:31.891037'),(4,'admin','0002_logentry_remove_auto_add','2021-10-21 13:26:31.958810'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-21 13:26:32.033030'),(6,'contenttypes','0002_remove_content_type_name','2021-10-21 13:26:33.504064'),(7,'auth','0002_alter_permission_name_max_length','2021-10-21 13:26:34.438006'),(8,'auth','0003_alter_user_email_max_length','2021-10-21 13:26:34.659658'),(9,'auth','0004_alter_user_username_opts','2021-10-21 13:26:34.735802'),(10,'auth','0005_alter_user_last_login_null','2021-10-21 13:26:35.479443'),(11,'auth','0006_require_contenttypes_0002','2021-10-21 13:26:35.539184'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-21 13:26:35.623960'),(13,'auth','0008_alter_user_username_max_length','2021-10-21 13:26:36.553745'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-21 13:26:37.612200'),(15,'auth','0010_alter_group_name_max_length','2021-10-21 13:26:37.804702'),(16,'auth','0011_update_proxy_permissions','2021-10-21 13:26:37.873687'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-21 13:26:38.753180'),(18,'sessions','0001_initial','2021-10-21 13:26:39.415109'),(19,'vendors','0001_initial','2021-10-21 13:46:10.066645'),(20,'vendors','0002_vendor_zip_code','2021-10-21 19:38:19.820696'),(21,'vendors','0003_rename_st_addr_vendor_street address','2021-10-26 01:44:46.956301'),(22,'vendors','0004_auto_20211027_1636','2021-10-27 20:36:50.457605');
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
INSERT INTO `django_session` VALUES ('1hgee8xuokn9w5oejutadvyg1jm7jvre','.eJxVjEEOgjAQRe_StWnawlhw6d4zNNOZwaKmTSisjHcXEhaw_e-9_1UBlzmFpcoURlY3ZdXluEWkt-QN8Avzs2gqeZ7GqDdF77TqR2H53Hf3dJCwprUG8tI2jAAsHh2BmM6g-H4QGdgY5xnQsljXxOiQoiFZiWupQ4Jrr35_E4I5bw:1mhw54:0SbUBsRlvvljPW4RcOkbPgIt0tOFXpJ_ONqQ9CGOqv4','2021-11-16 15:52:10.985344'),('gelf14vwixg822qbqt8ctd7jk90syibz','.eJxVjEEOgjAQRe_StWnawlhw6d4zNNOZwaKmTSisjHcXEhaw_e-9_1UBlzmFpcoURlY3ZdXluEWkt-QN8Avzs2gqeZ7GqDdF77TqR2H53Hf3dJCwprUG8tI2jAAsHh2BmM6g-H4QGdgY5xnQsljXxOiQoiFZiWupQ4Jrr35_E4I5bw:1miQy5:pKENbGiUxtIxpUJxh52F8ht0C-v49aZHVWmc3nBYCyE','2021-11-18 00:51:01.926889'),('nvc3kzft7bu07hri8n3pr6wng6u3mh5n','.eJxVjEEOgjAQRe_StWnawlhw6d4zNNOZwaKmTSisjHcXEhaw_e-9_1UBlzmFpcoURlY3ZdXluEWkt-QN8Avzs2gqeZ7GqDdF77TqR2H53Hf3dJCwprUG8tI2jAAsHh2BmM6g-H4QGdgY5xnQsljXxOiQoiFZiWupQ4Jrr35_E4I5bw:1mdaed:m4kQPjzdPRnRvk-UShKusvqOinWndUpakPQ72I1unDM','2021-11-04 16:10:55.219479'),('q171o580jtclqhrwkg2447q34fsn3c51','.eJxVjDsOwjAQBe_iGll4418o6TmDZa93cQDZUpxUiLuTSCmgfTPz3iLEdSlh7TSHKYuLUOL0u6WIT6o7yI9Y701iq8s8Jbkr8qBd3lqm1_Vw_w5K7GWr0bgBPDA7pY0zPgFbIIpIisDyCGfUahisT2xYj4SoLBuHm-c12iw-X9rQOBY:1miozX:xugQPqNbJXZbthHdro__LQDPcUicnQba4I3jrkKJATM','2021-11-19 02:30:07.358574'),('ti8sspdtpvq7bzxicwjq2e7roq7pyebf','.eJxVjEEOgjAQRe_StWnawlhw6d4zNNOZwaKmTSisjHcXEhaw_e-9_1UBlzmFpcoURlY3ZdXluEWkt-QN8Avzs2gqeZ7GqDdF77TqR2H53Hf3dJCwprUG8tI2jAAsHh2BmM6g-H4QGdgY5xnQsljXxOiQoiFZiWupQ4Jrr35_E4I5bw:1mheCx:ylfbQp__PwlOBCRGzuDXPvUuScY0gwdLy2s7SkuS2ag','2021-11-15 20:47:07.083773');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ven_addr`
--

DROP TABLE IF EXISTS `ven_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ven_addr` (
  `co_name` varchar(75) NOT NULL,
  `st_addr` varchar(75) NOT NULL,
  `st_addr1` varchar(75) NOT NULL,
  `st_addr2` varchar(75) NOT NULL,
  `st_addr3` varchar(75) NOT NULL,
  `city` varchar(75) NOT NULL,
  `st` char(2) NOT NULL,
  `zip_code` varchar(11) NOT NULL,
  `attn` varchar(75) NOT NULL,
  `notes` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`co_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ven_addr`
--

LOCK TABLES `ven_addr` WRITE;
/*!40000 ALTER TABLE `ven_addr` DISABLE KEYS */;
INSERT INTO `ven_addr` VALUES ('','','','','','','','','','','2019-04-12 18:05:27'),('A Duie Pyle, Inc.','650 Westtown road','P.O. Box 564','Accounts Receivable','','West Chester','PA','19381','','','2011-06-14 13:53:41'),('Abbott Ball Company','P.O. Box 847102','','','','Boston','MA','02284','','','2011-06-12 21:25:53'),('Able Plastics','14 Albert Drive','','','','Monsey','NY','10952','','','2011-06-12 21:25:53'),('Aceto Corporation','One Hollow Lane','','','','Lake Success','NY','11042','','','2011-06-14 13:53:41'),('Active Life Solutions','23 Strickler Avenue','Suite 202','','','Waynesboro','PA','17268','Attn: Sunny',' ','2021-03-22 19:37:21'),('Adams Material Handling, LLC ','7128 Grays Avenue','','','','Philadelphia','PA','19142','','','2016-01-14 19:20:56'),('Admiral Craft Equipment Corporation','P.O. Box 9014','','','','Hicksville','NY','11802','','','2011-06-12 21:41:52'),('Admiral Products, Inc.','4101 West 150TH Street','','','','Cleveland','OH','44135','','','2011-06-12 21:41:52'),('ADV/EXPO','160 Johnson Avenue','','','','Hackensack','NJ','07601','Attn: Rigo','','2014-04-04 18:10:51'),('AdvanceXpo','125 Druid Avenue','','','','Dumont','NJ','07628','','','2018-07-24 15:34:25'),('Advanstar Communications Inc','131 W 1st St','','','','Duluth','MN','55802','',' ','2017-07-24 19:38:57'),('Advent Security Corporation','101 Roesch Avenue','','','','Oreland','PA','19075','','','2019-01-25 15:25:00'),('Alina Poratt','E. S. PORATT MEDI. CO.','82 Bealiba Road','','','Caulfield South','VI','3162','Australia','','2021-03-11 16:40:01'),('ALL ISLAND PODIATRY, P.C.','DAVID E. KARPE, D.P.M.','200 N. VILLAGE AVE.','STE. 101','','ROCKVILLE CENTRE','NY','11570','','','2017-09-06 15:43:32'),('AM Packaging, INC. ','694 Center Street ','','','','Chicopee','MA','01013','','','2014-10-02 20:02:06'),('American Spraytech LLC','205 Meister Avenue','','','','North Branch','NJ','08876','','   ','2017-08-29 15:18:46'),('AmerisourceBergen','500 Innovation Drive ','','','','Shakopee','MN','55379','','','2017-02-03 21:20:56'),('Andler Maryland','P.O. Box 499125','','','','Everett','MA','02149','',' ','2016-05-06 18:31:26'),('Andon Brush Company','1 Merritt Avenue','','','','Little Falls','NJ','07424','','','2013-11-07 18:52:08'),('Anne Johnson','Philadelphia District Director','U.S. Custom House, Room #900','200 Chestnut Street','','Philadelphia','PA','19106','','','2019-04-16 18:58:34'),('Antheil Maslow & MacMinn, LLP','P.O. Box 50','','','','Doylestown','PA','18901','','','2021-07-02 15:21:23'),('Anthony Handlon Designs','9228 Horatio Road','','','','Philadelphia','PA','19114','','','2013-11-29 16:09:37'),('Anthony P. Galzarano, DC','Wissahickon Chiropractic','610 Barnes Street ','','','Philadelphia','PA','19128','','','2019-01-25 15:50:35'),('APMA','9312 Old Georgetown Road','','','','Bethesda','MD','20814','Attn: Finance Department',' ','2018-10-05 19:44:13'),('APMSA','9312 Old Georgetown Road','','','','Bethesda','MD','20814','ATTN: Dorothy Cahill McDonald',' ','2014-06-13 20:18:10'),('Apple Alarm Company, Inc.','4380 Sutton Circle','','','','Reading','PA','19606','','','2014-01-07 15:19:37'),('Aqeua Pennsylvania, Inc.','762 W. Lancaster Avenu','','','','Bryn Mawr','PA','19010','','','2011-06-12 22:29:29'),('ArrowPak','120-19 89th Avenue','','','','Richmond Hill','NY','11418','',' ','2014-03-04 17:55:56'),('Artcraft','PO Box 382','','','','Altamont','NY','12009','','','2018-02-23 16:47:20'),('Atis Elevator Code Inspections, Inc.','P.O. Box 790379','','','','St. Louis','MO','63179','',' ','2019-11-15 16:31:52'),('Atis Elevator Inspections, Inc.','P.O. Box 790379','','','','St. Louis','MO','63179','','  ','2019-11-15 16:32:36'),('ATIS Elevator Inspections, LLC ','PO Box 790379','','','','St Louis','MO','63179','','','2021-03-19 15:20:55'),('Atlantic','113 Rock Road','','','','Horsham','PA','19044','','','2014-01-17 18:05:51'),('Automation Devices, Inc.','7050 West ridge road','','','','Fairview','PA','16415','','','2011-06-12 22:33:18'),('B Safe, Inc','P.O. Box 821349','','','','Philadelphia','PA','19182','',' ','2021-02-12 17:07:18'),('Bank of America Lockbox Services','McKesson Corporation','15876 Collection Center Drive ','','','Chicago','IL','60693','','','2020-08-07 15:55:17'),('Baralan USA, Inc.','ARROWPAK','120-19 89TH AVENUE','','','Richmond Hill','NY','11418','','','2014-05-22 21:17:06'),('BERJE','700 Blair Road','','','','Carteret','NJ','07008','','','2020-12-04 16:17:48'),('Berlin Packaging','36690 Treasury Center','','','','Chicago','IL','60694','','       ','2019-04-26 19:22:31'),('Brenntag Northeast, LLC.','P.O. BOX 62111','','','','BALTIMORE','MD','21264-2111','','  ','2018-03-28 18:54:35'),('Brenntag Specialties, INC.','P.O. Box 780510','','','','Philadelphia','PA','19178','',' ','2015-10-29 18:54:33'),('Bryan Bullard, D.P.M.','500 Quail Creek','Suite B','','','Amarillo','TX','79124','','','2014-07-24 15:51:06'),('C&H Distributors, LLC','22133 Network Place','','','','Chicago','IL','60673','','','2013-12-18 16:43:14'),('Canton Foot Specialist, PC','43050 Ford Road ','Suite 150','','','Canton','MI','48187','','','2015-04-27 20:33:44'),('CARDINAL HEALTH, INC ','ACCOUNTS PAYABLE','P.O. BOX 182516','','','COLUMBUS','OH','43218','','','2017-04-28 18:49:37'),('Carolina Foot & Ankle','1501 Tate Blvd. S.E.','Suite 203','','','Hickery','NC','28602','Gezell','','2015-08-13 19:34:40'),('Celsis Laboratory Group','New Jersey Division','P.O. Box 60564','','','St. Louis','MO','63160','','','2011-06-15 00:04:44'),('Central Carolina Scale, Inc. ','5393 Farrell Road','','','','Sanford','NC','27330','','','2011-06-14 03:07:25'),('cGMP Validation, LLC','7930 W. Kenton Circle','Suite 140','','','Huntersville','NC','28078','','','2019-07-24 18:37:15'),('Champion Containers','P.O. Box 90','','','','Avenel ','NJ','07001','','      ','2018-08-03 17:37:10'),('Chandra Dodia','60 Rittenhouse Court','','','','Chesterbrook','PA','19087','',' ','2019-11-04 17:56:25'),('Charles B. Gans','2418 Grasslyn Avenue','','','','Havertown','PA','19083','','','2011-06-14 03:10:44'),('Chem International','Integrated BioPharma, Inc. ','225 Long Avenue','','','Hillside','NJ','07205','','  ','2016-01-11 21:54:27'),('Chemcentral','P.O. Box 409321','','','','Atlanta','GA','30384','','','2011-06-14 03:14:31'),('City Hall','Department of Accounts & Finance','1 Fourth Street ','Attn: City Taxes','','Chester','PA','19013','','','2016-04-15 15:19:11'),('Clean Harbors Environmental Services, Inc,','PO Box 734867','','','','Dallas','TX','75373','',' ','2020-10-09 17:49:19'),('CNA INSURANCE','PO BOX 74007619','','','','Chicago','IL','60674','',' ','2020-02-07 18:58:27'),('Colorlith Corporation','11 East Stow Road','','','','Marlton','NJ','08053','','','2011-06-15 00:04:44'),('Commonwealth of Pennsylvania','Department of Health','Drug/Device Registration','132 Kline Plaza, Suite A','','Harrisburg','PA','17104','','','2014-04-22 16:38:54'),('Concentrated Aloe Corporation','123 North Orchard Street','Suite 4A','','','Ormond Beach','FL','32174','','','2018-03-23 18:11:39'),('Consolidated Plastics','4700 Prosper Drive','','','','Stow','OH','44224','','','2014-12-24 15:50:32'),('Container & Packaging Supply, Inc.','P.O. Box 84144 ','','','','Seattle','WA','98124-5444','',' ','2017-01-09 22:25:50'),('Cosmetic Coatings Corporation','PO BOX 95','219 Broad Street','','','Carlstadt','NJ','07072','',' ','2018-02-09 18:57:02'),('Creative Concepts','70 Oak Street','','','','Norwood','PA','07648','','','2013-12-23 19:41:56'),('Croom Gerald','1007 East Bullock Avenue','','','','Yeadon','PA','19050','','','2011-06-14 03:14:31'),('Cross Country','855 Hylton road','','','','Pennsauken','NJ','08110','','','2019-05-17 19:51:56'),('Cynthia Riggs','RR Donnelly','9985 Gantry Road','','','Philadelphia','PA','19115','','','2021-02-16 18:34:15'),('David L. Rosen, ESQ','Foley & Lardner LLP','P.O. Box 78470','','','Milwaukee','WI','53278-8470','',' ','2021-06-17 20:10:25'),('David Rosen, ESQ','Foley & Lardner LLP','P.O. Box 78470','','','Milwaukee','WI','53278-8470','','','2021-06-17 19:05:03'),('DDLA','20801 BISCAYNE BLVD','SUITE 403','','','MIAMI','FL','33180','PETER HERNANDEZ','','2014-07-11 15:50:59'),('Dee Paper Co, Inc.','Front & Broomall Streets','','','','Chester','PA','19013','','','2011-06-15 00:07:32'),('Delco Glass & Mirror Co.','247 Long Lane','','','','Upper Darby','PA','19082','','','2011-06-14 03:36:30'),('Delval Balance Service Co., Inc.','21 Millway Road','','','','Lumberton','NJ','08048','',' ','2014-09-29 15:24:52'),('Denise Varquez-Hoffman, D.P.M. ','932 Blue Fox Way','','','','Arnold','MD','21012','','','2015-06-10 18:15:14'),('Department of Labor and Industry','Bureau of Occupational and Industrial Safety','P.O. Box 68572','','','Harrisburg','PA','17106','',' ','2018-04-20 18:54:12'),('DeWolf','PO Box 842472','','','','Boston','MA','02284','',' ','2017-03-10 16:42:44'),('Dickson','930 South Westwood Avenue','','','','Addison','IL','60101','','','2014-01-22 20:39:26'),('DiFranco Family Foot Care','3939 West Ridge Road','Suite C1','','','Erie','PA','16506','Meagan Finazzo/Practice Manager','','2021-02-03 19:26:53'),('Dimension Cleaning Service','P.O. Box 688 ','','','','Lansdowne','PA','19050','','','2019-04-12 18:06:35'),('DLS Worldwide','                                                      P.O. Box 932721','','','','Cleveland','OH','44193','','','2019-12-06 19:22:07'),('DOTT PRODUCTS ','1273 Lear Industrial Parkway ','','','','Avon','OH','44011','','','2014-07-22 16:43:52'),('Dr. Brian Mussett ','The Ankle and Foot Clinic of Erie, P.C. ','3737 West 26 Street','','','Erie','PA','16506','','','2021-08-27 20:14:27'),('Dr. Hillary Brenner','160 Broadway East Bldg','10th Floor, Suite 1000 ','','','New York','NY','10038','Labels','','2021-05-11 20:24:26'),('Dr. Jose A. Mattei','Manuel Pere Aviles','','','','Arecibo','PR','00612','','','2020-01-13 18:45:00'),('Dr. L Todd Albrecht  ','8579 Commerce Drive','Suite 100','','','Easton','MD','21601','','','2013-12-30 19:07:25'),('Dr. Mark Camilleri','6845 Stanley Ave','','','','Berwyn','IL','60402','','','2021-01-12 16:37:27'),('Dr. Mark Landsman','Manhattan Podiatry','65 Broadway','Suite 1806','','New York','NY','10006','Mary - Return Label','  ','2017-01-04 17:04:39'),('DR. STEVEN SELBY BLANKEN','BLANKEN PODIATRY GROUP ','10313 GEORGIA AVENUE','','','SILVER SPRING','MD','20902','','','2018-07-16 16:53:30'),('Elementis Global LLC.','1577 Momentum Place','','','','Chicago','IL','60689','',' ','2018-07-06 13:50:59'),('Elevator Code Inspections, Inc.','112 Governor Markham Drive','','','','Glen Mills','PA','19342','','','2013-12-30 19:17:40'),('Elmark Graphics','307 Westtown Road','','','','West Chester','PA','19382','','','2014-01-10 16:03:11'),('Elmark Packaging, LLC','315 West Street Road','Suite A','','','Warminster','PA','18974','','  ','2021-09-15 20:31:02'),('England Logistics, Inc.','P.O. Box 953776','','','','St. Louis','MO','63195','','','2014-01-22 20:45:01'),('EPS, Inc.','Customer #55 -0039760','Lock Box 427','','','Jamison','PA','18929','','','2013-11-06 17:51:06'),('Excel Elevator &  Escalator','1 Harmon Plaza','','','','Secaucus','NJ','07094','','','2020-10-23 16:14:05'),('Excel Elevator & Escalator','1 Harmon Plaza','Suite 830','','','Secaucus','NJ','07094','','  ','2021-04-16 18:21:24'),('FedEx','P.O. Box 371461 ','','','','Pittsburgh','PA','15250','','','2018-08-17 20:51:20'),('FedEx Freight','P O Box 223125','','','','Pittsburgh','PA','15251','','','2019-11-01 18:03:45'),('First National Financial Services, Inc','405 East Pennsylvania Blvd','Feasterville Business Camp','','','Feasterville','PA','19053','','','2016-01-08 20:13:15'),('Fisher Scientific','P.O. Box 3648','ACCT# 803584-001','','','Boston','MA','02241','',' ','2015-11-25 16:07:41'),('Floyd Trichell, D.P.M.','509 East Millsap ','Suite 101','','','Fayetteville','AR','72703','','','2018-10-26 18:15:41'),('FOLEY & LARDNER LLP','WASHINGTON HARBOUR','3000 K STREET, N.W.  ','SUITE 600','','WASHINGTON','DC','20007','',' ','2017-05-12 17:39:52'),('Foxfire Printing','P.O. Box 822791','','','','Philadelphia','','19182','','','2011-06-20 01:03:51'),('FPMA','410 North Gadsden Street ','','','','Tallahassee','FL','32301','','','2018-07-23 17:20:34'),('Freund Container & Supply','A Div of Berlin Packaging','36690 Treasury Center','','','Chicago','IL','60694','','     ','2017-10-27 17:25:52'),('GARY FIELDS, D.P.M.','125 HISTORY DRIVE','','','','CARROLLTON','GA','30117','ATTN: AMANDA','','2015-09-01 16:53:51'),('General Partition Company, Inc.','916 Washington Avenue','P.O. Box 97','','','Croydon','PA','19021','','','2011-06-15 00:35:06'),('Genesis Packaging Technologies','373 Poplar Road','','','','Honey  Brook','PA','19344','','','2020-11-06 17:46:24'),('GEODIS USA, INC.','62216 COLLECTIONS CENTER DRIVE','','','','CHICAGO','IL','60693','',' ','2016-12-02 16:58:20'),('Gibraltar Laboratories','122 Fairfield Road','','','','Fairfield','NJ','07004','',' ','2019-03-15 17:37:06'),('Gill Podiatry Supply','22400 Ascoa Court','','','','Strongsville','OH','44149','Attn:Dave Adriano','','2021-05-19 15:06:41'),('Global Equipment Co.','29833 Network Place','','','','Chicago','IL','60673','',' ','2016-08-26 16:47:26'),('Global Products Network, LLC','170 Main St. 2nd FL.','','','','Fort Lee','NJ','07024','','','2019-03-15 17:48:59'),('Globaltranz Enterprises, Inc.','PO Box 203285','','','','Dallas','TX','75320','','866-275-1407','2013-10-28 21:15:46'),('GMP LABELING, INC','5955 GRANITE LAKE DRIVE','STE 150','','','GRANITE BAY','CA','95746','','','2020-08-14 17:38:13'),('Grainger','DEPT. 829054436','','','','PALATINE','IL','60038-0001','','215.238.8820 ','2015-02-25 19:25:33'),('Graphics Communications','793 Nina Way','','','','Warminster','PA','18974','','215.441.5335','2011-06-20 01:45:07'),('Green Pest Solutions','1004 Saunders Lane','','','','West Chester','PA','19380','',' ','2019-09-13 15:01:41'),('GS1 US Inc','Dept 781271.','P.O. Box 778000.','','','Detroit','MI','48278','Account Number 10471681 ',' ','2019-12-06 19:14:12'),('Hardwood Products','31 School Street','PO Box 149 ','','','Guildford','ME','04443','','','2013-11-06 18:53:28'),('Imperial Dade BORDENTOWN','425 Rising Sun Road','','','','Bordentown','NJ','08505','Order 7242893 ','','2020-06-30 17:32:49'),('Innovative Publishing','10629 Henning Way','Suite 8','','','Louisville','KY','40241','',' ','2018-09-28 18:15:15'),('Jacob Goldstein, D.P.M. ','230C E. Main Street ','','','','Gardner','KS','66030','','','2018-09-20 12:56:15'),('James Alexander','845 Route 94','','','','Blairstown','NJ','07825','','','2014-05-29 20:13:35'),('James Branch Cleaning Services','P.O. Box 5434','','','','Yeadon','PA','19050','','','2014-04-11 16:45:40'),('James G. Clough, D.P.M. ','Ronald G. Ray, D.P.M.','1301 11TH Avenue South ','','','Great Falls','MT','59405','','','2014-09-30 14:23:29'),('James Kinchsular, D.P.M.','3939 J Street','Suite 270','','','Sacramento','CA','95819','ATTN: Andrea','','2018-08-20 14:43:20'),('James R. Christina, D.P.M.','Executive Director & CEO ','American Podiatric Medical Association ','9312 Old Georgetown Road','','Bethesda ','MD','20814','','','2018-08-06 19:19:15'),('Jim Rief','Gill Podiatry','22400 Ascoa Court','','','Strongsville','OH','44149','','','2018-08-09 14:39:51'),('Joe Silvestro','1155 Lewis Rd.','','','','Geneva','IL','60134','','','2021-01-05 18:54:10'),('John Carroll, D.P.M.','455 Boston Post Road','Suite 8','','','Old Saybrook','CT','06475','Attn: Dell',' ','2021-05-27 14:44:16'),('Joseph M. Leso, CFRE','Development and Alumni Relations','Temple University School of Podiatric Medicine',' 148 N. 8th Street','','Philadelphia','PA','19107','Joseph M. Leso, CFRE/Assistant Dean','215-625-5410 office\r\n215-667-9142 cell\r\n215-922-7830 fax   ','2018-04-06 14:26:22'),('JSR & COMPANY, INC ','104 Hampden Road','','','','Upper Darby','PA','19082','','','2015-04-23 14:50:35'),('Kane Communications','1062 Lancaster Ave.','Rosemont Plaza','Suite F15 ','','Rosemont','PA','19010','','  ','2018-02-09 18:54:06'),('Karalis Electric Co, INC.','320 Robinson  Drive','','','','Broomall','PA','19008','',' ','2014-07-18 14:11:48'),('Kraft Chemical Company','PO Box 75673','','','','Cleveland','OH','44101','','','2021-09-21 19:39:34'),('Lab Safety & Supply, Inc. ','Acct# 3866735','Department #698468','P.O. Box 5004','','Janesville','WI','53547','','800.356.0783','2011-06-20 02:10:18'),('Landau','Dept.5847 ','P.O. Box 11407','','','Birmngham','AL','35246','','  ','2021-05-24 20:09:33'),('Lawrence Levine','Foot Health Center','52 Berlin Road','Suite 500','','Cherry Hill','NJ','08034','Attn: Roni','','2020-07-21 18:56:25'),('Lawrence Levine, DPM','Foot Health Center','52 Berlin Road','Suite 500','','Cherry Hill','NJ','08034','Attn: Roni',' ','2020-07-21 18:57:13'),('License and Inspections','Attn: Nicole ','1 Fourth Street ','','','Chester','PA','19013','',' ','2014-09-24 13:24:06'),('Main Line Spring Water','3245 Garrett Road','','','','Drexel Hill','PA','19026','','','2013-12-02 20:02:38'),('MARIO SILVESTRI, DPM','1003 MONROE STREET','','','','ENDICOTT','NY','13760','ATTN: JULIE','','2015-08-31 16:05:24'),('MARK J. GREENBAUM, DPM, PC','4145 LAWRENCEVILLE HIGHWAY','SUITE 100 ','','','LILBURN','GA','30047','','','2014-02-06 20:03:08'),('Mati Sales','867 Skyline Drive','','','','Glenside','Pa','19038-','',' ','2020-11-20 18:38:19'),('McKernan Packaging Clearing House','P.O. Box 7281','','','','Reno','NV','89510','','','2011-06-16 18:28:24'),('McMaster-Carr','PO BOX 7690','','','','Chicago','IL','60680','','','2015-04-09 17:52:43'),('Metro-East REI','1936 Nester St','','','','Philadelphia','PA','19115','','','2020-10-16 19:12:27'),('Microbiological Consultants, Inc.','617 9th Avenue','','','','Huntington','WV','25701','','','2020-11-05 17:26:32'),('Microbiological Consultants, INC., ','1675 Ritter Blvd.','','','','Huntington','WV','25701','','','2019-05-31 17:21:58'),('Midwest Container and Supply Company ','1700 Stahl Road','P.O. Box 277','','','Barnhart','MO','63012','','contact person is liz phone is 636.464.7100','2011-06-20 16:33:50'),('Minutemanpress','573 Abbott Drive','','','','Broomall','PA','19008','Attn: Mike',' ','2017-04-26 13:42:45'),('Mission Screen Printing','PO Box 187','','','','Virginville','PA','19564','','','2019-10-18 15:00:51'),('Mr. Steve Mauch','10969 Luna Point Road','','','','Tallahassee','FL','32312','','','2017-05-18 18:48:26'),('Ms. Maria Hrabak ','Development Department Coordinator','American Podiatric Medical Association ','9312 Old Georgetown Road','','Bethesda ','MD','20814','',' ','2018-08-06 19:12:37'),('Ms. Marilyn Heiges','P.O. Box 89811','','','','Tampa','FL','33689','','','2018-03-20 19:57:18'),('National Novelty Brush Co.','PO Box 4096','','','','Lancaster','PA','17604','','','2013-10-28 21:06:02'),('Neeraj Narang, D.P.M.','13510 Midlothian Turnpike ','Suite D','','','Midlothian','VA','23113','','','2018-07-31 14:07:34'),('Nelson Laboratories Fairfield, Inc. ','734182 Network Place','','','','Chicago','IL','60673','','','2020-12-04 16:22:31'),('New England Motor Freight','P.O. Box 6031','','','','Elizabeth','NJ','07207','','','2016-08-19 16:43:07'),('New York College of Podiatric Medicine','Residency  Fair','53 East 124th Street','','','New York','NY','10035','',' ','2019-09-13 14:35:40'),('NEXEO SOLUTIONS','62190 Collections Center Drive','','','','Chicago','IL','60693','','','2015-06-19 14:45:14'),('North Meridian Mark Pharmacy','5445 Meridian Mark Road','Suite 190','','','Atlanta','Ga','30340','Carmen Smith (LUGOLS Return)',' ','2019-07-26 17:51:54'),('NORTHWEST EXTREMITY SPECIALISTS LLC','TIGARD OFFICE','9900 S.W. HALL BLVD','SUITE 100','','PORTLAND','OR','97223','','','2017-04-04 19:17:29'),('O.BERK COMPANY, L.L.C.','3 MILLTOWN COURT','P.O. BOX 1690','','','UNION','NJ','07083','','','2018-02-16 19:27:49'),('ODC Accounts Receivable','Overhead Door Co','2201 Fairmont Avenue','','','Reading','PA','19605','','','2019-06-21 16:56:51'),('Oden Machinery, Inc','600 Ensminger Road','','','','Tonawanda','NY','14150','',' ','2018-04-25 15:47:13'),('OHL-INTERNATIONAL','62216 COLLECTIONS CENTER DRIVE','','','','CHICAGO','IL','60693','','','2013-10-25 15:06:14'),('Olivver Heating & Cooling','101 Waverly Avenue','','','','Morton','PA','19070','','','2016-07-08 18:44:42'),('Omega','6726 Delilah Road','','','','Egg Harbor Township','NJ','08234','',' ','2014-12-19 16:36:14'),('Oregon Foot & Ankle Specialists','C/O Julie','200 North East Fourth Ave','','','Hillsboro','OR','97124','','','2021-05-24 13:36:19'),('PA Dept of Health, Drug & Device Registration','555 Walnut Street - Forum Place','7th Floor','','','Harrisburg','PA','17101','','','2019-04-18 15:22:09'),('Paragon Supply Co.','P.O. Box 425','','','','Upper Darby','PA','19082','','','2011-06-14 15:49:35'),('PCA Corrugated and Display, LCC ','PO Box 12485','','','','Newark','NJ','07101','','    ','2017-12-22 18:10:02'),('PDR NETWORK, LCC','P.O. BOX 824687','','','','Philadelphia','PA','19182','','','2014-06-30 19:44:50'),('PDR NEWORK, LLC','P.O. BOX 824687','','','','Philadelphia','PA','19182','','','2014-06-30 19:50:48'),('Penn Bottle and Supply Co','1321 Paysphere Circle','','','','Chicago','IL','60674','','','2011-06-10 20:36:25'),('PetroChoice','PO Box 829604','','','','Philadelphia','PA','19182','',' ','2017-07-24 20:16:18'),('Phoenix Frangrances, LLC','495 Walnut St','','','','Norwood','NJ','07648','','','2020-07-31 15:59:28'),('Pinciotti Rubbish Removal Corp.','209 Caleb Drive','','','','West Chester','PA','19382','',' ','2014-04-07 19:46:24'),('PMSI','300 Long Beach Blvd.','SUITE 6','','','Stratford','CT','06615','','  ','2019-07-05 19:24:35'),('Presentation Solutions Inc','432 Clearstream Road','','','','Jackson','NJ','08527','','','2017-08-04 17:00:03'),('Pret Advanced Materials LLC','P.O. Drawer 188 ','','','','Johnsonville','SC','29555','','','2021-01-29 19:52:42'),('Print Art, Inc.','6726 Delilah Road','','','','Egg Harbor Township','NJ','08234','','','2014-01-22 20:41:44'),('Professional Marketing Services, Inc. ','200 Benton Street','','','','Stratford','CT','06615','','','2014-01-07 16:02:14'),('Quill Corporation','P.O. box 37600','','','','Philadelphia','PA','19101','','','2013-10-22 16:42:42'),('R. Stocker & Sons','448 Primos Avenue','','','','Folcroft','PA','19032','','','2014-09-18 18:38:49'),('Raymond Sherman Co., Inc.','424 Gypsy Road','','','','King of Prussia','PA','19406','','Phone: 610.272.4640\r\nFax:   610.272.5440   ','2015-04-23 14:55:54'),('Rebco','100 W Avenue  ','Suite 150','','','Jenkintown','PA','19046','','','2019-11-01 17:55:33'),('RR Donnelley','PO Box 538602','','','','Atlanta','GA','300353','',' ','2021-02-05 17:01:03'),('Ruger Chemical','2808 Momentum Place','','','','Chicago','IL','60689','','','2014-01-07 13:43:43'),('Scully','Oak Lane and B&O R.R.','','','','Collingdale','PA','19023','','','2019-07-05 19:31:15'),('Sheldon Nadal, D.P.M.','586 Eglinton Avenue East','Suite 501','','','Toronto, Ontario ','','M4P-1P2','Canada','','2018-09-28 18:38:07'),('Shenker Locksmith','2020 Darby Road','','','','Havertown','PA','19573','','','2016-02-05 20:31:02'),('Shipping Documents','','','','','','','','','','2013-11-15 20:38:02'),('Signal Fire Protection','P.O. Box 218','','','','Bala Cynwyd','PA','19004','','','2011-06-14 18:36:25'),('SKS Bottle & Packaging','2600 7th Avenue','Bldg 60 W','','','Watervliet','NY','12189','','','2014-08-13 18:55:36'),('Skyline','Accounts Receivable','3355 Discovery Road','','','Eagan','MN','55121','','','2017-04-14 17:34:08'),('Skyline Exhibitor','144 Bain Drive','Suite 100','','','LaVergne','TN','37086','',' ','2017-12-15 20:49:30'),('SMTM MANAGEMENT LLC','173 MINEOLA BLVD','SUITE 2A','','','MINEOLA','NY','11501','','','2017-05-01 18:26:14'),('Spectrum Chemical Mfg. Corp.','P.O. Box 740894 ','','','','Los Angeles','Ca','90074','','  ','2018-05-18 18:46:26'),('Stanwell West, Inc.','100-G East Jefryn Blvd.','','','','Deer Park','NY','11729','','   ','2021-05-21 20:46:14'),('Steven Block','Bluegrass Foot Center','1901 Leitchfield Road','','','Owensboro','KY','42303','',' ','2021-08-03 14:52:50'),('Steven Block, DPM','Bluegrass Foot Center','1901 Leitchfield Road','','','Owensboro','KY','42303','','  ','2021-08-03 14:53:24'),('Summit Research Labs','P.O. Box 626','','','','Huguenot','NY','12746','','','2014-01-28 19:43:27'),('Teals Express, Inc.','P.O. box 6010','','','','Watertown','NY','13601','','','2015-08-20 21:45:47'),('TForce Worldwide Inc.','PO Box 932721','','','','Cleveland','OH','44193','','','2021-04-09 16:19:04'),('Tianyu Liu','397 Bayrd Road ','','','','Upper Darby','PA','19082','','','2019-11-04 17:51:44'),('TimBar Packaging and Display','Valley Forge Division','PO Box 935226','','','Atlanta','GA','935226','','','2013-11-15 17:18:40'),('TQL','PO BOX 634558','','','','Cincinnati','OH','45263','','','2021-09-10 18:26:01'),('Trademark Packaging','6761 Chrisphalt Drive','','','','Bath','PA','19082','','','2014-04-10 18:00:28'),('TRICARE Management Activity','Reference: GC201100882/GC201100883','16401 East Centretech parkway','','','Aurora','CO','80011','Attention: Accounting Officer','','2011-06-17 20:11:48'),('TRYCARE LIMITED','West Park','Brackenbeck Road, Lidget Green','','','Bradford, West Yorkshire ','','BD7 2LW','',' ','2018-10-25 15:33:58'),('TUSPM PRACTICE MANAGEMENT CLUB ','931 Clinton Street','Apt# 409','','','Philadelphia','PA','19107','','','2018-09-17 17:07:55'),('ULINE','PO Box 88741','','','','Chicago','IL','60680','','','2013-11-06 17:39:47'),('Ungerer Company','4 Ungerer Way','','','','Lincoln Park','NJ','07035','','  ','2018-06-01 18:34:09'),('Unishippers   ','751 North Drive','SUITE 4','','','Melbourne','FL','32934','','   ','2021-01-12 17:13:48'),('Unishippers   PSO','PO Box 301 7309 Airport Road ','','','','Bath','PA','18014','','','2018-09-07 17:58:35'),('United Packaging Supply','102 Wharton Road','','','','Bristol','PA','19007','','','2013-11-19 17:41:35'),('United Packaging Supply Co.','102 Wharton Road','','','','Bristol','PA','19007','','    ','2018-07-20 14:32:26'),('United States Plastic Corporation','1390 Neubrecht Road','','','','Lima','OH','45801','','Phone: 800.821.0349\r\nFax:   800.854.5498','2011-06-20 14:24:49'),('Univar Solutions.','62190 Collections Center Drive','','','','Chicago','IL','60693','',' ','2021-07-30 15:40:14'),('Univar USA Inc.','P.O. Box 409692','','','','Atlanta','GA','20384','','','2014-04-02 17:00:09'),('UPPER DARBY','201 BYWOOD AVENUE','','','','Upper Darby','PA','19082','','','2013-10-24 18:11:59'),('Upper Darby Hardware','# 6266','6945 Marshall Road','','','Upper Darby','PA','19082','','  ','2019-08-23 17:20:22'),('Upper Darby School District','P.O. Box 13925','','','','Philadelphia','PA','19101','','','2020-07-13 18:18:19'),('Upper Darby Township','100 Garrett Road','','','','Upper Darby','PA','19082-3135','',' ','2021-03-29 17:42:08'),('Upper Darby TrueValue','# 6757-9','6945 Marshall Road','','','Upper Darby','PA','19082','','','2014-08-08 16:14:35'),('UPS','P.O.  BOX 7247-0244','','','','Philadelphia','PA','19170','','','2014-02-18 21:06:01'),('Valley Press, Inc.','5 East Montgomery Avenue','','','','Bala Cynwyd','PA','19004','Attn: Tom McCarthy','','2018-02-27 20:38:49'),('Vantage Specialty Ingredients, Inc.','PO box 775949','','','','Chicago','IL','60677','','    ','2020-08-05 18:28:43'),('Victoria L. Melhuish, D.P.M.','Sierra Foot & Ankle','2350 South Carson Street','Suite 3','','Carson City','NV','89701','','','2020-03-10 15:38:23'),('Virginia Dare','882 Third Avenue','','','','Brooklyn','NY','11232','','','2014-03-26 18:22:43'),('Volpe Express','565 hollow road','','','','Phoenixville','PA','19460','',' ','2015-05-06 18:30:44'),('Volpe Express, Inc.','565 Hollow Road','','','','Phoenixville','PA','19460','','','2014-04-15 19:46:07'),('Ward Trucking','P.O. Box 1553','','','','Altoona','PA','16603','','','2014-09-11 20:46:51'),('Weber Display & Packaging','3500 Richmond Street','','','','Philadelphia','PA','19134','','  ','2020-08-21 17:32:40'),('Weeks Pest Control','7505 Parkview  Rd.','','','','Upper Darby','PA','19082','Attn: John Weeks',' ','2016-10-14 18:22:07'),('Wellman Advanced Materials, LLC ','P.O. Drawer 188 ','','','','Johnsonville','SC','29555','',' ','2018-02-09 18:47:36'),('Westland Printers','14880 Sweitzer Lane','','','','Laurel','MD','20707','Attn: Bill Fawns','','2021-02-17 17:28:24'),('Y-Pers Inc.','P.O. Box 9559','','','','Philadelphia','PA','19124','','','2015-08-28 16:06:48'),('Yellow Transportation','PO Box 13850','','','','Newark','NJ','07188','','','2014-04-02 14:40:27'),('YGS Group','3650 West Market Street','','','','York','PA','17404','','','2013-11-07 19:11:57');
/*!40000 ALTER TABLE `ven_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_vendor`
--

DROP TABLE IF EXISTS `vendors_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_vendor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `co_name` varchar(75) NOT NULL,
  `st_addr` varchar(75) DEFAULT NULL,
  `st_addr1` varchar(75) DEFAULT NULL,
  `st_addr2` varchar(75) DEFAULT NULL,
  `st_addr3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `st` varchar(2) DEFAULT NULL,
  `attn` varchar(75) DEFAULT NULL,
  `notes` longtext,
  `last_updated` datetime(6) NOT NULL,
  `zip_code` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_vendor`
--

LOCK TABLES `vendors_vendor` WRITE;
/*!40000 ALTER TABLE `vendors_vendor` DISABLE KEYS */;
INSERT INTO `vendors_vendor` VALUES (1,'A Duie Pyle, Inc.','650 Westtown road','P.O. Box 564','Accounts Receivable',NULL,'West Chester','PA',NULL,'','2021-11-05 02:57:56.783614','19381'),(2,'Abbott Ball Company','P.O. Box 847102',NULL,NULL,NULL,'Boston','MA',NULL,NULL,'2021-10-22 00:36:06.717758','02284'),(3,'Able Plastics','14 Albert Drive',NULL,NULL,NULL,'Monsey','NY',NULL,'','2021-11-06 14:45:08.760439','10952'),(4,'Aceto Corporation','One Hollow Lane',NULL,NULL,NULL,'Lake Success','NY',NULL,NULL,'2021-10-22 00:50:36.711266','11042'),(5,'Active Life Solutions','23 Strickler Avenue',NULL,'Suite 202',NULL,'Waynesboro','PA',NULL,NULL,'2021-10-22 01:07:18.371645','17268'),(6,'Adams Material Handling, LLC','7128 Grays Avenue',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-22 02:25:03.615981','19142'),(7,'Admiral Craft Equipment Corporation','P.O. Box 9014',NULL,NULL,NULL,'Hicksville','NY',NULL,NULL,'2021-10-22 02:29:56.091499','11802'),(8,'Admiral Products, Inc.','4101 West 150TH Street',NULL,NULL,NULL,'Cleveland','OH',NULL,'','2021-11-14 03:33:43.950581','44135'),(9,'ADV/EXPO','160 Johnson Avenue',NULL,NULL,NULL,'Hackensack','NJ',NULL,'','2021-10-29 02:29:54.453843','07601'),(11,'AdvanceXpo','125 Druid Avenue',NULL,NULL,NULL,'Dumont','NJ',NULL,NULL,'2021-10-22 02:48:35.769529','07628'),(12,'ADV/EXPO','125 Druid Avenue',NULL,NULL,NULL,'Dumont','NJ',NULL,NULL,'2021-10-22 02:50:34.706774','07628'),(13,'Advanstar Communications Inc','131 west 1st Street',NULL,NULL,NULL,'Duluth','MN',NULL,NULL,'2021-10-22 02:52:49.708557','55802'),(14,'Advent Security Corporation','101 Roesch Avenue',NULL,NULL,NULL,'Oreland','PA',NULL,NULL,'2021-10-22 02:56:50.511861','19075'),(15,'Alina Poratt','E.S. PORATT MEDI. CO.','82 Bealiba Road',NULL,NULL,'Caufield South','VI','Australia',NULL,'2021-10-22 03:19:51.394409','3162'),(16,'ALL ISLAND PODIATRY P.C','David E. Karpe, D.P.M.','200 N. Village Avenue','Suite 101',NULL,'Rockville Center','NY',NULL,NULL,'2021-10-22 12:46:03.748692','11570'),(17,'AM Packaging, Inc.','694 Center Street',NULL,NULL,NULL,'Chicopee','MA',NULL,NULL,'2021-10-22 12:48:56.272428','01013'),(18,'American Spraytech, LLC','205 Meister Avenue',NULL,NULL,NULL,'North Branch','NJ',NULL,NULL,'2021-10-22 12:53:22.691765','08876'),(19,'Amerisourcebergen','500 Innovation Drive',NULL,NULL,NULL,'Shakopee','MN',NULL,NULL,'2021-10-22 12:57:50.151520','55379'),(20,'Andler Maryland','P.O. Box 499125',NULL,NULL,NULL,'Everett','MA',NULL,NULL,'2021-10-22 12:58:45.894783','02149'),(21,'Andon Brush Company','1 Merritt Avenue',NULL,NULL,NULL,'Little Falls','NJ',NULL,NULL,'2021-10-22 13:01:05.276491','07424'),(22,'Anne Johnson','Philadelphia District Director','U.S. Custom House','200 Chestnut Street',NULL,'Philadelphia','PA',NULL,NULL,'2021-10-22 13:46:24.164370','19106'),(23,'Antheil Maslow & MacMinn, LLP','P.O. Box 50',NULL,NULL,NULL,'Doylestown','PA',NULL,NULL,'2021-10-22 13:48:52.161168','18901'),(24,'Anthony Handlon Designs','9228 Horatio Road',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-22 13:51:18.974098','19114'),(25,'Anthony P. Galzarano','Wissahickon Chiropractic','610 Barnes Street',NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-22 13:53:29.236927','19128'),(26,'APMSA','9312 Old Georgetown Road',NULL,NULL,NULL,'Bethesda','MD','Attn: Finance Department',NULL,'2021-10-22 13:57:11.568319','20814'),(28,'Artcraft','P.O. Box 382',NULL,NULL,NULL,'Altamont','NY',NULL,NULL,'2021-10-22 14:00:23.957218','12009'),(29,'Atis Elevator Code Inspections, Inc.','P.O. Box 790379',NULL,NULL,NULL,'St Louis','MO',NULL,NULL,'2021-10-22 14:03:00.218560','63179'),(30,'Atlantic','113 Rock Road',NULL,NULL,NULL,'Horsham','PA',NULL,NULL,'2021-10-22 14:05:11.737202','19044'),(31,'Automation Devices, Inc.','750 West Ridge Road',NULL,NULL,NULL,'Fairview','PA',NULL,NULL,'2021-10-22 14:07:25.463421','16415'),(32,'B Safe, Inc.','P.O. Box 821349',NULL,NULL,NULL,'Philadelphis','PA',NULL,NULL,'2021-10-22 14:09:18.580874','19182'),(33,'Bank of America Lockbox Services','McKesson Corporation','15876 Collection Center Drive',NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-22 14:12:01.921176','60693'),(34,'Baralan USA, Inc.','ARROWPAK','120-19 89th Avenue',NULL,NULL,'Richmond Hill','NY',NULL,NULL,'2021-10-22 14:14:33.390732','11418'),(35,'Berje','700 Blair Road',NULL,NULL,NULL,'Carteret','NJ',NULL,NULL,'2021-10-22 14:47:05.711019','07008'),(36,'Berlin Packaging','36690 Treasury Center',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-22 15:45:02.293931','60694'),(37,'Brenntag Northeast, LLC.','P.O. Box 62111',NULL,NULL,NULL,'Baltimore','MD',NULL,NULL,'2021-10-22 15:49:31.816274','21264'),(38,'Brenntag Specialties, Inc.','P.O. Box 780510',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-22 16:13:58.594702','19178'),(39,'Bryan Bullard, D.P.M.','500 Quail Creek','Suite B',NULL,NULL,'Amarillo','TX',NULL,NULL,'2021-10-22 16:16:43.826295','79124'),(40,'Canton Foot Specialists, PC','4350 Ford Road','Suite 150',NULL,NULL,'Canton','MI',NULL,NULL,'2021-10-22 16:19:50.837963','48187'),(41,'Carolina Foot & Ankle','1501 Tate Boulevard South East','Suite 203',NULL,NULL,'Hickory','NC','Gezell',NULL,'2021-10-22 16:22:53.068130','28202'),(42,'Celsis Laboratory Group','New Jersey Division','P.O. Box 60564',NULL,NULL,'St. Louis','MO',NULL,NULL,'2021-10-22 16:25:33.936372','63160'),(43,'cGMP Validation, LLC','7930 W. Kenton Circle','Suite 140',NULL,NULL,'Huntersville','NC',NULL,NULL,'2021-10-22 16:28:40.333890','23078'),(44,'Chem International','Integrated BioPharma, Inc.','225 Long Lane',NULL,NULL,'Hillside','NJ',NULL,NULL,'2021-10-22 17:54:28.775064','07205'),(45,'City Hall','1 Fourth Street','Attn: City Taxes',NULL,NULL,'Chester','PA',NULL,NULL,'2021-10-22 17:58:09.019846','19013'),(46,'Commonwealth of Pennsylvania','Department of Health','Drug/Device Registration','132 Kline Plaza','Suita A','Harrisburg','PA',NULL,NULL,'2021-10-22 18:01:49.655080','17104'),(47,'C&H Distributors, LLC','22133 Network Place',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-22 18:05:06.355560','60673'),(48,'Champion Containers, PC','P.O. Box 90',NULL,NULL,NULL,'Avenel','NJ',NULL,NULL,'2021-10-22 18:07:47.490410','07001'),(49,'Charles B. Gans','2418 Grasslyn Avenue',NULL,NULL,NULL,'Havertown','PA',NULL,NULL,'2021-10-22 18:09:49.855665','19083'),(50,'Central Carolina Scale, Inc.','5393 Farrell Road',NULL,NULL,NULL,'Sanford','NC',NULL,NULL,'2021-10-22 18:12:41.220584','27330'),(51,'Chemcentral','P.O. Box 409321',NULL,NULL,NULL,'Atlanta','GA',NULL,NULL,'2021-10-22 18:14:29.882764','30384'),(52,'Clean Harbors Environmental Services, Inc.','P.O. Box 734867',NULL,NULL,NULL,'Dallas','TX',NULL,NULL,'2021-10-22 18:16:48.577185','75373'),(53,'CNA Insurance','P.O. Box 74007619',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-22 18:19:06.454224','60674'),(54,'Colorlith Corporation','11 East Stow Road',NULL,NULL,NULL,'Marlton','NJ',NULL,NULL,'2021-10-22 18:25:23.870846','08053'),(55,'Concentrated Aloe Corporation','123 North Orchard Street','Suite 4A',NULL,NULL,'Ormond Beach','FL',NULL,NULL,'2021-10-22 18:56:01.408075','32174'),(56,'Consolidated Plastics','4700 Prosper Drive',NULL,NULL,NULL,'Stow','OH',NULL,NULL,'2021-10-22 18:57:35.086072','44224'),(57,'Container and Packaging Supply, Inc.','P.O. Box 84144',NULL,NULL,NULL,'Seattle','WA',NULL,NULL,'2021-10-22 18:59:43.732756','98124'),(58,'Cosmetic Coatings','P.O. Box 95',NULL,NULL,NULL,'Carlstadt','NJ',NULL,NULL,'2021-10-22 19:01:00.515674','07072'),(59,'Creative Concepts','70 Oak Street',NULL,NULL,NULL,'Norwood','PA',NULL,NULL,'2021-10-22 19:02:14.529600','07648'),(60,'Cross Country','855 Hylton Road',NULL,NULL,NULL,'Pennsauken','NJ',NULL,NULL,'2021-10-22 19:04:02.984068','08110'),(61,'Cynthia Riggs','RR Donnelly','9985 Gantry Road',NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-22 19:07:15.900854','19115'),(62,'David L. Rosen, ESQ','Foley & Lardner, LLP','P.O. Box 78470',NULL,NULL,'Milwaukee','WI',NULL,NULL,'2021-10-22 19:09:39.401347','53278'),(63,'DDLA','20801 Biscayne Blvd','Suite 403',NULL,NULL,'Miami','FL','Peter Hernandez',NULL,'2021-10-22 19:11:56.432368','33180'),(64,'Dee Paper Co, Inc.',NULL,'Front & Broomall Streets',NULL,NULL,'Chester','PA',NULL,NULL,'2021-10-22 19:13:28.519049','19013'),(65,'Delco Glass & Mirror Co.','247 Long Lane',NULL,NULL,NULL,'Upper Darby','PA',NULL,'','2021-10-25 03:58:11.508063','19082'),(66,'Delval Balance Service Co., Inc.','21 Millway Road',NULL,NULL,NULL,'Lumberton','NJ',NULL,'','2021-10-26 02:06:00.824643','08048'),(67,'Denise Vanquez-Hoffman, D.P.M.','932 Blue Fox Way',NULL,NULL,NULL,'Arnnold','MD',NULL,NULL,'2021-10-27 23:49:03.904233','21012'),(68,'Department of Labor and Industry','Bureau of Occupational and Industrial Safety','P.O. Box 68572',NULL,NULL,'Harrisburg','PA',NULL,NULL,'2021-10-27 23:56:41.110035','17106'),(69,'DeWolf','P.O. Box 842472',NULL,NULL,NULL,'Boston','MA',NULL,NULL,'2021-10-27 23:56:36.461962','02284'),(70,'Dickson','930 South Westwood Avenue',NULL,NULL,NULL,'Addison','IL',NULL,NULL,'2021-10-28 10:01:10.550712','60101'),(71,'DiFranco Family Foot Care','3939 West Ridge Road','Suite C1',NULL,NULL,'Erie','PA',NULL,NULL,'2021-10-28 10:04:34.945253','16506'),(72,'Dimension Cleaning Service','P.O. Box 688',NULL,NULL,NULL,'Lansdowne','PA',NULL,NULL,'2021-10-28 13:35:21.988340','19050'),(73,'DLS Worldwide','P.O. Box 932721',NULL,NULL,NULL,'Cleveland','OH',NULL,NULL,'2021-10-28 13:36:05.787659','44193'),(74,'DOTT Products','1273 Lear Industrial Parkway',NULL,NULL,NULL,'Avon','OH',NULL,NULL,'2021-10-28 13:38:01.720924','44011'),(75,'Elementis Global, LLC ','1577 Momentum Place',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-28 13:40:03.023234','60689'),(76,'Elevator Code Inspections, Inc.','112 Governor Markham D',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-28 13:42:46.835930','60689'),(77,'Elevator Code Inspections, Inc.','112 Governor Markham Drive',NULL,NULL,NULL,'Glen Mills','PA',NULL,NULL,'2021-10-28 13:43:49.530719','19342'),(78,'Elmark Graphics','307 Westtown Road',NULL,NULL,NULL,'West Chester','PA',NULL,NULL,'2021-10-28 13:54:32.790768','19382'),(79,'Elementis Global','1577 Momentum Place',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-28 13:56:52.037499','60689'),(80,'Elmark Packaging, LLC','315 West Street Road','Suite A',NULL,NULL,'Warminster','PA',NULL,NULL,'2021-10-28 15:41:34.795902','18974'),(81,'England Logistics, Inc.','P.O. Box 953776',NULL,NULL,NULL,'St. Louis','MO',NULL,NULL,'2021-10-28 15:41:26.325207','63195'),(82,'EPS, Inc.','Customer #55-0039760','Lock Box 427',NULL,NULL,'Jamison','PA',NULL,NULL,'2021-10-28 15:44:53.465081','18929'),(83,'Excel Eleator & Escalator','1 Harmon Plaza','Suite 830',NULL,NULL,'Secaucus','NJ',NULL,NULL,'2021-10-28 15:47:14.629337','07094'),(84,'FedEx','P.O. Box 371461',NULL,NULL,NULL,'Pittsburgh','PA',NULL,NULL,'2021-10-28 15:49:04.908833','15250'),(85,'FedEx Freight','P.O. Box 223125',NULL,NULL,NULL,'Pittsburgh','PA',NULL,NULL,'2021-10-28 15:49:59.091740','15251'),(86,'First National Financial Services, Inc.','405 East Pennsylvania Blvd','Feasterville Business Camp',NULL,NULL,'Feasterville','PA',NULL,NULL,'2021-10-28 15:52:29.382944','19053'),(87,'Fisher Scientific','P.O. Box 3648','Acct# 803584-001',NULL,NULL,'Boston','MA',NULL,NULL,'2021-10-28 15:54:18.223420','02241'),(88,'Foley & Lardner, LLP','P.O. Box 78740',NULL,NULL,NULL,'Milwaukee','WI',NULL,NULL,'2021-10-28 15:56:55.132930','53278'),(89,'Foxfire Printing','P.O. Box 822791',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-28 15:58:24.827188','19182'),(90,'FPMA','410 North Gladsden Street',NULL,NULL,NULL,'Tallahassee','FL',NULL,NULL,'2021-10-28 16:00:27.193292','32301'),(91,'Freund Container & Supply','A Div of Berlin Packaging',NULL,'36690 Treasury Center',NULL,'Chicago','IL',NULL,NULL,'2021-10-28 16:02:56.710537','60694'),(92,'General Partition Company, Inc.','916 Washington Avenue',NULL,'P.O. Box 97',NULL,'Croyton','PA',NULL,NULL,'2021-10-28 16:05:11.860875','19021'),(93,'Genesis Packaging Technologies','373 Poplar Road',NULL,NULL,NULL,'Honey Brook','PA',NULL,NULL,'2021-10-28 16:07:51.187147','19344'),(94,'GEODIS USA, Inc.','62216 Collections Center Drive',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-28 16:09:39.665406','60693'),(95,'Gill Podiatry Supply','22400 Ascoa Court',NULL,NULL,NULL,'Strongsville','OH',NULL,NULL,'2021-10-28 16:11:41.862673','44149'),(96,'Global Equipment Co.','29833 Network Place',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-28 16:13:01.582765','60673'),(97,'Global Products Network, LLC','170 Main Street','2nd Floor',NULL,NULL,'Fort Lee','NJ',NULL,NULL,'2021-10-28 16:18:59.616694','07024'),(98,'Globaltranz Enterprises, Inc.','P.O. Box 203285',NULL,NULL,NULL,'Dallas','TX',NULL,NULL,'2021-10-28 16:18:17.888799','75320'),(99,'GMP Labeling, Inc.','5955 Granite Lake Drive','Suite 150',NULL,NULL,'Granite Bay','CA',NULL,NULL,'2021-10-28 16:21:27.397472','95746'),(100,'Grainger','DEPT. 829054436',NULL,NULL,NULL,'Palatine','IL',NULL,NULL,'2021-10-28 16:23:20.355708','60038'),(101,'Graphics Communications','793 Nina Way',NULL,NULL,NULL,'Warminster','PA',NULL,NULL,'2021-10-28 16:25:05.090075','18974'),(102,'Green Pest Solutions','1004 Saunders Lane',NULL,NULL,NULL,'West Chester','PA',NULL,NULL,'2021-10-28 16:26:36.200588','19380'),(103,'GS1 US, Inc. ','Dept 781271','P.O. Box 77800',NULL,NULL,'Detroit','MI',NULL,NULL,'2021-10-28 16:29:04.502711','48278'),(104,'Hardwood Products','31 School Street','P.O. Box 149',NULL,NULL,'Guildford','ME',NULL,NULL,'2021-10-28 16:31:33.764256','04443'),(105,'Imperial Dade Bodentown','425 Rising Sun Road',NULL,NULL,NULL,'Bordentown','MJ',NULL,NULL,'2021-10-28 16:34:30.722415','08505'),(106,'Innovative Publishing','10629 Henning Way','Suite 8',NULL,NULL,'Louisville','KY',NULL,NULL,'2021-10-28 17:15:28.700624','40241'),(107,'James Alexander','845 Route 94',NULL,NULL,NULL,'Blairstown','NJ',NULL,NULL,'2021-10-28 17:17:31.185478','07825'),(108,'Jim Rief','Gill Podaitry','22400 Ascoa Court',NULL,NULL,'Strongville','OH',NULL,NULL,'2021-10-28 17:19:54.040401','44149'),(109,'Joseph M. Leso, CFRE','Developemnt and Alumni Relations','Temple University School of Podiatric Medicint','148 North 8th Street',NULL,'Philadelphia','PA',NULL,NULL,'2021-10-28 17:23:03.371824','19107'),(110,'Kane Communication','1062 Lancaster Avenue','Rosemont Plaza','Suite F15',NULL,'Rosemont','PA',NULL,NULL,'2021-10-28 17:25:32.322353','19010'),(111,'Karalis Electric Co, Inc.','320 Robinson Drive',NULL,NULL,NULL,'Broomall','PA',NULL,NULL,'2021-10-28 17:27:30.870973','19008'),(112,'Kraft Chemical Company','P.O. Box 75673',NULL,NULL,NULL,'Cleveland','OH',NULL,NULL,'2021-10-28 17:29:04.942472','44101'),(113,'Lab Safety & Supply, Inc.','Acct# 3866735','Department# 698468','P.O. Box 5004',NULL,'Jamesville','WI',NULL,NULL,'2021-10-28 17:31:45.243561','53547'),(114,'Landau','Dept. 5847','P.O. Box 11407',NULL,NULL,'Birmingham','AL',NULL,NULL,'2021-10-28 17:34:17.521674','35246'),(115,'Main Line Spring Water','3245 Garret Road',NULL,NULL,NULL,'Drexel Hill','PA',NULL,NULL,'2021-10-28 17:37:04.830830','19026'),(116,'Mati Sales','867 Skyline Drive',NULL,NULL,NULL,'Glenside','PA',NULL,NULL,'2021-10-28 17:41:19.810479','19038'),(117,'McKernan Packaging','P.O. Box 7281',NULL,NULL,NULL,'Reno','NV',NULL,NULL,'2021-10-28 17:40:22.946589','89510'),(118,'McMaster Carr','P.O. Box 7690',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-28 17:43:11.368637','60680'),(119,'Microbiological Consultants, Inc.','617 9th Avenue',NULL,NULL,NULL,'Huntington','WV',NULL,'','2021-11-12 21:04:24.171299','25701'),(120,'Westland Printers','14880 Sweitzer Lane',NULL,NULL,NULL,'Laurel','MD','Bill Fawns',NULL,'2021-10-29 14:05:47.093543','20707'),(121,'Y-Pers Inc.','P.O. Box 9559',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-29 14:07:32.939983','19124'),(122,'Yellow Transportation','P.O. Box 13850',NULL,NULL,NULL,'Newark','NJ',NULL,NULL,'2021-10-29 14:10:46.817878','07188'),(123,'YGS Group','3650 West Market Street',NULL,NULL,NULL,'York','PA',NULL,NULL,'2021-10-29 14:12:14.816614','07404'),(124,'Paragon Supply Co.','P.O. Box 425',NULL,NULL,NULL,'Upper Darby','PA',NULL,NULL,'2021-10-29 14:14:36.221612','19082'),(125,'PCA Corrugated  and Display, LCC','P.O. Box 12485',NULL,NULL,NULL,'Newark','NJ',NULL,NULL,'2021-10-29 14:16:07.924456','07101'),(126,'PDR Network, LCC','P.O. Box 824687',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-29 14:17:54.379020','19182'),(127,'Penn Bottle and Supply Co.','1321 Paysphere Circle',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-29 14:19:31.840740','60674'),(128,'PetroChoice','P.O. Box 829604',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-29 14:20:49.047786','19182'),(129,'Phoenix Frangrances, LLC','495 Walnut Street',NULL,NULL,NULL,'Norwood','NJ',NULL,NULL,'2021-10-29 14:23:36.853208','07648'),(130,'Summit Research Labs','P.O. Box 626',NULL,NULL,NULL,'Huguenot','NY',NULL,NULL,'2021-10-29 14:25:36.963006','12746'),(131,'Teals Express, Inc.','P.O. Box 6010',NULL,NULL,NULL,'Watertown','NY',NULL,NULL,'2021-10-29 14:26:56.530836','13601'),(132,'TForce Worldwide, Inc.','P.O. Box 932721',NULL,NULL,NULL,'Cleveland','OH',NULL,NULL,'2021-10-29 14:28:10.721791','44193'),(133,'TimBar Packaging and Display','Valley Forge Division','P.O. Box 935226',NULL,NULL,'Atlanta','GA',NULL,NULL,'2021-10-29 14:30:30.982259','93526'),(134,'Weber Display and Packaging','3500 Richmond Street',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-10-29 18:33:41.906167','19134'),(135,'Wellman Advanced Materials, LLC','P.O. Drawer 188',NULL,NULL,NULL,'Johnsonville','SC',NULL,NULL,'2021-10-29 18:35:29.473969','29555'),(136,'Microbiological Consultants, Inc.','1675 Ritter Blvd.',NULL,NULL,NULL,'Huntington','WV',NULL,NULL,'2021-10-29 18:37:46.189667','25701'),(137,'Midwest Container and Supply Company','1700 Stahl Road','Barnhart',NULL,NULL,NULL,'MO',NULL,NULL,'2021-10-29 18:40:23.778288','63012'),(138,'Minutemanpress','573 Abbott Drive',NULL,NULL,NULL,'Bromall','PA',NULL,NULL,'2021-10-29 18:43:08.591443','19008'),(139,'Mission Screen Printiing','P.O. Box 187',NULL,NULL,NULL,'Bethesda','MD',NULL,NULL,'2021-10-29 18:44:30.518730','20814'),(140,'National Novelty Brush Co.','P.O. Box 4096',NULL,NULL,NULL,'Lancaster','PA',NULL,NULL,'2021-10-29 18:46:11.420193','17604'),(141,'Nelson Laboratories Fairfield, Inc.','734182 Network Place',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-29 18:48:01.346248','60673'),(142,'Sheldon Nadal, D.P.M.','586 Eglinton Avenue East','Suite 501',NULL,NULL,'Toronto, Ontario',NULL,'Canada',NULL,'2021-10-29 18:57:38.471511','M4P-IP2'),(143,'New England Motor Freight','P.O. Box 6031',NULL,NULL,NULL,'Elizabeth','NJ',NULL,NULL,'2021-10-29 18:59:54.053289','07207'),(144,'New York College of Podiatric Medicine','53 East 124th Street',NULL,NULL,NULL,'New York','NY',NULL,NULL,'2021-10-29 19:02:18.138735','10035'),(145,'Nexeo Solutions','62190 Collections Center Drive',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-10-29 19:03:45.161288','60693'),(146,'Presentation Solutions, Inc','432 Clearstream Road',NULL,NULL,NULL,'Jackson','NJ',NULL,NULL,'2021-11-01 15:16:01.244710','08527'),(147,'PMSI','300 Long Beach Blvd.','Suite 6',NULL,NULL,'Straford','CT',NULL,NULL,'2021-11-01 15:16:29.587574','06615'),(148,'Pret Advanced Materials LLc','P.O. Drawer 188',NULL,NULL,NULL,'Johnson','SC',NULL,NULL,'2021-11-01 15:18:33.995612','29555'),(149,'Print Art, Inc.','6726 Delilah Road',NULL,NULL,NULL,'Egg Harbor Township','NJ',NULL,NULL,'2021-11-01 18:29:41.268891','08234'),(150,'Professional Marketing Services, Inc.','200 Benton Street',NULL,NULL,NULL,'Stratford','CT',NULL,NULL,'2021-11-01 18:37:14.612212','06615'),(151,'Quill Corporation','P.O. Box 37600',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-11-01 18:38:30.226648','19101'),(152,'Quill Corporation','P.O. Box 37600',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-11-01 18:40:17.609376','19101'),(153,'R. Stocker & Sons','448 Primos Avenue',NULL,NULL,NULL,'Folcroft','PA',NULL,NULL,'2021-11-01 18:41:36.831689','19032'),(154,'Raymond Sherman Co., Inc.','424 Gypsy Road',NULL,NULL,NULL,'King of Prussia','PA',NULL,NULL,'2021-11-01 19:27:08.817239','19406'),(155,'Rebco','100 W avenue','Suite 150',NULL,NULL,'Jenkintown','PA',NULL,NULL,'2021-11-01 19:28:39.057112','19046'),(156,'O.Berk Company, L.L.C.','3 Milltown Court','P.O. Box 1690',NULL,NULL,'Union','NJ',NULL,NULL,'2021-11-01 19:31:15.300996','07083'),(157,'ODC Accounts Receivable','Overhead Door Co','2201 Fairmont Avenue',NULL,NULL,'Reading','PA',NULL,NULL,'2021-11-01 19:33:06.075070','19605'),(158,'Oden Machinery, Inc.','600 Ensiminger Road',NULL,NULL,NULL,'Tonawanda','NY',NULL,NULL,'2021-11-01 19:37:03.214153','14150'),(159,'OHL International','62216 Collections Center Drive',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-11-01 19:36:19.271605','60693'),(160,'Oliver Heating & Cooling','101 Waverly Avenue',NULL,NULL,NULL,'Morton','PA',NULL,NULL,'2021-11-01 19:38:35.453110','19070'),(161,'Omega','6726 Delilah Road',NULL,NULL,NULL,'Egg Harbor Township','NJ',NULL,NULL,'2021-11-01 19:41:45.514319','08234'),(162,'PA Dept of Health, Drug & Device Regitration','555 Walnut Street - Forum Place','7th Floor',NULL,NULL,'Harrisburg','PA',NULL,NULL,'2021-11-01 19:45:01.454812','17101'),(163,'United Packaging Supply Co.','102 Wharton Road',NULL,NULL,NULL,'Bristol','PA',NULL,NULL,'2021-11-01 19:49:29.970166','19007'),(164,'United States Plastic Corporation','1390 Neubrecht Road0',NULL,NULL,NULL,'Lima','OH',NULL,NULL,'2021-11-01 19:51:13.079590','45801'),(165,'Univar Solutions','62190 Collections Center Drive',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-11-01 19:52:38.957980','60693'),(166,'Univar USA, Inc. ','P.O. Box 409692',NULL,NULL,NULL,'Atlanta','GA',NULL,NULL,'2021-11-01 20:28:50.320221','60693'),(167,'Upper Darby','201 Bywood Avenue',NULL,NULL,NULL,'Upper Darby','PA',NULL,NULL,'2021-11-02 16:12:06.198042','19082'),(168,'Upper Darby Hardware #6266','6945 Marshall Road',NULL,NULL,NULL,'Upper Darby','PA',NULL,NULL,'2021-11-02 16:13:24.986918','19082'),(169,'Upper Darby School District','P.O. Box 13925',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-11-02 16:15:07.385947','19101'),(170,'Upper Darby Township','100 Garrett Road',NULL,NULL,NULL,'Upper Darby','PA',NULL,NULL,'2021-11-02 16:16:03.432454','19082'),(171,'UPS','P.O. Box 7247-0244',NULL,NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-11-02 16:17:26.312000','19170'),(172,'Valley Press, Inc.','5 East Montgomery Avenue',NULL,NULL,NULL,'Bala Cynwyd','PA',NULL,NULL,'2021-11-02 16:22:19.545843','19004'),(173,'Vantage Specialty Ingredients, Inc','P.O. Box 775949',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-11-02 16:20:49.027194','60677'),(174,'Virginia Dare','882 Third Avenue',NULL,NULL,NULL,'Brooklyn','NY',NULL,NULL,'2021-11-02 16:23:45.608218','11232'),(176,'TUSPM Practice Management Club','931 Clinton Street','Apt# 409',NULL,NULL,'Philadelphia','PA',NULL,NULL,'2021-11-02 18:00:12.691319','19107'),(177,'Unishippers','751 North Drive','Suite 4',NULL,NULL,'Melbourne','FL',NULL,NULL,'2021-11-02 18:02:13.577434','32934'),(178,'TQL','P.O. Box 634558',NULL,NULL,NULL,'Cincinnatti','OH',NULL,NULL,'2021-11-02 18:03:52.703808','45263'),(179,'Trademark Packaging','6761 Chrisphalt Drive',NULL,NULL,NULL,'Bath','PA',NULL,NULL,'2021-11-02 18:05:50.137041','19082'),(180,'Trademark Packaging','6761 Chrisphalt Drive',NULL,NULL,NULL,'Bath','PA',NULL,NULL,'2021-11-02 18:06:21.181224','19082'),(181,'Uline','P.O. Box 88741',NULL,NULL,NULL,'Chicago','IL',NULL,NULL,'2021-11-02 18:07:47.187149','60680'),(182,'Ungerer','4 Ungerer Way',NULL,NULL,NULL,'Lincoln Park','NJ',NULL,NULL,'2021-11-02 18:10:25.328963','07035'),(183,'Unishippers PSO','P.O. Bpx 301','7309 Airport Road',NULL,NULL,'Bath','PA',NULL,NULL,'2021-11-02 18:12:32.087525','18014'),(184,'United Packaging Supply','102 Wharton Way',NULL,NULL,NULL,'Bristol','PA',NULL,NULL,'2021-11-02 18:14:13.109166','19007'),(185,'RR Donnelley','P.O. Box 538602',NULL,NULL,NULL,'Atlanta','GA',NULL,NULL,'2021-11-03 16:22:56.890732','30353'),(186,'Scully','Oak Lane and B&O R.R.',NULL,NULL,NULL,'Collingdale','PA',NULL,NULL,'2021-11-03 16:25:44.457550','19023'),(187,'Shenker Locksmith','2020 Darby Road',NULL,NULL,NULL,'Havertown','PA',NULL,NULL,'2021-11-03 16:27:47.510196','19573'),(188,'Scully','Oak Lane and B&O R.R.',NULL,NULL,NULL,'Collingdale','PA',NULL,NULL,'2021-11-03 18:16:46.460979','19023'),(189,'Signal Fire Protection','P.O. Box 218',NULL,NULL,NULL,'Bala Cynwyd','PA',NULL,NULL,'2021-11-03 18:18:19.490955','19004'),(190,'SKS Bottle & Packaging','2600 7th Avenue','bldg 60 W',NULL,NULL,'Watervliet','NY',NULL,NULL,'2021-11-03 18:20:18.122647','12189'),(191,'SKS Bottle & Packaging','2600 7th Avenue','bldg 60 W',NULL,NULL,'Watervliet','NY',NULL,NULL,'2021-11-03 18:20:39.017368','12189'),(192,'Skline Exhibitor','Accounts Receivable','3355 Discovery Road',NULL,NULL,'Eagan','MN',NULL,NULL,'2021-11-03 19:01:49.160106','55121'),(193,'Spectrum Chemical MFG. Corp','P.O. Box 740894',NULL,NULL,NULL,'Los Angeles','CA',NULL,NULL,'2021-11-03 19:03:51.654913','90074'),(194,'Stanwell West, Inc.','100-G East Jefryn Blvd.',NULL,NULL,NULL,'Deer Park','NY',NULL,NULL,'2021-11-03 19:06:44.555467','11729'),(195,'Steven Block, D.P.M.','Bluegrass Foot Center','1901 Leitchfield Road',NULL,NULL,'Owensboro','KY',NULL,NULL,'2021-11-03 19:08:39.507120','42303'),(196,'Stanwell West, Inc.','100-G East Jefryn Blvd.',NULL,NULL,NULL,'Deer Park','NY',NULL,NULL,'2021-11-03 19:09:02.145174','11729'),(201,'Shipping Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2021-11-14 03:44:26.500622',NULL);
/*!40000 ALTER TABLE `vendors_vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-14  8:12:01
