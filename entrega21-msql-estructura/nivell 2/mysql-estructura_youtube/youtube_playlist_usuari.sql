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
-- Table structure for table `playlist_usuari`
--

DROP TABLE IF EXISTS `playlist_usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_usuari` (
  `playlist_usuari_id` int NOT NULL AUTO_INCREMENT,
  `playlist_origen_id` int NOT NULL,
  `usuari_playlist` int NOT NULL,
  `video_playlist` int NOT NULL,
  PRIMARY KEY (`playlist_usuari_id`),
  KEY `playlist_origen_idx` (`playlist_origen_id`),
  KEY `vide_playlist_idx` (`video_playlist`),
  KEY `usuari_playlist_idx` (`usuari_playlist`),
  CONSTRAINT `playlist_origen` FOREIGN KEY (`playlist_origen_id`) REFERENCES `playlist` (`playlist_id`),
  CONSTRAINT `usuari_playlist` FOREIGN KEY (`usuari_playlist`) REFERENCES `usuaris` (`usuari_id`),
  CONSTRAINT `vide_playlist` FOREIGN KEY (`video_playlist`) REFERENCES `video` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_usuari`
--

LOCK TABLES `playlist_usuari` WRITE;
/*!40000 ALTER TABLE `playlist_usuari` DISABLE KEYS */;
INSERT INTO `playlist_usuari` VALUES (1,1,1,2),(2,1,1,1),(3,1,1,3),(4,2,2,2),(5,1,2,1),(6,3,3,3);
/*!40000 ALTER TABLE `playlist_usuari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 14:06:34
