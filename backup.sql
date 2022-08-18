-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_rest_service
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `curso_id` bigint NOT NULL AUTO_INCREMENT,
  `create_at` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `profesor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`curso_id`),
  KEY `FKm6i1ut1tbxqwwjudkffyyibry` (`profesor_id`),
  CONSTRAINT `FKm6i1ut1tbxqwwjudkffyyibry` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'2022-08-08','Matematicas',NULL),(2,'2022-08-08','Matematicas',NULL),(3,'2022-08-08','Matematicas',NULL),(4,'2022-08-08','Matematicas',NULL),(5,'2022-08-08','Matematicas',NULL),(6,'2022-08-08','Matematicas',10),(7,'2022-08-08','Goland',NULL),(8,'2022-08-08','java',NULL),(9,'2022-08-08','javascript',NULL);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lenguaje`
--

DROP TABLE IF EXISTS `lenguaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lenguaje` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lenguaje`
--

LOCK TABLES `lenguaje` WRITE;
/*!40000 ALTER TABLE `lenguaje` DISABLE KEYS */;
INSERT INTO `lenguaje` VALUES (1,'2022-08-08 00:00:00','java'),(2,'2022-08-08 00:00:00','Goland');
/*!40000 ALTER TABLE `lenguaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_at` date DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `foto` varchar(2000) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_48alpytkeu2ievev6tpkymd38` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (6,'2022-08-05','cdwdqwdahr@mdkawdn',NULL,'robert','2dfdd'),(8,'2022-08-05','cddqwdhr@mdkawdn',NULL,'robert','2dfdd'),(9,'2022-08-05','cddwdhr@mdkawdn',NULL,'robert','2dfdd'),(10,'2022-08-05','cdddhr@mdkawdn',NULL,'robert','2dfdd');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores_lenguajes`
--

DROP TABLE IF EXISTS `profesores_lenguajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores_lenguajes` (
  `profesor_id` bigint NOT NULL,
  `lenguaje_id` bigint NOT NULL,
  PRIMARY KEY (`lenguaje_id`,`profesor_id`),
  KEY `FK3w634tsca08omy5wt3skt7ux1` (`profesor_id`),
  CONSTRAINT `FK3w634tsca08omy5wt3skt7ux1` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  CONSTRAINT `FKg6qgpxhbjvkhwo0234v5x2wk7` FOREIGN KEY (`lenguaje_id`) REFERENCES `lenguaje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores_lenguajes`
--

LOCK TABLES `profesores_lenguajes` WRITE;
/*!40000 ALTER TABLE `profesores_lenguajes` DISABLE KEYS */;
INSERT INTO `profesores_lenguajes` VALUES (8,2);
/*!40000 ALTER TABLE `profesores_lenguajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-18 11:00:23
