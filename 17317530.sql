CREATE DATABASE  IF NOT EXISTS `hostel_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `hostel_management`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: hostel_management
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `complaints` (
  `Complaint_ID` int(11) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL,
  `Comments` varchar(100) DEFAULT NULL,
  `Complaint_date` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Complaint_ID`),
  KEY `Student_ID` (`Student_ID`),
  CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_details` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (1,'Wi-Fi',17317530,'Wi-Fi not working properly','2018-11-25','Unresolved'),(2,'Washroom',15314530,'Hot Water Leakage','2018-11-28','Unresolved'),(3,'Electricity',11317530,'No electricity in room','2018-11-28','Resolved'),(4,'Kitchen Stove',10313030,'Stove not working','2018-11-28','Resolved'),(5,'Wi-Fi',10017530,'Low wifi speed','2018-11-28','Resolved');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Set_Date` BEFORE INSERT ON `complaints` FOR EACH ROW SET New.Complaint_Date = SYSDATE() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Set_Status` BEFORE INSERT ON `complaints` FOR EACH ROW SET New.Status = 'Unresolved' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `delete_backup`
--

DROP TABLE IF EXISTS `delete_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `delete_backup` (
  `Student_ID` int(11) DEFAULT NULL,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `Major` varchar(100) DEFAULT NULL,
  `Year` varchar(100) DEFAULT NULL,
  `Semester` int(11) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `Father_Name` varchar(100) DEFAULT NULL,
  `Mother_Name` varchar(100) DEFAULT NULL,
  `Father_Mob` int(11) DEFAULT NULL,
  `Mother_Mob` int(11) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `Creation_Date` date DEFAULT NULL,
  UNIQUE KEY `Student_ID` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delete_backup`
--

LOCK TABLES `delete_backup` WRITE;
/*!40000 ALTER TABLE `delete_backup` DISABLE KEYS */;
INSERT INTO `delete_backup` VALUES (10017000,'Jaimie','Clarke','Computers','Fourth',1,'1998-10-29','jaime@tcd.ie',122003894,'Conor Clarke','Soso Clarke',231033894,102311894,'Ireland','Munster','Cork','Glanmire','2018-11-28');
/*!40000 ALTER TABLE `delete_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `Complaint_ID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comments` varchar(100) DEFAULT NULL,
  KEY `Complaint_ID` (`Complaint_ID`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Complaint_ID`) REFERENCES `complaints` (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (3,4,'It is working perfect now'),(4,3,'Water leakage is fixed for now'),(5,5,'Wi-Fi speed is stable');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_details`
--

DROP TABLE IF EXISTS `hostel_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hostel_details` (
  `Hostel_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  PRIMARY KEY (`Hostel_ID`),
  UNIQUE KEY `Hostel_ID` (`Hostel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_details`
--

LOCK TABLES `hostel_details` WRITE;
/*!40000 ALTER TABLE `hostel_details` DISABLE KEYS */;
INSERT INTO `hostel_details` VALUES (1,'Trinity Halls','thall@tcd.ie',432678948,1000,'Ireland','Dublin','Dublin','Rathmines'),(2,'GoldSmith Halls','gsmit@tcd.ie',532648948,400,'Ireland','Dublin','Leinster','Westland Row'),(3,'Kavangh Court','kcourt@tcd.ie',634578948,600,'Ireland','Dublin','Leinster','Gardiner Street'),(4,'Binary Hub','bhub@tcd.ie',432673948,1200,'Ireland','Dublin','Leinster','Bonham Street'),(5,'Broad Stone','bstone@tcd.ie',122678948,500,'Ireland','Dublin','Leinster','Phibsborough');
/*!40000 ALTER TABLE `hostel_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_info`
--

DROP TABLE IF EXISTS `room_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_info` (
  `Hostel_ID` int(11) NOT NULL,
  `Room_No` int(11) NOT NULL,
  `Block_No` int(11) NOT NULL,
  `Occupancy` varchar(30) NOT NULL,
  PRIMARY KEY (`Hostel_ID`,`Room_No`,`Block_No`),
  CONSTRAINT `room_info_ibfk_1` FOREIGN KEY (`Hostel_ID`) REFERENCES `hostel_details` (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_info`
--

LOCK TABLES `room_info` WRITE;
/*!40000 ALTER TABLE `room_info` DISABLE KEYS */;
INSERT INTO `room_info` VALUES (1,101,1,'Vacant'),(1,401,4,'Occupied'),(1,601,6,'Occupied'),(1,701,7,'Vacant'),(2,102,1,'Occupied'),(3,201,2,'Occupied'),(4,301,3,'Occupied');
/*!40000 ALTER TABLE `room_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_details`
--

DROP TABLE IF EXISTS `staff_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff_details` (
  `Staff_ID` int(11) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `Hostel_ID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  UNIQUE KEY `Staff_ID` (`Staff_ID`),
  KEY `Hostel_ID` (`Hostel_ID`),
  CONSTRAINT `staff_details_ibfk_1` FOREIGN KEY (`Hostel_ID`) REFERENCES `hostel_details` (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_details`
--

LOCK TABLES `staff_details` WRITE;
/*!40000 ALTER TABLE `staff_details` DISABLE KEYS */;
INSERT INTO `staff_details` VALUES (1,'Molly','Satchz','Warden',1,'molly@tcd.ie',122003894,'Ireland','Leinster','Dublin','Phisborough'),(2,'Brian','Foro','Receptionist',1,'brian@tcd.ie',700003894,'Ireland','Munster','Cork','Port Street'),(3,'Jimmy','Satchz','Receptionist',1,'jimmy@tcd.ie',922003894,'Ireland','Leinster','Dublin','Grand Canal'),(4,'Hannah','Baker','Maintenance',1,'hannah@tcd.ie',765003894,'Ireland','Leinster','Tallaght','OConor Street'),(5,'James','Boruh','Maintenance',1,'james@tcd.ie',532003894,'Ireland','Leinster','Dublin','Dundalk'),(6,'Brian','Satchz','Warden',2,'briany@tcd.ie',122003893,'Ireland','Leinster','Dublin','Phisborough'),(7,'Donald','Blythe','Receptionist',2,'donald@tcd.ie',910003894,'Ireland','Munster','Cork','Port Street'),(8,'Henry','Satchz','Receptionist',2,'henry@tcd.ie',762003894,'Ireland','Leinster','Dublin','Grand Canal'),(9,'Mark','Baker','Maintenance',2,'mark@tcd.ie',125003894,'Ireland','Leinster','Tallaght','OConor Street'),(10,'Evan','Boruh','Maintenance',2,'evan@tcd.ie',122003894,'Ireland','Leinster','Dublin','Dundalk'),(11,'Randy','Mars','Warden',3,'randy@tcd.ie',1220038924,'Ireland','Leinster','Dublin','Tars Street'),(12,'Raymond','Foroh','Receptionist',3,'raymond@tcd.ie',900003894,'Ireland','Munster','Cork','Roux Street'),(13,'Michael','Satchz','Receptionist',3,'michael@tcd.ie',922333894,'Ireland','Leinster','Dublin','Grand Canal Dock'),(14,'Tim','Bane','Maintenance',3,'tim@tcd.ie',715003894,'Ireland','Leinster','Tallaght','OConor Street'),(15,'Jam','Boruh','Maintenance',3,'jam@tcd.ie',532203894,'Ireland','Leinster','Dublin','Dundalk'),(16,'Tony','Wane','Warden',4,'tony@tcd.ie',1320038924,'Ireland','Leinster','Dublin','Teresh Street'),(17,'Ram','Jane','Receptionist',4,'ram@tcd.ie',900003894,'Ireland','Munster','Cork','Roux Street'),(18,'Eric','Mers','Receptionist',4,'eric@tcd.ie',192333894,'Ireland','Leinster','Dublin','Grand Canal Dock'),(19,'Tony','Boon','Maintenance',4,'tonyb@tcd.ie',545003894,'Ireland','Leinster','Tallaght','OConor Street'),(20,'Hina','Boer','Maintenance',4,'hina@tcd.ie',232203894,'Ireland','Leinster','Dublin','Dundalk'),(21,'Peter','Parker','Warden',5,'peter@tcd.ie',1440038924,'Ireland','Leinster','Dublin','Tars Street'),(22,'Sansa','Foroh','Receptionist',5,'sansa@tcd.ie',900003834,'Ireland','Munster','Cork','Winster Street'),(23,'John','Satchz','Receptionist',5,'john@tcd.ie',922333894,'Ireland','Leinster','Dublin','Grand Canal Dock'),(24,'Tintin','Bane','Maintenance',5,'tintin@tcd.ie',715203894,'Ireland','Leinster','Tallaght','OConor Street'),(25,'Mary','Boruh','Maintenance',5,'mary@tcd.ie',532203894,'Ireland','Leinster','Dublin','Dundalk');
/*!40000 ALTER TABLE `staff_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_details` (
  `Student_ID` int(11) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Major` varchar(100) DEFAULT NULL,
  `Year` varchar(100) NOT NULL,
  `Semester` int(11) NOT NULL,
  `DoB` date DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Father_Name` varchar(100) NOT NULL,
  `Mother_Name` varchar(100) NOT NULL,
  `Father_Mob` int(11) NOT NULL,
  `Mother_Mob` int(11) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  PRIMARY KEY (`Student_ID`),
  UNIQUE KEY `Student_ID` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (10017530,'Jaimie','Clarke','Computers','Fourth',1,'1998-10-29','jaime@tcd.ie',122003894,'Conor Clarke','Soso Clarke',231033894,102311894,'Ireland','Munster','Cork','Glanmire'),(10313030,'Alice','Walsh','History','Fourth',1,'1999-10-29','alice@tcd.ie',122003894,'Henry Walsh','Sussy Walsh',567333894,102311894,'Ireland','Leinster','Naas','Henry Street'),(11317530,'Susy','Jean','Physics','First',2,'1998-10-21','susy@tcd.ie',199003894,'Sam Jean','Alex Jean',231003894,2311894,'Ireland','Leinster','Dublin','Rathmines'),(15314530,'Billy','Smith','Computers','Fourth',2,'1995-01-22','smith@tcd.ie',100103894,'John Smith','Shiny Smith',972003894,112322894,'United Kingdom','Oxfordshire','Oxford','Port Street'),(17317530,'Aditya','Vishnu','Computers','Fourth',1,'1996-10-29','adll@tcd.ie',122003894,'Sanjiv Vishnu','Seema Vishnu',232333894,982311894,'Ireland','Leinster','Dublin','Rathmines');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BACKUP_DATA` BEFORE DELETE ON `student_details` FOR EACH ROW BEGIN  
INSERT INTO DELETE_Backup VALUES(OLD.Student_ID, OLD.FIRST_NAME, OLD.LAST_NAME, OLD.Major, OLD.Year, OLD.Semester, OLD.DoB, OLD.EMAIL, OLD.Mobile, OLD.Father_Name, OLD.Mother_Name, OLD.Father_Mob, OLD.Mother_Mob, OLD.Country, OLD.State, OLD.City, OLD.Street, sysdate());  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `student_room`
--

DROP TABLE IF EXISTS `student_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_room` (
  `Room_No` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  PRIMARY KEY (`Room_No`,`Student_ID`),
  KEY `Student_ID` (`Student_ID`),
  CONSTRAINT `student_room_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_details` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_room`
--

LOCK TABLES `student_room` WRITE;
/*!40000 ALTER TABLE `student_room` DISABLE KEYS */;
INSERT INTO `student_room` VALUES (601,10017530),(201,10313030),(301,11317530),(401,15314530),(102,17317530);
/*!40000 ALTER TABLE `student_room` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Set_Occupany` AFTER INSERT ON `student_room` FOR EACH ROW UPDATE Room_Info r
	SET r.Occupancy = 'Occupied'
    where r.Room_No = NEW.Room_No */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Set_Occupany_Vacant` AFTER DELETE ON `student_room` FOR EACH ROW UPDATE Room_Info r
	SET r.Occupancy = 'Vacant'
    where r.Room_No = OLD.Room_No */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `view_resolved_complaints`
--

DROP TABLE IF EXISTS `view_resolved_complaints`;
/*!50001 DROP VIEW IF EXISTS `view_resolved_complaints`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_resolved_complaints` AS SELECT 
 1 AS `complaint_ID`,
 1 AS `Category of Complaint`,
 1 AS `Complaint Date`,
 1 AS `Student ID`,
 1 AS `Room Number`,
 1 AS `Feedback Rating`,
 1 AS `Feedback Comments`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'hostel_management'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `deletion` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `deletion` ON SCHEDULE EVERY 1 DAY STARTS '2018-11-28 10:28:16' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Clears out sessions table each day.' DO BEGIN
        DELETE FROM delete_backup WHERE (CUR_DATE()-D_DATE)>31;
      END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'hostel_management'
--
/*!50003 DROP PROCEDURE IF EXISTS `CheckComplaintDays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckComplaintDays`(in TEMPid INTEGER)
BEGIN
	
	SELECT 
		(curdate()-Complaints.complaint_date)
	FROM 
		Complaints
	WHERE 
		Complaints.Complaint_ID = TEMPid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckComplaintID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckComplaintID`(in TEMPid INTEGER)
BEGIN
	SELECT 
		Complaints.Complaint_ID,
        Complaints.Category,
        Complaints.Comments,
        Complaints.Complaint_date
	FROM 
		Complaints
	WHERE 
		Complaints.Complaint_ID = TEMPid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `emergency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emergency`(IN r_no INTEGER)
BEGIN
DECLARE done INT DEFAULT FALSE;

DECLARE id_temp integer;
DECLARE fname_temp varchar(100);
DECLARE lname_temp varchar(100);
DECLARE faname_temp varchar(100);
DECLARE mname_temp varchar(100);
DECLARE famob_temp integer;
DECLARE mmob_temp integer;

DECLARE  c1 cursor FOR select Student_ID, First_Name, Last_Name, Father_Name, Mother_Name, Father_Mob, Mother_Mob from student_details where STUDENT_ID=r_no;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	open c1;
  read_loop: LOOP
		fetch c1 into id_temp,fname_temp,lname_temp,faname_temp,mname_temp,famob_temp,mmob_temp;
SELECT 
    id_temp AS 'Student ID',
    fname_temp AS 'First Name',
    lname_temp AS 'Last Name',
    faname_temp AS 'Fathers Name',
    mname_temp AS 'Mothers Name',
    famob_temp AS 'Father Mobile Number',
    mmob_temp AS 'Mother Mobile Number';
		  IF done THEN
      LEAVE read_loop;
    END IF;

END LOOP;

  CLOSE c1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_resolved_complaints`
--

/*!50001 DROP VIEW IF EXISTS `view_resolved_complaints`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_resolved_complaints` AS select `complaints`.`Complaint_ID` AS `complaint_ID`,`complaints`.`Category` AS `Category of Complaint`,`complaints`.`Complaint_date` AS `Complaint Date`,`complaints`.`Student_ID` AS `Student ID`,`student_room`.`Room_No` AS `Room Number`,`feedback`.`Rating` AS `Feedback Rating`,`feedback`.`Comments` AS `Feedback Comments` from ((`complaints` join `student_room`) join `feedback`) where ((`complaints`.`Complaint_ID` = `feedback`.`Complaint_ID`) and (`complaints`.`Student_ID` = `student_room`.`Student_ID`)) */;
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

-- Dump completed on 2018-11-28 11:26:49
