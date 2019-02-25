-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Curtain Call: The Hits'),(2,'Hot Fuss'),(3,'Meteora'),(4,'Escape'),(5,'Nevermind'),(6,'Live in Texas'),(7,'The Love Below'),(8,'Thriller'),(9,'Elephant'),(10,'X&Y'),(11,'Californication'),(12,'Merry Christmas'),(13,'Encore'),(14,'City of Angels'),(15,'(What\'s the Story) Morning Glory?'),(16,'The Slim Shady'),(17,'The Marshall Mathers'),(18,'The Eminem Show'),(19,'Minutes To Midnight');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'The Killers'),(2,'Linkin Park'),(3,'Journey'),(4,'Nirvana'),(5,'Out Kast'),(6,'Michael Jackson'),(7,'The White Stripes'),(8,'Coldplay'),(9,'Red Hot Chili Peppers'),(10,'Mariah Carey'),(11,'Goo Goo Dolls'),(12,'Oasis'),(13,'Eminem');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Hip Hop'),(2,'Alt Metal'),(3,'Rock'),(4,'Pop'),(5,'R&B');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) NOT NULL DEFAULT '0',
  `id_album` int(5) DEFAULT NULL,
  `id_genre` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_album` (`id_album`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `track_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id`) ON DELETE CASCADE,
  CONSTRAINT `track_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (1,'Lose Yourself',2002,1,1),(2,'Mr. Brightside',2005,2,2),(3,'Numb',2003,3,2),(4,'Don\'t Stop Believin\'',1981,4,3),(5,'Smells Like Teen Spirit',1991,5,3),(6,'In The End',2001,6,2),(7,'Hey Ya!',2003,7,1),(8,'Billie Jean',1983,8,4),(9,'Seven Nation Army',2003,9,2),(10,'Fix You',2005,10,2),(11,'Californication',2000,11,2),(12,'All I Want For Christmas Is You',2000,12,5),(13,'Mockingbird',2005,13,1),(14,'Iris',1998,14,3),(15,'Wonderwall',1996,15,2),(16,'My Name Is',1999,16,1),(17,'Survival',2013,17,1),(18,'Superman',2003,18,1),(19,'Sing For The Moment',2003,18,1),(20,'Bleed It Out',2007,19,2),(21,'Breaking the Habit',2003,3,2),(22,'One Step Closer',2003,6,2),(23,'Faint',2003,3,2);
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_artist`
--

DROP TABLE IF EXISTS `track_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_artist` (
  `track_id` int(5) NOT NULL,
  `artist_id` int(5) NOT NULL,
  PRIMARY KEY (`track_id`,`artist_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `track_artist_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`),
  CONSTRAINT `track_artist_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_artist`
--

LOCK TABLES `track_artist` WRITE;
/*!40000 ALTER TABLE `track_artist` DISABLE KEYS */;
INSERT INTO `track_artist` VALUES (2,1),(3,2),(6,2),(20,2),(21,2),(22,2),(23,2),(4,3),(5,4),(7,5),(8,6),(9,7),(10,8),(11,9),(12,10),(14,11),(15,12),(1,13),(13,13),(16,13),(17,13),(18,13),(19,13);
/*!40000 ALTER TABLE `track_artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-25 22:07:19
