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
-- Table structure for table `canal`
--

DROP TABLE IF EXISTS `canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canal` (
  `canal_id` int NOT NULL AUTO_INCREMENT,
  `canal_usuari_id` int NOT NULL,
  `nom` varchar(45) NOT NULL,
  `descripcio` varchar(45) NOT NULL,
  `data_creacio` date NOT NULL,
  PRIMARY KEY (`canal_id`),
  KEY `usuari_id_idx` (`canal_usuari_id`),
  CONSTRAINT `canal_usuari_id` FOREIGN KEY (`canal_usuari_id`) REFERENCES `usuaris` (`usuari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (1,1,'CanalDavid','descripcion','2015-06-07'),(2,2,'CanalPaco','descripcion','2019-05-05'),(3,1,'CanalSonia','descripcion','2017-02-01');
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `etiquetes`
--

DROP TABLE IF EXISTS `etiquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetes` (
  `etiqueta_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`etiqueta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetes`
--

LOCK TABLES `etiquetes` WRITE;
/*!40000 ALTER TABLE `etiquetes` DISABLE KEYS */;
INSERT INTO `etiquetes` VALUES (1,'Etiqueta1'),(2,'Etiqueta2'),(3,'Etiqueta3');
/*!40000 ALTER TABLE `etiquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetes_video`
--

DROP TABLE IF EXISTS `etiquetes_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetes_video` (
  `etiqueta_video_id` int NOT NULL AUTO_INCREMENT,
  `etiqueta` int NOT NULL,
  `video` int NOT NULL,
  PRIMARY KEY (`etiqueta_video_id`),
  KEY `etiqueta_idx` (`etiqueta`),
  KEY `video_idx` (`video`),
  CONSTRAINT `etiqueta` FOREIGN KEY (`etiqueta`) REFERENCES `etiquetes` (`etiqueta_id`),
  CONSTRAINT `etiquetes_video_ibfk_1` FOREIGN KEY (`video`) REFERENCES `video` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetes_video`
--

LOCK TABLES `etiquetes_video` WRITE;
/*!40000 ALTER TABLE `etiquetes_video` DISABLE KEYS */;
INSERT INTO `etiquetes_video` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `etiquetes_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_d_comentaris`
--

DROP TABLE IF EXISTS `l_d_comentaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `l_d_comentaris` (
  `ld_comentari_id` int NOT NULL AUTO_INCREMENT,
  `usuari` int NOT NULL,
  `comentari` int NOT NULL,
  `like_dislike` set('like','dislike') NOT NULL,
  PRIMARY KEY (`ld_comentari_id`),
  KEY `usuari_idx` (`usuari`),
  KEY `comentari_idx` (`comentari`),
  CONSTRAINT `comentari` FOREIGN KEY (`comentari`) REFERENCES `comentaris` (`comentari_id`),
  CONSTRAINT `usuari` FOREIGN KEY (`usuari`) REFERENCES `usuaris` (`usuari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_d_comentaris`
--

LOCK TABLES `l_d_comentaris` WRITE;
/*!40000 ALTER TABLE `l_d_comentaris` DISABLE KEYS */;
INSERT INTO `l_d_comentaris` VALUES (1,1,1,'like'),(2,1,2,'like'),(3,1,3,'like');
/*!40000 ALTER TABLE `l_d_comentaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_dislikes`
--

DROP TABLE IF EXISTS `likes_dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_dislikes` (
  `like_dislike_id` int NOT NULL AUTO_INCREMENT,
  `ld_usuari_id` int NOT NULL,
  `ld_video_id` int NOT NULL,
  `tipus` set('like','dislike') NOT NULL,
  PRIMARY KEY (`like_dislike_id`),
  KEY `usuari_id_idx` (`ld_usuari_id`),
  KEY `video_id_idx` (`ld_video_id`),
  CONSTRAINT `likes_dislikes_ibfk_1` FOREIGN KEY (`ld_usuari_id`) REFERENCES `usuaris` (`usuari_id`),
  CONSTRAINT `likes_dislikes_ibfk_2` FOREIGN KEY (`ld_video_id`) REFERENCES `video` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_dislikes`
--

LOCK TABLES `likes_dislikes` WRITE;
/*!40000 ALTER TABLE `likes_dislikes` DISABLE KEYS */;
INSERT INTO `likes_dislikes` VALUES (1,1,1,'like'),(2,1,2,'like'),(3,1,3,'dislike'),(4,2,1,'dislike'),(5,2,2,'dislike'),(6,2,3,'dislike'),(7,3,1,'like'),(8,3,2,'like'),(9,3,3,'like');
/*!40000 ALTER TABLE `likes_dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `playlist_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `data_creacio` date NOT NULL,
  `estat_playlist` set('publica','privada') NOT NULL,
  `usuari_id` int NOT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `usuari_id_idx` (`usuari_id`),
  CONSTRAINT `usuari_origen` FOREIGN KEY (`usuari_id`) REFERENCES `usuaris` (`usuari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'P David','2023-02-03','publica',1),(2,'P Paco','2020-12-12','publica',2),(3,'P Sonia','2021-07-07','publica',3);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_usuari`
--

DROP TABLE IF EXISTS `playlist_usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_usuari` (
  `playlist_usuari_id` int NOT NULL AUTO_INCREMENT,
  `playlist_origen_id` int NOT NULL,
  `video_playlist` int NOT NULL,
  PRIMARY KEY (`playlist_usuari_id`),
  KEY `playlist_origen_idx` (`playlist_origen_id`),
  KEY `vide_playlist_idx` (`video_playlist`),
  CONSTRAINT `playlist_origen` FOREIGN KEY (`playlist_origen_id`) REFERENCES `playlist` (`playlist_id`),
  CONSTRAINT `vide_playlist` FOREIGN KEY (`video_playlist`) REFERENCES `video` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_usuari`
--

LOCK TABLES `playlist_usuari` WRITE;
/*!40000 ALTER TABLE `playlist_usuari` DISABLE KEYS */;
INSERT INTO `playlist_usuari` VALUES (1,1,2),(2,1,1),(3,1,3),(4,2,2),(5,1,1),(6,3,3);
/*!40000 ALTER TABLE `playlist_usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscripcions`
--

DROP TABLE IF EXISTS `subscripcions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscripcions` (
  `subscripcio_id` int NOT NULL AUTO_INCREMENT,
  `subscripcions_usuari_id` int NOT NULL,
  `canal` int NOT NULL,
  PRIMARY KEY (`subscripcio_id`),
  KEY `subscripcions_usuari_id_idx` (`subscripcions_usuari_id`),
  KEY `canal_idx` (`canal`),
  CONSTRAINT `subscripcions_ibfk_1` FOREIGN KEY (`subscripcions_usuari_id`) REFERENCES `usuaris` (`usuari_id`),
  CONSTRAINT `subscripcions_ibfk_2` FOREIGN KEY (`canal`) REFERENCES `canal` (`canal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscripcions`
--

LOCK TABLES `subscripcions` WRITE;
/*!40000 ALTER TABLE `subscripcions` DISABLE KEYS */;
INSERT INTO `subscripcions` VALUES (1,1,3),(2,2,2),(3,3,1);
/*!40000 ALTER TABLE `subscripcions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuaris`
--

DROP TABLE IF EXISTS `usuaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuaris` (
  `usuari_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `data_neixement` date NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `pais` varchar(25) NOT NULL,
  `codi_postal` int NOT NULL,
  PRIMARY KEY (`usuari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuaris`
--

LOCK TABLES `usuaris` WRITE;
/*!40000 ALTER TABLE `usuaris` DISABLE KEYS */;
INSERT INTO `usuaris` VALUES (1,'David','a@hot.com','pass','1985-04-07','M','ESP',8022),(2,'Paco','b@hot.com','pass','1989-05-07','M','ESP',8035),(3,'Sonia','s@hot.com','pass','1995-05-05','F','ESP',8044);
/*!40000 ALTER TABLE `usuaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `usuari` int NOT NULL,
  `descripcio` varchar(45) NOT NULL,
  `tamany` float NOT NULL,
  `nom` varchar(45) NOT NULL,
  `durada` float NOT NULL,
  `thumbnail` blob,
  `num_reproduccions` int DEFAULT NULL,
  `num_likes` int DEFAULT NULL,
  `num_dislikes` int DEFAULT NULL,
  `estat` set('public','ocult','privat') NOT NULL,
  PRIMARY KEY (`video_id`),
  KEY `usuari_id_idx` (`usuari`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`usuari`) REFERENCES `usuaris` (`usuari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,1,'desc',3.2,'myVideo',4.5,NULL,235,2,NULL,'public'),(2,2,'desc',6.2,'suVideo',2.5,NULL,120,NULL,1,'public'),(3,3,'desc',5.7,'otroVideo',7.5,NULL,99,2,1,'public');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 19:52:50
