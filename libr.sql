CREATE DATABASE  IF NOT EXISTS `pruebassoftware` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pruebassoftware`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pruebassoftware
-- ------------------------------------------------------
-- Server version	8.0.31

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
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `name` varchar(150) NOT NULL COMMENT 'TRIAL',
  `trial223` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Miembros de la librería','T'),(2,'Bibliotecarios','T');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `group_id` int NOT NULL COMMENT 'TRIAL',
  `permission_id` int NOT NULL COMMENT 'TRIAL',
  `trial223` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  CONSTRAINT `fk_auth_group_auth_group_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fk_auth_group_auth_permission_0` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,2,45,'T'),(2,2,12,'T'),(3,2,13,'T'),(4,2,14,'T'),(6,2,16,'T');
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `content_type_id` int NOT NULL COMMENT 'TRIAL',
  `codename` varchar(100) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`),
  CONSTRAINT `fk_auth_group_permissions_django_content_type_0` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry','T'),(2,1,'change_logentry','Can change log entry','T'),(3,1,'delete_logentry','Can delete log entry','T'),(4,1,'view_logentry','Can view log entry','T'),(5,2,'add_permission','Can add permission','T'),(6,2,'change_permission','Can change permission','T'),(7,2,'delete_permission','Can delete permission','T'),(8,2,'view_permission','Can view permission','T'),(9,3,'add_group','Can add group','T'),(10,3,'change_group','Can change group','T'),(11,3,'delete_group','Can delete group','T'),(12,3,'view_group','Can view group','T'),(13,4,'add_user','Can add user','T'),(14,4,'change_user','Can change user','T'),(15,4,'delete_user','Can delete user','T'),(16,4,'view_user','Can view user','T'),(17,5,'add_contenttype','Can add content type','T'),(18,5,'change_contenttype','Can change content type','T'),(19,5,'delete_contenttype','Can delete content type','T'),(20,5,'view_contenttype','Can view content type','T'),(21,6,'add_session','Can add session','T'),(22,6,'change_session','Can change session','T'),(23,6,'delete_session','Can delete session','T'),(24,6,'view_session','Can view session','T'),(25,7,'add_autor','Can add autor','T'),(26,7,'change_autor','Can change autor','T'),(27,7,'delete_autor','Can delete autor','T'),(28,7,'view_autor','Can view autor','T'),(29,8,'add_genero','Can add genero','T'),(30,8,'change_genero','Can change genero','T'),(31,8,'delete_genero','Can delete genero','T'),(32,8,'view_genero','Can view genero','T'),(33,9,'add_lenguaje','Can add lenguaje','T'),(34,9,'change_lenguaje','Can change lenguaje','T'),(35,9,'delete_lenguaje','Can delete lenguaje','T'),(36,9,'view_lenguaje','Can view lenguaje','T'),(37,10,'add_libro','Can add libro','T'),(38,10,'change_libro','Can change libro','T'),(39,10,'delete_libro','Can delete libro','T'),(40,10,'view_libro','Can view libro','T'),(41,11,'add_instanciadelibro','Can add instancia de libro','T'),(42,11,'change_instanciadelibro','Can change instancia de libro','T'),(43,11,'delete_instanciadelibro','Can delete instancia de libro','T'),(44,11,'view_instanciadelibro','Can view instancia de libro','T'),(45,11,'can_mark_returned','Can set book as returned','T');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `password` varchar(128) NOT NULL COMMENT 'TRIAL',
  `last_login` datetime DEFAULT NULL COMMENT 'TRIAL',
  `is_superuser` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `username` varchar(150) NOT NULL COMMENT 'TRIAL',
  `last_name` varchar(150) NOT NULL COMMENT 'TRIAL',
  `email` varchar(254) NOT NULL COMMENT 'TRIAL',
  `is_staff` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `is_active` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `date_joined` datetime NOT NULL COMMENT 'TRIAL',
  `first_name` varchar(150) NOT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$6PzCc7oPlOTWVjBOBG8WEp$pNvUjw6CK8ieXf2CS4a7Bkfcr9xzy2a2iEgLLrBI78k=','2024-02-01 12:33:46',1,'admin','','admin@test.com',1,1,'2020-10-15 06:49:35','','T'),(2,'pbkdf2_sha256$150000$UFHnergULgYz$I3lRhEtpr5/qopzhKf7+J8GEZjnt6L296/aZPwnGraY=',NULL,0,'jaime','','',0,1,'2020-10-15 06:51:49','','T'),(3,'pbkdf2_sha256$150000$FtazzSjbqdBK$9JhCoZROxHohtmOKb/YADIGln+mxgr3/zlkyQTKHYag=',NULL,0,'patricia','','',0,0,'2020-10-15 06:52:04','','T'),(4,'pbkdf2_sha256$150000$1V6HlK4gIjOg$8wh+KfVaKYJ8oVixEhuZidIZ2kuSCpJtAtPJdFosNBE=','2020-10-27 02:22:29',0,'paola','','',0,1,'2020-10-15 06:52:14','','T'),(5,'pbkdf2_sha256$150000$vTJvC6jEMeZP$ABwVFXi8wCY/58EkU9WKTV8tDABI/LuEPQRxABuy9DQ=',NULL,0,'gustavo','','',1,1,'2020-10-15 06:52:25','','T'),(6,'pbkdf2_sha256$720000$x11Mx2r5fTU2Tl2Q6sOw3a$TlroLFBR8ygijaDx95oW/mRjfqMnBiMKqUHw/Yta9b4=','2024-02-01 00:13:39',0,'manuel','','',0,1,'2020-10-15 06:52:48','','T'),(7,'pbkdf2_sha256$720000$KgCArdlRGeRV6xfDi3iuK8$QUVSl7/Qq3y/qikCD/f2iPByYZN86WE6/EQzaWbHO+E=','2024-02-01 00:21:29',0,'fernanda','','',1,1,'2020-10-15 06:53:22','','T'),(8,'pbkdf2_sha256$150000$2nCQ3ccmFYIm$/MGMGKDKCNwWsQQcCwkWWT+PltaZvRnxDxLx2tlU5Ek=',NULL,0,'bernardo','','',0,1,'2020-10-21 06:11:58','','T');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `user_id` int NOT NULL COMMENT 'TRIAL',
  `group_id` int NOT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  CONSTRAINT `fk_auth_user_auth_group_0` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fk_auth_user_auth_user_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,7,2,'T'),(2,5,2,'T'),(3,2,1,'T'),(4,6,1,'T'),(5,4,1,'T'),(6,3,1,'T'),(7,8,1,'T');
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `user_id` int NOT NULL COMMENT 'TRIAL',
  `permission_id` int NOT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  CONSTRAINT `fk_auth_user_groups_auth_permission_0` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `fk_auth_user_groups_auth_user_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_autor`
