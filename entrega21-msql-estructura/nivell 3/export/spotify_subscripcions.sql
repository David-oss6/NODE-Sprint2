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
-- Table structure for table `subscripcions`
--

DROP TABLE IF EXISTS `subscripcions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscripcions` (
  `subscripcio_id` int NOT NULL AUTO_INCREMENT,
  `usuari` int NOT NULL,
  `data_inici` date NOT NULL,
  `data_renovacio` date NOT NULL,
  `metode_pagament` set('Targeta','Pay Pal') NOT NULL,
  `targeta_credit_id` int DEFAULT NULL,
  `pay_pal_id` int DEFAULT NULL,
  PRIMARY KEY (`subscripcio_id`),
  KEY `usuari_idx` (`usuari`),
  KEY `targeta_credit_id_idx` (`targeta_credit_id`),
  KEY `pay_pal_id_idx` (`pay_pal_id`),
  CONSTRAINT `pay_pal_id` FOREIGN KEY (`pay_pal_id`) REFERENCES `pay_pal` (`pay_pal_id`),
  CONSTRAINT `targeta_credit_id` FOREIGN KEY (`targeta_credit_id`) REFERENCES `targetes_credit` (`targeta_id`),
  CONSTRAINT `usuari` FOREIGN KEY (`usuari`) REFERENCES `usuari_premium` (`us_pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscripcions`
--

LOCK TABLES `subscripcions` WRITE;
/*!40000 ALTER TABLE `subscripcions` DISABLE KEYS */;
INSERT INTO `subscripcions` VALUES (1,1,'2023-02-02','2023-03-02','Targeta',1,NULL);
/*!40000 ALTER TABLE `subscripcions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 18:19:43
