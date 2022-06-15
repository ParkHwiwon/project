-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: busancommunity
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblboard`
--

DROP TABLE IF EXISTS `tblboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblboard` (
  `board_seq` int NOT NULL AUTO_INCREMENT,
  `board_writer` varchar(20) NOT NULL,
  `board_title` varchar(50) NOT NULL,
  `board_content` text,
  `board_pos` smallint unsigned DEFAULT NULL,
  `board_regdate` date DEFAULT NULL,
  `board_ip` varchar(15) DEFAULT NULL,
  `board_count` smallint unsigned DEFAULT NULL,
  `board_filename` varchar(45) DEFAULT NULL,
  `board_filesize` int DEFAULT NULL,
  PRIMARY KEY (`board_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblboard`
--

LOCK TABLES `tblboard` WRITE;
/*!40000 ALTER TABLE `tblboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomment`
--

DROP TABLE IF EXISTS `tblcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomment` (
  `comment_seq` int NOT NULL AUTO_INCREMENT,
  `comment_writer` varchar(20) NOT NULL,
  `comment_content` text,
  `comment_regdate` date NOT NULL,
  `comment_ref` smallint DEFAULT NULL,
  PRIMARY KEY (`comment_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomment`
--

LOCK TABLES `tblcomment` WRITE;
/*!40000 ALTER TABLE `tblcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhelp`
--

DROP TABLE IF EXISTS `tblhelp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhelp` (
  `help_seq` int NOT NULL,
  `help_content` text,
  `help_account` text,
  `help_policy` text,
  `help_etc` text,
  PRIMARY KEY (`help_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhelp`
--

LOCK TABLES `tblhelp` WRITE;
/*!40000 ALTER TABLE `tblhelp` DISABLE KEYS */;
INSERT INTO `tblhelp` VALUES (1,'test1','test2','test3','test4'),(2,'아이언맨','닥터스트레인지','토르','캡틴 아메리카');
/*!40000 ALTER TABLE `tblhelp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmember`
--

DROP TABLE IF EXISTS `tblmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmember` (
  `id` char(30) NOT NULL,
  `pw` char(20) NOT NULL,
  `mobile` char(11) NOT NULL,
  `regdate` timestamp NOT NULL,
  `pwresetdate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmember`
--

LOCK TABLES `tblmember` WRITE;
/*!40000 ALTER TABLE `tblmember` DISABLE KEYS */;
INSERT INTO `tblmember` VALUES ('test','1234','01022222222','2022-06-09 05:54:13',NULL),('test11','1234','sdfdsaf','2022-06-13 07:10:03',NULL),('test12','1234','safsafagfa','2022-06-13 07:10:58',NULL),('test13','1234','dfdfafs','2022-06-13 07:11:47',NULL),('test15','1234','sdfsfsd','2022-06-13 07:20:16',NULL),('test16','1234','0000000000','2022-06-13 07:21:55',NULL),('test18','1234','01013132424','2022-06-13 07:24:44',NULL),('test2','1234','01013131313','2022-06-13 05:35:56',NULL),('test3','1234','ddfds','2022-06-13 05:47:46',NULL),('test4','1234','dfsfdsg','2022-06-13 05:48:55',NULL),('test5','1234','01122','2022-06-13 06:59:02',NULL),('test6','1234','1214142343','2022-06-13 07:06:42',NULL),('test7','1234','01012341333','2022-06-13 07:09:20',NULL),('test8','1234','01013241234','2022-06-13 07:09:46',NULL);
/*!40000 ALTER TABLE `tblmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnotice` (
  `notice_seq` int NOT NULL AUTO_INCREMENT,
  `notice_content` text NOT NULL,
  PRIMARY KEY (`notice_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotice`
--

LOCK TABLES `tblnotice` WRITE;
/*!40000 ALTER TABLE `tblnotice` DISABLE KEYS */;
INSERT INTO `tblnotice` VALUES (1,'니 얼굴 윤겔라'),(2,'니 얼굴 후딘'),(3,'니 얼굴 롱스톤'),(4,'니 얼굴 루주라');
/*!40000 ALTER TABLE `tblnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblphoto`
--

DROP TABLE IF EXISTS `tblphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblphoto` (
  `photo_seq` int NOT NULL AUTO_INCREMENT,
  `haeundae` varchar(45) DEFAULT NULL,
  `junggu` varchar(45) DEFAULT NULL,
  `youngdogu` varchar(45) DEFAULT NULL,
  `sahagu` varchar(45) DEFAULT NULL,
  `seogu` varchar(45) DEFAULT NULL,
  `busanjingu` varchar(45) DEFAULT NULL,
  `donggu` varchar(45) DEFAULT NULL,
  `dongraegu` varchar(45) DEFAULT NULL,
  `namgu` varchar(45) DEFAULT NULL,
  `bukgu` varchar(45) DEFAULT NULL,
  `geumjeonggu` varchar(45) DEFAULT NULL,
  `gangseogu` varchar(45) DEFAULT NULL,
  `yeonjegu` varchar(45) DEFAULT NULL,
  `suyeonggu` varchar(45) DEFAULT NULL,
  `sasanggu` varchar(45) DEFAULT NULL,
  `gijanggun` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`photo_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblphoto`
--

LOCK TABLES `tblphoto` WRITE;
/*!40000 ALTER TABLE `tblphoto` DISABLE KEYS */;
INSERT INTO `tblphoto` VALUES (1,'BusanCinemaCenter.jpg','Nampodong.jpg','DanubiTrain.jpg','DadaepoBeach.JPG','AmnamPark.jpg','AjinbongAzalea Colony.jpg','168Monorail.jpg','Busan3.1Independence Movement Monument.jpg','BusanharborBridge.jpg','Children\'sTrafficPark.jpg','Beomeosa.jpg','DaehangExperienceFishingVillage.jpg','BusanAdministrativeTown.jpg','Geumnyeonsan.jpg','Baekyangsan.jpg','DaleumsanNaturalRecreationalForest.jpg'),(2,'Haeundae3.jpg','YongdusanPark.jpeg','GamjiBeachWalk.jpg','DadaepoSunset Fountain.JPG','CheonmasanNuribaragiObservatory.jpg','BusanCitizensPark.jpg','ChaegmaluObservationDeck.jpg','Chungnyeolsa.jpg','DaeyeonArboretum.jpg','GupoDwarf.jpg','Geumjeongsan.jpg','DaejeoEcologicalPark.jpg','HyewonjeongsaTemple.jpg','GwangalliBeach.png','LuxuryStreetPark.jpg','DreamballPark.jpg'),(3,'Nurimaru3.jpg','InternationalMarket.jpeg','JeoryeongCoastalwalk.jpg','DadaepoSunset Fountain2.JPG','CheonmasanSculpturePark.jpg','Hwangnyeongsan Bongsudae.jpg','Chinatown.jpg','Dongrae Shellgun.jpg','Igidae.gif','GupoMarket.jpg','GeumjeongsanseongFortress.jpg','Gadeokdo.jpg','MahasaTemple.jpg','GwanganBridge.jpg','SamnakEcologicalPark.jpg','IlgwangBeach.jpg'),(4,'MoontanRoad.jpg','BiffPlaza.jpg','ShellMountExhibitionHallinDongsam-dong.jpg','EulsukdoMigratoryBirdPark.JPG','SongdoAutoCampingSite.jpg','JeonpoCafeStreet.jpg','ChosunNewsAgencyHistoryMuseum.jpg','GeumgangPark.jpg','MemorialMuseumOfForcedMobilization.jpg','Hwamyeong-Arboretum.jpg','HoeDongho.jpg','GeogaBridge.jpg','NationalArchives.jpg','MillakWaterfrontPark.jpg','SasangPark.jpg','JangansaValley.png'),(5,'Aquarium.png','JungangPark.jpg','Taejongdae.jpg','Hadan-dongCherryBlossomRoad.JPG','Songdobeach.jpg','streetOfYouth.jpg','CulturalPlatform.jpg','ParkCha-jeong\'s Birthplace.jpg','Oryukdo.jpg','Hwamyeong-Ecological-Park.jpg','lotusPond.jpg','Let\'sRunPark.jpg','Oncheoncheon.jpg','NamcheonCherryBlossomStreet.jpg','Seunghaksan.jpg','LotteWorld.jpg'),(6,'GwanganBridge2.jpg','BookstoreStreet.jpg','YeongdoBridge.jpg','JangnimPortBuneziaThemeStreet.JPG','SongdoYonggungCloudBridge.jpg','SeonamsaTemple.jpg','WebtoonIbagu-gil.jpg','WooJang-chun MemorialHall.jpg','UN-MemorialPark.gif','Legovillage.jpg','SporonePark.jpg','MacdoEcologicalPark.jpg','Yeonsan AncientTombs.jpg','SuyeongRiver.jpg','UnsusaTemple.jpg','Sohagdae.jpg');
/*!40000 ALTER TABLE `tblphoto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 11:22:03
