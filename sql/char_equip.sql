-- MySQL dump 10.13  Distrib 5.6.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dspdb
-- ------------------------------------------------------
-- Server version	5.6.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `char_equip`
--

DROP TABLE IF EXISTS `char_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_equip` (
  `charid` int(10) unsigned NOT NULL,
  `slotid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `equipslotid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `containerid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charid`,`equipslotid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=41;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_equip`
--

LOCK TABLES `char_equip` WRITE;
/*!40000 ALTER TABLE `char_equip` DISABLE KEYS */;
INSERT INTO `char_equip` VALUES (21828,1,5,0),(21828,2,6,0),(21828,3,7,0),(21828,4,8,0),(21829,1,5,0),(21829,2,6,0),(21829,3,7,0),(21829,4,8,0),(21832,1,5,0),(21831,1,5,0),(21830,25,0,0),(21829,27,0,0),(21831,3,7,0),(21831,32,8,0),(21831,9,13,0),(21831,8,14,0),(21831,12,11,0),(21832,4,8,0),(21832,9,14,0),(21832,10,13,0),(21832,2,6,0),(21832,3,7,0),(21832,15,0,0),(21831,26,0,0),(21830,3,7,0),(21830,4,8,0),(21830,8,14,0),(21830,10,13,0),(21830,2,6,0),(21830,1,5,0),(21833,1,5,0),(21829,8,13,0),(21829,6,14,0),(21831,2,6,0),(21833,4,8,0),(21833,3,7,0),(21833,2,6,0),(21833,20,0,0),(21828,44,0,0);
/*!40000 ALTER TABLE `char_equip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-05  8:56:02