--

DROP TABLE IF EXISTS `catalogo_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_autor` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `nombre` varchar(100) NOT NULL COMMENT 'TRIAL',
  `apellido` varchar(100) NOT NULL COMMENT 'TRIAL',
  `fecha_de_nacimiento` date DEFAULT NULL COMMENT 'TRIAL',
  `fecha_de_deceso` date DEFAULT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_autor`
--

LOCK TABLES `catalogo_autor` WRITE;
/*!40000 ALTER TABLE `catalogo_autor` DISABLE KEYS */;
INSERT INTO `catalogo_autor` VALUES (1,'J.R.R.','Tolkien','1892-01-03','1973-09-02','T'),(2,'George','Orwell','1903-07-25','1950-01-21','T'),(3,'Stephen','Hawking','1942-01-08','2018-03-14','T'),(4,'Stephen','Covey','1932-10-24','2012-07-16','T'),(5,'Yuval Noah','Harari','1976-02-24',NULL,'T'),(6,'Sogyal','Rinpoche','1947-08-14','2019-08-28','T'),(7,'Frank','Herbert','1920-10-08','1986-02-11','T'),(8,'Albert','Camus','1913-11-07','1960-01-04','T'),(9,'J.K.','Rowling','1965-07-31',NULL,'T'),(10,'Charlie','Mason','1990-06-24',NULL,'T'),(11,'藤山','もんた','1974-12-01',NULL,'T');
/*!40000 ALTER TABLE `catalogo_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_genero`
--

DROP TABLE IF EXISTS `catalogo_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_genero` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `nombre` varchar(200) NOT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_genero`
--

