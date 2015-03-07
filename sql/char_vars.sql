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
-- Table structure for table `char_vars`
--

DROP TABLE IF EXISTS `char_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_vars` (
  `charid` int(10) unsigned NOT NULL,
  `varname` varchar(30) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`charid`,`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_vars`
--

LOCK TABLES `char_vars` WRITE;
/*!40000 ALTER TABLE `char_vars` DISABLE KEYS */;
INSERT INTO `char_vars` VALUES (21828,'ConfluxMask[Konschtat]',255),(21828,'ConfluxMask[Tahrongi]',255),(21828,'ConfluxMask[LaTheine]',255),(21828,'ConfluxMask[Attohwa]',511),(21828,'ConfluxMask[Misareaux]',511),(21828,'ConfluxMask[Vunkerl]',511),(21828,'ConfluxMask[Altepa]',255),(21828,'ConfluxMask[Uleguerand]',255),(21828,'ConfluxMask[Grauberg]',255),(21828,'MoghouseExplication',1),(21828,'Dynamis_Status',14),(21828,'DynamisID',63255),(21828,'dynaWaitxDay',1424137593),(21828,'GodMode',1),(21828,'HpTeleportMask1b',516),(21828,'Abyssea_Time',8280),(21828,'Abysseatime',-460),(21828,'HpTeleportMask3b',256),(21828,'bcnm_instanceid',1),(21828,'trade_itemid',1553),(21828,'trade_bcnmid',107),(21828,'characterLimbusKey',923436),(21828,'LimbusID',1299),(21829,'ConfluxMask[Konschtat]',255),(21829,'ConfluxMask[Tahrongi]',255),(21829,'ConfluxMask[LaTheine]',255),(21829,'ConfluxMask[Attohwa]',511),(21829,'ConfluxMask[Misareaux]',511),(21829,'ConfluxMask[Vunkerl]',511),(21829,'ConfluxMask[Altepa]',255),(21829,'ConfluxMask[Uleguerand]',255),(21829,'ConfluxMask[Grauberg]',255),(21829,'fov_numkilled1',3),(21830,'ConfluxMask[Konschtat]',255),(21830,'ConfluxMask[Tahrongi]',255),(21830,'ConfluxMask[LaTheine]',255),(21830,'ConfluxMask[Attohwa]',511),(21830,'ConfluxMask[Misareaux]',511),(21830,'ConfluxMask[Vunkerl]',511),(21830,'ConfluxMask[Altepa]',255),(21830,'ConfluxMask[Uleguerand]',255),(21830,'ConfluxMask[Grauberg]',255),(21831,'HpTeleportMask4b',176),(21831,'ConfluxMask[Uleguerand]',255),(21831,'ConfluxMask[Altepa]',255),(21831,'ConfluxMask[Vunkerl]',511),(21831,'ConfluxMask[Misareaux]',511),(21831,'ConfluxMask[Attohwa]',511),(21831,'ConfluxMask[LaTheine]',255),(21831,'ConfluxMask[Tahrongi]',255),(21831,'ConfluxMask[Konschtat]',255),(21831,'ConfluxMask[Grauberg]',255),(21831,'HpTeleportMask1a',4088),(21832,'ConfluxMask[Konschtat]',255),(21832,'ConfluxMask[Tahrongi]',255),(21832,'ConfluxMask[LaTheine]',255),(21832,'ConfluxMask[Attohwa]',511),(21832,'ConfluxMask[Misareaux]',511),(21832,'ConfluxMask[Vunkerl]',511),(21832,'ConfluxMask[Altepa]',255),(21832,'ConfluxMask[Uleguerand]',255),(21832,'ConfluxMask[Grauberg]',255),(21832,'HpTeleportMask1a',4094),(21829,'HpTeleportMask1b',64000),(21832,'HpTeleportMask4b',176),(21829,'HpTeleportMask4b',48),(21830,'HpTeleportMask1b',65024),(21831,'HpTeleportMask1b',65024),(21832,'HpTeleportMask1b',65024),(21831,'fov_numneeded2',2),(21832,'fov_repeat',1),(21832,'fov_numneeded1',5),(21830,'fov_numneeded2',2),(21831,'fov_repeat',1),(21831,'fov_numneeded1',5),(21832,'fov_numneeded2',2),(21829,'fov_repeat',1),(21829,'fov_numneeded1',5),(21829,'fov_numneeded2',2),(21830,'fov_repeat',1),(21830,'fov_numneeded1',5),(21830,'fov_regimeid',80),(21831,'fov_regimeid',80),(21832,'fov_regimeid',80),(21829,'fov_regimeid',80),(21829,'CONQUEST_RING_TIMER',1424703600),(21830,'CONQUEST_RING_TIMER',1424703600),(21833,'ConfluxMask[Konschtat]',255),(21833,'ConfluxMask[Tahrongi]',255),(21833,'ConfluxMask[LaTheine]',255),(21833,'ConfluxMask[Attohwa]',511),(21833,'ConfluxMask[Misareaux]',511),(21833,'ConfluxMask[Vunkerl]',511),(21833,'ConfluxMask[Altepa]',255),(21833,'ConfluxMask[Uleguerand]',255),(21833,'ConfluxMask[Grauberg]',255),(21833,'GodMode',1),(21830,'HpTeleportMask4b',32),(21830,'fov_numkilled1',3),(21831,'fov_numkilled1',3),(21832,'fov_numkilled1',3);
/*!40000 ALTER TABLE `char_vars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-07 11:01:51
