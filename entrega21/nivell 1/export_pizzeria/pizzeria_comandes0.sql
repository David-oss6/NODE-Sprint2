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
-- Table structure for table `comandes`
--

DROP TABLE IF EXISTS `comandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comandes` (
  `comanda_id` int NOT NULL AUTO_INCREMENT,
  `hora` datetime NOT NULL,
  `tipus_comanda` varchar(20) NOT NULL,
  `preu_total` float NOT NULL,
  `botiga_comanda` int NOT NULL,
  `empleat_comanda` int NOT NULL,
  `client_comanda` int NOT NULL,
  PRIMARY KEY (`comanda_id`),
  KEY `botiga_id_idx` (`botiga_comanda`),
  KEY `empleat_comanda_idx` (`empleat_comanda`),
  KEY `client_comanda_idx` (`client_comanda`),
  CONSTRAINT `botiga_comanda` FOREIGN KEY (`botiga_comanda`) REFERENCES `botiga` (`botiga_id`),
  CONSTRAINT `client_comanda` FOREIGN KEY (`client_comanda`) REFERENCES `clients` (`clients_id`),
  CONSTRAINT `empleat_comanda` FOREIGN KEY (`empleat_comanda`) REFERENCES `empleats` (`empleat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandes`
--

LOCK TABLES `comandes` WRITE;
/*!40000 ALTER TABLE `comandes` DISABLE KEYS */;
INSERT INTO `comandes` VALUES (1,'2023-01-01 22:45:59','al restaruant',25.8,1,1,1),(2,'2023-02-02 22:45:59','per emportar',20.8,1,2,2),(3,'2023-01-03 15:40:59','per emportar',16.8,2,1,3);
/*!40000 ALTER TABLE `comandes` ENABLE KEYS */;
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
