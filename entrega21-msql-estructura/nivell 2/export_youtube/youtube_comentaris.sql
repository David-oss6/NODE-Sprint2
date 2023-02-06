-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: youtube
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `comentaris`
--

DROP TABLE IF EXISTS `comentaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentaris` (
  `comentari_id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `text` varchar(45) NOT NULL,
  `video_comentat` int NOT NULL,
  `comentari_usuari` int NOT NULL,
  PRIMARY KEY (`comentari_id`),
  KEY `video_coemntat_idx` (`video_comentat`),
  KEY `comentari_usuari_idx` (`comentari_usuari`),
  CONSTRAINT `comentaris_ibfk_1` FOREIGN KEY (`video_comentat`) REFERENCES `video` (`video_id`),
  CONSTRAINT `comentaris_ibfk_2` FOREIGN KEY (`comentari_usuari`) REFERENCES `usuaris` (`usuari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentaris`
--

LOCK TABLES `comentaris` WRITE;
/*!40000 ALTER TABLE `comentaris` DISABLE KEYS */;
INSERT INTO `comentaris` VALUES (1,'2020-05-06','blabla bla blabla bla',1,3),(2,'2020-05-06','blabla bla blabla bla',1,2),(3,'2020-05-06','blabla bla blabla bla',1,3);
/*!40000 ALTER TABLE `comentaris` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 14:06:35
