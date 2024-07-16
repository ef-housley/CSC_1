CREATE DATABASE  IF NOT EXISTS `agency` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `agency`;
-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: agency
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trains` (
  `train_number` int(11) NOT NULL,
  `arrival_time` datetime NOT NULL,
  `departure_station` varchar(255) DEFAULT NULL,
  `departure_time` datetime NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `number_seat` int(11) DEFAULT NULL,
  PRIMARY KEY (`train_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (45,'2022-04-25 16:00:00','dgdf','2022-04-25 16:00:00','gdfg',0),(1245,'2023-05-22 15:02:32','cluj','2023-05-22 15:02:32','constanta',556),(1345,'2023-02-05 23:34:44','cluj','2023-03-05 10:34:56','oradeaa',567),(1700,'2023-03-05 10:34:56','cluj','2023-04-05 10:34:56','buzau',150),(2345,'2001-02-01 00:00:00','3456','2001-03-01 00:00:00','3456',0),(2356,'2023-05-25 17:44:00','cluj','2023-05-25 17:44:00','oradea',0),(2367,'2022-01-23 10:00:00','fg','2022-01-23 10:00:00','df',0);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-27 12:13:42
