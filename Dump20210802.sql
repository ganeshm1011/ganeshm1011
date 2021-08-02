-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_department` (
  `DEPARTMENT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (1,'Accounts'),(2,'Finance'),(3,'Human Resource'),(4,'Information Technology'),(5,'Marketing'),(6,'Operations');
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee`
--

DROP TABLE IF EXISTS `tbl_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employee` (
  `EMPLOYEE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_NAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DEPARTMENT_ID` int(11) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `DATE_OF_JOIN` date NOT NULL,
  `SALARY` int(11) NOT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee`
--

LOCK TABLES `tbl_employee` WRITE;
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` VALUES (1,'Emery Satterfield',5,'1994-02-26','2014-01-12',118989),(2,'Dr. Frederic Ratke',3,'1988-04-13','2004-02-03',115641),(3,'Prof. Mozelle Lang',3,'1982-06-05','2014-04-28',56777),(4,'Hayden Medhurst',1,'1985-06-13','2020-03-28',75406),(5,'Jarrett Bayer',1,'1995-01-16','2012-02-04',44427),(6,'Dr. Kurtis Hegmann',5,'1998-06-30','2009-10-19',57333),(7,'Prof. Jeffrey Jast',4,'1985-08-26','2006-02-12',90783),(8,'Clemmie Hintz',1,'1997-04-17','2005-02-15',104752),(9,'Dr. Alexandre Johnston',3,'1999-03-18','2017-06-18',38874),(10,'Prof. Albert Reynolds',4,'1990-04-26','2004-06-20',75173),(11,'Margarete Will DVM',5,'1991-09-25','2002-10-21',95395),(12,'Shaun Barrows',6,'1993-07-06','2019-01-07',33538),(13,'Miss Esperanza Casper II',4,'1995-02-28','2014-07-26',70157),(14,'Aisha Carroll',4,'1999-11-12','2000-09-06',55045),(15,'Leo Streich',3,'1999-12-11','2006-02-16',92509),(16,'Zelda Torp',2,'2000-05-13','2005-01-28',70104),(17,'Dr. Deshaun O\'Hara',3,'1983-07-25','2014-03-13',97474),(18,'Henry Mann',6,'1987-01-20','2019-02-12',16797),(19,'Noemy Johns',2,'2000-08-03','2005-08-20',27035),(20,'Winfield Gerlach',6,'1999-05-20','2004-12-26',80712),(21,'Prof. Elijah Rice V',4,'1986-05-08','2014-07-20',100881),(22,'Dale Pollich PhD',1,'1980-04-25','2002-06-11',95360),(23,'Freddy Wunsch',5,'1988-05-22','2000-02-10',103908),(24,'Isabel Konopelski',4,'1991-07-15','2004-05-02',17577),(25,'Nichole Bechtelar',2,'1992-09-24','2004-08-01',90984),(26,'Harley Osinski',2,'1993-05-30','2000-07-21',116977),(27,'Eliza Cummerata I',5,'1983-05-31','2004-08-01',48199),(28,'Mrs. Juliana Robel',3,'1999-09-11','2015-05-06',112888),(29,'Dr. Sallie Abbott IV',3,'1999-06-23','2014-05-14',12489),(30,'Michaela Hoeger',4,'1996-07-19','2019-12-24',82405),(31,'Prof. Ethelyn Koepp',5,'1981-07-25','2016-11-28',98644),(32,'Ronny Stehr',6,'1983-08-14','2010-10-31',30797),(33,'Carolyn Hudson',5,'1987-12-14','2017-01-07',15239),(34,'Aileen Reinger Sr.',4,'1989-06-11','2017-07-30',45239),(35,'Myrtie Ward',5,'1983-12-21','2005-01-13',108446),(36,'Prof. Iva Braun PhD',1,'1982-04-11','2016-05-24',57755),(37,'Bernie Graham',2,'1994-03-13','2006-05-16',68019),(38,'Ruby Hermann MD',2,'1981-05-27','2016-07-13',63869),(39,'Dr. Stacey Hansen',1,'1984-05-28','2012-02-13',100838),(40,'Emie Ruecker',3,'1989-09-24','2007-06-30',94841),(41,'Fernando Bernhard',3,'1985-09-28','2013-12-28',31815),(42,'Emil Botsford',2,'1983-12-07','2007-07-23',102359),(43,'Dr. Mortimer Welch',3,'1984-05-20','2013-10-06',84077),(44,'Prof. Rylan Jones DVM',3,'1999-03-03','2011-02-07',80793),(45,'Rosanna Batz DDS',5,'1994-01-25','2016-02-21',26643),(46,'Leann Gulgowski',1,'1994-02-20','2012-08-28',102630),(47,'Francisco Ward',1,'2000-07-17','2006-06-04',51497),(48,'Diego Armstrong',6,'1982-11-26','2014-06-25',19674),(49,'Madalyn Jacobs',6,'1995-04-10','2011-09-02',118539),(50,'Dr. Audra West III',2,'1989-03-01','2004-07-17',37228),(51,'Kallie Lubowitz',4,'1984-05-29','2019-09-23',86704),(52,'Enrico McClure',6,'1991-12-16','2009-12-27',88534),(53,'Nyah Abshire',2,'1990-09-29','2006-12-27',25818),(54,'Bret Schamberger',1,'1990-02-01','2019-08-12',38667),(55,'Crawford Emard Sr.',2,'1991-11-03','2016-01-31',73693),(56,'Ms. Christine Hand II',1,'1996-04-07','2015-05-10',93782),(57,'Marco Moore',5,'1988-09-30','2003-03-02',109322),(58,'Melisa Senger',2,'1981-02-21','2008-07-27',85493),(59,'Garnet Collins',3,'1990-11-23','2002-07-27',45583),(60,'Crystel Schinner',3,'1994-06-16','2019-01-08',81184),(61,'Adelle Stehr',1,'1991-07-12','2006-04-27',49835),(62,'Otis Nitzsche',5,'1995-09-16','2011-03-03',102487),(63,'Kane Donnelly',4,'1988-01-12','2002-10-10',20372),(64,'Krystal Olson',6,'1992-07-10','2017-11-14',97696),(65,'Ophelia Jast',3,'1993-07-21','2002-05-08',99639),(66,'Malcolm Howe III',4,'1981-04-08','2011-08-18',57082),(67,'Rosa Hermiston',4,'1986-03-11','2003-08-22',13725),(68,'Scottie Schamberger',5,'1995-12-31','2015-04-14',63276),(69,'Prof. Richie O\'Connell',5,'2000-07-20','2017-08-14',56344),(70,'Dr. Nakia Rice',1,'1998-03-03','2010-09-04',110488),(71,'Darien Nikolaus',6,'1982-07-31','2008-05-20',30598),(72,'Miss Mittie Funk',6,'1989-11-28','2004-11-23',16459),(73,'Eddie Spencer Sr.',4,'1994-11-01','2000-11-29',69019),(74,'Betsy Reichert',5,'1990-12-15','2018-12-10',80812),(75,'Iva Satterfield III',5,'1994-04-11','2008-05-11',55749),(76,'Ms. Ila Kautzer I',3,'1983-02-10','2009-06-19',48539),(77,'Melisa Kohler',3,'1993-10-30','2006-06-03',24330),(78,'Margaretta Vandervort',6,'1986-05-10','2003-04-28',44362),(79,'Gloria Deckow V',2,'1984-02-18','2004-12-03',35637),(80,'Golda Littel DVM',3,'1984-05-01','2005-09-21',108107),(81,'Brendon Little',2,'1986-01-19','2019-05-02',45877),(82,'Felicita Will MD',3,'1995-03-29','2013-06-08',118287),(83,'Katelyn Bartell',2,'1984-03-10','2012-07-11',45170),(84,'Justine Braun',2,'1983-08-02','2013-12-06',98745),(85,'Treva Cummings DVM',6,'1988-11-28','2003-12-05',20703),(86,'Davin Labadie',2,'1994-01-21','2016-09-26',16748),(87,'Nicholas Schuppe IV',1,'2000-02-03','2012-01-18',108117),(88,'Mr. Fabian Durgan PhD',6,'1980-11-02','2016-04-16',83704),(89,'Myrl Howell',4,'1980-02-15','2000-07-02',113820),(90,'Amir Ledner',1,'1984-10-31','2012-10-13',69555),(91,'Kaelyn Cummerata',5,'1995-01-27','2013-04-17',32205),(92,'Edwardo Kerluke',5,'1981-03-08','2015-12-29',71272),(93,'Jessika Ritchie',6,'2000-03-26','2007-10-11',57950),(94,'Emmet Gibson',6,'1993-08-27','2018-09-08',95369),(95,'Camila Bruen',2,'1981-04-29','2005-02-01',46268),(96,'Dominique O\'Hara',1,'1987-05-03','2006-07-20',50845),(97,'Elisa Gusikowski',6,'2000-03-31','2009-05-16',53398),(98,'Janie Mohr I',3,'1997-12-20','2002-11-21',60611),(99,'Marlon Ward',2,'1998-10-18','2000-08-22',97425),(100,'Reid Farrell Jr.',5,'1988-01-17','2000-12-26',47003);
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-02 17:36:18
