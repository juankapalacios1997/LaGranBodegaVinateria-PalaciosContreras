CREATE DATABASE  IF NOT EXISTS `vinateria_la_gran_bodega` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vinateria_la_gran_bodega`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: vinateria_la_gran_bodega
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `auditoria_empleados`
--

DROP TABLE IF EXISTS `auditoria_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fecha_contratacion` varchar(20) NOT NULL,
  `fecha_eliminacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `accion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_empleados`
--

LOCK TABLES `auditoria_empleados` WRITE;
/*!40000 ALTER TABLE `auditoria_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Whisky'),(2,'Vodka'),(3,'Tequila');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `edad` int NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (201,'Jose','Perez',21),(202,'Andrea','Aguilar',29),(203,'Sergio','Rivas',27),(204,'Olivia','Tristan',42),(205,'Francisco','Hernandez',37),(206,'Isabel','Soria',52),(207,'Matias','Alarcon',31),(208,'Carlos','Palacios',25),(209,'Ximena','Perez',30);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `edad` int NOT NULL,
  `fecha_contratacion` varchar(20) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `posicion` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=21109 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (21101,'Juan','Perez',22,'2023-11-10','tarde','empleado'),(21102,'Maria','Segovia',21,'2023-12-21','manana','supervisor'),(21103,'Kevin','Alcocer',25,'2024-02-14','tarde','empleado'),(21104,'Luisa','Hernandez',32,'2023-10-11','tarde','empleado'),(21105,'Jesus','Herrera',19,'2024-01-08','manana','empleado'),(21106,'Santiago','Huerta',19,'2023-09-21','manana','gerente'),(21107,'Enrique','Soriano',19,'2023-11-11','manana','empleado'),(21108,'Ximena','Loera',19,'2023-10-21','manana','supervisor');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `inventario_resumen`
--

DROP TABLE IF EXISTS `inventario_resumen`;
/*!50001 DROP VIEW IF EXISTS `inventario_resumen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inventario_resumen` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre`,
 1 AS `categoria`,
 1 AS `marca`,
 1 AS `stock`,
 1 AS `precioUsd`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (101,'Don Julio'),(102,'Gran Centenario'),(103,'Maestro Dobel'),(104,'Smirnoff'),(105,'Stolichnaya'),(106,'Absolut'),(107,'Buchanan\'s'),(108,'Chivas Regal'),(109,'Johnny Walker');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `idCategoria` int NOT NULL,
  `idMarca` int NOT NULL,
  `stock` int NOT NULL,
  `precioUsd` decimal(18,2) NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `idCategoria_idx` (`idCategoria`),
  KEY `idMarca_idx` (`idMarca`),
  CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  CONSTRAINT `idMarca` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (11,'Tequila Don Julio Blanco 750ml',3,101,41,19.99),(12,'Tequila Don Julio Reposado 700ml',3,101,124,29.99),(13,'Tequila Don Julio 70 Cristalino 700ml',3,101,121,49.99),(14,'Tequila Gran Centenario Reposado 700ml',3,102,32,14.99),(15,'Tequila Gran Centenario Plata Blanco 700ml',3,102,20,19.99),(16,'Tequila Maestro Dobel Diamante 700ml',3,103,9,71.99),(17,'Vodka Smirnoff Triple Destilado 750ml',2,104,83,9.99),(18,'Vodka Smirnoff X1 Tamarindo 750ml',2,104,68,9.99),(19,'Vodka Stolichnaya Spirit 750ml',2,105,93,14.99),(20,'Vodka Absolut Azul 750ml',2,106,103,19.99),(21,'Vodka Absolut Mandarin 750ml',2,106,56,22.99),(22,'Vodka Absolut Watermelon 750ml',2,106,36,22.99),(23,'Whisky Buchanan\'s 12 anos 750ml',1,107,43,34.99),(24,'Whisky Buchanan\'s Reserva Especial 18 anos 750ml',1,107,12,34.99),(25,'Whisky Chivas Regal 12 anos 1L',1,108,12,59.99),(26,'Whisky Johnny Walker Red Label',1,109,12,19.99),(27,'Whisky Johnny Walker Black Label',1,109,12,49.99),(28,'Whisky Johnny Walker Blue Label',1,109,12,109.99);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(20) NOT NULL,
  `idCliente` int NOT NULL,
  `idEmpleado` int NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idCliente_idx` (`idCliente`),
  KEY `idEmpleado_idx` (`idEmpleado`),
  CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `idEmpleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1001,'2025-05-11',201,21103),(1002,'2025-05-12',201,21104),(1003,'2025-05-24',202,21103),(1004,'2025-05-11',203,21101),(1005,'2025-05-25',204,21101),(1006,'2025-05-20',206,21108),(1007,'2025-05-17',206,21105),(1008,'2025-05-02',206,21102),(1009,'2025-04-01',207,21105),(1010,'2025-05-11',207,21105),(1011,'2025-05-22',208,21107),(1012,'2025-05-25',208,21103);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ventas_por_producto`
--

DROP TABLE IF EXISTS `ventas_por_producto`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_producto` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ventas_productos`
--

DROP TABLE IF EXISTS `ventas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_productos` (
  `idVentaProducto` int NOT NULL AUTO_INCREMENT,
  `idVenta` int NOT NULL,
  `idProducto` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idVentaProducto`),
  KEY `idVenta_idx` (`idVenta`),
  KEY `idProducto_idx` (`idProducto`),
  CONSTRAINT `idProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `idVenta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=8013 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_productos`
--

LOCK TABLES `ventas_productos` WRITE;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
INSERT INTO `ventas_productos` VALUES (8001,1001,11,2),(8002,1001,15,1),(8003,1002,12,3),(8004,1003,20,1),(8005,1005,26,2),(8006,1006,21,1),(8007,1006,19,1),(8008,1008,11,2),(8009,1009,13,3),(8010,1010,12,3),(8011,1010,25,2),(8012,1001,26,2);
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `inventario_resumen`
--

/*!50001 DROP VIEW IF EXISTS `inventario_resumen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventario_resumen` AS select `p`.`idProducto` AS `id_producto`,`p`.`nombre` AS `nombre`,`c`.`nombre` AS `categoria`,`m`.`nombre` AS `marca`,`p`.`stock` AS `stock`,`p`.`precioUsd` AS `precioUsd` from ((`productos` `p` join `categorias` `c` on((`p`.`idCategoria` = `c`.`idCategoria`))) join `marcas` `m` on((`p`.`idMarca` = `m`.`idMarca`))) order by `p`.`idProducto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_producto`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_producto` AS select `p`.`idProducto` AS `id_producto`,`p`.`nombre` AS `nombre`,sum(`vp`.`cantidad`) AS `cantidad` from (`productos` `p` join `ventas_productos` `vp` on((`vp`.`idProducto` = `p`.`idProducto`))) group by `p`.`idProducto` order by `cantidad` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-15 11:09:01
