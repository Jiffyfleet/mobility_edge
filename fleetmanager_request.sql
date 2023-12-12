CREATE DATABASE  IF NOT EXISTS `fleetmanager` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fleetmanager`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fleetmanager
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_id` varchar(100) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model_name` varchar(45) DEFAULT NULL,
  `model_variant` varchar(45) DEFAULT NULL,
  `model_year` varchar(45) DEFAULT NULL,
  `classification` varchar(45) DEFAULT NULL,
  `fuel_type` varchar(45) DEFAULT NULL,
  `engine_power_cc` varchar(45) DEFAULT NULL,
  `engine_power_hp` varchar(45) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `body_type` varchar(45) DEFAULT NULL,
  `exterior_color` varchar(45) DEFAULT NULL,
  `interior_color` varchar(45) DEFAULT NULL,
  `additional_options` varchar(500) DEFAULT NULL,
  `price_local_curr` decimal(10,2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `uploaded_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`request_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `request_id_UNIQUE` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 17:06:23
