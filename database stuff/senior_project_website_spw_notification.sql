CREATE DATABASE  IF NOT EXISTS `senior_project_website` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `senior_project_website`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: senior_project_website
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `spw_notification`
--

DROP TABLE IF EXISTS `spw_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spw_notification` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` bigint(20) unsigned NOT NULL,
  `to_project` bigint(20) unsigned DEFAULT NULL,
  `to_user` bigint(20) unsigned DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `is_read_flag` bit(1) NOT NULL,
  `type` enum('join','leave','join_approved','join_rejected','member_added','professor_approval','professor_approval_approved','professor_approval_rejected','change_project','invite_project','invite_user') NOT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spw_notification_ibfk_1` (`from`),
  KEY `spw_notification_ibfk_2` (`to_project`),
  KEY `spw_notification_ibfk_3` (`to_user`),
  CONSTRAINT `spw_notification_ibfk_1` FOREIGN KEY (`from`) REFERENCES `spw_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `spw_notification_ibfk_3` FOREIGN KEY (`to_user`) REFERENCES `spw_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-06 13:18:08
