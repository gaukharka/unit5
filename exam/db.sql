-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: exam_database
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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `action_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `qty` int NOT NULL,
  `date` date NOT NULL,
  `warehouse_id` int DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `fk_product_id` (`product_id`),
  KEY `fk_warehouse_id` (`warehouse_id`),
  KEY `fk_agent_id` (`agent_id`),
  CONSTRAINT `fk_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agent_id`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `fk_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,1,100,'2023-01-05',1,1),(2,1,50,'2023-02-06',2,2),(3,2,23,'2023-01-26',1,3),(4,3,200,'2023-02-16',3,2),(5,3,10,'2023-05-06',2,2),(6,2,20,'2023-07-26',1,3),(7,3,22,'2023-02-26',3,1),(8,1,55,'2023-01-06',2,2),(9,2,100,'2023-07-26',1,1),(10,1,1000,'2023-01-06',3,3),(11,2,655,'2023-07-26',1,1),(12,5,20,'2023-01-05',1,1),(13,5,12,'2023-02-06',2,1),(14,5,15,'2023-01-08',3,1),(15,5,20,'2023-01-12',1,2),(16,5,12,'2023-02-11',2,2),(17,5,16,'2023-01-11',3,2),(18,5,20,'2023-01-10',1,3),(19,5,12,'2023-02-06',2,3),(20,5,15,'2023-01-05',3,3),(21,6,222,'2023-04-07',1,1),(22,6,111,'2023-03-09',2,1),(23,6,123,'2023-06-10',3,1),(24,6,333,'2023-04-07',1,2),(25,6,22,'2023-03-09',2,2),(26,6,11,'2023-06-10',3,2),(27,6,20,'2023-04-07',1,3),(28,6,11,'2023-03-09',2,3),(29,6,145,'2023-06-10',3,3),(30,7,56,'2023-04-07',1,1),(31,7,45,'2023-03-09',2,1),(32,7,34,'2023-06-10',3,1),(33,7,21,'2023-04-07',1,2),(34,7,32,'2023-03-09',2,2),(35,7,321,'2023-06-10',3,2),(36,7,76,'2023-04-07',1,3),(37,7,66,'2023-03-09',2,3),(38,7,55,'2023-06-10',3,3),(39,8,87,'2023-04-07',1,1),(40,8,66,'2023-03-09',2,1),(41,8,544,'2023-06-10',3,1),(42,8,87,'2023-04-03',1,2),(43,8,66,'2023-03-02',2,2),(44,8,544,'2023-06-03',3,2),(45,8,42,'2023-04-03',1,3),(46,8,77,'2023-03-02',2,3),(47,8,53,'2023-06-03',3,3),(48,9,123,'2023-04-09',1,1),(49,9,11,'2023-03-08',2,1),(50,9,2,'2023-06-06',3,1),(51,9,123,'2023-04-09',1,2),(52,9,76,'2023-03-08',2,2),(53,9,266,'2023-06-06',3,2),(54,9,500,'2023-04-09',1,3),(55,9,100,'2023-03-08',2,3),(56,9,200,'2023-06-06',3,3),(57,10,123,'2023-04-09',1,1),(58,10,11,'2023-03-08',2,1),(59,10,2,'2023-06-06',3,1),(60,10,100,'2023-04-09',1,2),(61,10,700,'2023-03-08',2,2),(62,10,200,'2023-06-06',3,2),(63,10,123,'2023-04-09',1,3),(64,10,233,'2023-03-08',2,3),(65,10,44,'2023-06-06',3,3),(66,10,2,'2023-06-06',3,1),(67,10,100,'2023-04-09',1,2),(68,10,700,'2023-03-08',2,2),(69,10,200,'2023-06-06',3,2),(70,10,123,'2023-04-09',1,3),(71,10,233,'2023-03-08',2,3),(72,10,44,'2023-06-06',3,3);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(45) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Agent 1'),(2,'Agent 2'),(3,'Agent 3');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Brand A'),(2,'Brand B'),(3,'Brand C');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Category 1'),(2,'Category 2'),(3,'Category 3');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_category_id` (`category_id`),
  KEY `fk_brand_id` (`brand_id`),
  CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Jeans',1,1),(2,'Dress',1,2),(3,'Bag',2,1),(4,'Shoes',3,2),(5,'Dress blue',1,3),(6,'Bag Black',2,2),(7,'Shoes Red',3,1),(8,'Dress white',1,1),(9,'Jeans white',1,3),(10,'Gloves Red',2,3),(11,'Hat white',2,1),(12,'Jeans red',1,2),(13,'Crocs red',3,2),(14,'Boots',3,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `qty` int NOT NULL,
  `date` date NOT NULL,
  `warehouse_id` int DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  PRIMARY KEY (`supply_id`),
  KEY `fk_supply_product_id` (`product_id`),
  KEY `fk_supply_warehouse_id` (`warehouse_id`),
  KEY `fk_supply_agent_id` (`agent_id`),
  CONSTRAINT `fk_supply_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agent_id`),
  CONSTRAINT `fk_supply_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `fk_supply_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,1,100,'2023-01-05',1,1),(2,2,150,'2023-01-05',1,2),(3,3,200,'2023-01-06',2,3),(4,4,120,'2023-03-06',2,3),(5,5,80,'2023-10-07',3,2),(6,6,200,'2023-11-20',1,1),(7,7,120,'2023-11-02',2,1),(8,8,80,'2023-08-09',3,3),(9,9,120,'2023-11-02',2,2),(10,10,80,'2023-08-09',3,2);
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(45) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Warehouse A'),(2,'Warehouse B'),(3,'Warehouse C'),(4,'Warehouse D');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-03 13:34:25
