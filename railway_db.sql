CREATE DATABASE  IF NOT EXISTS `railway` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `railway`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `pno` int NOT NULL,
  `splace` varchar(255) NOT NULL,
  `eplace` varchar(255) NOT NULL,
  `tno` int NOT NULL,
  `tname` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `date` varchar(255) NOT NULL,
  `ticket` int NOT NULL,
  `tot` int NOT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (2,'Sakhar','Lahore',2468,'Iqbal Express',1500,'2025-05-27',3,4500),(3,'Multan','Lahore',3553,'Niazi Express',1500,'2025-05-27',2,3000),(4,'lahore','sailkot',1256,'s-Express',2300,'2025-06-14',4,9200),(5,'Renala','Lahore',5789,'Lahore Express',300,'2025-05-27',2,600),(9,'karachi','Lahore',9876,'Z Express',4500,'2025-05-27',2,9000),(10,'Renala','Hujra',1,'Z-Express',120,'2025-06-21',2,240),(12,'lahore','sailkot',1256,'s-Express',2300,'2025-06-14',4,9200),(23,'Lahore','Karachi',1211,'Niazi Express',1300,'2025-06-22',2,2600),(51,'IslamAbbad','Lahore',9876,'S Express',4500,'2025-06-14',2,9000),(76,'karachi','Multan',88,'Jinnah Express',800,'2025-06-14',3,2400),(78,'Multan','Lahore',3553,'Niazi Express',1200,'2025-06-20',3,3600),(90,'Karachi','Multan',1111,'S-Express',3000,'2025-06-22',1,3000),(96,'Karachi','Multan',1111,'S-Express',3000,'2025-06-23',1,3000),(123,'Karachi','Multan',1111,'S-Express',3000,'2026-04-25',3,9000),(1679,'Karachi','Multan',1111,'S-Express',3000,'2025-11-12',2,6000),(2456,'Lahore','Shergarh',8765,'SAP Express',1300,'2026-01-08',2,2600),(4567,'Lahore','Shergarh',909,'Niazi Express',200,'2026-01-22',3,600),(9878,'Peshawar','Lahore',3333,'Q-Express',200,'2026-01-15',2,400),(56789,'Lahore','Shergarh',909,'Niazi Express',200,'2026-01-22',4,800);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traindetails`
--

DROP TABLE IF EXISTS `traindetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traindetails` (
  `tno` int NOT NULL,
  `tname` varchar(255) NOT NULL,
  `startplace` varchar(255) NOT NULL,
  `destinationplace` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `arrivaltime` varchar(10) DEFAULT NULL,
  `departuretime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tno`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traindetails`
--

LOCK TABLES `traindetails` WRITE;
/*!40000 ALTER TABLE `traindetails` DISABLE KEYS */;
INSERT INTO `traindetails` VALUES (909,'Niazi Express','Lahore','Shergarh',200,'12:00 PM','1:00 AM'),(1000,'Iqball Express','Lahore','Rawal Pindi',2000,'12:00PM','5:30AM'),(1111,'S-Express','Karachi','Multan',3000,'10:00 PM','12:00 AM'),(3456,'Jafar Express','Lahore','Islamabbad',1300,'3:00PM','5:00Pm');
/*!40000 ALTER TABLE `traindetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-25 20:15:56
