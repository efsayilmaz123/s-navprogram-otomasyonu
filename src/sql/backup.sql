-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: otomasyon
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `asistan`
--

DROP TABLE IF EXISTS `asistan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tcno` varchar(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tcno_UNIQUE` (`tcno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistan`
--

LOCK TABLES `asistan` WRITE;
/*!40000 ALTER TABLE `asistan` DISABLE KEYS */;
INSERT INTO `asistan` VALUES (1,'22222222222','5678','ASİSTAN1'),(2,'33333333333','91011','ASİSTAN2'),(3,'44444444444','1213','ASİSİTAN3'),(4,'55555555555','1415','ASİSTAN4'),(5,'66666666666','1617','ASİSTAN5'),(6,'77777777777','1819','ASİSTAN6'),(7,'88888888888','2021','ASİSTAN7'),(8,'99999999999','2223','ASİSTAN8');
/*!40000 ALTER TABLE `asistan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Bilgisayar Mühendisliği'),(2,'Elektrik Elektronik Mühendisliği'),(3,'Makine Mühendisliği'),(4,'Çevre Mühendisliği'),(5,'Kimya Mühendisliği'),(6,'Endüstri Mühendisliği'),(7,'Gıda Mühendisliği'),(8,'İnşaat Mühendisliği'),(9,'hfehjer');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dersler`
--

DROP TABLE IF EXISTS `dersler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dersler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `department_id` varchar(45) NOT NULL,
  `class_level_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dersler`
--

LOCK TABLES `dersler` WRITE;
/*!40000 ALTER TABLE `dersler` DISABLE KEYS */;
INSERT INTO `dersler` VALUES (1,'MAT1','1','1'),(2,'FİZİK1','1','1'),(4,'İNGİLİZCE','1','1'),(5,'DİFERANSİYEL','1','2'),(6,'ELEKTRİK DEVRELERİ','1','2'),(7,'VERİ YAPILARI','1','2'),(8,'AYRIK MATEMATİK','1','2'),(9,'MİKROİŞLEMCİLER','1','3'),(10,'ALGORİTMA ANALİZİ','1','3'),(11,'SİBER GÜVENLİK','1','3'),(12,'BİLGİSAYAR MİMARİSİ','1','3'),(13,'YAPAY ZEKA','1','4'),(14,'BULANIK MANTIK','1','4'),(15,'SENSÖR AĞLARI','1','4'),(16,'E-TİCARET','1','4'),(17,'KARİYER','1','1'),(18,'KİMYA','5','1'),(20,'GIDA MİKROBİYOLOJİSİ','7','3'),(45,'inşaat','8','1'),(49,'fsd','4','1'),(50,'hbj','1','3'),(51,'makine','3','1');
/*!40000 ALTER TABLE `dersler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gozetmen`
--

DROP TABLE IF EXISTS `gozetmen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gozetmen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gozetmen`
--

LOCK TABLES `gozetmen` WRITE;
/*!40000 ALTER TABLE `gozetmen` DISABLE KEYS */;
INSERT INTO `gozetmen` VALUES (1,'GÖZETMEN1'),(2,'GÖZETMEN2'),(3,'GÖZETMEN3'),(4,'GÖZETMEN4'),(5,'GÖZETMEN5'),(6,'GÖZETMEN6'),(7,'GÖZETMEN7'),(8,'GÖZETMEN8'),(9,'GÖZETMEN9'),(10,'GÖZETMEN10'),(11,'GÖZETMEN11'),(12,'GÖZETMEN12'),(13,'GÖZETMEN13'),(14,'GÖZETMEN14'),(15,'GÖZETMEN15'),(16,'GÖZETMEN16'),(17,'GÖZETMEN17'),(18,'GÖZETMEN18'),(19,'GÖZETMEN19'),(20,'GÖZETMEN20');
/*!40000 ALTER TABLE `gozetmen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
INSERT INTO `salon` VALUES (1,'SALON1','50'),(2,'SALON2','50'),(3,'SALON3','50'),(4,'SALON4','50'),(5,'SALON5','50'),(6,'SALON6','50'),(7,'SALON7','50'),(8,'SALON8','50'),(9,'SALON9','50'),(10,'SALON10','50'),(11,'SALON11','50'),(12,'SALON12','50'),(13,'SALON13','50'),(14,'SALON14','50'),(15,'SALON15','50');
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinav`
--

DROP TABLE IF EXISTS `sinav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ders_id` varchar(45) NOT NULL,
  `ogrenci_sayisi` int NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `salon_id_1` text NOT NULL,
  `salon_id_2` text NOT NULL,
  `salon_id_3` text NOT NULL,
  `gozetmen_id_1` text NOT NULL,
  `gozetmen_id_2` text NOT NULL,
  `gozetmen_id_3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinav`
--

LOCK TABLES `sinav` WRITE;
/*!40000 ALTER TABLE `sinav` DISABLE KEYS */;
INSERT INTO `sinav` VALUES (27,'1',150,'2025-01-08','11:17:00','12:47:00','4','7','5','1','1','1'),(28,'50',120,'2025-01-25','13:00:00','14:00:00','10','5','15','5','6','8'),(29,'51',90,'2025-01-27','13:00:00','14:00:00','4','11','12','4','3','8'),(30,'45',50,'2025-01-17','14:34:00','15:14:00','9','5','8','2','4','3'),(31,'7',90,'2025-01-08','09:21:00','10:21:00','7','2','1','2','5','2');
/*!40000 ALTER TABLE `sinav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sınıflar`
--

DROP TABLE IF EXISTS `sınıflar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sınıflar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_level` varchar(45) NOT NULL,
  `department_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sınıflar`
--

LOCK TABLES `sınıflar` WRITE;
/*!40000 ALTER TABLE `sınıflar` DISABLE KEYS */;
INSERT INTO `sınıflar` VALUES (1,'1','1'),(2,'2','1'),(3,'3','1'),(4,'4','1');
/*!40000 ALTER TABLE `sınıflar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_id` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonetici`
--

DROP TABLE IF EXISTS `yonetici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonetici` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tcno` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` enum('yonetici','asistan') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tcno_UNIQUE` (`tcno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonetici`
--

LOCK TABLES `yonetici` WRITE;
/*!40000 ALTER TABLE `yonetici` DISABLE KEYS */;
INSERT INTO `yonetici` VALUES (1,'11111111111','1234','ÜMİT ŞENTÜRK','yonetici');
/*!40000 ALTER TABLE `yonetici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 12:38:12
