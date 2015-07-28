-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ssm_website_development
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `album_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smugmug_album_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smugmug_album_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Wedgewood Upland Hills Bridal Show','2014-11-05','http://snapshowmagic.smugmug.com/Events/Wedgewood-Upland-Hills',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(2,'Wedgewood at The Retreat Bridal Show','2014-10-29','http://snapshowmagic.smugmug.com/Events/Wedgewood-at-The-Retreat/',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(3,'Wedgewood at Indian Hills Bridal Show','2014-10-22','http://snapshowmagic.smugmug.com/Events/Wedgewood-at-Indian-Hills/',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(4,'Wedgewood at Glen Ivy Bridal Show','2014-10-14','http://snapshowmagic.smugmug.com/Events/Wedgewood-at-Glen-Ivy-Bridal',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(5,'Matthew and Holly','2014-10-11','http://snapshowmagic.smugmug.com/Weddings/Matthew-and-Holly-10112014',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(6,'Oscar and Roxana','2014-10-04','http://snapshowmagic.smugmug.com/Weddings/Oscar-and-Roxana-100414',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(7,'Andrew and Carmen','2014-09-27','http://snapshowmagic.smugmug.com/Weddings/Andrew-and-Carmen-09272014',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(8,'NACE','2014-08-20','http://snapshowmagic.smugmug.com/Events/NACE-20140820/',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(9,'Daniel and Laura','2014-08-15','http://snapshowmagic.smugmug.com/Weddings/Daniel-and-Laura-08152014',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(10,'The Queen Mary Bridal Show','2014-08-10','http://snapshowmagic.smugmug.com/Events/Bridal-Show-The-Queen-Mary',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(11,'William and Lauren','2014-07-26','http://snapshowmagic.smugmug.com/Weddings/William-and-Lauren-07262014',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(12,'Mike and Sara','2014-07-20','http://snapshowmagic.smugmug.com/Weddings/Mike-and-Sara-07202014/',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(13,'Jamie and Natalie','2014-06-27','http://snapshowmagic.smugmug.com/Weddings/Jamie-and-Natalie-06272014/n-T8gvj',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(14,'Scott and Ashleigh','2014-06-22','http://snapshowmagic.smugmug.com/Weddings/Scott-and-Ashleigh-062214',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(15,'Michael and Jennifer','2014-05-04','http://snapshowmagic.smugmug.com/Weddings/Michael-and-Jennifer-050414',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(16,'Wedgewood at The Retreat Bridal Show','2014-04-23','http://snapshowmagic.smugmug.com/Weddings/The-Retreat-Bridal-Show-042314',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(17,'Michael and Rachael','2014-04-11','http://snapshowmagic.smugmug.com/Weddings/Michael-and-Rachael-041114',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(18,'Wedgewood Vellano Bridal Show','2014-04-08','http://snapshowmagic.smugmug.com/Weddings/Vellano-Bridal-Show-040814',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(19,'Cory and Katrina','2014-04-04','http://snapshowmagic.smugmug.com/Weddings/Cory-and-Katrina-040414',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(20,'Daniel and Taylor','2014-03-21','http://snapshowmagic.smugmug.com/Weddings/Daniel-and-Taylor-032114',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(21,'Wedgewood at Indian Hills Bridal Show','2014-02-19','http://snapshowmagic.smugmug.com/Weddings/Indian-Hills-Bridal-Show-1-1',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(22,'Mark and Laisa','2014-02-09','http://snapshowmagic.smugmug.com/Weddings/Mark-and-Laisa-020914',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(23,'Paul and Michele','2014-02-01','http://snapshowmagic.smugmug.com/Weddings/Paul-and-Michele-020114',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(24,'Scott and Jenna','2013-12-15','http://snapshowmagic.smugmug.com/Weddings/Scott-and-Jenna-121513',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(25,'Wedgewood Upland Hills Bridal Show','2013-11-05','http://snapshowmagic.smugmug.com/Weddings/Upland-Hills-Bridal-Show',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(26,'Wedgewood at Glen Ivy Bridal Show','2013-10-29','http://snapshowmagic.smugmug.com/Weddings/Glen-Ivy-Bridal-Show-102931',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(27,'Wedgewood at The Retreat Bridal Show','2013-10-23','http://snapshowmagic.smugmug.com/Weddings/The-Retreat-Bridal-Show-102313',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(28,'Wedgewood at Indian Hills Bridal Show','2013-10-16','http://snapshowmagic.smugmug.com/Weddings/Indian-Hills-Bridal-Show-1',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(29,'Josh and Danielle','2013-10-11','http://snapshowmagic.smugmug.com/Weddings/Josh-and-Danielle-101113',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(30,'Wedgewood Vellano Bridal Show','2013-10-08','http://snapshowmagic.smugmug.com/Weddings/Vellano-Bridal-Show-100813',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(31,'Pete and Tawnee','2013-09-14','http://snapshowmagic.smugmug.com/Weddings/Pete-and-Tawnee-091413',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(32,'Joe and Janna','2013-09-06','http://snapshowmagic.smugmug.com/Weddings/Joe-and-Janna-090613',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(33,'Greg and Nicole','2013-07-21','http://snapshowmagic.smugmug.com/Weddings/Greg-and-Nicole-072113/30671446_HNfsMh',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(34,'Erik and Kelly','2013-07-19','http://snapshowmagic.smugmug.com/Weddings/Erik-and-Kelly-071913/30637055_ngM6Qc',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(35,'Josh and Theresa','2013-06-29','http://snapshowmagic.smugmug.com/Weddings/Josh-and-Teresa-062913/30267396_npNPrn',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(36,'Alex and Ashlee','2013-06-01','http://snapshowmagic.smugmug.com/Weddings/Alex-and-Ashlee-060113/29756578_ZhrgSL',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(37,'Luke and Misty','2013-05-26','http://snapshowmagic.smugmug.com/Weddings/Luke-and-Misty-052613/29644098_qbNkNN',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(38,'Daniel and Amber','2013-04-26','http://snapshowmagic.smugmug.com/Weddings/Daniel-and-Amber-042613/29120599_GMxggH',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(39,'Wedgewood at Glen Ivy Bridal Show','2013-04-18','http://snapshowmagic.smugmug.com/Weddings/Glen-Ivy-Bridal-Show-041813/28990308_pkFjNQ',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(40,'Daniel and Lauren','2013-03-30','http://snapshowmagic.smugmug.com/Weddings/Daniel-and-Lauren-033013/28684667_bnGdvD',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(41,'Wedgewood at The Retreat Bridal Show','2013-03-20','http://snapshowmagic.smugmug.com/Weddings/The-Retreat-Bridal-Show-032013/28534144_SdsgnZ',NULL,NULL,'2015-03-31 07:37:59','2015-03-31 07:37:59'),(42,'Young and Vivian','2013-03-09','http://snapshowmagic.smugmug.com/Weddings/Young-and-Vivian-030913/28361784_pNcNCR',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(43,'Michael and Heather','2013-03-08','http://snapshowmagic.smugmug.com/Weddings/Michael-and-Heather-030813/28347204_XD9tv6',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(44,'Adrian and Adrianna','2013-02-23','http://snapshowmagic.smugmug.com/Weddings/Adrian-and-Adrianna-022313/28151176_QpWLwv',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(45,'Whispering Meadows Bridal Show','2013-02-02','http://snapshowmagic.smugmug.com/Weddings/Whispering-Meadows-Bridal-Show/27838013_pWvVKw',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(46,'Wedgewood at The Retreat Bridal Show','2012-11-15','http://snapshowmagic.smugmug.com/Weddings/The-Retreat-Bridal-Show-111512/26548041_7XM3Qr',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(47,'Wedgewood at Indian Hills Bridal Show','2012-10-24','http://snapshowmagic.smugmug.com/Weddings/Indian-Hills-Bridal-Show/26141664_fdZg4p',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(48,'Wedgewood at Glen Ivy Bridal Show','2012-10-17','http://snapshowmagic.smugmug.com/Weddings/Glen-Ivy-Bridal-Show-101712/25998255_DVSCLR',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(49,'Shad and Crystal','2012-08-25','http://snapshowmagic.smugmug.com/Weddings/Shad-and-Crystal-082512/24994050_JfpW4v',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(50,'Manuel and Victoria','2012-08-24','http://snapshowmagic.smugmug.com/Weddings/Manuel-and-Victoria-082412/24969841_2hJRwj',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(51,'Bogie and Kristen','2012-08-18','http://snapshowmagic.smugmug.com/Weddings/Bogie-and-Kristen-081812/24845669_M8dQ2w',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(52,'Darrall and Desiree','2012-08-12','http://snapshowmagic.smugmug.com/Weddings/Darrall-and-Desiree-081212/24727074_LTsC5Q',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(53,'Patrick and Andrea','2012-06-16','http://snapshowmagic.smugmug.com/Weddings/Patrick-and-Andrea-061612/23610292_jcSXPW',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(54,'Wedgewood at The Retreat Bridal Show','2012-04-18','http://snapshowmagic.smugmug.com/Weddings/The-Retreat-Bridal-Show-041712/22525525_Vtz77M',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(55,'Michael and Robin','2012-04-15','http://snapshowmagic.smugmug.com/Weddings/Michael-and-Robin-041512/22473732_3hBpgr',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(56,'Gabriel and Tiffanie','2012-04-14','http://snapshowmagic.smugmug.com/Weddings/Gabriel-and-Tiffanie-041412/22452942_vQqjc3',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(57,'Wedgewood at Glen Ivy Bridal Show','2012-02-23','http://snapshowmagic.smugmug.com/Weddings/Glen-Ivy-Bridal-Show-022312/21611219_4ZFPf3',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(58,'Andrew and Sara','2011-12-17','http://snapshowmagic.smugmug.com/Weddings/Andrew-and-Sara-121711/20646424_tfzVHm#1636967079_bFstZRw',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(59,'Kevin and Sarah','2011-11-13','http://snapshowmagic.smugmug.com/Weddings/Kevin-and-Sarah-111311/20075184_cNwfLf',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(60,'Mike and Natalie','2011-07-17','http://snapshowmagic.smugmug.com/Weddings/Mike-and-Natalie-71711/18102402_SCs5TF#1388823393_cPcGrvq',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(61,'Lowell and Panda','2010-11-27','http://snapshowmagic.smugmug.com/Weddings/Lowell-and-Panda-112710/14838209_ATGQ4#1106976954_AJFJn',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(62,'Ron and Susan','2010-10-10','http://snapshowmagic.smugmug.com/Weddings/Ron-and-Susan-101010/14640166_xHgqU#1089251791_Jdynm',NULL,NULL,'2015-03-31 07:38:00','2015-03-31 07:38:00'),(63,'OC Brides Networking Event','2015-02-18','http://snapshowmagic.smugmug.com/Events/OC-Brides-Networking-Event-1/','47593029','kxn3Ls','2015-03-31 07:38:00','2015-03-31 07:38:00'),(64,'Wedgewood Awards Banquet','2015-02-16','http://snapshowmagic.smugmug.com/Events/Wedgewood-Awards-Banquet','47552950','jvQpCD','2015-03-31 07:38:00','2015-03-31 07:38:00'),(65,'Daniel and Leslie','2015-01-04','http://snapshowmagic.smugmug.com/Weddings/Daniel-and-Leslie-01042015','46762858','5v9pdP','2015-03-31 07:38:00','2015-03-31 07:38:00'),(66,'Robert\'s X-mas Party','2014-12-13','http://snapshowmagic.smugmug.com/Parties/Roberts-X-mas-Party-12132014','46351353','vf4KZq','2015-03-31 07:38:00','2015-03-31 07:38:00'),(67,'Buck and Tina','2014-11-16','http://snapshowmagic.smugmug.com/Weddings/Buck-and-Tina-11162014/','45774308','JTLQ7v','2015-03-31 07:38:00','2015-03-31 07:38:00'),(68,'Wedgewood Menifee Lakes Bridal Show','2014-11-11','http://snapshowmagic.smugmug.com/Events/Wedgewood-Menifee-Lakes-Bridal','45664020','2HHMXP','2015-03-31 07:38:00','2015-03-31 07:38:00'),(69,'Eagle Glen Bridal Show','2015-03-22','http://snapshowmagic.smugmug.com/Events/Eagle-Glen-Bridal-Show-3222015','48225498','tn5Ln2','2015-03-31 07:38:00','2015-03-31 07:38:00'),(70,'Wedgewood Sierra La Verne Bridal Show','2015-03-18','http://snapshowmagic.smugmug.com/Events/Wedgewood-Sierra-La-Verne/','48101942','mC7qQ5','2015-03-31 07:38:00','2015-03-31 07:38:00'),(71,'Michael and Brittany','2015-03-21','http://snapshowmagic.smugmug.com/Weddings/Michael-and-Brittany-03212015','48152709','kShLpz','2015-03-31 07:38:00','2015-03-31 07:38:00');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20150314071609'),('20150314222524'),('20150317000001'),('20150317000002'),('20150331000001'),('20150331000002');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Buck & Tina','AMAZING! I have been in the wedding industry for 21 years and thought I had seen every possible service offered for that “special day” but when I had my wedding, (finally-lol), my friends surprised me with having you there and it really was magical! What a great enhancement to our wedding day! Honestly, it has added a very special kind of instant magic to our event. The following day we had a potluck brunch to relax, (well, okay recover), and played the dvd all day as people came over. It was great!\n\nYour crew was professional, unobtrusive, and even took pics as well! The instant viewing throughout the reception was perfect and all our guests can continue to enjoy the pics on the website gallery. I highly recommend your service.\n\nAgain, AMAZING!','2015-03-31 07:38:00','2015-03-31 07:38:00'),(2,'Ashlee & Alex Sanchez','Alex and I would like to give you guys our most sincere thank you for the amazing service you guys provided for our wedding! We were so excited to see all of the photos that everyone took and were also pleasantly surprised by the photos you also took throughout our wedding. It was also a nice surprise to actually get the DVD at the end of the night with a custom cover and labeled DVD. Talk about service! You guys were worth every penny and more! Most definetly the biggest bang for our buck! You made our wedding so much more amazing and fun for our guests because of the genius idea you have created! I’m sure you will be getting business from our single guests when they get married! We highly recommend you guys for anyone that wants a unique and memorable feature to their special day. Thank you!','2015-03-31 07:38:00','2015-03-31 07:38:00'),(3,'Young & Vivian','We just wanted to give our most sincere thanks to you and your team. We were going through pictures and realized the effort and individual attention you gave to our wedding. People are asking for your information left and right. We’ll of course give them our honest opinion, that your services were worth their weight in gold. Worth much more than what you are charging for such incredible services.','2015-03-31 07:38:00','2015-03-31 07:38:00'),(4,'Adrian & Adrianna','Thank you so much for your wonderful work on 2/23/13. I am so happy as well as Adrian with the pics. I did not even realize you guys were taking pics of the ceremony which was a good surprise since I do not have any of the professional pics back yet. You guys are amazing I cannot say enough about you and your services thank you so much for everything.','2015-03-31 07:38:00','2015-03-31 07:38:00');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2015-07-28  1:16:44
