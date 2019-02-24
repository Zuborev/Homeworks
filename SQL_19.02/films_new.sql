-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: FILMS
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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id_actor` int(5) NOT NULL AUTO_INCREMENT,
  `surname` varchar(50) NOT NULL DEFAULT '',
  `sex` varchar(1) NOT NULL DEFAULT '',
  `country_birth` varchar(50) NOT NULL DEFAULT '',
  `year_birth` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_actor`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Morgan Freeman','m','USA',1937),(2,'Tom Hanks','m','USA',1956),(3,'Robin Wright','f','USA',1966),(4,'Liam Neeson','m','Northern Ireland',1952),(5,'François Cluzet','m','France',1955),(6,'Natalie Portman','f','Jerusalem',1981),(7,'Jean Reno','m','Morocco',1948),(8,'Leonardo DiCaprio','m','USA',1974),(9,'Brad Pitt','m','USA',1963),(10,'Edward Norton','m','USA',1969),(11,'Leonid Kuravlyov','m','USSR',1936),(12,'Yury Yakovlev','m','USSR',1928),(13,'Nicoletta Braschi','f','Italy',1960),(14,'Jan Josef Liefers','m','Germany',1964),(15,'Al Pacino','m','USA',1940),(16,'Marlon Brando','m','USA',1953),(17,'Uma Thurman','f','USA',1970),(18,'John Travolta','m','USA',1954),(19,'Christian Bale','m','Wales',1974),(20,'Hugh Jackman','m','Australia',1968),(21,'Aleksandr Demyanenko','m','USSR',1937),(22,'Yuri Nikulin','m','USSR',1921),(23,'Ed Harris','m','USA',1950),(24,'Russell Crowe','m','New Zealand',1964),(25,'Joaquin Phoenix','m','USA',1974),(26,'Anne Hathaway','f','USA',1982),(27,'Matthew McConaughey','m','USA',1969),(28,'Orlando Bloom','m','England',1977),(29,'Elijah Wood','m','USA',1981);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id_cnt` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_cnt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'England'),(2,'USA'),(3,'USSR'),(4,'France'),(5,'Germany'),(6,'Italia'),(7,'New Zealand');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_actor` (
  `id_film` int(5) NOT NULL,
  `id_actor` int(5) NOT NULL,
  PRIMARY KEY (`id_film`,`id_actor`),
  KEY `id_actor` (`id_actor`),
  CONSTRAINT `film_actor_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`),
  CONSTRAINT `film_actor_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1),(2,2),(3,2),(3,3),(4,4),(5,5),(6,6),(6,7),(7,8),(9,9),(9,10),(10,11),(10,12),(11,13),(12,14),(13,15),(13,16),(14,17),(14,18),(15,19),(15,20),(16,21),(16,22),(17,23),(17,24),(18,24),(18,25),(19,26),(19,27),(20,28),(20,29);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_country`
--

DROP TABLE IF EXISTS `film_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_country` (
  `id_film` int(5) NOT NULL,
  `id_cnt` int(3) NOT NULL,
  PRIMARY KEY (`id_film`,`id_cnt`),
  KEY `id_cnt` (`id_cnt`),
  CONSTRAINT `film_country_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`),
  CONSTRAINT `film_country_ibfk_2` FOREIGN KEY (`id_cnt`) REFERENCES `country` (`id_cnt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_country`
--

LOCK TABLES `film_country` WRITE;
/*!40000 ALTER TABLE `film_country` DISABLE KEYS */;
INSERT INTO `film_country` VALUES (15,1),(18,1),(19,1),(1,2),(2,2),(3,2),(4,2),(7,2),(8,2),(9,2),(13,2),(14,2),(15,2),(17,2),(18,2),(19,2),(20,2),(10,3),(16,3),(5,4),(6,4),(9,5),(12,5),(11,6),(20,7);
/*!40000 ALTER TABLE `film_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_genre` (
  `id_film` int(5) NOT NULL,
  `id_gnr` int(5) NOT NULL,
  PRIMARY KEY (`id_film`,`id_gnr`),
  KEY `id_gnr` (`id_gnr`),
  CONSTRAINT `film_genre_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`),
  CONSTRAINT `film_genre_ibfk_2` FOREIGN KEY (`id_gnr`) REFERENCES `genre` (`id_gnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_genre`
--

LOCK TABLES `film_genre` WRITE;
/*!40000 ALTER TABLE `film_genre` DISABLE KEYS */;
INSERT INTO `film_genre` VALUES (6,1),(7,1),(9,1),(12,1),(18,1),(19,1),(20,1),(8,2),(10,2),(12,2),(18,2),(19,2),(20,2),(3,3),(5,3),(9,3),(10,3),(11,3),(12,3),(14,3),(16,3),(1,4),(2,4),(6,4),(7,4),(12,4),(13,4),(14,4),(15,4),(16,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(8,5),(9,5),(11,5),(12,5),(13,5),(14,5),(15,5),(17,5),(18,5),(19,5),(20,5),(3,6),(4,6),(13,6),(8,8),(10,8),(7,9),(15,9),(19,9),(4,10),(11,10);
/*!40000 ALTER TABLE `film_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `id_film` int(4) NOT NULL AUTO_INCREMENT,
  `name_flm` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) NOT NULL DEFAULT '1900',
  `length_min` int(3) NOT NULL DEFAULT '0',
  `budget_doll` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'The Shawshank Redemption',1994,142,25000000),(2,'The Green Mile',1999,189,60000000),(3,'Forrest Gump',1994,142,55000000),(4,'Schindler\'s List',1993,195,22000000),(5,'Intouchables',2011,112,10000000),(6,'Leon',1994,133,16000000),(7,'Inception',2010,148,160000000),(8,'The Lion King',1994,88,45000000),(9,'Fight Club',1999,131,63000000),(10,'Ivan Vasilievich: Back to the Future',1973,88,0),(11,'La vita e bella',1997,116,20000000),(12,'Knockin\' on Heaven\'s Door',1997,87,4300000),(13,'The Godfather',1972,175,6000000),(14,'Pulp Fiction',1994,154,8000000),(15,'The Prestige',2006,125,40000000),(16,'Operation Y and Shurik\'s Other Adventures',1965,95,0),(17,'A Beautiful Mind',2001,135,58000000),(18,'Gladiator',2000,155,103000000),(19,'Interstellar',2014,169,165000000),(20,'The Lord of the Rings: The Return of the King',2003,201,94000000);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id_gnr` int(3) NOT NULL AUTO_INCREMENT,
  `name_genre` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_gnr`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Comedy'),(4,'Crime'),(5,'Drama'),(6,'Epics/Historical'),(7,'Horror'),(8,'Musicals'),(9,'Sci-Fi'),(10,'War'),(11,'Westerns');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-19 19:49:41
