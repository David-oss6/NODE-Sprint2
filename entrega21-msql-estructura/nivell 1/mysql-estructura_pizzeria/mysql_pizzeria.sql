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
-- Table structure for table `begudes`
--

DROP TABLE IF EXISTS `begudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `begudes` (
  `beguda_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) NOT NULL,
  `descripcio` varchar(45) NOT NULL,
  `imatge` blob,
  `preu` float NOT NULL,
  PRIMARY KEY (`beguda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `begudes`
--

LOCK TABLES `begudes` WRITE;
/*!40000 ALTER TABLE `begudes` DISABLE KEYS */;
INSERT INTO `begudes` VALUES (1,'Cocacola','asd',NULL,2.9),(2,'Fanta','asd',NULL,2.2),(3,'Agua','asd',NULL,1.5);
/*!40000 ALTER TABLE `begudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botiga`
--

DROP TABLE IF EXISTS `botiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botiga` (
  `botiga_id` int NOT NULL AUTO_INCREMENT,
  `adreca` varchar(45) NOT NULL,
  `codi_postal` int NOT NULL,
  `localita` varchar(20) NOT NULL,
  `provinci` varchar(20) NOT NULL,
  PRIMARY KEY (`botiga_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botiga`
--

LOCK TABLES `botiga` WRITE;
/*!40000 ALTER TABLE `botiga` DISABLE KEYS */;
INSERT INTO `botiga` VALUES (1,'adreça',8022,'localitat','provincia'),(2,'adreça22',8024,'localitat2','provincia2'),(3,'adreça33',8055,'localitat33','provincia33');
/*!40000 ALTER TABLE `botiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_pizza`
--

DROP TABLE IF EXISTS `categories_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_pizza` (
  `categoria_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_pizza`
--

LOCK TABLES `categories_pizza` WRITE;
/*!40000 ALTER TABLE `categories_pizza` DISABLE KEYS */;
INSERT INTO `categories_pizza` VALUES (1,'Cat1'),(2,'Cat2'),(3,'Cat3');
/*!40000 ALTER TABLE `categories_pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `clients_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) NOT NULL,
  `cognom` varchar(10) NOT NULL,
  `direccion` varchar(10) NOT NULL,
  `codi_postal` int NOT NULL,
  `localitat` varchar(10) NOT NULL,
  `provincia` varchar(10) NOT NULL,
  `telefon` int NOT NULL,
  `comanda_id` int NOT NULL,
  PRIMARY KEY (`clients_id`),
  KEY `comandes_id_idx` (`comanda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Paco','Garcia','direccion1',8022,'local1','rovincia1',564987321,0),(2,'Mariano','Perez','direccion',8022,'local','rovincia',564987321,0),(3,'Jose','Ubrique','direccion1',8022,'local1','rovincia1',564987321,0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `empleats`
--

DROP TABLE IF EXISTS `empleats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleats` (
  `empleat_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(11) NOT NULL,
  `cognom` varchar(11) NOT NULL,
  `nif` varchar(20) NOT NULL,
  `telefon` int NOT NULL,
  `tipus_empleat` varchar(10) NOT NULL COMMENT 'cuiner o repartidor',
  PRIMARY KEY (`empleat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleats`
--

LOCK TABLES `empleats` WRITE;
/*!40000 ALTER TABLE `empleats` DISABLE KEYS */;
INSERT INTO `empleats` VALUES (1,'Marta','De la sie','l987564',5645648,'cuiner'),(2,'David','apellido','l987564',5645648,'repartidor'),(3,'Alex','apellido','l987564',5645648,'repartidor');
/*!40000 ALTER TABLE `empleats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamburgueses`
--

DROP TABLE IF EXISTS `hamburgueses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamburgueses` (
  `hamburguesa_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `descripcio` varchar(45) NOT NULL,
  `imatge` blob,
  `preu` float NOT NULL,
  PRIMARY KEY (`hamburguesa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamburgueses`
--

LOCK TABLES `hamburgueses` WRITE;
/*!40000 ALTER TABLE `hamburgueses` DISABLE KEYS */;
INSERT INTO `hamburgueses` VALUES (1,'Cheesburger','asd',NULL,9.9),(2,'Chickenburguer','asd',NULL,7.9),(3,'Crispyburguer','asd',NULL,8.5);
/*!40000 ALTER TABLE `hamburgueses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzes`
--

DROP TABLE IF EXISTS `pizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzes` (
  `pizza_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) NOT NULL,
  `descripcio` varchar(45) NOT NULL,
  `imatge` blob,
  `preu` float NOT NULL,
  `categoria_pizza_id` int NOT NULL,
  PRIMARY KEY (`pizza_id`),
  KEY `categoria_id_idx` (`categoria_pizza_id`),
  CONSTRAINT `categoria_pizza_id` FOREIGN KEY (`categoria_pizza_id`) REFERENCES `categories_pizza` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzes`
--

LOCK TABLES `pizzes` WRITE;
/*!40000 ALTER TABLE `pizzes` DISABLE KEYS */;
INSERT INTO `pizzes` VALUES (1,'Napolitana','asd',NULL,10.9,1),(2,'Barbacoa','asd',NULL,11.5,2),(3,'Veggy','asd',NULL,9.5,3);
/*!40000 ALTER TABLE `pizzes` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-02-09 18:57:02
