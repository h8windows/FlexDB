-- MySQL dump 10.13  Distrib 5.5.12, for osx10.6 (i386)
--
-- Host: localhost    Database: flexdb_development
-- ------------------------------------------------------
-- Server version	5.5.12

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
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `market_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `remoteId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remoteMarketId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_features_on_market_id` (`market_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (2,'Shopping with Bags','Big bags hold more stuff',1,'2011-11-12 22:52:09','2011-11-19 15:14:20',NULL,NULL,NULL),(5,'see if this works','should have email? editing someone elses content again hjasdf',1,'2011-11-13 18:54:54','2011-11-15 13:49:43',1,NULL,NULL),(6,'Shop till you drop','Another article goes here',1,'2011-11-13 23:06:40','2011-11-13 23:06:40',1,NULL,NULL),(7,'Another Article by Chris','see what this says when finished. again!!',1,'2011-11-16 21:56:27','2011-11-16 22:09:14',1,NULL,NULL),(8,'Starting Over Editing!!','Removed old create action. put some stuff in here. from the form. again from the form. adding after making all those changes. More changes without reselecting file.',4,'2011-11-19 15:14:49','2011-12-10 16:40:37',1,'FE0000000008','MS0000000023'),(9,'Here\'s another one','Bad API key. see if it works. put some stuff in here.',4,'2011-11-19 15:31:05','2011-12-07 16:33:28',1,'FE0000000009','MS0000000023'),(10,'JSON stuff','See how this works. From the form. again. Now with the function on the button. asdlkf asdkflj asdlkf adsklf afd more stuff with no token. put token back in.',4,'2011-11-19 19:02:43','2011-12-07 16:33:53',1,'FE00000000010','MS0000000023'),(11,'From API','Using XML this time',4,'2011-11-19 19:04:23','2011-12-07 16:34:18',1,'FE0000000011','MS0000000023'),(12,'Hello Mary','What are you doing?',4,'2011-11-19 19:05:55','2011-12-07 16:34:36',1,'FE0000000012','MS0000000023'),(13,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file',6,'2011-11-19 22:53:28','2011-11-19 22:53:28',1,NULL,NULL),(14,'Article Two','see if two of them come out now. Added five articles with one JSON file',6,'2011-11-19 22:53:28','2011-11-19 22:53:28',1,NULL,NULL),(15,'Article Three','See how this works. Added five articles with one JSON file',6,'2011-11-19 22:53:28','2011-11-19 22:53:28',1,NULL,NULL),(16,'Article Four','Using XML this time. Added five articles with one JSON file',6,'2011-11-19 22:53:28','2011-11-19 22:53:28',1,NULL,NULL),(17,'Article Five','What are you doing? Added five articles with one JSON file',6,'2011-11-19 22:53:28','2011-11-19 22:53:28',1,NULL,NULL),(18,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file',7,'2011-11-19 23:57:04','2011-11-19 23:57:04',1,NULL,NULL),(19,'Article Two','see if two of them come out now. Added five articles with one JSON file',7,'2011-11-19 23:57:04','2011-11-19 23:57:04',1,NULL,NULL),(20,'Article Three','See how this works. Added five articles with one JSON file',7,'2011-11-19 23:57:04','2011-11-19 23:57:04',1,NULL,NULL),(21,'Article Four','Using XML this time. Added five articles with one JSON file',7,'2011-11-19 23:57:04','2011-11-19 23:57:04',1,NULL,NULL),(22,'Article Five','What are you doing? Added five articles with one JSON file',7,'2011-11-19 23:57:04','2011-11-19 23:57:04',1,NULL,NULL),(23,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file',7,'2011-11-19 23:58:50','2011-11-19 23:58:50',1,NULL,NULL),(24,'Article Two','see if two of them come out now. Added five articles with one JSON file',7,'2011-11-19 23:58:50','2011-11-19 23:58:50',1,NULL,NULL),(25,'Article Three','See how this works. Added five articles with one JSON file',7,'2011-11-19 23:58:50','2011-11-19 23:58:50',1,NULL,NULL),(26,'Article Four','Using XML this time. Added five articles with one JSON file',7,'2011-11-19 23:58:50','2011-11-19 23:58:50',1,NULL,NULL),(27,'Article Five','What are you doing? Added five articles with one JSON file',7,'2011-11-19 23:58:50','2011-11-19 23:58:50',1,NULL,NULL),(28,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file',7,'2011-11-20 00:01:16','2011-11-20 00:01:16',1,NULL,NULL),(29,'Article Two','see if two of them come out now. Added five articles with one JSON file',7,'2011-11-20 00:01:16','2011-11-20 00:01:16',1,NULL,NULL),(30,'Article Three','See how this works. Added five articles with one JSON file',7,'2011-11-20 00:01:16','2011-11-20 00:01:16',1,NULL,NULL),(31,'Article Four','Using XML this time. Added five articles with one JSON file',7,'2011-11-20 00:01:16','2011-11-20 00:01:16',1,NULL,NULL),(32,'Article Five','What are you doing? Added five articles with one JSON file',7,'2011-11-20 00:01:16','2011-11-20 00:01:16',1,NULL,NULL),(33,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file',7,'2011-11-20 00:01:52','2011-11-20 00:01:52',1,NULL,NULL),(34,'Article Two','see if two of them come out now. Added five articles with one JSON file',7,'2011-11-20 00:01:52','2011-11-20 00:01:52',1,NULL,NULL),(35,'Article Three','See how this works. Added five articles with one JSON file',7,'2011-11-20 00:01:52','2011-11-20 00:01:52',1,NULL,NULL),(36,'Article Four','Using XML this time. Added five articles with one JSON file',7,'2011-11-20 00:01:52','2011-11-20 00:01:52',1,NULL,NULL),(37,'Article Five','What are you doing? Added five articles with one JSON file',7,'2011-11-20 00:01:52','2011-11-20 00:01:52',1,NULL,NULL),(38,'Is this still working???','This used to say \"What are you doing?\" Now it\'s different',4,'2011-11-20 00:03:08','2011-12-07 16:35:15',1,'FE0000000038','MS0000000023'),(39,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file',9,'2011-11-20 01:26:47','2011-11-20 01:26:47',1,NULL,NULL),(40,'Article Two','see if two of them come out now. Added five articles with one JSON file',9,'2011-11-20 01:26:47','2011-11-20 01:26:47',1,NULL,NULL),(41,'Article Three','See how this works. Added five articles with one JSON file',9,'2011-11-20 01:26:47','2011-11-20 01:26:47',1,NULL,NULL),(42,'Article Four','Using XML this time. Added five articles with one JSON file',9,'2011-11-20 01:26:47','2011-11-20 01:26:47',1,NULL,NULL),(43,'Article Five','What are you doing? Added five articles with one JSON file',9,'2011-11-20 01:26:47','2011-11-20 01:26:47',1,NULL,NULL),(44,'Is this still working???','What are you doing?',9,'2011-11-20 15:19:58','2011-11-20 15:19:58',1,NULL,NULL),(45,'Article One','See how this works. put some stuff in here. Added five articles with one JSON file. Editing with new ids.',10,'2011-11-20 15:28:46','2011-12-06 19:42:05',1,'CL0000000001','MS0000000009'),(46,'Article Two','Removed old create action. put some stuff in here.',10,'2011-11-20 15:32:22','2011-12-06 18:47:48',1,'CL0000000002','MS0000000009'),(47,'Using LE UID','I changed the features controller to find_by_remoteId. I hope this works.',4,'2011-12-06 16:31:32','2011-12-07 16:35:38',1,'FE0000000047','MS0000000023'),(50,'Using LE UID again','I changed the features controller to find_by_remoteId. I hope this works.',4,'2011-12-06 16:37:02','2011-12-07 18:46:13',1,'FE0000000050','MS0000000023'),(51,'Using \"LE UID\" again','I changed the features controller to find_by_remoteId. I hope this works.',4,'2011-12-06 16:37:52','2011-12-07 18:46:43',1,'FE0000000051','MS0000000023'),(59,'Escape the ampersand?','<SPAN STYLE= \"\" >From a hip hot dog stand to stylish fine dining at one of the city&rsquo;s grandest hotels, Chicago&rsquo;s kitchen is packed with new restaurants this month. <BR>Nightlife impresario Dion Antic (Iggy&rsquo;s) pays homage to red hots and rockers with the just-opened </SPAN><SPAN STYLE= \"font-weight: bold;\" >Rockstar Dogs</SPAN><SPAN STYLE= \"\" > (801 N. Ashland Ave., 312-421-2DOG), which features Vienna Beef wieners gussied up with toppings traditional (chili cheese) and not (grilled pineapple and mango chutney relish).<BR>With a focus on grilled-to-order meats and seafood, modern Catalan tapas restaurant </SPAN><SPAN STYLE= \"font-weight: bold;\" >Mercat a la Planxa </SPAN><SPAN STYLE= \"\" >(638 S. Michigan Ave., 312-765-0524) is just one more reason why the South Loop is sizzling. <BR>Down in restaurant-hungry Hyde Park, there&rsquo;s Asian hangout </SPAN><SPAN STYLE= \"font-weight: bold;\" >Chant</SPAN><SPAN STYLE= \"\" > (1509 E. 53rd St., 773-324-1999), with chic d&eacute;cor and a noodle-focused menu. <BR>Wicker Park&rsquo;s all-American </SPAN><SPAN STYLE= \"font-weight: bold;\" >Fifty/50</SPAN><SPAN STYLE= \"\" > (2047 W. Division St., 773-489-5050) serves up fried chicken, baby back ribs and honey-orange teriyaki marinated skirt steak. <BR>And then there&rsquo;s </SPAN><SPAN STYLE= \"font-weight: bold;\" >Lockwood</SPAN><SPAN STYLE= \"\" > (17 E. Monroe St., 312- 917-3404), the intimate, low-ceilinged restaurant off the lobby of the elegantly renovated Palmer House Hilton Hotel, where exec chef Phillip Foss impresses with ambitious contemporary fare like sushi-grade sea scallops with cauliflower, toasted almonds and golden raisins (pictured) and &ldquo;surf, turf and turf,&rdquo; a trio of prime beef tenderloin, short ribs and butter-poached Maine lobster.</SPAN>',4,'2011-12-06 19:44:55','2011-12-07 18:47:26',1,'CL0000000555','MS0000000023'),(60,'Updated Title','This is the body of the article',4,'2011-12-06 19:50:28','2011-12-07 18:47:46',1,'CL0000000060','MS0000000023'),(61,'This time with the remote market id','<SPAN STYLE= \"\" >From a hip hot dog stand to stylish fine dining at one of the city&rsquo;s grandest hotels, Chicago&rsquo;s kitchen is packed with new restaurants this month. <BR>Nightlife impresario Dion Antic (Iggy&rsquo;s) pays homage to red hots and rockers with the just-opened </SPAN><SPAN STYLE= \"font-weight: bold;\" >Rockstar Dogs</SPAN><SPAN STYLE= \"\" > (801 N. Ashland Ave., 312-421-2DOG), which features Vienna Beef wieners gussied up with toppings traditional (chili cheese) and not (grilled pineapple and mango chutney relish).<BR>With a focus on grilled-to-order meats and seafood, modern Catalan tapas restaurant </SPAN><SPAN STYLE= \"font-weight: bold;\" >Mercat a la Planxa </SPAN><SPAN STYLE= \"\" >(638 S. Michigan Ave., 312-765-0524) is just one more reason why the South Loop is sizzling. <BR>Down in restaurant-hungry Hyde Park, there&rsquo;s Asian hangout </SPAN><SPAN STYLE= \"font-weight: bold;\" >Chant</SPAN><SPAN STYLE= \"\" > (1509 E. 53rd St., 773-324-1999), with chic d&eacute;cor and a noodle-focused menu. <BR>Wicker Park&rsquo;s all-American </SPAN><SPAN STYLE= \"font-weight: bold;\" >Fifty/50</SPAN><SPAN STYLE= \"\" > (2047 W. Division St., 773-489-5050) serves up fried chicken, baby back ribs and honey-orange teriyaki marinated skirt steak. <BR>And then there&rsquo;s </SPAN><SPAN STYLE= \"font-weight: bold;\" >Lockwood</SPAN><SPAN STYLE= \"\" > (17 E. Monroe St., 312- 917-3404), the intimate, low-ceilinged restaurant off the lobby of the elegantly renovated Palmer House Hilton Hotel, where exec chef Phillip Foss impresses with ambitious contemporary fare like sushi-grade sea scallops with cauliflower, toasted almonds and golden raisins (pictured) and &ldquo;surf, turf and turf,&rdquo; a trio of prime beef tenderloin, short ribs and butter-poached Maine lobster.</SPAN>',4,'2011-12-06 19:55:53','2011-12-07 18:48:05',1,'CL0000000061','MS0000000023'),(62,'Center of Attraction','<SPAN STYLE= \"\" >The Art Institute and MCA aren&rsquo;t the only hot spots for great art in Chicago. There&rsquo;s also plenty worth browsing at the </SPAN><SPAN STYLE= \"font-weight: bold;\" >Chicago Cultural Center</SPAN><SPAN STYLE= \"\" >, which boasts multiple galleries brimming with free art all year &lsquo;round: &ldquo;eMotion Pictures: An Exhibition of Orthopaedics in Art&rdquo; (through July 20); and &ldquo;Arnaldo Roche: Brotherhood,&rdquo; the notable Puerto Rican expressionist painter&rsquo;s first major solo exhibition in Chicago since 1987 (through June 22). Open M-Th 8 am-7 pm; F 8 am-6 pm; Sa 9 am-6 pm; Su 10 am-6 pm. <BR></SPAN><SPAN STYLE= \"font-style:italic;\" >78 E. Washington St., 312-744-6630</SPAN>',4,'2011-12-06 21:18:36','2011-12-07 18:48:27',1,'FE0000000062','MS0000000023');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `markets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remoteId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markets`
--

LOCK TABLES `markets` WRITE;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
INSERT INTO `markets` VALUES (4,'Atlanta','2011-11-18 17:52:59','2011-12-06 18:10:01','MS0000000023'),(5,'Boston','2011-11-18 17:53:14','2011-11-18 17:53:14',NULL),(6,'Chicago','2011-11-19 16:01:07','2011-11-19 16:01:07',NULL),(7,'Dallas','2011-11-19 16:12:55','2011-11-19 16:12:55',NULL),(9,'Jacksonville','2011-11-20 01:24:35','2011-11-20 01:24:35',NULL),(10,'Miami','2011-11-20 15:22:35','2011-12-06 18:35:28','MS0000000009'),(11,'Austin','2011-12-09 17:44:10','2011-12-09 17:44:10','');
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `thing_id` int(11) DEFAULT NULL,
  `thing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,NULL,1,'Market','view','2011-11-16 22:51:44','2011-11-16 22:51:44'),(2,NULL,2,'Market','view','2011-11-16 22:51:53','2011-11-16 22:51:53'),(3,NULL,1,'Market','view','2011-11-16 22:52:12','2011-11-16 22:52:12'),(4,NULL,2,'Market','view','2011-11-16 22:52:12','2011-11-16 22:52:12'),(5,2,4,'Market','edit features','2011-11-18 17:53:33','2011-11-18 17:53:33'),(6,2,4,'Market','create features','2011-11-18 17:53:33','2011-11-18 17:53:33'),(7,2,4,'Market','view','2011-11-18 17:53:33','2011-11-18 17:53:33'),(8,4,5,'Market','edit features','2011-11-18 17:53:54','2011-11-18 17:53:54'),(9,4,5,'Market','create features','2011-11-18 17:53:54','2011-11-18 17:53:54'),(10,4,5,'Market','view','2011-11-18 17:53:54','2011-11-18 17:53:54');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20111111175155'),('20111111202120'),('20111111213311'),('20111112205151'),('20111113172510'),('20111113174818'),('20111113194043'),('20111114152024'),('20111115035849'),('20111117213534'),('20111206180608'),('20111206180634'),('20111206184557'),('20111209214202'),('20111210172643');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'h8windows@gmail.com','$2a$10$qAcgpn38GC/DcAAND.VO0OuAgkvmSLyP0/zlvmJvPEvOrqKcMis96',NULL,NULL,NULL,29,'2011-12-09 22:20:35','2011-12-09 17:43:15','127.0.0.1','127.0.0.1','2011-11-13 18:47:07','2011-12-09 22:20:35',NULL,'2011-11-13 18:52:45','2011-11-13 18:47:07','Chris Holmes',1,'qqMJpyFbnqXVyPRLCwrv'),(2,'user@example.com','$2a$10$XEdQywrofB4gSeqau80LI.uPDbqla93pkjk1PykE.9KRLoOxmrYWW',NULL,NULL,NULL,12,'2011-11-16 18:56:34','2011-11-16 13:43:32','127.0.0.1','127.0.0.1','2011-11-13 19:54:25','2011-11-16 18:56:34',NULL,'2011-11-13 19:54:39','2011-11-13 19:54:25','Example User',0,NULL),(3,'billy@bob.com','$2a$10$2MLrG1XLkY4xSjcN2yIY4eNLf.27W/hJzGhRjmrow7sMTMshUttNa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2011-11-14 01:48:01','2011-11-15 03:15:32',NULL,NULL,NULL,'Billybob',1,NULL),(4,'user2@example.com','$2a$10$fGGlO0GjULLqJKu2ti7B3.3u1nKy4GuvGup8sgNuoqE1/NQ4HdZkW',NULL,NULL,NULL,2,'2011-11-16 14:00:32','2011-11-16 13:48:00','127.0.0.1','127.0.0.1','2011-11-15 03:08:20','2011-11-16 14:00:32',NULL,NULL,NULL,'User Four',0,NULL),(5,'admin@morris.com','$2a$10$dxP4fYwjUA0sI8PFH2zAiO06rG8bs6w.qxItXcrPCWJI8uJ/mzu0C',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2011-12-07 18:52:32','2011-12-07 18:52:32',NULL,NULL,NULL,'Admin',1,'yQpNztA9aAjdjpxpyoQZ');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-10 14:30:01
