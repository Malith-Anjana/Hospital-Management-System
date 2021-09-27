-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hms
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `docid` int NOT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  CONSTRAINT `fk_doctor` FOREIGN KEY (`docid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nurseid` int NOT NULL,
  `rank` varchar(45) DEFAULT NULL,
  `wordid` int NOT NULL,
  PRIMARY KEY (`nurseid`),
  KEY `fk_nurse_idx` (`nurseid`),
  KEY `fk_nurse1_idx` (`wordid`),
  CONSTRAINT `fk_nurse` FOREIGN KEY (`nurseid`) REFERENCES `user` (`uid`),
  CONSTRAINT `fk_nurse1` FOREIGN KEY (`wordid`) REFERENCES `ward` (`wardnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patientid` int NOT NULL,
  `specialnote` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patientid`),
  CONSTRAINT `fk_patient` FOREIGN KEY (`patientid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patienttreatmentsperiod`
--

DROP TABLE IF EXISTS `patienttreatmentsperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patienttreatmentsperiod` (
  `periodid` int NOT NULL AUTO_INCREMENT,
  `patientid` int DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`periodid`),
  KEY `fk_period_idx` (`patientid`),
  CONSTRAINT `fk_period` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patienttreatmentsperiod`
--

LOCK TABLES `patienttreatmentsperiod` WRITE;
/*!40000 ALTER TABLE `patienttreatmentsperiod` DISABLE KEYS */;
/*!40000 ALTER TABLE `patienttreatmentsperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priscribe`
--

DROP TABLE IF EXISTS `priscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priscribe` (
  `docid` int NOT NULL,
  `patientid` int NOT NULL,
  `priscription` int NOT NULL,
  PRIMARY KEY (`docid`,`patientid`,`priscription`),
  KEY `fk_priscride2_idx` (`patientid`),
  KEY `fk_priscride3_idx` (`priscription`),
  CONSTRAINT `fk_priscride1` FOREIGN KEY (`docid`) REFERENCES `doctor` (`docid`),
  CONSTRAINT `fk_priscride2` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`),
  CONSTRAINT `fk_priscride3` FOREIGN KEY (`priscription`) REFERENCES `priscription` (`priscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priscribe`
--

LOCK TABLES `priscribe` WRITE;
/*!40000 ALTER TABLE `priscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `priscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priscription`
--

DROP TABLE IF EXISTS `priscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priscription` (
  `priscriptionid` int NOT NULL AUTO_INCREMENT,
  `details` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`priscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priscription`
--

LOCK TABLES `priscription` WRITE;
/*!40000 ALTER TABLE `priscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `priscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomid` int NOT NULL AUTO_INCREMENT,
  `availability` varchar(45) DEFAULT NULL,
  `wordid` int DEFAULT NULL,
  `patientid` int DEFAULT NULL,
  PRIMARY KEY (`roomid`),
  KEY `fk_room1_idx` (`wordid`),
  KEY `fk_room2_idx` (`patientid`),
  CONSTRAINT `fk_room1` FOREIGN KEY (`wordid`) REFERENCES `ward` (`wardnumber`),
  CONSTRAINT `fk_room2` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialnote`
--

DROP TABLE IF EXISTS `specialnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialnote` (
  `noteid` int NOT NULL AUTO_INCREMENT,
  `discription` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialnote`
--

LOCK TABLES `specialnote` WRITE;
/*!40000 ALTER TABLE `specialnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialnote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spnotewrite`
--

DROP TABLE IF EXISTS `spnotewrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spnotewrite` (
  `spnoteid` int NOT NULL,
  `patientid` int NOT NULL,
  `nurseid` int NOT NULL,
  PRIMARY KEY (`spnoteid`,`patientid`,`nurseid`),
  KEY `fk_spnote1_idx` (`patientid`),
  KEY `fk_spnote2_idx` (`nurseid`),
  CONSTRAINT `fk_spnote1` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`),
  CONSTRAINT `fk_spnote2` FOREIGN KEY (`nurseid`) REFERENCES `nurse` (`nurseid`),
  CONSTRAINT `fk_spnote3` FOREIGN KEY (`spnoteid`) REFERENCES `specialnote` (`noteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spnotewrite`
--

LOCK TABLES `spnotewrite` WRITE;
/*!40000 ALTER TABLE `spnotewrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `spnotewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'akalanka','123','akalanka','sakalasooriya','doctor','no 14','1998-11-09'),(3,'malith','1234','malith','anjana','nurse','no 16','1997-01-09'),(4,'kavindi','12345','kavindi','fernandu','rep','no 23/b','1998-07-11'),(5,'yasiru','123456','yasiru','sajith','admin','no 23/2','1997-10-12');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ward` (
  `wardnumber` int NOT NULL AUTO_INCREMENT,
  `discription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wardnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 19:19:46
