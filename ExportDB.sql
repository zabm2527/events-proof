-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: eventosDB
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `CIUDADES`
--

DROP TABLE IF EXISTS `CIUDADES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CIUDADES` (
  `COD_CIUDAD` int NOT NULL AUTO_INCREMENT,
  `NOM_CIUDAD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`COD_CIUDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CIUDADES`
--

LOCK TABLES `CIUDADES` WRITE;
/*!40000 ALTER TABLE `CIUDADES` DISABLE KEYS */;
INSERT INTO `CIUDADES` VALUES (1,'CALI'),(2,'BOGOTÁ'),(3,'MEDELLIN'),(4,'BARRANQUILLA'),(5,'BUENAVENTURA');
/*!40000 ALTER TABLE `CIUDADES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COLORES`
--

DROP TABLE IF EXISTS `COLORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COLORES` (
  `COD_COLOR` int NOT NULL AUTO_INCREMENT,
  `NOM_COLOR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`COD_COLOR`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COLORES`
--

LOCK TABLES `COLORES` WRITE;
/*!40000 ALTER TABLE `COLORES` DISABLE KEYS */;
INSERT INTO `COLORES` VALUES (1,'ROJO'),(2,'AZUL'),(3,'VERDE'),(4,'AMARILLO'),(5,'MORADO');
/*!40000 ALTER TABLE `COLORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENTOS`
--

DROP TABLE IF EXISTS `EVENTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENTOS` (
  `COD_EVENTO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_EVENTO` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `COD_CIUDAD` int NOT NULL,
  `COD_COLOR` int NOT NULL,
  `FECHA_INI` varchar(20) NOT NULL,
  `FECHA_FIN` varchar(20) NOT NULL,
  PRIMARY KEY (`COD_EVENTO`),
  KEY `COD_CIUDAD` (`COD_CIUDAD`),
  KEY `COD_COLOR` (`COD_COLOR`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`COD_CIUDAD`) REFERENCES `CIUDADES` (`COD_CIUDAD`),
  CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`COD_COLOR`) REFERENCES `COLORES` (`COD_COLOR`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTOS`
--

LOCK TABLES `EVENTOS` WRITE;
/*!40000 ALTER TABLE `EVENTOS` DISABLE KEYS */;
INSERT INTO `EVENTOS` VALUES (6,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(7,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(8,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(9,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(10,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(11,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(12,'show 1','show de las estrellas',1,1,'2021-06-19 12:00:00','2021-06-19 13:00:00'),(13,'show 333','show de las lunas',3,4,'2021-06-20 14:00:00','2021-06-20 16:00:00'),(14,'show 222','show de los soles',5,3,'2021-06-20 00:00:00','2021-06-20 01:00:00'),(15,'show 1','show de las estrellas',1,1,'2021-06-20 12:00:00','2021-06-20 13:00:00'),(16,'sho666','show de suso',2,2,'2021-06-21 00:00','2021-06-21 01:00'),(17,'show 777','Paso de la garza',4,1,'2021-06-21 13:00','2021-06-21 15:00'),(18,'show 8888','cantar son',1,4,'2021-06-21 20:30','2021-06-21 20:50'),(19,'jdjdjdjd','ndndndnd',2,2,'2021-06-21 20:00','2021-06-21 23:00'),(22,'3333','kkkkk',2,1,'2021-06-22 13:00','2021-06-22 14:00'),(23,'4444','iiiii',2,3,'2021-06-22 16:00','2021-06-22 18:00');
/*!40000 ALTER TABLE `EVENTOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 16:14:54