LOCK TABLES `catalogo_genero` WRITE;
/*!40000 ALTER TABLE `catalogo_genero` DISABLE KEYS */;
INSERT INTO `catalogo_genero` VALUES (1,'Fantasía','T'),(2,'Ficción','T'),(3,'Ciencias Naturales','T'),(4,'Desarrollo Personal','T'),(5,'Ciencias Sociales','T'),(6,'Filosofía','T'),(7,'Ciencia Ficción','T'),(8,'Cocina','T'),(9,'Arte y Diseño','T');
/*!40000 ALTER TABLE `catalogo_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_instanciadelibro`
--

DROP TABLE IF EXISTS `catalogo_instanciadelibro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_instanciadelibro` (
  `id` char(32) NOT NULL COMMENT 'TRIAL',
  `fecha_de_devolucion` date DEFAULT NULL COMMENT 'TRIAL',
  `estatus` varchar(1) NOT NULL COMMENT 'TRIAL',
  `libro_id` int DEFAULT NULL COMMENT 'TRIAL',
  `prestatario_id` int DEFAULT NULL COMMENT 'TRIAL',
  `trial226` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  KEY `catalogo_instanciadelibro_prestatario_id_1a9099d8` (`prestatario_id`),
  KEY `catalogo_instanciadelibro_libro_id_15197de7` (`libro_id`),
  CONSTRAINT `fk_catalogo_genero_auth_user_0` FOREIGN KEY (`prestatario_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `fk_catalogo_genero_catalogo_libro_1` FOREIGN KEY (`libro_id`) REFERENCES `catalogo_libro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_instanciadelibro`
--

LOCK TABLES `catalogo_instanciadelibro` WRITE;
/*!40000 ALTER TABLE `catalogo_instanciadelibro` DISABLE KEYS */;
INSERT INTO `catalogo_instanciadelibro` VALUES ('0421f0c04bf14c849c10c0a190161a71',NULL,'d',8,NULL,'T'),('0ab1f70e497a45759cb4d6c94648ae10',NULL,'d',17,NULL,'T'),('1002f1a746f74367af69f4c09eb9b4e4',NULL,'d',3,NULL,'T'),('1319404b128e45219c5a85187840c04e',NULL,'d',9,NULL,'T'),('15b64a2205ab401d8385eb3e76ebb4be','2020-10-15','r',14,5,'T'),('1c13cbde53b44794bccbf40476036edd','2020-10-09','p',11,2,'T'),('25028827e3cc4289872105bb021ddbd7',NULL,'d',2,NULL,'T'),('380df228c4ea44fbb9c2136fd18dfa96',NULL,'d',5,NULL,'T'),('3d0e1885de204b4889ef224a86a72173','2020-10-15','p',3,2,'T'),('41190034cc8a4201b260ac9736153e70','2020-11-20','r',15,2,'T'),('41c84848955a4c96a0779ac729b4bdb0',NULL,'d',6,NULL,'T'),('4688caf06bfc434bb1cf25ac09eeced2','2020-11-28','m',13,NULL,'T'),('4e1a029feaff4eb082a9987e408aafe9','2020-11-09','p',2,4,'T'),('53f5caaff8594076b1507d3592092ff9',NULL,'d',12,NULL,'T'),('5963052294744e2ab8ede1b2abee6186','2020-11-09','p',5,7,'T'),('6293350a3af242c09c9f282a5a94420b','2020-10-24','r',15,6,'T'),('665350acc1c342c499a85db3d31e6b08',NULL,'d',3,NULL,'T'),('6659ecbd70584a60b482d7b0ca15eba0',NULL,'d',5,NULL,'T'),('6b03c7eb1fe44abaacaadf72c6e2294d',NULL,'d',6,NULL,'T'),('700f3ec74dee4ecda3ffcf8ff1ec5601','2024-01-31','m',2,7,NULL),('71e2dd2add494414bd272dab06deddbb','2020-07-31','p',10,4,'T'),('75679c9751d14ce5a4e74a462c57abb4','2020-11-15','p',13,6,'T'),('7aa0f71ac3e0409b9725e3d512cfa2a0',NULL,'d',7,NULL,'T'),('7c71bd3bdde34601b9c541fa6860ce70','2020-11-21','p',6,5,'T'),('7c77af354b864e74a979f779e9ea8a38','2020-09-24','m',8,NULL,'T'),('87091cc5d4f845b5beb50876828d142a','2020-10-17','r',7,7,'T'),('9d419b13913e4bf193ff8a8af562c2fb','2024-02-14','m',17,NULL,NULL),('aa7469685ad24f3f838bd841fa08baf4',NULL,'d',12,NULL,'T'),('b03b916fa6384d109f7e630d5d9464d4','2024-01-30','p',17,3,NULL),('b175288010534dca9c54b52bfb710277','2020-10-15','r',8,6,'T'),('b509c674f17d4f5cafa2585b8783f0ae','2020-10-21','m',4,NULL,'T'),('b93ddbb3e87f4df59400b80933f0af3d','2020-10-09','p',11,7,'T'),('be712474c3874c9aa6a25b54fe0fe216','2020-12-06','p',14,7,'T'),('be7f5120e89e4f67bb24e01b2d879f1c','2020-10-02','p',1,6,'T'),('c05e2a5a134e458e998d9a12752b9698',NULL,'d',9,NULL,'T'),('c50de054f0154fa8b3a9355e5424dec8',NULL,'d',7,NULL,'T'),('cd3e3059b34f451fb0dcbc1b5b2e8a57','2020-10-14','r',14,5,'T'),('d433c719579441b6844d20ec6cec94d4','2020-11-02','m',5,NULL,'T'),('d59c06dd72404766a08ae28e3522f5ff','2020-11-23','p',10,3,'T'),('db154c8952a44026b32f626282c13c6e','2024-02-01','p',8,2,NULL),('dc96c8e7c980467da2d2f1dfcd6c5b9f','2020-10-29','r',1,4,'T'),('dd0100b4a5504cbca6954b8c3f8546d0',NULL,'d',1,NULL,'T'),('e26483f958d841d3942d37bc4dc8918d','2024-01-31','p',17,7,NULL),('e734d3e5a36a4377bb338dce468771e8','2020-10-13','p',15,4,'T'),('ed9ecff451ba4730b3b350709ac30cbc',NULL,'d',16,NULL,'T'),('fbded2ac752949dbad0cc3a1e81a1a3e',NULL,'d',13,NULL,'T');
/*!40000 ALTER TABLE `catalogo_instanciadelibro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_lenguaje`
--

DROP TABLE IF EXISTS `catalogo_lenguaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_lenguaje` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `nombre` varchar(200) NOT NULL COMMENT 'TRIAL',
  `trial229` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_lenguaje`
--

LOCK TABLES `catalogo_lenguaje` WRITE;
/*!40000 ALTER TABLE `catalogo_lenguaje` DISABLE KEYS */;
INSERT INTO `catalogo_lenguaje` VALUES (1,'Inglés','T'),(2,'Español','T'),(3,'Francés','T'),(4,'Alemán','T'),(5,'Japonés','T');
/*!40000 ALTER TABLE `catalogo_lenguaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_libro`
--

DROP TABLE IF EXISTS `catalogo_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_libro` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `titulo` varchar(200) NOT NULL COMMENT 'TRIAL',
  `resumen` longtext NOT NULL COMMENT 'TRIAL',
  `isbn` varchar(13) NOT NULL COMMENT 'TRIAL',
  `autor_id` int DEFAULT NULL COMMENT 'TRIAL',
  `lenguaje_id` int DEFAULT NULL COMMENT 'TRIAL',
  `trial229` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  KEY `catalogo_libro_lenguaje_id_7edc479a` (`lenguaje_id`),
  KEY `catalogo_libro_autor_id_669e85c2` (`autor_id`),
  CONSTRAINT `fk_catalogo_lenguaje_catalogo_autor_1` FOREIGN KEY (`autor_id`) REFERENCES `catalogo_autor` (`id`),
  CONSTRAINT `fk_catalogo_lenguaje_catalogo_lenguaje_0` FOREIGN KEY (`lenguaje_id`) REFERENCES `catalogo_lenguaje` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_libro`
--

LOCK TABLES `catalogo_libro` WRITE;
/*!40000 ALTER TABLE `catalogo_libro` DISABLE KEYS */;
INSERT INTO `catalogo_libro` VALUES (1,'The Lord of the Rings','In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.\r\n\r\nFrom Sauron\'s fastness in the Dark Tower of Mordor, his power spread far and wide. Sauron gathered all the Great Rings, but always he searched for the One Ring that would complete his dominion.\r\n\r\nWhen Bilbo reached his eleventy-first birthday he disappeared, bequeathing to his young cousin Frodo the Ruling Ring and a perilous quest: to journey across Middle-earth, deep into the shadow of the Dark Lord, and destroy the Ring by casting it into the Cracks of Doom.','9780544003415',1,1,'T'),(2,'The Hobbit','Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day, to whisk him away on a journey ‘there and back again’. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon…','9780618968633',1,1,'T'),(3,'1984','Winston Smith toes the Party line, rewriting history to satisfy the demands of the Ministry of Truth. With each lie he writes, Winston grows to hate the Party that seeks power for its own sake and persecutes those who dare to commit thoughtcrimes. But as he starts to think for himself, Winston can’t escape the fact that Big Brother is always watching...\r\n\r\nA startling and haunting novel, 1984 creates an imaginary world that is completely convincing from start to finish. No one can deny the novel’s hold on the imaginations of whole generations, or the power of its admonitions—a power that seems to grow, not lessen, with the passage of time.','9780451524935',2,1,'T'),(4,'A Brief History of Time','A landmark volume in science writing by one of the great minds of our time, Stephen Hawking’s book explores such profound questions as: How did the universe begin—and what made its start possible? Does time always flow forward? Is the universe unending—or are there boundaries? Are there other dimensions in space? What will happen when it all ends?\r\n\r\nTold in language we all can understand, A Brief History of Time plunges into the exotic realms of black holes and quarks, of antimatter and “arrows of time,” of the big bang and a bigger God—where the possibilities are wondrous and unexpected. With exciting images and profound imagination, Stephen Hawking brings us closer to the ultimate secrets at the very heart of creation.','9780553380163',3,1,'T'),(5,'Los 7 hábitos de la gente altamente efectiva','tephen R. Covey, el llamado Sócrates americano, no da consejos paternalistas ni se dedica a sermonear sin ton ni son. Su método es claro, certero y eficiente: un cursillo dividido en siete etapas que el lector deberá asimilar y poner en práctica por su propia cuenta, adaptándolas a su personalidad y aplicándolas libremente en todos los ámbitos de la vida empresarial.\r\n\r\nPara ello, el autor se sirve de anécdotas penetrantes y significativas destinadas a hacernos reflexionar sobre cada uno de nuestros actos y sobre el modo de acceder al cambio, a la verdadera efectividad: desde la visión personal hasta la renovación equilibrada, pasando por el liderazgo personal, la administración personal, el liderazgo interpersonal, la comunicación empática y la cooperación creativa.','9788408143987',4,2,'T'),(6,'Sapiens: Una breve historia de la Humanidad','En Sapiens, Yuval Noah Harari traza una breve historia de la humanidad, desde los primeros humanos que caminaron sobre la Tierra hasta los radicales y a veces devastadores avances de las tres grandes revoluciones que nuestra especie ha protagonizado: la cognitiva, la agrícola y la científica. A partir de hallazgos de disciplinas tan diversas como la biología, la antropología o la economía, Harari explora cómo las grandes corrientes de la historia han modelado nuestra sociedad, los animales y las plantas que nos rodean e incluso nuestras personalidades. ¿Hemos ganado en felicidad a medida que ha avanzado la historia? ¿Seremos capaces de liberar alguna vez nuestra conducta de la herencia del pasado? ¿Podemos hacer algo para influir en los siglos futuros?','9788499926223',5,2,'T'),(7,'Homo Deus: Breve historia del mañana','Homo Deus explora los proyectos, los sueños y las pesadillas que configurarán el siglo XXI: desde superar la muerte hasta la creación de la inteligencia y la vida artificial.\r\n\r\n¿Hacia dónde nos dirigimos? ¿Cómo protegeremos al mundo de nuestros propios poderes destructivos? He aquí una mirada hacia el futuro de la evolución. He aquí Homo Deus.','9788499928081',5,2,'T'),(8,'21 lecciones para el siglo XXI','Con la misma prosa inteligente, fresca y provocadora, Harari vuelve a librerías con un nuevo título, 21 lecciones para el siglo XXI, en el que examina algunas de las cuestiones más urgentes de nuestro presente. El hilo dorado que recorre este estimulante nuevo libro es el desafío de mantener nuestro enfoque colectivo e individual frente al constante y desorientador cambio que estamos viviendo.','9788466353441',5,2,'T'),(9,'El libro tibetano de la vida y de la muerte','Un clásico que cumple veinte años y sigue siendo un libro de referencia. . Una obra maestra revisada que te dará una visión nueva sobre la muerte y el universo. En este exhaustivo trabajo, que urano recupera en su colección Vintage a petición de los lectores, el maestro de meditación budista y conferenciante internacional Sogyal Rimpoché presenta unas sencillas y poderosas prácticas de la tradición tibetana, asequibles a cualquier persona sea cual sea su religión o tradición cultural, para que pueda transformar su vida, prepararse para la muerte y ayudar a los moribundos.\r\n\r\nEl libro tibetano de la vida y de la muerte expone con claridad y un rigor sin precedentes la majestuosa visión que nos ofrece el Libro tibetano de los muertos y combina la milenaria sabiduría de Tíbet con la moderna investigación sobre la muerte, los moribundos y la naturaleza del universo para comprender, encarnar e integrar las enseñanzas budistas a la vida cotidiana.','9788479539030',6,2,'T'),(10,'Dune (Las crónicas de Dune 1)','En el desértico planeta Arrakis, el agua es el bien más preciado y llorar a los muertos, el símbolo de máxima prodigalidad. Pero algo hace de Arrakis una pieza estratégica para los intereses del Emperador, las Grandes Casas y la Cofradía, los tres grandes poderes de la galaxia. Arrakis es el único origen conocido de la melange, preciosa especia y uno de los bienes más codiciados del universo.\r\n\r\nAl duque Leto Atreides se le asigna el gobierno de este mundo inhóspito, habitado por los indómitos Fremen y monstruosos gusanos de arena de centenares de metros de longitud. Sin embargo, cuando la familia es traicionada, su hijo y heredero, Paul, emprenderá un viaje hacia un destino más grande del que jamás hubiese podido soñar.','9788466353779',7,2,'T'),(11,'El mesías de Dune (Las crónicas de Dune 2)','Arrakis, también llamado Dune: un mundo desierto en pos del sueño de convertirse en un paraíso, cuna de mil guerras que se han extendido por todo el universo y de un anhelo mesiánico que intenta alcanzar el sueño más antiguo de la humanidad...\r\n\r\nPaul Atreides: un personaje mítico, perturbado por la cercana presencia de una sombra dominante: su hermana Alia. Y frente a ellos, los grandes intereses económicos, políticos y religiosos que sacuden los espacios interestelares: la CHOAM, la Cofradía espacial, el Landsraad, la Bene Gesserit...','9788497596671',7,2,'T'),(12,'L\'étranger','Quand al sonnerie a encore retenti, que la porte du box s’est ouverte, c’est le silence de la salle qui est monté vers moi, le silence, et cette singuliere sensation que j’ai eue lorsque j’ai constaté que le jeune journaliste avait détourné les yeux. Je n’ai pas regardé du côté de Marie. Je n’en ai pas eu le temps parce que le président m’a dit dans une forme bizarre que j’aurais la tête tranchée sur une place publique au nom du peuple français…','9780785916833',8,3,'T'),(13,'Harry Potter à l\'École des Sorciers: Harry Potter 1','Orphelin, Harry Potter est élevé par un oncle et une tante qui ne l\'aiment pas. Le jour de ses 11 ans, son existence bascule : un géant l\'emmène à Poudlard, l\'école de sorcellerie ! Voilà son incroyable destin : être sorcier. Jeter des sorts, utiliser des pouvoirs, ensorceler les trolls... À la maison Gryffondor, il rencontre Ron et Hermione, s\'initie au Quidditch, un sport pratiqué sur un balai. La vie est excitante, mais Voldemort, Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom, refait surface.\r\n\r\nInitiation ou plaisir renouvelé, plongez dans le 1er tome du célèbre chef d\'œuvre de J.K. Rowling ! Guidé par une voix envoutante, revivez le début de la série Harry Potter avec ce livre audio à télécharger.','9780320081064',9,3,'T'),(14,'Harry Potter Et Le Prisonnier D\'azkaban: Harry Potter 3','The third title in the Harry Potter series translated into French.','9782070584925',9,3,'T'),(15,'Harry Potter Et Les Reliques De La Mort: Harry Potter 7','Avec le dénouement de l\'héroïque histoire de Harry Potter, J.K. Rowling signe un chef-d\'oeuvre d\'une grande humanité et d\'une maîtrise incomparable.','9782070585236',9,3,'T'),(16,'Das komplette gluten freie Kochbuch auf Deutsch','Diese Rezepte werden einfach und Schritt-für-Schritt präsentiert, um das gluten freie Leben einfacher und geschmackvoller zu gestalten. Diese köstlichen, simplen Rezepte sind für vielbeschäftigte Menschen gedacht, die die besten gluten freien Mahlzeiten wollen, ohne auf etwas zu verzichten.','9781913593247',10,4,'T'),(17,'新大陸スケッチ紀行 ~モンスターハンター:ワールド 編纂者日誌~','新大陸古龍調査団に所属する架空の編纂者モンが綴る調査スケッチ!モンスターや環境生物はもちろん、ハンター装備、人物などのスケッチが全136ページ満載!','9784047333451',11,5,'T');
/*!40000 ALTER TABLE `catalogo_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_libro_genero`
--

DROP TABLE IF EXISTS `catalogo_libro_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_libro_genero` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `libro_id` int NOT NULL COMMENT 'TRIAL',
  `genero_id` int NOT NULL COMMENT 'TRIAL',
  `trial229` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalogo_libro_genero_libro_id_genero_id_67963504_uniq` (`libro_id`,`genero_id`),
  KEY `catalogo_libro_genero_genero_id_3802dac9` (`genero_id`),
  KEY `catalogo_libro_genero_libro_id_c75957ca` (`libro_id`),
  CONSTRAINT `fk_catalogo_libro_catalogo_genero_0` FOREIGN KEY (`genero_id`) REFERENCES `catalogo_genero` (`id`),
  CONSTRAINT `fk_catalogo_libro_catalogo_libro_1` FOREIGN KEY (`libro_id`) REFERENCES `catalogo_libro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_libro_genero`
--

LOCK TABLES `catalogo_libro_genero` WRITE;
/*!40000 ALTER TABLE `catalogo_libro_genero` DISABLE KEYS */;
INSERT INTO `catalogo_libro_genero` VALUES (1,1,1,'T'),(2,2,1,'T'),(3,3,2,'T'),(4,4,3,'T'),(5,5,4,'T'),(6,6,5,'T'),(7,7,5,'T'),(8,8,5,'T'),(9,9,6,'T'),(10,10,7,'T'),(11,11,7,'T'),(12,12,2,'T'),(13,13,1,'T'),(14,14,1,'T'),(15,15,1,'T'),(16,16,8,'T'),(17,17,9,'T');
/*!40000 ALTER TABLE `catalogo_libro_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `action_time` datetime NOT NULL COMMENT 'TRIAL',
  `object_id` longtext COMMENT 'TRIAL',
  `object_repr` varchar(200) NOT NULL COMMENT 'TRIAL',
  `change_message` longtext NOT NULL COMMENT 'TRIAL',
  `content_type_id` int DEFAULT NULL COMMENT 'TRIAL',
  `user_id` int NOT NULL COMMENT 'TRIAL',
  `action_flag` smallint NOT NULL COMMENT 'TRIAL',
  `trial229` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  CONSTRAINT `fk_catalogo_libro_genero_auth_user_0` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `fk_catalogo_libro_genero_django_content_type_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-10-15 06:51:01','1','Miembros de la librería','[{\"added\": {}}]',3,1,1,'T'),(2,'2020-10-15 06:51:22','2','Bibliotecarios','[{\"added\": {}}]',3,1,1,'T'),(3,'2020-10-15 06:51:50','2','jaime','[{\"added\": {}}]',4,1,1,'T'),(4,'2020-10-15 06:52:05','3','patricia','[{\"added\": {}}]',4,1,1,'T'),(5,'2020-10-15 06:52:15','4','paola','[{\"added\": {}}]',4,1,1,'T'),(6,'2020-10-15 06:52:26','5','gustavo','[{\"added\": {}}]',4,1,1,'T'),(7,'2020-10-15 06:52:49','6','manuel','[{\"added\": {}}]',4,1,1,'T'),(8,'2020-10-15 06:53:22','7','fernanda','[{\"added\": {}}]',4,1,1,'T'),(9,'2020-10-15 06:53:58','7','fernanda','[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]',4,1,2,'T'),(10,'2020-10-15 06:54:12','5','gustavo','[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]',4,1,2,'T'),(11,'2020-10-15 06:54:24','2','jaime','[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1,2,'T'),(12,'2020-10-15 06:54:37','6','manuel','[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1,2,'T'),(13,'2020-10-15 06:54:46','4','paola','[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1,2,'T'),(14,'2020-10-15 06:55:02','3','patricia','[{\"changed\": {\"fields\": [\"is_active\", \"groups\"]}}]',4,1,2,'T'),(15,'2020-10-15 06:58:48','1','Inglés','[{\"added\": {}}]',9,1,1,'T'),(16,'2020-10-15 07:00:44','1','Fantasía','[{\"added\": {}}]',8,1,1,'T'),(17,'2020-10-15 07:01:36','1','Tolkien, J.R.R.','[{\"added\": {}}]',7,1,1,'T'),(18,'2020-10-15 07:07:08','1','The Lord of the Rings','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"The Lord of the Rings (be7f5120-e89e-4f67-bb24-e01b2d879f1c)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"The Lord of the Rings (dc96c8e7-c980-467d-a2d2-f1dfcd6c5b9f)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"The Lord of the Rings (dd0100b4-a550-4cbc-a695-4b8c3f8546d0)\"}}]',10,1,1,'T'),(19,'2020-10-15 07:07:27','1','The Lord of the Rings','[{\"changed\": {\"name\": \"instancia de libro\", \"object\": \"The Lord of the Rings (be7f5120-e89e-4f67-bb24-e01b2d879f1c)\", \"fields\": [\"prestatario\"]}}, {\"changed\": {\"name\": \"instancia de libro\", \"object\": \"The Lord of the Rings (dc96c8e7-c980-467d-a2d2-f1dfcd6c5b9f)\", \"fields\": [\"prestatario\"]}}]',10,1,2,'T'),(20,'2020-10-15 07:10:19','2','The Hobbit','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"The Hobbit (25028827-e3cc-4289-8721-05bb021ddbd7)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"The Hobbit (4e1a029f-eaff-4eb0-82a9-987e408aafe9)\"}}]',10,1,1,'T'),(21,'2020-10-15 07:11:18','2','Ficción','[{\"added\": {}}]',8,1,1,'T'),(22,'2020-10-15 07:13:48','2','Orwell, George','[{\"added\": {}}]',7,1,1,'T'),(23,'2020-10-15 07:14:41','3','1984','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"1984 (3d0e1885-de20-4b48-89ef-224a86a72173)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"1984 (665350ac-c1c3-42c4-99a8-5db3d31e6b08)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"1984 (1002f1a7-46f7-4367-af69-f4c09eb9b4e4)\"}}]',10,1,1,'T'),(24,'2020-10-15 07:17:49','3','Hawking, Stephen','[{\"added\": {}}]',7,1,1,'T'),(25,'2020-10-15 07:19:16','3','Ciencias Naturales','[{\"added\": {}}]',8,1,1,'T'),(26,'2020-10-15 07:19:33','4','A Brief History of Time','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"A Brief History of Time (b509c674-f17d-4f5c-afa2-585b8783f0ae)\"}}]',10,1,1,'T'),(27,'2020-10-15 07:21:10','4','Covey, Stephen','[{\"added\": {}}]',7,1,1,'T'),(28,'2020-10-15 07:21:40','2','Español','[{\"added\": {}}]',9,1,1,'T'),(29,'2020-10-15 07:22:15','4','Desarrollo Personal','[{\"added\": {}}]',8,1,1,'T'),(30,'2020-10-15 07:23:24','5','Los 7 hábitos de la gente altamente efectiva','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Los 7 h\\u00e1bitos de la gente altamente efectiva (59630522-9474-4e2a-b8ed-e1b2abee6186)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Los 7 h\\u00e1bitos de la gente altamente efectiva (d433c719-5794-41b6-844d-20ec6cec94d4)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Los 7 h\\u00e1bitos de la gente altamente efectiva (6659ecbd-7058-4a60-b482-d7b0ca15eba0)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Los 7 h\\u00e1bitos de la gente altamente efectiva (380df228-c4ea-44fb-b9c2-136fd18dfa96)\"}}]',10,1,1,'T'),(31,'2020-10-15 07:25:10','5','Ciencias Sociales','[{\"added\": {}}]',8,1,1,'T'),(32,'2020-10-15 07:25:58','5','Harari, Yuval Noah','[{\"added\": {}}]',7,1,1,'T'),(33,'2020-10-15 07:26:58','6','Sapiens: Una breve historia de la Humanidad','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Sapiens: Una breve historia de la Humanidad (6b03c7eb-1fe4-4aba-acaa-df72c6e2294d)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Sapiens: Una breve historia de la Humanidad (7c71bd3b-dde3-4601-b9c5-41fa6860ce70)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Sapiens: Una breve historia de la Humanidad (41c84848-955a-4c96-a077-9ac729b4bdb0)\"}}]',10,1,1,'T'),(34,'2020-10-15 07:29:52','7','Homo Deus: Breve historia del mañana','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Homo Deus: Breve historia del ma\\u00f1ana (c50de054-f015-4fa8-b3a9-355e5424dec8)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Homo Deus: Breve historia del ma\\u00f1ana (7aa0f71a-c3e0-409b-9725-e3d512cfa2a0)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Homo Deus: Breve historia del ma\\u00f1ana (87091cc5-d4f8-45b5-beb5-0876828d142a)\"}}]',10,1,1,'T'),(35,'2020-10-15 07:31:26','8','21 lecciones para el siglo XXI','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"21 lecciones para el siglo XXI (0421f0c0-4bf1-4c84-9c10-c0a190161a71)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"21 lecciones para el siglo XXI (b1752880-1053-4dca-9c54-b52bfb710277)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"21 lecciones para el siglo XXI (7c77af35-4b86-4e74-a979-f779e9ea8a38)\"}}]',10,1,1,'T'),(36,'2020-10-15 07:32:48','6','Filosofía','[{\"added\": {}}]',8,1,1,'T'),(37,'2020-10-15 07:34:38','6','Rinpoche, Sogyal','[{\"added\": {}}]',7,1,1,'T'),(38,'2020-10-15 07:34:41','9','El libro tibetano de la vida y de la muerte','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"El libro tibetano de la vida y de la muerte (1319404b-128e-4521-9c5a-85187840c04e)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"El libro tibetano de la vida y de la muerte (c05e2a5a-134e-458e-998d-9a12752b9698)\"}}]',10,1,1,'T'),(39,'2020-10-15 07:36:07','7','Ciencia Ficción','[{\"added\": {}}]',8,1,1,'T'),(40,'2020-10-15 07:37:58','7','Herbert, Frank','[{\"added\": {}}]',7,1,1,'T'),(41,'2020-10-15 07:38:15','10','Dune (Las crónicas de Dune 1)','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Dune (Las cr\\u00f3nicas de Dune 1) (71e2dd2a-dd49-4414-bd27-2dab06deddbb)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Dune (Las cr\\u00f3nicas de Dune 1) (d59c06dd-7240-4766-a08a-e28e3522f5ff)\"}}]',10,1,1,'T'),(42,'2020-10-15 07:40:00','11','El mesías de Dune (Las crónicas de Dune 2)','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"El mes\\u00edas de Dune (Las cr\\u00f3nicas de Dune 2) (1c13cbde-53b4-4794-bccb-f40476036edd)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"El mes\\u00edas de Dune (Las cr\\u00f3nicas de Dune 2) (b93ddbb3-e87f-4df5-9400-b80933f0af3d)\"}}]',10,1,1,'T'),(43,'2020-10-15 07:41:52','3','Francés','[{\"added\": {}}]',9,1,1,'T'),(44,'2020-10-15 07:42:56','8','Camus, Albert','[{\"added\": {}}]',7,1,1,'T'),(45,'2020-10-15 07:43:16','12','L\'étranger','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"L\'\\u00e9tranger (53f5caaf-f859-4076-b150-7d3592092ff9)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"L\'\\u00e9tranger (aa746968-5ad2-4f3f-838b-d841fa08baf4)\"}}]',10,1,1,'T'),(46,'2020-10-15 07:45:57','9','Rowling, J.K.','[{\"added\": {}}]',7,1,1,'T'),(47,'2020-10-15 07:46:48','13','Harry Potter à l\'École des Sorciers: Harry Potter 1','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter \\u00e0 l\'\\u00c9cole des Sorciers: Harry Potter 1 (4688caf0-6bfc-434b-b1cf-25ac09eeced2)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter \\u00e0 l\'\\u00c9cole des Sorciers: Harry Potter 1 (75679c97-51d1-4ce5-a4e7-4a462c57abb4)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter \\u00e0 l\'\\u00c9cole des Sorciers: Harry Potter 1 (fbded2ac-7529-49db-ad0c-c3a1e81a1a3e)\"}}]',10,1,1,'T'),(48,'2020-10-15 07:49:52','14','Harry Potter Et Le Prisonnier D\'azkaban: Harry Potter 3','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter Et Le Prisonnier D\'azkaban: Harry Potter 3 (cd3e3059-b34f-451f-b0dc-bc1b5b2e8a57)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter Et Le Prisonnier D\'azkaban: Harry Potter 3 (15b64a22-05ab-401d-8385-eb3e76ebb4be)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter Et Le Prisonnier D\'azkaban: Harry Potter 3 (be712474-c387-4c9a-a6a2-5b54fe0fe216)\"}}]',10,1,1,'T'),(49,'2020-10-15 07:52:11','15','Harry Potter Et Les Reliques De La Mort: Harry Potter 7','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter Et Les Reliques De La Mort: Harry Potter 7 (6293350a-3af2-42c0-9c9f-282a5a94420b)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter Et Les Reliques De La Mort: Harry Potter 7 (41190034-cc8a-4201-b260-ac9736153e70)\"}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Harry Potter Et Les Reliques De La Mort: Harry Potter 7 (e734d3e5-a36a-4377-bb33-8dce468771e8)\"}}]',10,1,1,'T'),(50,'2020-10-15 07:53:54','4','Alemán','[{\"added\": {}}]',9,1,1,'T'),(51,'2020-10-15 07:54:04','8','Cocina','[{\"added\": {}}]',8,1,1,'T'),(52,'2020-10-15 07:57:55','10','Mason, Charlie','[{\"added\": {}}]',7,1,1,'T'),(53,'2020-10-15 07:58:02','16','Das komplette gluten freie Kochbuch auf Deutsch','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"Das komplette gluten freie Kochbuch auf Deutsch (ed9ecff4-51ba-4730-b3b3-50709ac30cbc)\"}}]',10,1,1,'T'),(54,'2020-10-15 08:00:52','11','もんた, 藤山','[{\"added\": {}}]',7,1,1,'T'),(55,'2020-10-15 08:01:29','5','Japonés','[{\"added\": {}}]',9,1,1,'T'),(56,'2020-10-15 08:01:49','9','Arte y Diseño','[{\"added\": {}}]',8,1,1,'T'),(57,'2020-10-15 08:02:08','17','新大陸スケッチ紀行 ~モンスターハンター:ワールド 編纂者日誌~','[{\"added\": {}}, {\"added\": {\"name\": \"instancia de libro\", \"object\": \"\\u65b0\\u5927\\u9678\\u30b9\\u30b1\\u30c3\\u30c1\\u7d00\\u884c ~\\u30e2\\u30f3\\u30b9\\u30bf\\u30fc\\u30cf\\u30f3\\u30bf\\u30fc:\\u30ef\\u30fc\\u30eb\\u30c9 \\u7de8\\u7e82\\u8005\\u65e5\\u8a8c~ (0ab1f70e-497a-4575-9cb4-d6c94648ae10)\"}}]',10,1,1,'T'),(58,'2020-10-15 08:04:40','0421f0c0-4bf1-4c84-9c10-c0a190161a71','21 lecciones para el siglo XXI (0421f0c0-4bf1-4c84-9c10-c0a190161a71)','[{\"changed\": {\"fields\": [\"estatus\"]}}]',11,1,2,'T'),(59,'2020-10-15 08:05:05','cd3e3059-b34f-451f-b0dc-bc1b5b2e8a57','Harry Potter Et Le Prisonnier D\'azkaban: Harry Potter 3 (cd3e3059-b34f-451f-b0dc-bc1b5b2e8a57)','[{\"changed\": {\"fields\": [\"estatus\", \"fecha_de_devolucion\", \"prestatario\"]}}]',11,1,2,'T'),(60,'2020-10-15 08:05:17','b1752880-1053-4dca-9c54-b52bfb710277','21 lecciones para el siglo XXI (b1752880-1053-4dca-9c54-b52bfb710277)','[{\"changed\": {\"fields\": [\"estatus\", \"fecha_de_devolucion\", \"prestatario\"]}}]',11,1,2,'T'),(61,'2020-10-19 06:20:14','4e1a029f-eaff-4eb0-82a9-987e408aafe9','The Hobbit (4e1a029f-eaff-4eb0-82a9-987e408aafe9)','[{\"changed\": {\"fields\": [\"fecha_de_devolucion\"]}}]',11,1,2,'T'),(62,'2020-10-21 06:11:59','8','bernardo','[{\"added\": {}}]',4,1,1,'T'),(63,'2020-10-21 06:13:33','8','bernardo','[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1,2,'T'),(64,'2020-10-21 06:14:51','2','Bibliotecarios','[{\"changed\": {\"fields\": [\"permissions\"]}}]',3,1,2,'T'),(65,'2020-10-21 06:25:31','1','admin','[{\"changed\": {\"fields\": [\"is_superuser\"]}}]',4,7,2,'T'),(66,'2020-10-21 06:25:40','1','admin','[{\"changed\": {\"fields\": [\"is_superuser\"]}}]',4,7,2,'T'),(67,'2020-10-21 06:27:26','2','Bibliotecarios','[{\"changed\": {\"fields\": [\"permissions\"]}}]',3,1,2,'T'),(68,'2020-10-23 07:47:46','3','1984','[{\"changed\": {\"fields\": [\"genero\"]}}]',10,1,2,'T'),(69,'2020-10-23 07:48:45','3','1984','[{\"changed\": {\"fields\": [\"genero\"]}}]',10,1,2,'T');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `app_label` varchar(100) NOT NULL COMMENT 'TRIAL',
  `model` varchar(100) NOT NULL COMMENT 'TRIAL',
  `trial229` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry','T'),(2,'auth','permission','T'),(3,'auth','group','T'),(4,'auth','user','T'),(5,'contenttypes','contenttype','T'),(6,'sessions','session','T'),(7,'catalogo','autor','T'),(8,'catalogo','genero','T'),(9,'catalogo','lenguaje','T'),(10,'catalogo','libro','T'),(11,'catalogo','instanciadelibro','T');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `app` varchar(255) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `applied` datetime NOT NULL COMMENT 'TRIAL',
  `trial229` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-10-14 10:16:51','T'),(2,'auth','0001_initial','2020-10-14 10:16:51','T'),(3,'admin','0001_initial','2020-10-14 10:16:51','T'),(4,'admin','0002_logentry_remove_auto_add','2020-10-14 10:16:51','T'),(5,'admin','0003_logentry_add_action_flag_choices','2020-10-14 10:16:51','T'),(6,'contenttypes','0002_remove_content_type_name','2020-10-14 10:16:51','T'),(7,'auth','0002_alter_permission_name_max_length','2020-10-14 10:16:52','T'),(8,'auth','0003_alter_user_email_max_length','2020-10-14 10:16:52','T'),(9,'auth','0004_alter_user_username_opts','2020-10-14 10:16:52','T'),(10,'auth','0005_alter_user_last_login_null','2020-10-14 10:16:52','T'),(11,'auth','0006_require_contenttypes_0002','2020-10-14 10:16:52','T'),(12,'auth','0007_alter_validators_add_error_messages','2020-10-14 10:16:52','T'),(13,'auth','0008_alter_user_username_max_length','2020-10-14 10:16:52','T'),(14,'auth','0009_alter_user_last_name_max_length','2020-10-14 10:16:52','T'),(15,'auth','0010_alter_group_name_max_length','2020-10-14 10:16:52','T'),(16,'auth','0011_update_proxy_permissions','2020-10-14 10:16:52','T'),(17,'catalogo','0001_initial','2020-10-14 10:16:52','T'),(18,'sessions','0001_initial','2020-10-14 10:16:52','T'),(19,'auth','0012_alter_user_first_name_max_length','2024-01-31 22:58:33','T');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL COMMENT 'TRIAL',
  `session_data` longtext NOT NULL COMMENT 'TRIAL',
  `expire_date` datetime NOT NULL COMMENT 'TRIAL',
  `trial232` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2159lrc16qt6qphg9cuokhs8l5brvu5e','ZGJhNzFhYWQ3NDViMzA1YjY2NTdjNWIzMTg4MTQ5ZDA0NGRjNDgxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTgxNjE4Zjg0NTRiMmEzZWY1ZjA4ODk2YzZmNjQ3Y2ViZDJmZjY0In0=','2020-11-06 07:46:45','T'),('35q8ajypxlb833jia8tli0wsryp3ycoh','NWFhNDBhNDA1ZThjZmQ5Nzg3N2E0ODllYjRjYzdlYWI5Zjk3ZmE4ODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NWZiOGRlOGFkNDkwMzMzZTdiNTFiNWNhODQxZmFkODA5MjE1ODgwIn0=','2020-11-08 07:51:26','T'),('7367w944mtiesrk59hxzaaa04zfl11nq','ZGJhNzFhYWQ3NDViMzA1YjY2NTdjNWIzMTg4MTQ5ZDA0NGRjNDgxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTgxNjE4Zjg0NTRiMmEzZWY1ZjA4ODk2YzZmNjQ3Y2ViZDJmZjY0In0=','2020-11-04 06:27:01','T'),('gsnveav2q75lq6bhxijvl010ob0v6m6m','NWFhNDBhNDA1ZThjZmQ5Nzg3N2E0ODllYjRjYzdlYWI5Zjk3ZmE4ODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NWZiOGRlOGFkNDkwMzMzZTdiNTFiNWNhODQxZmFkODA5MjE1ODgwIn0=','2020-11-03 09:26:34','T'),('js8fkvr6im4p7nl87nb3ihftf5u90m0l','NWFhNDBhNDA1ZThjZmQ5Nzg3N2E0ODllYjRjYzdlYWI5Zjk3ZmE4ODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NWZiOGRlOGFkNDkwMzMzZTdiNTFiNWNhODQxZmFkODA5MjE1ODgwIn0=','2020-11-10 02:22:57','T'),('jzledxtz6k8j29dsl483kuvohtl21mzw','.eJxVjM0OwiAQhN-FsyG78mPx6L3PQBYWpGogKe3J-O62SQ86x_m-mbfwtC7Frz3NfmJxFShOv12g-Ex1B_ygem8ytrrMU5C7Ig_a5dg4vW6H-3dQqJdtTQouhJYVuWAcEHBCN6AzaDOw1hqMNuccIyLnwVkHinBLUDZmCEF8vsR-NyE:1rVWGI:gLCOsTh1jkyBaY-jS8Us49oP1EOwgnl1w16EfXeOe-A','2024-02-15 12:33:46',NULL),('qzhdbq4qdyceut3vj182aoxdqihja6l2','NWFhNDBhNDA1ZThjZmQ5Nzg3N2E0ODllYjRjYzdlYWI5Zjk3ZmE4ODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NWZiOGRlOGFkNDkwMzMzZTdiNTFiNWNhODQxZmFkODA5MjE1ODgwIn0=','2020-11-09 10:29:21','T'),('yc3b1kltrvxs9nlkitjpygp1lq9pldjf','NWFhNDBhNDA1ZThjZmQ5Nzg3N2E0ODllYjRjYzdlYWI5Zjk3ZmE4ODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NWZiOGRlOGFkNDkwMzMzZTdiNTFiNWNhODQxZmFkODA5MjE1ODgwIn0=','2020-11-02 11:37:41','T'),('ysr0ntixoe65o94flcwmaa5ehlc2f4ys','MDI0ZGY2NjVjYWM3YzZkMGZjMzQ5YzlmZTc4M2NkODQ5ZjlhYzJiODp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjZiZmZlODFhMzVmYmRlYWQ1NDhkZmQ0Y2RhMmZhNzg0OWM3OTBhIn0=','2020-11-11 07:43:38','T');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sqlite_sequence` (
  `name` longtext COMMENT 'TRIAL',
  `seq` longtext COMMENT 'TRIAL',
  `trial232` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations','19','T'),('django_admin_log','69','T'),('django_content_type','11','T'),('auth_permission','45','T'),('auth_group','2','T'),('auth_group_permissions','6','T'),('auth_user_groups','7','T'),('catalogo_lenguaje','5','T'),('catalogo_genero','9','T'),('catalogo_autor','11','T'),('catalogo_libro','17','T'),('catalogo_libro_genero','18','T'),('auth_user','8','T');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-01  7:56:42
