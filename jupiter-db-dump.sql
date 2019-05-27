-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: jupiter
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `additional_offering`
--

DROP TABLE IF EXISTS `additional_offering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_offering` (
  `Offering_id` int(11) NOT NULL AUTO_INCREMENT,
  `Offering_name` varchar(40) COLLATE utf8_bin NOT NULL,
  `Offering_desc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Offering_id`),
  UNIQUE KEY `XAK1Additional_offering` (`Offering_name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_offering`
--

LOCK TABLES `additional_offering` WRITE;
/*!40000 ALTER TABLE `additional_offering` DISABLE KEYS */;
INSERT INTO `additional_offering` VALUES (1,'Minutes',NULL),(2,'Internet',NULL),(3,'SMS',NULL),(4,'TV','Unlimmited traffic'),(5,'Antivirus',NULL),(6,'LitRes','1 book per month'),(7,'Megafon Press','1 magazine and 1 podcast per month'),(8,'Minutes for MegaFon',NULL),(9,'Internet on messengers','WhatsApp, Viber, Facebook Messenger, Snapchat'),(10,'Internet on sosial networks','Facebook, Instagram'),(11,'Minutes for MTS',NULL),(12,'Minutes for Beeline',NULL),(13,'Unlimited YouTube',NULL),(14,'Unlimited Vkontakte',NULL),(15,'Unlimited Instagram',NULL),(16,'Unlimited sosial networks','Facebook, Instagram, Vkontakte, WhatsApp, Viber'),(17,'Minutes for Tele2',NULL),(18,'Unlimited music','Yandex.music, Vkontakte, Zvooq'),(19,'Set-top box',NULL);
/*!40000 ALTER TABLE `additional_offering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adress` (
  `Adress_id` int(11) NOT NULL AUTO_INCREMENT,
  `Street` varchar(20) COLLATE utf8_bin NOT NULL,
  `Building` varchar(20) COLLATE utf8_bin NOT NULL,
  `City_id` int(11) NOT NULL,
  PRIMARY KEY (`Adress_id`),
  UNIQUE KEY `XAK1Adress` (`Building`,`City_id`,`Street`),
  KEY `XIE1Adress` (`City_id`),
  CONSTRAINT `R_8` FOREIGN KEY (`City_id`) REFERENCES `city` (`City_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (32,'Puchkova','10',117),(16,'Ivanovskaya','12',110),(25,'Mayskaya','12',114),(45,'Sportivnaya','12',123),(40,'Oleshina','120',120),(2,'Agregatnaya','15',102),(41,'Marata','15',123),(52,'Tolstogo','15',126),(8,'Lenina','156',105),(38,'Lebedeva','16',120),(46,'Reznaya','18',124),(53,'Polyanina','18',127),(47,'Pionerskaya','19',125),(54,'Belinskogo','19',128),(10,'Yuzhnaya','2',105),(30,'Kazanskaya','2',115),(51,'Tereshkina','21',126),(33,'Ogorodnaya','23',117),(17,'Mindyakskaya','24',110),(18,'Naberezhnaya','25',111),(50,'Mira','26',126),(28,'Novaya','3',115),(15,'Zapadnaya','30',109),(55,'Lenina','31',129),(9,'Dmitrova','35',105),(34,'Melkaya','4',117),(49,'Pushkina','4',126),(5,'Gvardeyskaya','45',104),(24,'Lugovaya','45',114),(43,'Vyborgskaya','46',123),(60,'Pervomayskaya','49',131),(11,'Solnechnaya','4a',108),(35,'Ozernaya','5',117),(19,'Zapadnaya','57',111),(1,'Lenina','5a',102),(12,'Tsvetochnaya','6',108),(31,'Gostinnaya','6',116),(56,'Tivasyana','64',129),(59,'Comunny','64',130),(6,'Gorkogo','65',104),(26,'Nizhnaya','65',114),(39,'Lenina','65',120),(4,'Belaya','65b',103),(36,'Teatralnaya','7',119),(57,'Shishka','70',130),(42,'Lenina','73',123),(14,'Zavodskaya','79',108),(23,'Krasnaya','8',112),(29,'Bunina','8',115),(44,'Shkolnaya','8',123),(48,'Polozova','8',126),(58,'Petrova','80',130),(3,'Begovaya','81',102),(20,'Kalinina','82',111),(22,'Lomakina','87',112),(13,'Abricosovaya','9',108),(37,'Pavlova','9',120),(21,'Konyarina','93',112),(27,'Verkhnyaya','94',115),(7,'Agregatnaya-2','98',105);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `City_id` int(11) NOT NULL AUTO_INCREMENT,
  `City_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `Region_id` int(11) NOT NULL,
  PRIMARY KEY (`City_id`),
  UNIQUE KEY `XAK1City` (`City_name`,`Region_id`),
  KEY `XIE1City` (`Region_id`),
  CONSTRAINT `R_6` FOREIGN KEY (`Region_id`) REFERENCES `region` (`Region_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (88,'Abashiri',31),(147,'Adana',51),(10,'Adelaide',4),(148,'Akdam',51),(156,'Akkus',54),(159,'Altınyayla',55),(153,'Anayazı',53),(25,'Angical',9),(150,'Ankara',52),(49,'Anqing',17),(26,'Araci',9),(136,'Ason',47),(97,'Awara',34),(157,'Aybastı',54),(84,'Bad Homburg',30),(55,'Baoshan',19),(27,'Barra',9),(76,'Berlin',26),(133,'Betanzos',46),(151,'Beynam',52),(158,'Bolaman',54),(28,'Bonfim',10),(43,'Brandon',15),(19,'Brasilia',7),(4,'Brisbane',2),(8,'Bunbury',3),(35,'Burnaby',12),(149,'Ceritler',51),(142,'Chamberi',49),(50,'Chuzhou',17),(145,'Corella',50),(16,'Cruzeiro do Sul',6),(138,'Cuenca',48),(152,'Culuk',52),(56,'Dali',19),(48,'Danzhou',16),(38,'Dartmouth',13),(106,'Derbent',37),(15,'Devonport',5),(128,'Dmitrov',44),(79,'Dresden',28),(146,'Elizondo',50),(81,'Erfurt',29),(144,'Estella',50),(85,'Frankfurt',30),(80,'Freital',28),(96,'Fukui‎',34),(89,'Furano',31),(124,'Gatchina',43),(11,'Gawler',4),(116,'Gelendzhik',40),(160,'Gemerek',55),(82,'Gera',29),(9,'Geraldton',3),(6,'Gladstone',2),(91,'Hachoioji',32),(46,'Haikou',16),(39,'Halifax',13),(77,'Hamburg',27),(51,'Hefei',17),(61,'Helsinki',21),(13,'Hobart',5),(113,'Innopolis',39),(29,'Iracema',10),(59,'Jingzhou',20),(68,'Joensuu',23),(71,'Kajaani',24),(120,'Kaliningrad‎',42),(118,'Kamyshin',41),(161,'Kangal',55),(86,'Kassel',30),(111,'Kazan‎',39),(73,'Kemi',25),(127,'Khimki‎',44),(32,'Kitchener',11),(95,'Kobe',33),(109,'Kondopoga',38),(107,'Kostek',37),(62,'Kotka',21),(114,'Krasnodar‎',40),(67,'Kuopio',23),(155,'Kuzeytepe',53),(93,'Kyoto',33),(140,'La Melgosa',48),(63,'Lappeenranta',21),(14,'Launceston',5),(78,'Leipzig',28),(137,'Lierganes',47),(57,'Lijiang',19),(141,'Madrid',49),(3,'Maitland',1),(105,'Makhachkala‎',37),(24,'Mendes',8),(41,'Montreal',14),(126,'Moscow',44),(112,'Naberezhnye Chelny‎',39),(103,'Neftekamsk',36),(2,'Newcastle',1),(129,'Nizhny Tagil‎',45),(139,'Nohales',48),(134,'Noia',46),(98,'Obama',34),(110,'Olonets',38),(94,'Osaka',33),(33,'Oshawa',11),(70,'Oulu',24),(30,'Pacaraima',10),(7,'Perth',3),(108,'Petrozavodsk',38),(40,'Quebec',14),(72,'Raahe',24),(69,'Rautalampi',23),(21,'Recanto das Emas',7),(143,'Retiro',49),(132,'Ribeira',46),(36,'Richmond',12),(17,'Rio Branco',6),(22,'Rio de Janeiro',8),(75,'Rovaniemi',25),(92,'Sagamihara',32),(101,'Sakata',35),(135,'Santander',47),(47,'Sanya',16),(87,'Sapporo',31),(23,'Sapucaia',8),(154,'Serinyol',53),(42,'Sherbrooke',14),(104,'Sibay',36),(115,'Sochi‎',40),(123,'St. Petersburg',43),(45,'Steinbach',15),(122,'Svetlogorsk',42),(1,'Sydney',1),(37,'Sydney',13),(20,'Taguatinga',7),(52,'Taichung',18),(54,'Tainan',18),(53,'Taipei',18),(64,'Tampere',22),(18,'Tarauaca',6),(44,'Thompson',15),(60,'Tianmen',20),(90,'Tokio',32),(74,'Tornio',25),(31,'Toronto',11),(5,'Townsville',2),(100,'Tsuruoka',35),(65,'Turku',22),(102,'Ufa‎',36),(119,'Uryupinsk',41),(66,'Vaasa',22),(34,'Vancouver',12),(131,'Verkhnyaya Pyshma',45),(117,'Volgograd‎',41),(125,'Vyborg‎',43),(83,'Weimar',29),(12,'Whyalla',4),(58,'Wuhan',20),(99,'Yamagata',35),(130,'Yekaterinburg‎ ',45),(121,'Zelenogradsk',42);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `Country_id` int(11) NOT NULL AUTO_INCREMENT,
  `Country_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Country_id`),
  UNIQUE KEY `XAK1Country` (`Country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Australia'),(2,'Brazil'),(3,'Canada'),(4,'China'),(5,'Finland'),(6,'Germany'),(7,'Japan'),(8,'Russia'),(9,'Spain'),(10,'Turkey');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey`
--

DROP TABLE IF EXISTS `journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journey` (
  `Journey_id` int(11) NOT NULL AUTO_INCREMENT,
  `Start_date` date NOT NULL,
  `End_date` date DEFAULT NULL,
  `Phone_number_id` int(11) NOT NULL,
  `Tariff_id` int(11) NOT NULL,
  `Old_tariff_id` int(11) NOT NULL,
  PRIMARY KEY (`Journey_id`),
  KEY `XIE1Journey` (`Tariff_id`),
  KEY `R_18` (`Phone_number_id`),
  CONSTRAINT `R_18` FOREIGN KEY (`Phone_number_id`) REFERENCES `number` (`Phone_number_id`) ON DELETE CASCADE,
  CONSTRAINT `R_21` FOREIGN KEY (`Tariff_id`) REFERENCES `tariff` (`Tariff_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey`
--

LOCK TABLES `journey` WRITE;
/*!40000 ALTER TABLE `journey` DISABLE KEYS */;
INSERT INTO `journey` VALUES (193,'2019-05-20','2019-05-20',67,23,14),(194,'2019-05-20','2019-05-22',68,112,90),(195,'2019-05-20','2019-05-20',69,48,87),(196,'2019-05-20','2019-05-20',70,66,3),(197,'2019-05-20','2019-05-20',69,9,48),(198,'2019-05-20','2019-05-20',69,51,9),(200,'2019-05-21','2019-05-21',70,109,66),(201,'2019-05-21','2019-05-21',70,87,109),(202,'2019-05-21','2019-05-21',73,15,34),(205,'2019-05-21','2019-05-21',70,5,87),(206,'2019-05-21','2019-05-21',70,19,5),(207,'2019-05-21','2019-05-21',75,32,5),(209,'2019-05-21','2019-05-21',70,98,19),(210,'2019-05-21','2019-05-21',76,50,95),(211,'2019-05-21','2019-05-21',77,70,23),(212,'2019-05-22','2019-05-22',78,53,1),(213,'2019-05-22','2019-05-22',79,29,56),(214,'2019-05-22',NULL,68,17,112),(215,'2019-05-24','2019-05-24',81,17,100),(216,'2019-05-24','2019-05-24',82,71,74);
/*!40000 ALTER TABLE `journey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey_task`
--

DROP TABLE IF EXISTS `journey_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journey_task` (
  `journey_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_start` date NOT NULL,
  `task_finish` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `journey_task1_journey_id_task_id_uindex` (`journey_id`,`task_id`),
  KEY `journey_task1_task_Task_id_fk` (`task_id`),
  CONSTRAINT `journey_task1_journey_Journey_id_fk` FOREIGN KEY (`journey_id`) REFERENCES `journey` (`Journey_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journey_task1_task_Task_id_fk` FOREIGN KEY (`task_id`) REFERENCES `task` (`Task_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey_task`
--

LOCK TABLES `journey_task` WRITE;
/*!40000 ALTER TABLE `journey_task` DISABLE KEYS */;
INSERT INTO `journey_task` VALUES (193,1,'2019-05-20','2019-05-20',606),(193,2,'2019-05-20','2019-05-20',607),(193,3,'2019-05-20','2019-05-20',608),(193,4,'2019-05-20','2019-05-20',609),(193,5,'2019-05-20','2019-05-20',610),(193,6,'2019-05-20','2019-05-20',611),(194,1,'2019-05-20','2019-05-20',612),(194,2,'2019-05-20','2019-05-22',613),(195,1,'2019-05-20','2019-05-20',614),(195,2,'2019-05-20','2019-05-20',615),(195,3,'2019-05-20','2019-05-20',616),(195,4,'2019-05-20','2019-05-20',617),(195,5,'2019-05-20','2019-05-20',618),(195,6,'2019-05-20','2019-05-20',619),(196,1,'2019-05-20','2019-05-20',620),(196,2,'2019-05-20','2019-05-20',621),(196,3,'2019-05-20','2019-05-20',622),(196,4,'2019-05-20','2019-05-20',623),(196,5,'2019-05-20','2019-05-20',624),(196,6,'2019-05-20','2019-05-20',625),(197,1,'2019-05-20','2019-05-20',626),(197,2,'2019-05-20','2019-05-20',627),(197,3,'2019-05-20','2019-05-20',628),(197,4,'2019-05-20','2019-05-20',629),(197,5,'2019-05-20','2019-05-20',630),(197,6,'2019-05-20','2019-05-20',631),(198,1,'2019-05-20','2019-05-20',632),(198,2,'2019-05-20','2019-05-20',633),(198,3,'2019-05-20','2019-05-20',634),(198,4,'2019-05-20','2019-05-20',635),(198,5,'2019-05-20','2019-05-20',636),(198,6,'2019-05-20','2019-05-20',637),(200,1,'2019-05-21','2019-05-21',644),(200,2,'2019-05-21','2019-05-21',645),(200,3,'2019-05-21','2019-05-21',646),(200,4,'2019-05-21','2019-05-21',647),(200,5,'2019-05-21','2019-05-21',648),(200,6,'2019-05-21','2019-05-21',649),(201,1,'2019-05-21','2019-05-21',650),(201,2,'2019-05-21','2019-05-21',651),(202,1,'2019-05-21','2019-05-21',652),(202,2,'2019-05-21','2019-05-21',653),(202,3,'2019-05-21','2019-05-21',654),(202,4,'2019-05-21','2019-05-21',655),(202,5,'2019-05-21','2019-05-21',656),(202,6,'2019-05-21','2019-05-21',657),(201,3,'2019-05-21','2019-05-21',670),(201,4,'2019-05-21','2019-05-21',671),(201,5,'2019-05-21','2019-05-21',672),(201,6,'2019-05-21','2019-05-21',673),(205,1,'2019-05-21','2019-05-21',674),(205,2,'2019-05-21','2019-05-21',675),(205,3,'2019-05-21','2019-05-21',676),(205,4,'2019-05-21','2019-05-21',677),(205,5,'2019-05-21','2019-05-21',678),(205,6,'2019-05-21','2019-05-21',679),(206,1,'2019-05-21','2019-05-21',680),(206,2,'2019-05-21','2019-05-21',681),(206,3,'2019-05-21','2019-05-21',682),(206,4,'2019-05-21','2019-05-21',683),(206,5,'2019-05-21','2019-05-21',684),(206,6,'2019-05-21','2019-05-21',685),(207,1,'2019-05-21','2019-05-21',686),(207,2,'2019-05-21','2019-05-21',687),(207,3,'2019-05-21','2019-05-21',688),(207,4,'2019-05-21','2019-05-21',689),(207,5,'2019-05-21','2019-05-21',690),(207,6,'2019-05-21','2019-05-21',691),(209,1,'2019-05-21','2019-05-21',698),(209,2,'2019-05-21','2019-05-21',699),(209,3,'2019-05-21','2019-05-21',700),(209,4,'2019-05-21','2019-05-21',701),(209,5,'2019-05-21','2019-05-21',702),(209,6,'2019-05-21','2019-05-21',703),(210,1,'2019-05-21','2019-05-21',704),(210,2,'2019-05-21','2019-05-21',705),(210,3,'2019-05-21','2019-05-21',706),(210,4,'2019-05-21','2019-05-21',707),(210,5,'2019-05-21','2019-05-21',708),(210,6,'2019-05-21','2019-05-21',709),(211,1,'2019-05-21','2019-05-21',710),(211,2,'2019-05-21','2019-05-21',711),(211,3,'2019-05-21','2019-05-21',712),(211,4,'2019-05-21','2019-05-21',713),(211,5,'2019-05-21','2019-05-21',714),(211,6,'2019-05-21','2019-05-21',715),(212,1,'2019-05-22','2019-05-22',716),(212,2,'2019-05-22','2019-05-22',717),(212,3,'2019-05-22','2019-05-22',718),(212,4,'2019-05-22','2019-05-22',719),(212,5,'2019-05-22','2019-05-22',720),(212,6,'2019-05-22','2019-05-22',721),(194,3,'2019-05-22','2019-05-22',722),(194,4,'2019-05-22','2019-05-22',723),(194,5,'2019-05-22','2019-05-22',724),(194,6,'2019-05-22','2019-05-22',725),(213,1,'2019-05-22','2019-05-22',726),(213,2,'2019-05-22','2019-05-22',727),(213,3,'2019-05-22','2019-05-22',728),(213,4,'2019-05-22','2019-05-22',729),(213,5,'2019-05-22','2019-05-22',730),(213,6,'2019-05-22','2019-05-22',731),(214,1,'2019-05-22','2019-05-22',732),(214,2,'2019-05-22',NULL,733),(215,1,'2019-05-24','2019-05-24',734),(215,2,'2019-05-24','2019-05-24',735),(215,3,'2019-05-24','2019-05-24',736),(215,4,'2019-05-24','2019-05-24',737),(215,5,'2019-05-24','2019-05-24',738),(215,6,'2019-05-24','2019-05-24',739),(216,1,'2019-05-24','2019-05-24',740),(216,2,'2019-05-24','2019-05-24',741),(216,3,'2019-05-24','2019-05-24',742),(216,4,'2019-05-24','2019-05-24',743),(216,5,'2019-05-24','2019-05-24',744),(216,6,'2019-05-24','2019-05-24',745);
/*!40000 ALTER TABLE `journey_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `number`
--

DROP TABLE IF EXISTS `number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `number` (
  `Phone_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) NOT NULL,
  `Phone_number` varchar(20) COLLATE utf8_bin NOT NULL,
  `Tariff_id` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  PRIMARY KEY (`Phone_number_id`),
  UNIQUE KEY `number_Phone_number_uindex` (`Phone_number`),
  UNIQUE KEY `XAK1Number` (`Phone_number`),
  KEY `XIE2Number` (`User_id`),
  KEY `XIE3Number` (`Tariff_id`),
  CONSTRAINT `R_11` FOREIGN KEY (`Tariff_id`) REFERENCES `tariff` (`Tariff_id`) ON DELETE CASCADE,
  CONSTRAINT `R_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `number`
--

LOCK TABLES `number` WRITE;
/*!40000 ALTER TABLE `number` DISABLE KEYS */;
INSERT INTO `number` VALUES (67,120,'+7 (921) 655 83 43',23,80),(68,120,'+7 (909) 000 02 81',112,-18),(69,121,'+7 (921) 643 91 23',51,60),(70,122,'',98,-40),(71,121,'+7 (999) 123 41 23',84,-13),(73,124,'+7 (999) 999 99 99',15,-11),(75,126,'+7 (975) 456 87 45',32,-36),(76,129,'+7 (911) 269 59 13',50,32),(77,130,'+7 (111) 111 11 11',70,-3),(78,127,'+7 (912) 381 28 92',53,-76),(79,120,'+7 (919) 848 91 48',29,67),(80,131,'+7 (678) 654 67 89',126,67),(81,132,'+7 (965) 854 88 52',17,-68),(82,132,'+7 (945) 245 64 41',71,54);
/*!40000 ALTER TABLE `number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `Provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Provider_id`),
  UNIQUE KEY `XAK1Provider` (`Provider_name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (31,'Avea'),(24,'Beeline'),(8,'Bell'),(11,'China Mobile'),(12,'China Telecom'),(10,'China Unicom'),(5,'Claro S.A (Claro)'),(14,'DNA'),(18,'E-Plus'),(13,'Elisa Saunalahti'),(2,'Exetel'),(15,'Globetel'),(7,'Koodo Mobile'),(22,'MTS'),(23,'MegaFon'),(27,'Movistar'),(19,'NTT Docomo'),(3,'Optus'),(29,'Orange'),(21,'SoftBank Corp.'),(4,'TIM '),(25,'Tele2'),(16,'Telekom'),(1,'Telstra'),(30,'Turkcell'),(9,'Virgin Mobile'),(6,'Vivo'),(17,'Vodafone '),(28,'Vodafone1'),(26,'Yota'),(20,'au');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_adress`
--

DROP TABLE IF EXISTS `provider_adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_adress` (
  `Provider_id` int(11) NOT NULL,
  `Adress_id` int(11) NOT NULL,
  KEY `XIE1Provider_Adress` (`Adress_id`),
  KEY `XIE2Provider_Adress` (`Adress_id`),
  KEY `R_16` (`Provider_id`),
  CONSTRAINT `R_16` FOREIGN KEY (`Provider_id`) REFERENCES `provider` (`Provider_id`) ON DELETE CASCADE,
  CONSTRAINT `R_17` FOREIGN KEY (`Adress_id`) REFERENCES `adress` (`Adress_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_adress`
--

LOCK TABLES `provider_adress` WRITE;
/*!40000 ALTER TABLE `provider_adress` DISABLE KEYS */;
INSERT INTO `provider_adress` VALUES (22,1),(23,2),(24,3),(24,4),(23,5),(22,6),(22,7),(23,8),(23,9),(24,10),(22,11),(24,12),(25,13),(24,14),(25,15),(25,16),(22,17),(24,18),(25,19),(24,20),(25,21),(24,22),(24,23),(22,24),(24,25),(25,26),(25,27),(24,28),(22,29),(25,30),(24,31),(23,32),(23,33),(24,34),(25,35),(24,36),(22,37),(24,38),(25,39),(22,40),(25,41),(23,42),(24,43),(25,44),(25,45),(23,46),(24,47),(25,48),(24,49),(22,50),(22,51),(25,52),(24,53),(25,54),(23,55),(24,56),(25,57),(24,58),(25,59),(23,60);
/*!40000 ALTER TABLE `provider_adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `Region_id` int(11) NOT NULL AUTO_INCREMENT,
  `Region_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `Country_id` int(11) NOT NULL,
  PRIMARY KEY (`Region_id`),
  UNIQUE KEY `XAK1Region` (`Region_name`,`Country_id`),
  KEY `XIE1Region` (`Country_id`),
  CONSTRAINT `R_5` FOREIGN KEY (`Country_id`) REFERENCES `country` (`Country_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (30,' Hesse',6),(6,'Acre',2),(51,'Adana',10),(17,'Anhui Province',4),(52,'Ankara',10),(9,'Bahia',2),(36,'Bashkortostan',8),(26,'Berlin',6),(12,'British Columbia',3),(47,'Cantabria',9),(46,'Corunna',9),(48,'Cuenca',9),(37,'Dagestan',8),(7,'Distrito Federal',2),(23,'Eastern Finland',5),(34,'Fukui',7),(16,'Hainan Province',4),(27,'Hamburg',6),(53,'Hatay',10),(31,'Hokkaido',7),(20,'Hubei Province',4),(42,'Kaliningrad Oblast',8),(38,'Karelia',8),(40,'Krasnodar Krai',8),(33,'Kyoto',7),(25,'Lapland',5),(43,'Leningrad Oblast',8),(49,'Madrid',9),(15,'Manitoba',3),(44,'Moscow Oblast',8),(50,'Navarra',9),(1,'New South Wales',1),(13,'Nova Scotia',3),(11,'Ontario',3),(54,'Ordu',10),(24,'Oulu',5),(14,'Quebec',3),(2,'Queensland',1),(8,'Rio de Janeiro',2),(10,'Roraima',2),(28,'Saxony',6),(55,'Sivas',10),(4,'South Australia',1),(21,'Southern Finland',5),(45,'Sverdlovsk Oblast',8),(18,'Taiwan Province',4),(5,'Tasmania',1),(39,'Tatarstan',8),(29,'Thuringia',6),(32,'Tokyo',7),(41,'Volgograd Oblast',8),(3,'Western Australia',1),(22,'Western Finland',5),(35,'Yamagata',7),(19,'Yunnan Province',4);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff`
--

DROP TABLE IF EXISTS `tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff` (
  `Tariff_price` varchar(30) COLLATE utf8_bin NOT NULL,
  `Region_id` int(11) NOT NULL,
  `Tariff_inf_id` int(11) NOT NULL,
  `Tariff_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Tariff_id`),
  UNIQUE KEY `XAK1Tariff` (`Region_id`,`Tariff_price`,`Tariff_inf_id`),
  KEY `XIE1Tariff` (`Tariff_inf_id`),
  CONSTRAINT `R_23` FOREIGN KEY (`Tariff_inf_id`) REFERENCES `tariff_inf` (`Tariff_inf_id`) ON DELETE CASCADE,
  CONSTRAINT `R_7` FOREIGN KEY (`Region_id`) REFERENCES `region` (`Region_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff`
--

LOCK TABLES `tariff` WRITE;
/*!40000 ALTER TABLE `tariff` DISABLE KEYS */;
INSERT INTO `tariff` VALUES ('15  rub/day',36,12,90),('2000 рублей за 30 дней',36,3,38),('290 рублей за 30 дней',36,2,37),('470 рублей за 30 дней',36,2,36),('500 рублей в месяц',36,8,47),('6.66  rub/day',36,13,91),('650 рублей в месяц',36,8,48),('750 рублей за 14 дней',36,4,39),('83.33  rub/day',36,14,92),('840 рублей за 30 дней',36,1,35),('Абонентская плата: 0 рублей',36,5,40),('1050 рублей за 30 дней',37,1,41),('14  rub/day',37,12,84),('2000 рублей за 30 дней',37,3,44),('400 рублей в месяц',37,9,54),('400 рублей за 30 дней',37,2,43),('450 рублей в месяц',37,8,52),('585 рублей в месяц',37,8,53),('600 рублей за 30 дней',37,2,42),('750 рублей за 14 дней',37,4,45),('8.33  rub/day',37,13,85),('83.33  rub/day',37,14,86),('Абонентская плата: 0 рублей',37,5,46),('11  rub/day',38,12,87),('1100 rub/month',38,18,114),('200 rub/month',38,16,112),('300 rub/month',38,15,111),('400 rub/month',38,17,113),('400 рублей в месяц',38,9,51),('450 рублей в месяц',38,8,49),('600 рублей в месяц',38,8,50),('8.33  rub/day',38,13,88),('83.33  rub/day',38,14,89),('11  rub/day',39,12,76),('1100 rub/month',39,18,118),('190 rub/month',39,16,116),('290 rub/month',39,15,115),('340 рублей в месяц',39,7,55),('350 rub/month',39,17,117),('360 рублей в месяц',39,8,56),('650 rub/month',39,10,74),('680 рублей в месяц',39,8,57),('8.33  rub/day',39,13,77),('83.33  rub/day',39,14,78),('900 rub/month',39,11,75),('1100 rub/month',40,18,110),('14  rub/day',40,12,63),('1400 рублей в месяц',40,8,32),('230 rub/month',40,16,108),('300 rub/month',40,15,107),('400 rub/month',40,17,109),('400 рублей в месяц',40,9,33),('500 рублей в месяц',40,8,31),('500 рублей в месяц',40,9,34),('600 rub/month',40,10,61),('700 рублей в месяц',40,7,30),('8.33  rub/day',40,13,64),('800 рублей в месяц',40,6,29),('83.33  rub/day',40,14,65),('900 rub/month',40,11,62),('10 рублей в сутки',41,13,59),('1100 rub/month',41,18,102),('15 рублей в сутки',41,12,58),('2000 рублей за 30 дней',41,3,10),('270 rub/month',41,16,100),('350 rub/month',41,15,99),('370 рублей за 30 дней',41,2,9),('450 rub/month',41,17,101),('580 рублей за 30 дней',41,2,8),('750 рублей за 14 дней',41,4,11),('83,33 рубля в сутки',41,14,60),('950 рублей за 30 дней',41,1,7),('Абонентская плата: 0 рублей',41,5,12),('14  rub/day',42,12,71),('1500 rub/month',42,18,106),('200 rub/month',42,16,104),('300 rub/month',42,15,103),('350 рублей в месяц',42,9,27),('420 rub/month',42,17,105),('450 рублей в месяц',42,8,25),('450 рублей в месяц',42,9,28),('83.33  rub/day',42,14,73),('850 рублей в месяц',42,8,26),('9  rub/day',42,13,72),('1050 рублей за 30 дней',43,1,1),('15  rub/day',43,12,68),('1500 rub/month',43,18,98),('2000 рублей за 30 дней',43,3,4),('250 rub/month',43,16,96),('350 rub/month',43,15,95),('350 rub/month',43,17,97),('400 рублей за 30 дней',43,2,3),('650 rub/month',43,10,66),('750 рублей за 14 дней',43,4,5),('750 рублей за 30 дней',43,2,2),('83.33  rub/day',43,14,70),('9  rub/day',43,13,69),('900 rub/month',43,11,67),('Абонентская плата: 0 рублей',43,5,6),('1500 rub/month',44,18,122),('20  rub/day',44,12,93),('200 rub/month',44,16,120),('400 rub/month',44,15,119),('500 rub/month',44,17,121),('550 рублей в месяц',44,9,23),('575 рублей в месяц',44,9,24),('585 рублей в месяц',44,8,21),('650 рублей в месяц',44,7,20),('720 рублей в месяц',44,8,22),('83.33  rub/day',44,14,94),('950 рублей в месяц',44,6,19),('11  rub/day',45,12,81),('1100 rub/month',45,18,126),('150 rub/month',45,16,124),('2000 рублей за 30 дней',45,3,16),('230 rub/month',45,15,123),('350 rub/month',45,17,125),('350 рублей за 30 дней',45,2,14),('500 рублей за 30 дней',45,2,15),('6.66  rub/day',45,13,82),('650 rub/month',45,10,79),('750 рублей за 14 дней',45,4,17),('83.33  rub/day',45,14,83),('840 рублей за 30 дней',45,1,13),('900 rub/month',45,11,80),('Абонентская плата: 0 рублей',45,5,18);
/*!40000 ALTER TABLE `tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_inf`
--

DROP TABLE IF EXISTS `tariff_inf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_inf` (
  `Tariff_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `Tariff_inf_id` int(11) NOT NULL AUTO_INCREMENT,
  `Tariff_desc` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `Provider_id` int(11) NOT NULL,
  PRIMARY KEY (`Tariff_inf_id`),
  UNIQUE KEY `XAK1Tariff_inf` (`Tariff_name`,`Provider_id`),
  KEY `XIE1Tariff_inf` (`Provider_id`),
  CONSTRAINT `R_24` FOREIGN KEY (`Provider_id`) REFERENCES `provider` (`Provider_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_inf`
--

LOCK TABLES `tariff_inf` WRITE;
/*!40000 ALTER TABLE `tariff_inf` DISABLE KEYS */;
INSERT INTO `tariff_inf` VALUES ('Включайся! Смотри',1,'Неизрасходованный трафик, SMS и минуты не переносятся на новый тариф. Все остатки по пакетам «сгорят», когда вы подтвердите переход.',23),('Включайся! Выбирай',2,'Неизрасходованный трафик, SMS и минуты не переносятся на новый тариф. Все остатки по пакетам «сгорят», когда вы подтвердите переход.',23),('Включайся! Премиум',3,'Неизрасходованный трафик, SMS и минуты не переносятся на новый тариф. Все остатки по пакетам «сгорят», когда вы подтвердите переход.',23),('#Hello',4,NULL,23),('Посекундный',5,NULL,23),('Весь МТС СУПЕР ТВ',6,'Домашний интернет + Интерактивное ТВ + Мобильная связь в подарок',22),('Весь МТС',7,'Домашний интернет + Цифровое ТВ + Мобильная связь в подарок',22),('Тарифище',8,'Безлимитный интернет',22),('Мой Smart',9,NULL,22),('Все в одном 2',10,'Интернетом, минутами и SMS',24),('Все в одном 3',11,'Интернетом, минутами и SMS',24),('Анлим',12,NULL,24),('Всешечка',13,'Звонки и интернет по доступной цене',24),('Совсем ВСЕмое',14,'Максимальный пакет услуг',24),('Мой онлайн',15,NULL,25),('Мой разговор',16,NULL,25),('Безлимит',17,NULL,25),('Премиум',18,NULL,25);
/*!40000 ALTER TABLE `tariff_inf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_offering`
--

DROP TABLE IF EXISTS `tariff_offering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_offering` (
  `Offering_id` int(11) NOT NULL,
  `Offering_price` varchar(30) COLLATE utf8_bin DEFAULT 'Free',
  `Quantity` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `Tariff_id` int(11) NOT NULL,
  KEY `XIE1Tariff_offering` (`Tariff_id`),
  KEY `R_15` (`Offering_id`),
  CONSTRAINT `R_14` FOREIGN KEY (`Tariff_id`) REFERENCES `tariff` (`Tariff_id`) ON DELETE CASCADE,
  CONSTRAINT `R_15` FOREIGN KEY (`Offering_id`) REFERENCES `additional_offering` (`Offering_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_offering`
--

LOCK TABLES `tariff_offering` WRITE;
/*!40000 ALTER TABLE `tariff_offering` DISABLE KEYS */;
INSERT INTO `tariff_offering` VALUES (1,NULL,'1000',1),(2,NULL,'Unlimited',1),(3,'55 rub/30 days','Unlimited',1),(4,NULL,'Unlimmited traffic',1),(5,NULL,'',1),(6,NULL,'1 book per month',1),(7,NULL,'1 magazine and 1 podcast per month',1),(8,NULL,'Unlimited',1),(1,NULL,'700',2),(2,NULL,'30 GB',2),(3,'55 rub/30 days','Unlimited',2),(4,NULL,'Unlimmited traffic',2),(5,NULL,NULL,2),(6,NULL,'1 book per month',2),(7,NULL,'1 magazine and 1 podcast per month',2),(8,NULL,'Unlimited',2),(1,NULL,'300',3),(2,NULL,'5 GB',3),(3,'55 rub/30 days','Unlimited',3),(4,NULL,'Unlimmited traffic',3),(5,NULL,NULL,3),(6,NULL,'1 book per month',3),(7,NULL,'1 magazine and 1 pod',3),(8,NULL,'Unlimited',3),(1,NULL,'3000',4),(2,NULL,'Unlimited',4),(3,NULL,'Unlimited',4),(4,NULL,'Unlimmited traffic',4),(5,NULL,NULL,4),(6,NULL,'1 book per month',4),(7,NULL,'1 magazine and 1 pod',4),(8,NULL,'Unlimited',4),(1,NULL,'1500',7),(2,NULL,'Unlimited',7),(3,'55 rub/30 days','Unlimited',7),(4,NULL,'Unlimmited traffic',7),(5,NULL,NULL,7),(6,NULL,'1 book per month',7),(7,NULL,'1 magazine and 1 pod',7),(8,NULL,'Unlimited',7),(1,NULL,'700',8),(2,NULL,'20 GB',8),(3,'55 rub/30 days','Unlimited',8),(4,NULL,'Unlimmited traffic',8),(5,NULL,NULL,8),(6,NULL,'1 book per month',8),(7,NULL,'1 magazine and 1 pod',8),(8,NULL,'Unlimited',8),(1,NULL,'400',9),(2,NULL,'5 GB',9),(3,'55 rub/30 days','Unlimited',9),(4,NULL,'Unlimmited traffic',9),(5,NULL,NULL,9),(6,NULL,'1 book per month',9),(7,NULL,'1 magazine and 1 pod',9),(8,NULL,'Unlimited',9),(1,NULL,'3000',10),(2,NULL,'Unlimited',10),(3,NULL,'Unlimited',10),(4,NULL,'Unlimmited traffic',10),(5,NULL,NULL,10),(6,NULL,'1 book per month',10),(7,NULL,'1 magazine and 1 pod',10),(8,NULL,'Unlimited',10),(1,NULL,'1500',13),(2,NULL,'Unlimited',13),(3,'55 rub/30 days','Unlimited',13),(4,NULL,'Unlimmited traffic',13),(5,NULL,NULL,13),(6,NULL,'1 book per month',13),(7,NULL,'1 magazine and 1 pod',13),(8,NULL,'Unlimited',13),(1,NULL,'800',14),(2,NULL,'23 GB',14),(3,'55 rub/30 days','Unlimited',14),(4,NULL,'Unlimmited traffic',14),(5,NULL,NULL,14),(6,NULL,'1 book per month',14),(7,NULL,'1 magazine and 1 pod',14),(8,NULL,'Unlimited',14),(1,NULL,'500',15),(2,NULL,'5 GB',15),(3,'55 rub/30 days','Unlimited',15),(4,NULL,'Unlimmited traffic',15),(5,NULL,NULL,15),(6,NULL,'1 book per month',15),(7,NULL,'1 magazine and 1 pod',15),(8,NULL,'Unlimited',15),(1,NULL,'4000',16),(2,NULL,'Unlimited',16),(3,NULL,'Unlimited',16),(4,NULL,'Unlimmited traffic',16),(5,NULL,NULL,16),(6,NULL,'1 book per month',16),(7,NULL,'1 magazine and 1 pod',16),(8,NULL,'Unlimited',16),(1,NULL,'1500',35),(2,NULL,'Unlimited',35),(3,'55 rub/30 days','Unlimited',35),(4,NULL,'Unlimmited traffic',35),(5,NULL,NULL,35),(6,NULL,'1 book per month',35),(7,NULL,'1 magazine and 1 pod',35),(8,NULL,'Unlimited',35),(1,NULL,'700',36),(2,NULL,'23 GB',36),(3,'55 rub/30 days','Unlimited',36),(4,NULL,'Unlimmited traffic',36),(5,NULL,NULL,36),(6,NULL,'1 book per month',36),(7,NULL,'1 magazine and 1 pod',36),(8,NULL,'Unlimited',36),(1,NULL,'300',37),(2,NULL,'3 GB',37),(3,'55 rub/30 days','Unlimited',37),(4,NULL,'Unlimmited traffic',37),(5,NULL,NULL,37),(6,NULL,'1 book per month',37),(7,NULL,'1 magazine and 1 pod',37),(8,NULL,'Unlimited',37),(1,NULL,'4000',38),(2,NULL,'Unlimited',38),(3,NULL,'Unlimited',38),(4,NULL,'Unlimmited traffic',38),(5,NULL,NULL,38),(6,NULL,'1 book per month',38),(7,NULL,'1 magazine and 1 pod',38),(8,NULL,'Unlimited',38),(1,NULL,'1500',41),(2,NULL,'Unlimited',41),(3,'55 rub/30 days','Unlimited',41),(4,NULL,'Unlimmited traffic',41),(5,NULL,NULL,41),(6,NULL,'1 book per month',41),(7,NULL,'1 magazine and 1 pod',41),(8,NULL,'Unlimited',41),(1,NULL,'600',42),(2,NULL,'25 GB',42),(3,'55 rub/30 days','Unlimited',42),(4,NULL,'Unlimmited traffic',42),(5,NULL,NULL,42),(6,NULL,'1 book per month',42),(7,NULL,'1 magazine and 1 pod',42),(8,NULL,'Unlimited',42),(1,NULL,'300',43),(2,NULL,'5 GB',43),(3,'55 rub/30 days','Unlimited',43),(4,NULL,'Unlimmited traffic',43),(5,NULL,NULL,43),(6,NULL,'1 book per month',43),(7,NULL,'1 magazine and 1 pod',43),(8,NULL,'Unlimited',43),(1,NULL,'3000',44),(2,NULL,'Unlimited',44),(3,NULL,'Unlimited',44),(4,NULL,'Unlimmited traffic',44),(5,NULL,NULL,44),(6,NULL,'1 book per month',44),(7,NULL,'1 magazine and 1 pod',44),(8,NULL,'Unlimited',44),(1,NULL,'30',5),(2,NULL,'30 GB',5),(8,NULL,'Unlimited',5),(9,NULL,'Unlimited',5),(10,NULL,'Unlimited',5),(1,NULL,'30',11),(2,NULL,'30 GB',11),(8,NULL,'Unlimited',11),(9,NULL,'Unlimited',11),(10,NULL,'Unlimited',11),(1,NULL,'30',17),(2,NULL,'30 GB',17),(8,NULL,'Unlimited',17),(9,NULL,'Unlimited',17),(10,NULL,'Unlimited',17),(1,NULL,'30',39),(2,NULL,'30 GB',39),(8,NULL,'Unlimited',39),(9,NULL,'Unlimited',39),(10,NULL,'Unlimited',39),(1,NULL,'30',45),(2,NULL,'30 GB',45),(8,NULL,'Unlimited',45),(9,NULL,'Unlimited',45),(10,NULL,'Unlimited',45),(3,'4 rub/SMS',NULL,5),(3,'4 rub/SMS',NULL,11),(3,'4 rub/SMS',NULL,17),(3,'4 rub/SMS',NULL,39),(3,'4 rub/SMS',NULL,45),(1,'3 rub/min',NULL,6),(2,'10.1 rub','1 MB',6),(3,'4 rub/SMS',NULL,6),(1,'3 rub/min',NULL,12),(2,'10.1 rub','1 MB',12),(3,'4 rub/SMS',NULL,12),(1,'3 rub/min',NULL,18),(2,'10.1 rub','1 MB',18),(3,'4 rub/SMS',NULL,18),(1,'3 rub/min',NULL,40),(2,'10.1 rub','1 MB',40),(3,'4 rub/SMS',NULL,40),(1,'3 rub/min',NULL,46),(2,'10.1 rub','1 MB',46),(3,'4 rub/SMS',NULL,46),(1,NULL,'500',19),(2,NULL,'Unlimited',19),(3,NULL,'500',19),(11,NULL,'Unlimited',19),(1,NULL,'1500',29),(2,NULL,'Unlimited',29),(3,NULL,'1500',29),(11,NULL,'Unlimited',29),(4,NULL,'141 channel',19),(4,NULL,'139 channel',29),(1,NULL,'350',20),(2,NULL,'2 GB',20),(3,NULL,'350',20),(11,NULL,'Unlimited',20),(1,NULL,'400',30),(2,NULL,'5 GB',30),(3,NULL,'400',30),(11,NULL,'Unlimited',30),(1,NULL,'500',21),(2,NULL,'Unlimited',21),(3,NULL,'500',21),(4,'150 rub/month',NULL,21),(11,NULL,'Unlimited',21),(1,NULL,'800',22),(2,NULL,'Unlimited',22),(3,NULL,'800',22),(4,'150 rub/month',NULL,22),(11,NULL,'Unlimited',22),(1,NULL,'500',47),(2,NULL,'Unlimited',47),(3,NULL,'500',47),(4,'150 rub/month',NULL,47),(11,NULL,'Unlimited',47),(1,NULL,'800',48),(2,NULL,'Unlimited',48),(3,NULL,'800',48),(4,'150 rub/month',NULL,48),(11,NULL,'Unlimited',48),(1,NULL,'500',25),(2,NULL,'Unlimited',25),(3,NULL,'500',25),(4,'150 rub/month',NULL,25),(11,NULL,'Unlimited',25),(1,NULL,'1500',26),(2,NULL,'Unlimited',26),(3,NULL,'1500',26),(4,'150 rub/month',NULL,26),(11,NULL,'Unlimited',26),(1,NULL,'500',49),(2,NULL,'Unlimited',49),(3,NULL,'500',49),(4,'150 rub/month',NULL,49),(11,NULL,'Unlimited',49),(1,NULL,'800',50),(2,NULL,'Unlimited',50),(3,NULL,'800',50),(4,'150 rub/month',NULL,50),(11,NULL,'Unlimited',50),(1,NULL,'500',31),(2,NULL,'Unlimited',31),(3,NULL,'500',31),(4,'150 rub/month',NULL,31),(11,NULL,'Unlimited',31),(1,NULL,'3000',32),(2,NULL,'Unlimited',32),(3,NULL,'3000',32),(4,'150 rub/month',NULL,32),(11,NULL,'Unlimited',32),(1,NULL,'500',52),(2,NULL,'Unlimited',52),(3,NULL,'500',52),(4,'150 rub/month',NULL,52),(11,NULL,'Unlimited',52),(1,NULL,'800',53),(2,NULL,'Unlimited',53),(3,NULL,'800',53),(4,'150 rub/month',NULL,53),(11,NULL,'Unlimited',53),(1,NULL,'500',56),(2,NULL,'Unlimited',56),(3,NULL,'500',56),(4,'150 rub/month',NULL,56),(11,NULL,'Unlimited',56),(1,NULL,'1500',57),(2,NULL,'Unlimited',57),(3,NULL,'1500',57),(4,'150 rub/month',NULL,57),(11,NULL,'Unlimited',57),(1,NULL,'400',23),(2,NULL,'15 GB',23),(3,NULL,'400',23),(4,'150 rub/month',NULL,23),(11,NULL,'Unlimited',23),(1,NULL,'600',24),(2,NULL,'10 GB',24),(3,NULL,'600',24),(4,'150 rub/month',NULL,24),(11,NULL,'Unlimited',24),(1,NULL,'350',27),(2,NULL,'15 GB',27),(3,NULL,'350',27),(4,'150 rub/month',NULL,27),(11,NULL,'Unlimited',27),(1,NULL,'550',28),(2,NULL,'5 GB ',28),(3,NULL,'550',28),(4,'150 rub/month',NULL,28),(11,NULL,'Unlimited',28),(1,NULL,'400',51),(2,NULL,'10 GB',51),(3,NULL,'400',51),(4,'150 rub/month',NULL,51),(11,NULL,'Unlimited',51),(1,NULL,'400',33),(2,NULL,'10 GB',33),(3,NULL,'400',33),(4,'150 rub/month',NULL,33),(11,NULL,'Unlimited',33),(1,NULL,'600',34),(2,NULL,'15 GB',34),(3,NULL,'600',34),(4,'150 rub/month',NULL,34),(11,NULL,'Unlimited',34),(1,NULL,'400',54),(2,NULL,'20 GB',54),(3,NULL,'400',54),(4,'150 rub/month',NULL,54),(11,NULL,'Unlimited',54),(1,NULL,'400',58),(2,NULL,'40 GB',58),(3,'100 rub/month','100',58),(12,NULL,'Unlimited',58),(13,'150 rub/month',NULL,58),(1,NULL,'350',59),(2,NULL,'12 GB',59),(3,'100 rub/month','100',59),(12,NULL,'Unlimited',59),(13,'150 rub/month',NULL,59),(1,NULL,'400',60),(2,NULL,'15 GB',60),(3,'100 rub/month','100',60),(12,NULL,'Unlimited',60),(13,'150 rub/month',NULL,60),(1,NULL,'350',61),(2,NULL,'10 GB',61),(3,'100 rub/month','100',61),(12,NULL,'Unlimited',61),(13,'150 rub/month',NULL,61),(1,NULL,'400',62),(2,NULL,'15 GB',62),(3,'100 rub/month','100',62),(12,NULL,'Unlimited',62),(13,'150 rub/month',NULL,62),(1,NULL,'400 ',63),(2,NULL,'20 GB',63),(3,'100 rub/month','100',63),(12,NULL,'Unlimited',63),(13,'150 rub/month',NULL,63),(1,NULL,'450',64),(2,NULL,'20 GB',64),(3,'100 rub/month','100',64),(12,NULL,'Unlimited',64),(13,'150 rub/month',NULL,64),(1,NULL,'400',65),(2,NULL,'7 GB',65),(3,'100 rub/month','100',65),(12,NULL,'Unlimited',65),(13,'150 rub/month',NULL,65),(1,NULL,'150',66),(2,NULL,'5 GB',66),(3,'100 rub/month','100',66),(12,NULL,'Unlimited',66),(14,'50 rub/month',NULL,66),(15,'60 rub/month',NULL,66),(1,NULL,'200',67),(2,NULL,'5 GB',67),(3,'100 rub/month','100',67),(12,NULL,'Unlimited',67),(14,'50 rub/month',NULL,67),(15,'60 rub/month',NULL,67),(1,NULL,'150',68),(2,NULL,'5 GB',68),(3,'100 rub/month','100',68),(12,NULL,'Unlimited',68),(14,'50 rub/month',NULL,68),(15,'60 rub/month',NULL,68),(1,NULL,'150',69),(2,NULL,'7 GB',69),(3,'100 rub/month','100',69),(12,NULL,'Unlimited',69),(14,'50 rub/month',NULL,69),(15,'60 rub/month',NULL,69),(1,NULL,'150',70),(2,NULL,'5 GB',70),(3,'100 rub/month','100',70),(12,NULL,'Unlimited',70),(14,'50 rub/month',NULL,70),(15,'60 rub/month',NULL,70),(1,NULL,'150',71),(2,NULL,'5 GB',71),(3,'100 rub/month','100',71),(12,NULL,'Unlimited',71),(14,'50 rub/month',NULL,71),(15,'60 rub/month',NULL,71),(1,NULL,'200',72),(2,NULL,'5 GB',72),(3,'100 rub/month','100',72),(12,NULL,'Unlimited',72),(14,'50 rub/month',NULL,72),(15,'60 rub/month',NULL,72),(1,NULL,'150',73),(2,NULL,'3 GB',73),(3,'100 rub/month','100',73),(12,NULL,'Unlimited',73),(14,'50 rub/month',NULL,73),(15,'60 rub/month',NULL,73),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',58),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',59),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',60),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',61),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',62),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',63),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',64),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',65),(1,NULL,'500',74),(2,NULL,'Unlimited',74),(3,NULL,'50',74),(1,NULL,'500',75),(2,NULL,'Unlimited',75),(3,NULL,'50',75),(1,NULL,'500',76),(2,NULL,'Unlimited',76),(3,NULL,'50',76),(1,NULL,'500',77),(2,NULL,'Unlimited',77),(3,NULL,'50',77),(1,NULL,'500',78),(2,NULL,'Unlimited',78),(3,NULL,'50',78),(1,NULL,'500',79),(2,NULL,'Unlimited',79),(3,NULL,'50',79),(1,NULL,'500',80),(2,NULL,'Unlimited',80),(3,NULL,'50',80),(1,NULL,'500',81),(2,NULL,'Unlimited',81),(3,NULL,'50',81),(12,NULL,'Unlimited',74),(12,NULL,'Unlimited',75),(12,NULL,'Unlimited',76),(12,NULL,'Unlimited',77),(12,NULL,'Unlimited',78),(12,NULL,'Unlimited',79),(12,NULL,'Unlimited',80),(12,NULL,'Unlimited',81),(1,NULL,'2000',82),(2,NULL,'50 GB',82),(3,NULL,'500',82),(12,NULL,'Unlimited',82),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',82),(1,NULL,'2000',83),(2,NULL,'50 GB',83),(3,NULL,'500',83),(12,NULL,'Unlimited',83),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',83),(1,NULL,'2000',84),(2,NULL,'50 GB',84),(3,NULL,'500',84),(12,NULL,'Unlimited',84),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',84),(1,NULL,'2000',85),(2,NULL,'50 GB',85),(3,NULL,'500',85),(12,NULL,'Unlimited',85),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',85),(1,NULL,'2000',86),(2,NULL,'50 GB',86),(3,NULL,'500',86),(12,NULL,'Unlimited',86),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',86),(1,NULL,'2000',87),(2,NULL,'50 GB',87),(3,NULL,'500',87),(12,NULL,'Unlimited',87),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',87),(1,NULL,'2000',88),(2,NULL,'50 GB',88),(3,NULL,'500',88),(12,NULL,'Unlimited',88),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',88),(1,NULL,'2000',89),(2,NULL,'50 GB',89),(3,NULL,'500',89),(12,NULL,'Unlimited',89),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',89),(1,NULL,'500',90),(2,NULL,'15 GB',90),(3,NULL,'300',90),(5,'119 rub/month',NULL,90),(17,NULL,'Unlimited',90),(19,'150 rub/month','Yandex.music, Vkontakte',90),(1,NULL,'500',91),(2,NULL,'15 GB',91),(3,NULL,'300',91),(5,'119 rub/month',NULL,91),(17,NULL,'Unlimited',91),(19,'150 rub/month','Yandex.music, Vkontakte',91),(1,NULL,'500',92),(2,NULL,'15 GB',92),(3,NULL,'300',92),(5,'119 rub/month',NULL,92),(17,NULL,'Unlimited',92),(19,'150 rub/month','Yandex.music, Vkontakte',92),(1,NULL,'500',93),(2,NULL,'15 GB',93),(3,NULL,'300',93),(5,'119 rub/month',NULL,93),(17,NULL,'Unlimited',93),(19,'150 rub/month','Yandex.music, Vkontakte',93),(1,NULL,'1200',94),(2,NULL,'22 GB',94),(3,NULL,'300',94),(4,NULL,'Unlimmited traffic',94),(5,'119 rub/month',NULL,94),(17,NULL,'Unlimited',94),(19,NULL,'Yandex.music, Vkontakte',94),(1,NULL,'1200',95),(2,NULL,'22 GB',95),(3,NULL,'300',95),(4,NULL,'Unlimmited traffic',95),(5,'119 rub/month',NULL,95),(17,NULL,'Unlimited',95),(19,NULL,'Yandex.music, Vkontakte',95),(1,NULL,'1200',96),(2,NULL,'22 GB',96),(3,NULL,'300',96),(4,NULL,'Unlimmited traffic',96),(5,'119 rub/month',NULL,96),(17,NULL,'Unlimited',96),(19,NULL,'Yandex.music, Vkontakte',96),(1,NULL,'1200',97),(2,NULL,'22 GB',97),(3,NULL,'300',97),(4,NULL,'Unlimmited traffic',97),(5,'119 rub/month',NULL,97),(17,NULL,'Unlimited',97),(19,NULL,'Yandex.music, Vkontakte',97),(1,NULL,'500',98),(2,NULL,'Unlimited',98),(3,'2 rub/day','300',98),(17,NULL,'Unlimited',98),(1,NULL,'450',99),(2,NULL,'Unlimited',99),(3,'2 rub/day','300',99),(17,NULL,'Unlimited',99),(1,NULL,'500',100),(2,NULL,'Unlimited',100),(3,'2 rub/day','300',100),(17,NULL,'Unlimited',100),(1,NULL,'450',101),(2,NULL,'Unlimited',101),(3,'2 rub/day','300',101),(17,NULL,'Unlimited',101),(1,NULL,'400',102),(2,NULL,'Unlimited',102),(3,'2 rub/day','300',102),(17,NULL,'Unlimited',102),(1,NULL,'450',103),(2,NULL,'Unlimited',103),(3,'2 rub/day','300',103),(17,NULL,'Unlimited',103),(1,NULL,'500',104),(2,NULL,'Unlimited',104),(3,'2 rub/day','300',104),(17,NULL,'Unlimited',104),(1,NULL,'500',105),(2,NULL,'Unlimited',105),(3,'2 rub/day','300',105),(17,NULL,'Unlimited',105),(1,NULL,'500',106),(2,NULL,'Unlimited',106),(3,'2 rub/day','300',106),(17,NULL,'Unlimited',106),(1,NULL,'500',107),(2,NULL,'Unlimited',107),(3,'2 rub/day','300',107),(17,NULL,'Unlimited',107),(1,NULL,NULL,108),(2,NULL,NULL,108),(3,'5 rub/SMS',NULL,108),(17,NULL,'Unlimited',108),(1,NULL,'200',109),(2,NULL,'5 GB',109),(3,'5 rub/SMS',NULL,109),(17,NULL,'Unlimited',109),(1,NULL,'200',110),(2,NULL,'4 GB',110),(3,'5 rub/SMS',NULL,110),(17,NULL,'Unlimited',110),(1,NULL,'200',111),(2,NULL,'4 GB',111),(3,'5 rub/SMS',NULL,111),(17,NULL,'Unlimited',111),(1,NULL,'200',112),(2,NULL,'5 GB',112),(3,'5 rub/SMS',NULL,112),(17,NULL,'Unlimited',112),(1,NULL,'150',113),(2,NULL,'2 GB',113),(3,'5 rub/SMS',NULL,113),(17,NULL,'Unlimited',113),(1,NULL,'200',114),(2,NULL,'5 GB',114),(3,'5 rub/SMS',NULL,114),(17,NULL,'Unlimited',114),(1,NULL,'200',115),(2,NULL,'5 GB',115),(3,'5 rub/SMS',NULL,115),(17,NULL,'Unlimited',115),(1,NULL,'150',116),(2,NULL,'2 GB',116),(3,'5 rub/SMS',NULL,116),(17,NULL,'Unlimited',116),(1,NULL,'5000',117),(2,NULL,'30 GB',117),(3,NULL,'300',117),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',117),(17,NULL,'Unlimited',117),(18,NULL,'Yandex.music, Vkontakte',117),(1,NULL,'5000',118),(2,NULL,'30 GB',118),(3,NULL,'300',118),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',118),(17,NULL,'Unlimited',118),(18,NULL,'Yandex.music, Vkontakte',118),(1,NULL,'5000',119),(2,NULL,'30 GB',119),(3,NULL,'300',119),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',119),(17,NULL,'Unlimited',119),(18,NULL,'Yandex.music, Vkontakte',119),(1,NULL,'5000',120),(2,NULL,'30 GB',120),(3,NULL,'300',120),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',120),(17,NULL,'Unlimited',120),(18,NULL,'Yandex.music, Vkontakte',120),(1,NULL,'5000',121),(2,NULL,'30 GB',121),(3,NULL,'300',121),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',121),(17,NULL,'Unlimited',121),(18,NULL,'Yandex.music, Vkontakte',121),(1,NULL,'5000',122),(2,NULL,'30 GB',122),(3,NULL,'300',122),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',122),(17,NULL,'Unlimited',122),(18,NULL,'Yandex.music, Vkontakte',122),(1,NULL,'5000',123),(2,NULL,'30 GB',123),(3,NULL,'300',123),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',123),(17,NULL,'Unlimited',123),(18,NULL,'Yandex.music, Vkontakte',123),(1,NULL,'5000',124),(2,NULL,'30 GB',124),(3,NULL,'300',124),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',124),(17,NULL,'Unlimited',124),(18,NULL,'Yandex.music, Vkontakte',124),(1,NULL,'5000',125),(2,NULL,'30 GB',125),(3,NULL,'300',125),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',125),(17,NULL,'Unlimited',125),(18,NULL,'Yandex.music, Vkontakte',125),(1,NULL,'5000',126),(2,NULL,'30 GB',126),(3,NULL,'300',126),(16,NULL,'Facebook, Instagram, Vkontakte, WhatsApp, Viber',126),(17,NULL,'Unlimited',126),(18,NULL,'Yandex.music, Vkontakte',126),(1,NULL,'500',55),(2,NULL,'Unlimited',55),(3,NULL,'500',55),(4,'150 rub/month',NULL,55),(11,NULL,'Unlimited',55);
/*!40000 ALTER TABLE `tariff_offering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `Task_id` int(11) NOT NULL AUTO_INCREMENT,
  `Task_desc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Task_request` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Task_name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Task_id`),
  UNIQUE KEY `XAK1Task` (`Task_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,NULL,NULL,'Notify User'),(2,NULL,NULL,'Calculate Debts'),(3,NULL,NULL,'Delete number from registry'),(4,NULL,NULL,'Insert number to the new registry'),(5,NULL,NULL,'Notify User (new provider)'),(6,NULL,NULL,'Update routing');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` int(11) NOT NULL,
  `token` int(11) NOT NULL,
  `exp_date` date NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `token_login_uindex` (`login`),
  UNIQUE KEY `token_token_uindex` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) COLLATE utf8_bin NOT NULL,
  `Surname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Patronymic` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Birth_date` date DEFAULT NULL,
  `Passport` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_bin NOT NULL,
  `Password` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `user_Email_uindex` (`Email`),
  UNIQUE KEY `user_login_uindex` (`login`),
  UNIQUE KEY `passport_unique` (`Passport`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (84,'Tanya','Petrova','Tanya',NULL,'1950-05-06','1234 0554141','Nnn@mail.ru','6512bd43d9caa6e02c990b0a82652dca'),(87,'vladislav_rusakov',NULL,NULL,NULL,NULL,NULL,'vladislav_rusakov','202cb962ac59075b964b07152d234b70'),(120,'vddastranger','Rusakov','Vladisalv',NULL,'1998-02-13','6511300693','vladdaking@gmail.com','245c15cd5377a0c555a0b4d0f5e20b86'),(121,'testing','testing','testing',NULL,'1998-02-13','6511300694','testing@gmail.com','698d51a19d8a121ce581499d7b701668'),(122,'test_1','Test','Test','AAA','2019-05-18','2233123321','test@test.com','698d51a19d8a121ce581499d7b701668'),(124,'qwerty','hi','dsfghgj','tsedyftgjhkj ','2020-09-09','4354657666','qwerty@qwerty.ru','d8578edf8458ce06fbc5bb76a58c5ca4'),(126,'Pavel','Petrov','Pavel',NULL,'1974-06-01','2547398653','Petrov_p@gmail.com','d8578edf8458ce06fbc5bb76a58c5ca4'),(127,'Лдчдаюа','Chebureks','Keks','патронумик','2019-05-21','1488228133','kek@ebalo.com','4297f44b13955235245b2497399d7a93'),(128,'zieleje',NULL,NULL,NULL,NULL,NULL,'sotnikovilya0722@gmail.com','d94e6af5ef801470c88df45cbcd8631f'),(129,'elaiv','Fedorov','Anton','Sergeevich','1996-03-09','6666666666','elaivelite@gmail.com','202cb962ac59075b964b07152d234b70'),(130,'dashulya','ponteleenko','dashyla',NULL,'1998-12-15','1512199867','Dashaponteleenko15@mail.ru','202cb962ac59075b964b07152d234b70'),(131,'Elena','Rusakova','Elena',NULL,'1985-08-02','6500111111','helen123@list.ru','202cb962ac59075b964b07152d234b70'),(132,'Nina','Ivanova','Nina',NULL,'1980-06-06','1523132132','Nina1980@mail.ru','698d51a19d8a121ce581499d7b701668');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 18:45:39
