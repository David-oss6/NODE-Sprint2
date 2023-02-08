-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria
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
-- Table structure for table `productes_comanda`
--

DROP TABLE IF EXISTS `productes_comanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productes_comanda` (
  `producte_comanda_id` int NOT NULL AUTO_INCREMENT,
  `comanda_origen` int NOT NULL,
  `pizza_id` int DEFAULT NULL,
  `hamburguesa_id` int DEFAULT NULL,
  `beguda_id` int DEFAULT NULL,
  `preu_total` float NOT NULL COMMENT '(pizza_id.preu * quantitat_pizzes) + (hamburgueses_id.preu + quantitat_hamburgueses) + (beguda_id.preu + quantitat_begudes)',
  PRIMARY KEY (`producte_comanda_id`),
  KEY `pizza_id_idx` (`pizza_id`),
  KEY `hamburguesa_id_idx` (`hamburguesa_id`),
  KEY `beguda_id_idx` (`beguda_id`),
  KEY `comanda_origen_idx` (`comanda_origen`),
  CONSTRAINT `begudes_id` FOREIGN KEY (`beguda_id`) REFERENCES `begudes` (`beguda_id`),
  CONSTRAINT `comanda_origen` FOREIGN KEY (`comanda_origen`) REFERENCES `comandes` (`comanda_id`),
  CONSTRAINT `hamburguesa_id` FOREIGN KEY (`hamburguesa_id`) REFERENCES `hamburgueses` (`hamburguesa_id`),
  CONSTRAINT `pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `pizzes` (`pizza_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productes_comanda`
--

LOCK TABLES `productes_comanda` WRITE;
/*!40000 ALTER TABLE `productes_comanda` DISABLE KEYS */;
INSERT INTO `productes_comanda` VALUES (4,1,1,NULL,1,13),(5,2,NULL,NULL,1,2.9),(6,3,NULL,1,1,14);
/*!40000 ALTER TABLE `productes_comanda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 12:54:36
