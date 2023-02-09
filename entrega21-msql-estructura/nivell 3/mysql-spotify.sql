-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: spotify
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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `artista` int NOT NULL,
  `titol` varchar(15) NOT NULL,
  `any_publicacio` year NOT NULL,
  `img_portada` blob,
  PRIMARY KEY (`album_id`),
  KEY `artista_idx` (`artista`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'Retiro',1990,NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `artista_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `imatge` blob,
  PRIMARY KEY (`artista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Sabina',NULL);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canciones`
--

DROP TABLE IF EXISTS `canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canciones` (
  `cancion_id` int NOT NULL AUTO_INCREMENT,
  `album` int NOT NULL,
  `artista` int NOT NULL,
  PRIMARY KEY (`cancion_id`),
  KEY `album_idx` (`album`),
  KEY `artista_idx` (`artista`),
  CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `artista` FOREIGN KEY (`artista`) REFERENCES `artista` (`artista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canciones`
--

LOCK TABLES `canciones` WRITE;
/*!40000 ALTER TABLE `canciones` DISABLE KEYS */;
INSERT INTO `canciones` VALUES (1,1,1);
/*!40000 ALTER TABLE `canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canciones_playlist`
--

DROP TABLE IF EXISTS `canciones_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canciones_playlist` (
  `origin_playlist_id` int NOT NULL,
  `cancion` int NOT NULL,
  PRIMARY KEY (`origin_playlist_id`),
  KEY `cancion_idx` (`cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canciones_playlist`
--

LOCK TABLES `canciones_playlist` WRITE;
/*!40000 ALTER TABLE `canciones_playlist` DISABLE KEYS */;
INSERT INTO `canciones_playlist` VALUES (1,1);
/*!40000 ALTER TABLE `canciones_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos` (
  `favorito_id` int NOT NULL AUTO_INCREMENT,
  `usuario` int DEFAULT NULL,
  `cancion` int DEFAULT NULL,
  `album` int DEFAULT NULL,
  `artista` int DEFAULT NULL,
  PRIMARY KEY (`favorito_id`),
  KEY `cancion_idx` (`cancion`),
  KEY `album_idx` (`album`),
  KEY `artista_idx` (`artista`),
  KEY `usuario_premium_idx` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
INSERT INTO `favoritos` VALUES (1,NULL,1,NULL,1);
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagaments`
--

DROP TABLE IF EXISTS `pagaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagaments` (
  `pagament_id` int NOT NULL AUTO_INCREMENT,
  `subscripcio_origen` int NOT NULL,
  `data_pagament` date NOT NULL,
  `preu` int NOT NULL,
  PRIMARY KEY (`pagament_id`),
  KEY `subscripcio_origen_idx` (`subscripcio_origen`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagaments`
--

LOCK TABLES `pagaments` WRITE;
/*!40000 ALTER TABLE `pagaments` DISABLE KEYS */;
INSERT INTO `pagaments` VALUES (1,1,'2023-01-02',5);
/*!40000 ALTER TABLE `pagaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_pal`
--

DROP TABLE IF EXISTS `pay_pal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_pal` (
  `pay_pal_id` int NOT NULL AUTO_INCREMENT,
  `nom_paypal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pay_pal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_pal`
--

LOCK TABLES `pay_pal` WRITE;
/*!40000 ALTER TABLE `pay_pal` DISABLE KEYS */;
INSERT INTO `pay_pal` VALUES (1,'grass');
/*!40000 ALTER TABLE `pay_pal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `playlist_id` int NOT NULL AUTO_INCREMENT,
  `titol` varchar(15) NOT NULL,
  `numero_canciones` int NOT NULL,
  `data_creacio` date NOT NULL,
  `estado` set('activa','eliminada') NOT NULL,
  `usuari` int DEFAULT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `usuari_premium_idx` (`usuari`),
  CONSTRAINT `usuari_premium` FOREIGN KEY (`usuari`) REFERENCES `usuari` (`us_pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'myPlaylist',1,'2023-02-02','activa',NULL);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscripcions`
--

DROP TABLE IF EXISTS `subscripcions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscripcions` (
  `subscripcio_id` int NOT NULL AUTO_INCREMENT,
  `data_inici` date NOT NULL,
  `data_renovacio` date NOT NULL,
  `metode_pagament` set('Targeta','Pay Pal') NOT NULL,
  `targeta_credit_id` int DEFAULT NULL,
  `pay_pal_id` int DEFAULT NULL,
  PRIMARY KEY (`subscripcio_id`),
  KEY `targeta_credit_id_idx` (`targeta_credit_id`),
  KEY `pay_pal_id_idx` (`pay_pal_id`),
  CONSTRAINT `pay_pal_id` FOREIGN KEY (`pay_pal_id`) REFERENCES `pay_pal` (`pay_pal_id`),
  CONSTRAINT `targeta_credit_id` FOREIGN KEY (`targeta_credit_id`) REFERENCES `targetes_credit` (`targeta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscripcions`
--

LOCK TABLES `subscripcions` WRITE;
/*!40000 ALTER TABLE `subscripcions` DISABLE KEYS */;
INSERT INTO `subscripcions` VALUES (1,'2023-02-02','2023-03-02','Targeta',1,NULL);
/*!40000 ALTER TABLE `subscripcions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targetes_credit`
--

DROP TABLE IF EXISTS `targetes_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targetes_credit` (
  `targeta_id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `mes` smallint NOT NULL,
  `any` smallint NOT NULL,
  `codi_seguretat` smallint NOT NULL,
  PRIMARY KEY (`targeta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targetes_credit`
--

LOCK TABLES `targetes_credit` WRITE;
/*!40000 ALTER TABLE `targetes_credit` DISABLE KEYS */;
INSERT INTO `targetes_credit` VALUES (1,123456789,12,1990,33);
/*!40000 ALTER TABLE `targetes_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuari`
--

DROP TABLE IF EXISTS `usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuari` (
  `us_pr_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `data_neixement` date NOT NULL,
  `sexe` varchar(6) NOT NULL,
  `codi_postal` int NOT NULL,
  `pais` varchar(15) NOT NULL,
  `tipus_usuari` set('premium','free') NOT NULL,
  `subscripcio` int DEFAULT NULL,
  `USUARI_PREMIUM_us_pr_id` int NOT NULL,
  PRIMARY KEY (`us_pr_id`,`USUARI_PREMIUM_us_pr_id`),
  KEY `subscripcion_idx_idx` (`subscripcio`),
  KEY `fk_USUARI_PREMIUM_USUARI_PREMIUM1_idx` (`USUARI_PREMIUM_us_pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuari`
--

LOCK TABLES `usuari` WRITE;
/*!40000 ALTER TABLE `usuari` DISABLE KEYS */;
INSERT INTO `usuari` VALUES (1,'David','asd@hotmail.com','asd','1985-04-07','M',8022,'ESP','premium',1,0),(2,'David','asd@hotmail.com','asd','1985-04-07','M',8022,'ESP','free',NULL,0);
/*!40000 ALTER TABLE `usuari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 19:51:06
