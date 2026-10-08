CREATE DATABASE  IF NOT EXISTS `ev_db` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ev_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ev_db
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Temporary view structure for view `company_vehicles_eligibility_per_county`
--

DROP TABLE IF EXISTS `company_vehicles_eligibility_per_county`;
/*!50001 DROP VIEW IF EXISTS `company_vehicles_eligibility_per_county`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_vehicles_eligibility_per_county` AS SELECT 
 1 AS `DOL_vehicle_id`,
 1 AS `Make`,
 1 AS `CAFV_eligibility`,
 1 AS `county`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `electric_vehicle_based_on_utility_company`
--

DROP TABLE IF EXISTS `electric_vehicle_based_on_utility_company`;
/*!50001 DROP VIEW IF EXISTS `electric_vehicle_based_on_utility_company`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `electric_vehicle_based_on_utility_company` AS SELECT 
 1 AS `Electric_Utility`,
 1 AS `Electric_Range`,
 1 AS `Electric_Vehicle_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ev_range_over_100`
--

DROP TABLE IF EXISTS `ev_range_over_100`;
/*!50001 DROP VIEW IF EXISTS `ev_range_over_100`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ev_range_over_100` AS SELECT 
 1 AS `DOL_Vehicle_ID`,
 1 AS `Electric_Range`,
 1 AS `Electric_Vehicle_Type`,
 1 AS `Make`,
 1 AS `CAFV_Eligibility`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fuel_eligibility`
--

DROP TABLE IF EXISTS `fuel_eligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel_eligibility` (
  `CAFV_ID` int NOT NULL,
  `CAFV_Eligibility` varchar(45) NOT NULL,
  PRIMARY KEY (`CAFV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_eligibility`
--

LOCK TABLES `fuel_eligibility` WRITE;
/*!40000 ALTER TABLE `fuel_eligibility` DISABLE KEYS */;
INSERT INTO `fuel_eligibility` VALUES (1,'Not eligible due to low battery range'),(2,'Clean Alternative Fuel Vehicle Eligible');
/*!40000 ALTER TABLE `fuel_eligibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_ID` int NOT NULL,
  `County` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Legislative_District` int NOT NULL,
  `Postal_Code` int NOT NULL,
  `State` varchar(2) NOT NULL,
  `Vehicle_Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'King','Seattle',36,98103,'WA','POINT (-122.35436 47.67596)'),(2,'King','Seattle',34,98106,'WA','POINT (-122.35186 47.54286)'),(3,'Snohomish','Bothell',1,98012,'WA','POINT (-122.21061 47.83448)'),(4,'King','Bellevue',41,98027,'WA','POINT (-122.03439 47.5301)'),(5,'Whatcom','Bellingham',40,98226,'WA','POINT (-122.49756 48.7999)'),(6,'Jefferson','Port Hadlock',24,98339,'WA','POINT (-122.75878 48.03591)'),(7,'King','Redmond',45,98052,'WA','POINT (-122.13158 47.67858)'),(8,'King','Issaquah',41,98027,'WA','POINT (-122.03439 47.5301)'),(9,'Pierce','Bonney Lake',31,98391,'WA','POINT (-122.17144 47.19175)'),(10,'King','Seattle',11,98108,'WA','POINT (-122.30346 47.55379)'),(11,'Clark','Camas',18,98607,'WA','POINT (-122.40199 45.58694)'),(12,'Thurston','Tumwater',22,98501,'WA','POINT (-122.89166 47.03956)'),(13,'Mason','Shelton',35,98584,'WA','POINT (-123.10565 47.21248)'),(14,'King','Auburn',31,98092,'WA','POINT (-122.17663 47.32326)'),(15,'Pierce','Gig Harbor',26,98335,'WA','POINT (-122.58009 47.328)'),(16,'King','Seattle',46,98115,'WA','POINT (-122.31765 47.70013)'),(17,'Kitsap','Bremerton',35,98312,'WA','POINT (-122.66122 47.56573)'),(18,'Pierce','Lakewood',28,98499,'WA','POINT (-122.51495 47.16195)'),(19,'King','Kent',47,98031,'WA','POINT (-122.17743 47.41185)'),(20,'King','Shoreline',32,98177,'WA','POINT (-122.36498 47.72238)'),(21,'Snohomish','Bothell',44,98012,'WA','POINT (-122.21061 47.83448)'),(22,'Thurston','Tumwater',22,98512,'WA','POINT (-122.92057 47.0031)'),(23,'King','Seattle',46,98115,'WA','POINT (-122.31765 47.70013)'),(24,'King','Des Moines',33,98198,'WA','POINT (-122.29592 47.40139)'),(25,'King','Federal Way',30,98023,'WA','POINT (-122.35206 47.30297)'),(26,'King','Seattle',43,98112,'WA','POINT (-122.30716 47.62687)'),(27,'King','Sammamish',45,98074,'WA','POINT (-122.02054 47.60326)'),(28,'King','Woodinville',45,98072,'WA','POINT (-122.15545 47.75448)'),(29,'King','Preston',5,98027,'WA','POINT (-122.03439 47.5301)'),(30,'Pierce','Tacoma',29,98445,'WA','POINT (-122.41894 47.15806)'),(31,'Clallam','Port Angeles',24,98362,'WA','POINT (-123.4313 48.11872)'),(32,'Kitsap','Silverdale',23,98383,'WA','POINT (-122.69275 47.65171)'),(33,'King','Kirkland',48,98033,'WA','POINT (-122.2066 47.67887)'),(34,'King','Seattle',36,98119,'WA','POINT (-122.3684 47.64586)'),(35,'Snohomish','Woodinville',1,98072,'WA','POINT (-122.15545 47.75448)'),(36,'Clark','Vancouver',49,98665,'WA','POINT (-122.64443 45.67871)'),(37,'King','Maple Valley',5,98038,'WA','POINT (-122.04526 47.39394)'),(38,'King','Bellevue',48,98008,'WA','POINT (-122.11867 47.63131)'),(39,'King','Renton',11,98058,'WA','POINT (-122.08747 47.4466)'),(40,'Pierce','Edgewood',31,98371,'WA','POINT (-122.29537 47.19044)'),(41,'King','Redmond',45,98053,'WA','POINT (-122.03287 47.68555)'),(42,'Snohomish','Lynnwood',21,98087,'WA','POINT (-122.27981 47.85727)'),(43,'King','Seatac',33,98188,'WA','POINT (-122.28879 47.44538)'),(44,'King','Bellevue',48,98007,'WA','POINT (-122.12053 47.61334)'),(45,'King','Seattle',34,98116,'WA','POINT (-122.41067 47.57894)'),(46,'Whitman','Rosalia',9,99170,'WA','POINT (-117.37047 47.23428)'),(47,'Snohomish','Mill Creek',44,98012,'WA','POINT (-122.21061 47.83448)'),(48,'San Juan','Eastsound',40,98245,'WA','POINT (-122.91109 48.69389)'),(49,'King','Redmond',45,98052,'WA','POINT (-122.13158 47.67858)'),(50,'King','Shoreline',32,98133,'WA','POINT (-122.3503 47.71868)');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_teslas_in_king_county`
--

DROP TABLE IF EXISTS `new_teslas_in_king_county`;
/*!50001 DROP VIEW IF EXISTS `new_teslas_in_king_county`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_teslas_in_king_county` AS SELECT 
 1 AS `County`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Postal_Code`,
 1 AS `Model_Year`,
 1 AS `Make`,
 1 AS `Model`,
 1 AS `Electric_Vehicle_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `num_cars_avg_range_seattle`
--

DROP TABLE IF EXISTS `num_cars_avg_range_seattle`;
/*!50001 DROP VIEW IF EXISTS `num_cars_avg_range_seattle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `num_cars_avg_range_seattle` AS SELECT 
 1 AS `Electric_Vehicle_Type`,
 1 AS `city`,
 1 AS `total_cars`,
 1 AS `avg_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `utility`
--

DROP TABLE IF EXISTS `utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility` (
  `Utility_ID` int NOT NULL,
  `Electric_Utility` varchar(200) NOT NULL,
  PRIMARY KEY (`Utility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility`
--

LOCK TABLES `utility` WRITE;
/*!40000 ALTER TABLE `utility` DISABLE KEYS */;
INSERT INTO `utility` VALUES (1,'BONNEVILLE POWER ADMINISTRATION||AVISTA CORP||INLAND POWER & LIGHT COMPANY'),(2,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||ELMHURST MUTUAL POWER & LIGHT CO|PENINSULA LIGHT COMPANY'),(3,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||PENINSULA LIGHT COMPANY'),(4,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA - (WA)||PUD NO 3 OF MASON COUNTY'),(5,'BONNEVILLE POWER ADMINISTRATION||ORCAS POWER & LIGHT COOP'),(6,'BONNEVILLE POWER ADMINISTRATION||PUD 1 OF SNOHOMISH COUNTY'),(7,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF CLALLAM COUNTY'),(8,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF CLARK COUNTY - (WA)'),(9,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF GRAYS HARBOR COUNTY'),(10,'BONNEVILLE POWER ADMINISTRATION||PUD NO 1 OF WAHKIAKUM COUNTY'),(11,'BONNEVILLE POWER ADMINISTRATION||PUGET SOUND ENERGY INC||PUD NO 1 OF JEFFERSON COUNTY'),(12,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(13,'PUGET SOUND ENERGY INC'),(14,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(15,'PUGET SOUND ENERGY INC||PUD NO 1 OF WHATCOM COUNTY');
/*!40000 ALTER TABLE `utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_linking`
--

DROP TABLE IF EXISTS `utility_linking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_linking` (
  `DOL_Vehicle_ID` int NOT NULL,
  `Utility_ID` int NOT NULL,
  PRIMARY KEY (`DOL_Vehicle_ID`,`Utility_ID`),
  KEY `fk_Vehicle Details_has_Utility_Utility1_idx` (`Utility_ID`),
  KEY `fk_Vehicle Details_has_Utility_Vehicle Details_idx` (`DOL_Vehicle_ID`),
  CONSTRAINT `fk_Vehicle Details_has_Utility_Utility1` FOREIGN KEY (`Utility_ID`) REFERENCES `utility` (`Utility_ID`),
  CONSTRAINT `fk_Vehicle Details_has_Utility_Vehicle Details` FOREIGN KEY (`DOL_Vehicle_ID`) REFERENCES `vehicle_details` (`DOL_Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_linking`
--

LOCK TABLES `utility_linking` WRITE;
/*!40000 ALTER TABLE `utility_linking` DISABLE KEYS */;
INSERT INTO `utility_linking` VALUES (219122242,1),(211050990,2),(132699738,3),(183005392,3),(163493676,4),(214845480,5),(228303057,7),(183494594,8),(272329263,8),(132382197,11),(119454058,12),(119898341,12),(156981296,12),(219577767,12),(227605276,12),(232895323,12),(307700564,12),(319784342,12),(345352899,12),(478925947,12),(1843054,13),(112621162,13),(142179747,13),(169364688,13),(177857186,13),(186146614,13),(226386058,13),(332738255,13),(348222101,13),(4686790,14),(109833272,14),(116712487,14),(121867378,14),(125875627,14),(155402908,14),(156947157,14),(181162817,14),(181595095,14),(187499791,14),(199198968,14),(219317073,14),(227234024,14),(231472867,14),(232222168,14),(303962662,14),(348840369,14),(441648868,14),(475291603,14),(476065684,14),(208663360,15);
/*!40000 ALTER TABLE `utility_linking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_details`
--

DROP TABLE IF EXISTS `vehicle_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_details` (
  `DOL_Vehicle_ID` int NOT NULL,
  `Base_MSRP` int DEFAULT NULL,
  `Census_Tract` bigint NOT NULL,
  `Electric_Range` int NOT NULL,
  `Electric_Vehicle_Type` varchar(40) NOT NULL,
  `Specification_ID` int NOT NULL,
  `Maker_ID` int NOT NULL,
  `Location_ID` int NOT NULL,
  `CAFV_ID` int NOT NULL,
  PRIMARY KEY (`DOL_Vehicle_ID`),
  KEY `fk_Vehicle Details_Vehicle Specifications1_idx` (`Specification_ID`),
  KEY `fk_Vehicle Details_Vehicle Maker1_idx` (`Maker_ID`),
  KEY `fk_Vehicle Details_Location1_idx` (`Location_ID`),
  KEY `fk_Vehicle Details_Fuel Eligibility1_idx` (`CAFV_ID`),
  CONSTRAINT `fk_Vehicle Details_Fuel Eligibility1` FOREIGN KEY (`CAFV_ID`) REFERENCES `fuel_eligibility` (`CAFV_ID`),
  CONSTRAINT `fk_Vehicle Details_Location1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`),
  CONSTRAINT `fk_Vehicle Details_Vehicle Maker1` FOREIGN KEY (`Maker_ID`) REFERENCES `vehicle_maker` (`Maker_ID`),
  CONSTRAINT `fk_Vehicle Details_Vehicle Specifications1` FOREIGN KEY (`Specification_ID`) REFERENCES `vehicle_specifications` (`Specification_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_details`
--

LOCK TABLES `vehicle_details` WRITE;
/*!40000 ALTER TABLE `vehicle_details` DISABLE KEYS */;
INSERT INTO `vehicle_details` VALUES (1843054,0,53035091206,293,'Battery Electric Vehicle (BEV)',32,5,32,2),(4686790,0,53033023201,266,'Battery Electric Vehicle (BEV)',44,5,44,2),(109833272,0,53033025008,47,'Plug-in Hybrid Electric Vehicle (PHEV)',4,3,4,2),(112621162,0,53067010801,238,'Battery Electric Vehicle (BEV)',12,1,12,2),(116712487,0,53053940009,220,'Battery Electric Vehicle (BEV)',40,5,40,2),(119454058,0,53033003602,215,'Battery Electric Vehicle (BEV)',16,5,16,2),(119898341,0,53033009701,53,'Plug-in Hybrid Electric Vehicle (PHEV)',45,1,45,2),(121867378,0,53033032225,291,'Battery Electric Vehicle (BEV)',27,5,27,2),(125875627,0,53033023403,291,'Battery Electric Vehicle (BEV)',38,5,38,2),(132382197,0,53031950302,75,'Battery Electric Vehicle (BEV)',6,4,6,2),(132699738,0,53053071901,19,'Plug-in Hybrid Electric Vehicle (PHEV)',18,10,18,1),(142179747,0,53061052005,222,'Battery Electric Vehicle (BEV)',47,11,47,2),(155402908,0,53033029603,19,'Plug-in Hybrid Electric Vehicle (PHEV)',19,10,19,1),(156947157,0,53033030312,25,'Plug-in Hybrid Electric Vehicle (PHEV)',25,6,25,1),(156981296,0,53033011300,53,'Plug-in Hybrid Electric Vehicle (PHEV)',2,1,2,2),(163493676,0,53045961102,84,'Battery Electric Vehicle (BEV)',13,4,13,2),(169364688,0,53061052009,192,'Battery Electric Vehicle (BEV)',3,2,3,2),(177857186,0,53061051804,84,'Battery Electric Vehicle (BEV)',42,4,42,2),(181162817,0,53033032011,215,'Battery Electric Vehicle (BEV)',37,5,37,2),(181595095,0,53033032311,84,'Battery Electric Vehicle (BEV)',28,4,28,2),(183005392,0,53053072406,13,'Plug-in Hybrid Electric Vehicle (PHEV)',15,9,15,1),(183494594,0,53011040605,58,'Battery Electric Vehicle (BEV)',11,7,11,2),(186146614,0,53061052007,25,'Plug-in Hybrid Electric Vehicle (PHEV)',21,6,21,1),(187499791,0,53033032323,215,'Battery Electric Vehicle (BEV)',7,5,7,2),(199198968,0,53033028402,19,'Plug-in Hybrid Electric Vehicle (PHEV)',43,10,43,1),(208663360,0,53073000804,151,'Battery Electric Vehicle (BEV)',5,4,5,2),(211050990,0,53053071408,30,'Plug-in Hybrid Electric Vehicle (PHEV)',30,9,30,2),(214845480,0,53055960101,151,'Battery Electric Vehicle (BEV)',48,4,48,2),(219122242,0,53075000900,215,'Battery Electric Vehicle (BEV)',46,5,46,2),(219317073,0,53053070209,25,'Plug-in Hybrid Electric Vehicle (PHEV)',9,6,9,1),(219577767,0,53033006900,13,'Plug-in Hybrid Electric Vehicle (PHEV)',34,9,34,1),(226386058,0,53035092000,75,'Battery Electric Vehicle (BEV)',17,4,17,2),(227234024,0,53033032321,210,'Battery Electric Vehicle (BEV)',49,5,49,2),(227605276,0,53033010001,73,'Battery Electric Vehicle (BEV)',10,4,10,2),(228303057,0,53009001500,38,'Plug-in Hybrid Electric Vehicle (PHEV)',31,1,31,2),(231472867,0,53033025006,210,'Battery Electric Vehicle (BEV)',8,5,8,2),(232222168,0,53033025702,53,'Plug-in Hybrid Electric Vehicle (PHEV)',39,1,39,2),(232895323,0,53033020800,6,'Plug-in Hybrid Electric Vehicle (PHEV)',50,6,50,1),(272329263,0,53011041008,215,'Battery Electric Vehicle (BEV)',36,5,36,2),(303962662,0,53033022702,215,'Battery Electric Vehicle (BEV)',33,5,33,2),(307700564,0,53033007800,220,'Battery Electric Vehicle (BEV)',26,5,26,2),(319784342,0,53033003900,75,'Battery Electric Vehicle (BEV)',23,4,23,2),(332738255,0,53061051912,220,'Battery Electric Vehicle (BEV)',35,5,35,2),(345352899,0,53033020900,220,'Battery Electric Vehicle (BEV)',20,5,20,2),(348222101,0,53067011822,53,'Plug-in Hybrid Electric Vehicle (PHEV)',22,1,22,2),(348840369,0,53033030003,19,'Plug-in Hybrid Electric Vehicle (PHEV)',24,10,24,1),(441648868,0,53033032328,215,'Battery Electric Vehicle (BEV)',41,5,41,2),(475291603,0,53033031000,83,'Battery Electric Vehicle (BEV)',14,8,14,2),(476065684,0,53033032221,215,'Battery Electric Vehicle (BEV)',29,5,29,2),(478925947,0,53033002900,238,'Battery Electric Vehicle (BEV)',1,1,1,2);
/*!40000 ALTER TABLE `vehicle_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_maker`
--

DROP TABLE IF EXISTS `vehicle_maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_maker` (
  `Maker_ID` int NOT NULL,
  `Make` varchar(20) NOT NULL,
  PRIMARY KEY (`Maker_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_maker`
--

LOCK TABLES `vehicle_maker` WRITE;
/*!40000 ALTER TABLE `vehicle_maker` DISABLE KEYS */;
INSERT INTO `vehicle_maker` VALUES (1,'CHEVROLET'),(2,'PORSCHE'),(3,'HONDA'),(4,'NISSAN'),(5,'TESLA'),(6,'TOYOTA'),(7,'SMART'),(8,'VOLKSWAGEN'),(9,'BMW'),(10,'FORD'),(11,'AUDI'),(12,'LAND ROVER'),(13,'JEEP'),(14,'KIA'),(15,'VOLVO');
/*!40000 ALTER TABLE `vehicle_maker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_specifications`
--

DROP TABLE IF EXISTS `vehicle_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_specifications` (
  `Specification_ID` int NOT NULL,
  `Vehicle_Identification_Number` varchar(11) NOT NULL,
  `Model_Year` int NOT NULL,
  `Model` varchar(30) NOT NULL,
  PRIMARY KEY (`Specification_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_specifications`
--

LOCK TABLES `vehicle_specifications` WRITE;
/*!40000 ALTER TABLE `vehicle_specifications` DISABLE KEYS */;
INSERT INTO `vehicle_specifications` VALUES (1,'1G1FY6S01K',2019,'BOLT EV'),(2,'1G1RB6S5XH',2017,'VOLT'),(3,'WP0AC2Y13L',2020,'TAYCAN'),(4,'JHMZC5F34J',2018,'CLARITY'),(5,'1N4AZ1CP2J',2018,'LEAF'),(6,'1N4AZ0CP7D',2013,'LEAF'),(7,'5YJ3E1EA7J',2018,'MODEL 3'),(8,'5YJSA1E27H',2017,'MODEL S'),(9,'JTDKAMFP1M',2021,'PRIUS PRIME'),(10,'JN1AZ0CPXB',2011,'LEAF'),(11,'WMEFJ9BA8J',2018,'EQ FORTWO'),(12,'1G1FW6S07J',2018,'BOLT EV'),(13,'1N4AZ0CP9F',2015,'LEAF'),(14,'WVWPP7AU1G',2016,'E-GOLF'),(15,'5UXKT0C57J',2018,'X5'),(16,'5YJ3E1EA5J',2018,'MODEL 3'),(17,'1N4AZ0CP5D',2013,'LEAF'),(18,'3FA6P0SU8G',2016,'FUSION'),(19,'3FA6P0PU6D',2013,'FUSION'),(20,'5YJ3E1EB1K',2019,'MODEL 3'),(21,'JTDKARFP9K',2019,'PRIUS PRIME'),(22,'1G1RA6S52H',2017,'VOLT'),(23,'1N4AZ0CP9D',2013,'LEAF'),(24,'1FADP5CU0E',2014,'C-MAX'),(25,'JTDKAMFP9M',2021,'PRIUS PRIME'),(26,'5YJ3E1EB7K',2019,'MODEL 3'),(27,'5YJYGDEE0L',2020,'MODEL Y'),(28,'1N4AZ0CP0F',2015,'LEAF'),(29,'5YJ3E1EB8J',2018,'MODEL 3'),(30,'5UXTA6C01N',2022,'X5'),(31,'1G1RF6E48E',2014,'VOLT'),(32,'5YJXCAE29L',2020,'MODEL X'),(33,'5YJ3E1EA9J',2018,'MODEL 3'),(34,'5UXKT0C50J',2018,'X5'),(35,'5YJ3E1EA4K',2019,'MODEL 3'),(36,'5YJ3E1EB2J',2018,'MODEL 3'),(37,'5YJ3E1EB7J',2018,'MODEL 3'),(38,'5YJYGDEE4L',2020,'MODEL Y'),(39,'1G1RC6S55G',2016,'VOLT'),(40,'5YJ3E1EB7K',2019,'MODEL 3'),(41,'5YJ3E1EB4J',2018,'MODEL 3'),(42,'1N4AZ0CP5F',2015,'LEAF'),(43,'3FA6P0PU4G',2016,'FUSION'),(44,'5YJ3E1EAXL',2020,'MODEL 3'),(45,'1G1RB6S59H',2017,'VOLT'),(46,'5YJ3E1EBXJ',2018,'MODEL 3'),(47,'WA1AAAGEXM',2021,'E-TRON'),(48,'1N4AZ1CP6J',2018,'LEAF'),(49,'5YJSA1E15H',2017,'MODEL S'),(50,'JTDKN3DP5D',2013,'PRIUS PLUG-IN');
/*!40000 ALTER TABLE `vehicle_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `company_vehicles_eligibility_per_county`
--

/*!50001 DROP VIEW IF EXISTS `company_vehicles_eligibility_per_county`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_vehicles_eligibility_per_county` AS select `vehicle_details`.`DOL_Vehicle_ID` AS `DOL_vehicle_id`,`vehicle_maker`.`Make` AS `Make`,`fuel_eligibility`.`CAFV_Eligibility` AS `CAFV_eligibility`,`location`.`County` AS `county` from (((`vehicle_details` join `fuel_eligibility` on((`vehicle_details`.`CAFV_ID` = `fuel_eligibility`.`CAFV_ID`))) join `location` on((`vehicle_details`.`Location_ID` = `location`.`Location_ID`))) join `vehicle_maker` on((`vehicle_details`.`Maker_ID` = `vehicle_maker`.`Maker_ID`))) where (`vehicle_details`.`CAFV_ID` = 2) order by `location`.`County` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `electric_vehicle_based_on_utility_company`
--

/*!50001 DROP VIEW IF EXISTS `electric_vehicle_based_on_utility_company`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `electric_vehicle_based_on_utility_company` AS select `sub`.`Electric_Utility` AS `Electric_Utility`,`sub`.`Electric_Range` AS `Electric_Range`,`sub`.`Electric_Vehicle_Type` AS `Electric_Vehicle_Type` from (select `utility`.`Electric_Utility` AS `Electric_Utility`,`vd`.`Electric_Range` AS `Electric_Range`,`vd`.`Electric_Vehicle_Type` AS `Electric_Vehicle_Type` from ((`vehicle_details` `vd` join `utility_linking` `ul` on((`vd`.`DOL_Vehicle_ID` = `ul`.`DOL_Vehicle_ID`))) join `utility` on((`ul`.`Utility_ID` = `utility`.`Utility_ID`))) group by `utility`.`Electric_Utility`,`vd`.`Census_Tract`,`vd`.`Electric_Range`,`vd`.`Electric_Vehicle_Type`) `sub` where (`sub`.`Electric_Utility` = 'PUGET SOUND ENERGY INC') order by `sub`.`Electric_Range` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ev_range_over_100`
--

/*!50001 DROP VIEW IF EXISTS `ev_range_over_100`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ev_range_over_100` AS select `vehicle_details`.`DOL_Vehicle_ID` AS `DOL_Vehicle_ID`,`vehicle_details`.`Electric_Range` AS `Electric_Range`,`vehicle_details`.`Electric_Vehicle_Type` AS `Electric_Vehicle_Type`,`vehicle_maker`.`Make` AS `Make`,`fuel_eligibility`.`CAFV_Eligibility` AS `CAFV_Eligibility` from ((`vehicle_details` join `vehicle_maker` on((`vehicle_details`.`Maker_ID` = `vehicle_maker`.`Maker_ID`))) join `fuel_eligibility` on((`vehicle_details`.`CAFV_ID` = `fuel_eligibility`.`CAFV_ID`))) group by `vehicle_details`.`DOL_Vehicle_ID`,`vehicle_details`.`Electric_Range`,`vehicle_details`.`Electric_Vehicle_Type`,`vehicle_maker`.`Make`,`fuel_eligibility`.`CAFV_Eligibility` having (`vehicle_details`.`Electric_Range` > 100) order by `vehicle_details`.`Electric_Range` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_teslas_in_king_county`
--

/*!50001 DROP VIEW IF EXISTS `new_teslas_in_king_county`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_teslas_in_king_county` AS select `l`.`County` AS `County`,`l`.`City` AS `City`,`l`.`State` AS `State`,`l`.`Postal_Code` AS `Postal_Code`,`vehicle_specifications`.`Model_Year` AS `Model_Year`,`vm`.`Make` AS `Make`,`vehicle_specifications`.`Model` AS `Model`,`vd`.`Electric_Vehicle_Type` AS `Electric_Vehicle_Type` from (((`vehicle_specifications` join `vehicle_details` `vd` on((`vehicle_specifications`.`Specification_ID` = `vd`.`Specification_ID`))) join `vehicle_maker` `vm` on((`vd`.`Maker_ID` = `vm`.`Maker_ID`))) join `location` `l` on((`vd`.`Location_ID` = `l`.`Location_ID`))) where ((`vm`.`Make` = 'TESLA') and (`l`.`County` = 'King') and (`vehicle_specifications`.`Model_Year` = (select max(`vehicle_specifications`.`Model_Year`) from (((`vehicle_specifications` join `vehicle_details` on((`vehicle_specifications`.`Specification_ID` = `vehicle_details`.`Specification_ID`))) join `vehicle_maker` on((`vehicle_details`.`Maker_ID` = `vehicle_maker`.`Maker_ID`))) join `location` on((`vehicle_details`.`Location_ID` = `location`.`Location_ID`))) where ((`vehicle_maker`.`Make` = 'TESLA') and (`location`.`County` = 'King'))))) group by `l`.`County`,`l`.`City`,`l`.`State`,`l`.`Postal_Code`,`vehicle_specifications`.`Model_Year`,`vm`.`Make`,`vehicle_specifications`.`Model`,`vd`.`Electric_Vehicle_Type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `num_cars_avg_range_seattle`
--

/*!50001 DROP VIEW IF EXISTS `num_cars_avg_range_seattle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `num_cars_avg_range_seattle` AS select `d`.`Electric_Vehicle_Type` AS `Electric_Vehicle_Type`,`l`.`City` AS `city`,count(distinct `vm`.`Maker_ID`) AS `total_cars`,avg(`d`.`Electric_Range`) AS `avg_range` from ((`vehicle_maker` `vm` join `vehicle_details` `d` on((`vm`.`Maker_ID` = `d`.`Maker_ID`))) join `location` `l` on((`d`.`Location_ID` = `l`.`Location_ID`))) where (`l`.`City` = 'Seattle') group by `d`.`Electric_Vehicle_Type`,`l`.`City` */;
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

-- Dump completed on 2024-05-13 14:18:12
