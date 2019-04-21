-- MySQL dump 10.17  Distrib 10.3.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: estech
-- ------------------------------------------------------
-- Server version	10.3.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `CustomerId` int(10) unsigned NOT NULL,
  `Name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IsDefault` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IXFK_Address_Customer` (`CustomerId`),
  CONSTRAINT `FK_Address_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `CategoryId` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CustomerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SurName` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Onur','T.','onurtalantimur@eskisehir.edu.tr','+9000000000000','1234');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Exception`
--

DROP TABLE IF EXISTS `Exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Exception` (
  `ExeptionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DataTime` datetime DEFAULT current_timestamp(),
  `Header` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StackTrace` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientIp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ExeptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exception`
--

LOCK TABLES `Exception` WRITE;
/*!40000 ALTER TABLE `Exception` DISABLE KEYS */;
/*!40000 ALTER TABLE `Exception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Message` (
  `MessageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CustomerId` int(10) unsigned DEFAULT NULL,
  `DateTime` datetime DEFAULT current_timestamp(),
  `Subject` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Context` varchar(145) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientIp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MessageId`),
  KEY `IXFK_Message_Customer` (`CustomerId`),
  CONSTRAINT `FK_Message_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `OrderNumber` int(10) unsigned NOT NULL,
  `ProductNumber` int(10) unsigned NOT NULL,
  `Quantity` smallint(5) unsigned DEFAULT NULL,
  `ClientIp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AddressId` int(10) unsigned DEFAULT NULL,
  `CustomerId` int(10) unsigned DEFAULT NULL,
  `Date` datetime DEFAULT current_timestamp(),
  `Status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'Sipariş Alındı',
  KEY `IXFK_OrderDetail_Address` (`AddressId`),
  KEY `IXFK_OrderDetail_Customer` (`CustomerId`),
  KEY `IXFK_OrderDetail_Order` (`OrderNumber`),
  KEY `IXFK_OrderDetail_Product` (`ProductNumber`),
  CONSTRAINT `FK_OrderDetail_Address` FOREIGN KEY (`AddressId`) REFERENCES `Address` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_OrderDetail_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_OrderDetail_Product` FOREIGN KEY (`ProductNumber`) REFERENCES `Product` (`ProductNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `Price` int(11) DEFAULT NULL,
  `ProductNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Quantity` int(10) unsigned DEFAULT NULL,
  `CategoryId` smallint(5) unsigned DEFAULT NULL,
  `Picture` blob DEFAULT NULL,
  `Brand` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ProductNumber`),
  KEY `IXFK_Product_Category` (`CategoryId`),
  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`CategoryId`) REFERENCES `Category` (`CategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductComments`
--

DROP TABLE IF EXISTS `ProductComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductComments` (
  `ProductNumber` int(10) unsigned DEFAULT NULL,
  `PersonId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Star` tinyint(4) DEFAULT NULL,
  `Title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Context` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IXFK_ProductComments_Product` (`ProductNumber`),
  CONSTRAINT `FK_ProductComments_Product` FOREIGN KEY (`ProductNumber`) REFERENCES `Product` (`ProductNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductComments`
--

LOCK TABLES `ProductComments` WRITE;
/*!40000 ALTER TABLE `ProductComments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductComments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 22:37:02
