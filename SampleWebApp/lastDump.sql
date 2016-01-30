-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: technothonx
-- ------------------------------------------------------
-- Server version	5.7.6-m16-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `EMPID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `EMAILID` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (43,'ty','try2kk.g@kgfn','yr'),(123,'qwerty','34567','hjk'),(345,'wdef','fsadf@asdfb.codj','wer'),(444,'ytr','sassff@we.com','ddd'),(12011,'admin','admin@persi.com','hello'),(12012,'admin','admin@persistent.co.in','world'),(12345678,'qwertyuiop','vbj@dgf.com','jdhf');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_report`
--

DROP TABLE IF EXISTS `daily_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report` (
  `report_id` int(10) NOT NULL,
  `team_name` varchar(60) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `db` int(11) DEFAULT NULL,
  `coding` int(11) DEFAULT NULL,
  `design_desc` varchar(255) DEFAULT NULL,
  `db_desc` varchar(255) DEFAULT NULL,
  `coding_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_report`
--

LOCK TABLES `daily_report` WRITE;
/*!40000 ALTER TABLE `daily_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `event_id` int(20) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `datetime` timestamp(5) NULL DEFAULT NULL,
  `teams` varchar(500) DEFAULT NULL,
  `deadline` timestamp(5) NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `team_name` varchar(60) NOT NULL,
  `grades` varchar(45) DEFAULT NULL,
  `milestone_id` varchar(45) DEFAULT NULL,
  `feedback` varchar(400) DEFAULT NULL,
  KEY `team_name1_idx` (`team_name`),
  CONSTRAINT `team_name1` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestone`
--

DROP TABLE IF EXISTS `milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestone` (
  `MILESTONEID` int(11) NOT NULL DEFAULT '1',
  `STARTDATETIME` datetime DEFAULT NULL,
  `ENDDATETIME` datetime DEFAULT NULL,
  `NOOFDAYS` int(11) DEFAULT NULL,
  `MILESTONNAME` varchar(300) DEFAULT NULL,
  `MILESTONENAME` varchar(255) DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`MILESTONEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestone`
--

LOCK TABLES `milestone` WRITE;
/*!40000 ALTER TABLE `milestone` DISABLE KEYS */;
INSERT INTO `milestone` VALUES (1,'2016-01-20 00:00:00','2016-01-21 00:00:00',0,NULL,NULL,NULL,NULL),(2,'2016-01-22 00:00:00','2016-01-22 00:00:00',1,NULL,'b',NULL,NULL),(3,'2016-01-23 00:00:00','2016-01-26 00:00:00',3,NULL,'c',NULL,NULL),(4,'2016-01-27 00:00:00','2016-01-28 00:00:00',2,NULL,'d',NULL,NULL);
/*!40000 ALTER TABLE `milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `emp_id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mailID` varchar(50) DEFAULT NULL,
  `team_name` varchar(60) DEFAULT NULL,
  `batch` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `teamID` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `team_name_idx` (`team_name`),
  CONSTRAINT `team_name` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (20123,'Pratima purohit','pratima@persistent.com',NULL,'opel','455667899',0),(20147,'Amey Kulkarni','amey@persistent.com',NULL,'topaz','147852963',0),(20369,'Ankit K.','ankit@persistent.com',NULL,'topaz','456789123',0),(20435,'Vivek Swami','vivek@persistent.com',NULL,'opel','123456789',0),(20436,'Sachin Patil ','sachin@persistent.com',NULL,'opel','789456123',1),(20455,'arjun mohan','arjun@persistent.com',NULL,'opel','46783210',1),(20456,'Priti Baldawa','priti@persistent.com',NULL,'ruby','123789445',0),(20466,'soumya','soumya@persistent.com',NULL,'ruby','65645342',1),(20477,'Pragati ','pragati@persistent.com','#include','ruby','783423498',2),(20487,'Sanjana putta','sanjana@persistent.com',NULL,'topaz','357890428',1),(20488,'Rachana Sapre','rachana@persistent.com','#include','ruby','356456459',2),(20499,'Vidhya Enchilwar','vidhya@persistent.com',NULL,'topaz','23456789',1),(20510,'Shobit Saxena','shobit@persistent.com','#include','opel','23456789',2),(20511,'saad patel','saad_patel@persistent.com','#include','opel','35546764',2),(20512,'sanchit ','sanchit@persistent.com',NULL,'opel','8776565',0),(20567,'Pratika sharma','pratika@persistent.com',NULL,'ruby','457890532',1),(20789,'Deepali Sagar','deepali@persistent.com','#include','topaz','456741963',2);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_statement`
--

DROP TABLE IF EXISTS `problem_statement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_statement` (
  `team_name` varchar(50) NOT NULL,
  `statement` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_statement`
--

LOCK TABLES `problem_statement` WRITE;
/*!40000 ALTER TABLE `problem_statement` DISABLE KEYS */;
INSERT INTO `problem_statement` VALUES ('hello world','asad','dsad','REJECTED');
/*!40000 ALTER TABLE `problem_statement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `ROWID` varchar(255) DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `ENDDATE` datetime DEFAULT NULL,
  `NOOFMILESTONES` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (NULL,NULL,NULL,'2016-01-20 00:00:00','2016-01-24 00:00:00',3),(NULL,NULL,NULL,'2016-01-20 00:00:00','2016-01-22 00:00:00',2),('2016-01-24','2016-01-26',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,0),('2016-01-20','2016-01-25',NULL,NULL,NULL,0),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,2),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,2),('2016-01-20','2016-01-25',NULL,NULL,NULL,2),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,2),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-22',NULL,NULL,NULL,4),('2016-01-20','2016-01-22',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,2),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,5),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,3),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-29',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-25',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4),('2016-01-20','2016-01-30',NULL,NULL,NULL,4);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_reqments`
--

DROP TABLE IF EXISTS `soft_reqments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_reqments` (
  `softreq_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `team_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`softreq_id`),
  KEY `team_name2_idx` (`team_name`),
  CONSTRAINT `team_name2` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_reqments`
--

LOCK TABLES `soft_reqments` WRITE;
/*!40000 ALTER TABLE `soft_reqments` DISABLE KEYS */;
INSERT INTO `soft_reqments` VALUES (1,'dfdd','6','ds','hello world');
/*!40000 ALTER TABLE `soft_reqments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `team_name` varchar(60) NOT NULL,
  `member_count` int(10) DEFAULT NULL,
  `teamleader_id` int(10) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `team_id` int(10) DEFAULT NULL,
  `LEADER_ID` int(11) DEFAULT NULL,
  `MEMBERCOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('#include',NULL,NULL,'world',2,20512,0),('hello world',NULL,NULL,'world',1,20512,0);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamlogin`
--

DROP TABLE IF EXISTS `teamlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamlogin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamlogin`
--

LOCK TABLES `teamlogin` WRITE;
/*!40000 ALTER TABLE `teamlogin` DISABLE KEYS */;
INSERT INTO `teamlogin` VALUES ('include','1234');
/*!40000 ALTER TABLE `teamlogin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-30 19:12:42
