-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: praksa
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `korisnickoIme` varchar(20) NOT NULL,
  `sifra` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Ivo','Ivic','ivoivic','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obavlja praksu`
--

DROP TABLE IF EXISTS `obavlja praksu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obavlja praksu` (
  `IDprakse` int(11) NOT NULL,
  `MBRstudenta` int(11) DEFAULT NULL,
  `bilješke` varchar(100) DEFAULT NULL,
  `datoteke` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDprakse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obavlja praksu`
--

LOCK TABLES `obavlja praksu` WRITE;
/*!40000 ALTER TABLE `obavlja praksu` DISABLE KEYS */;
/*!40000 ALTER TABLE `obavlja praksu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obavljena praksa`
--

DROP TABLE IF EXISTS `obavljena praksa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obavljena praksa` (
  `MBRstudenta` int(11) DEFAULT NULL,
  `IDPrakse` int(11) NOT NULL,
  `Datoteke` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDPrakse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obavljena praksa`
--

LOCK TABLES `obavljena praksa` WRITE;
/*!40000 ALTER TABLE `obavljena praksa` DISABLE KEYS */;
/*!40000 ALTER TABLE `obavljena praksa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poduzeca`
--

DROP TABLE IF EXISTS `poduzeca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poduzeca` (
  `id_poduzeca` int(11) NOT NULL,
  `nazivPoduzeca` varchar(20) NOT NULL,
  `adresa` varchar(20) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `url` varchar(20) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `faks` varchar(20) DEFAULT NULL,
  `odgovornaOsoba` varchar(20) DEFAULT NULL,
  `opisPoduzeca` varchar(50) DEFAULT NULL,
  `aktivno` tinyint(4) NOT NULL,
  `brojStudenata` int(11) NOT NULL,
  PRIMARY KEY (`id_poduzeca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poduzeca`
--

LOCK TABLES `poduzeca` WRITE;
/*!40000 ALTER TABLE `poduzeca` DISABLE KEYS */;
INSERT INTO `poduzeca` VALUES (1,'Prvo','M.Gupca 20','prvo@prvo.hr','prvo.hr','0971234567','040825456','Štef','vrlo važno poduzece',0,0),(2,'Drugo','Trg maršala tita','drugo@drugo.hr','drugo.hr','0991234567','042258789','Mirko','još važnije poduzece',1,0);
/*!40000 ALTER TABLE `poduzeca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `maticniBroj` varchar(13) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `adresaStanovanja` varchar(20) DEFAULT NULL,
  `mail` varchar(20) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `smjerStudija` varchar(20) NOT NULL,
  `godinaStudija` int(1) NOT NULL,
  `korisnickoIme` varchar(20) NOT NULL,
  `lozinka` varchar(20) NOT NULL,
  PRIMARY KEY (`maticniBroj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('0','admin','admin','admin','admin@admin.com','admin','admin',0,'admin','!2Asdf'),('1234567890123','Ana','Anic','anina adresa','ana@anic.com','123456','Racunalstvo',2,'ana','!2Asdf');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrtsekorisnika`
--

DROP TABLE IF EXISTS `vrtsekorisnika`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrtsekorisnika` (
  `id_VrtsaKorisnika` int(11) NOT NULL,
  `administrator` varchar(20) DEFAULT NULL,
  `voditelj_prakse` varchar(20) DEFAULT NULL,
  `student` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_VrtsaKorisnika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrtsekorisnika`
--

LOCK TABLES `vrtsekorisnika` WRITE;
/*!40000 ALTER TABLE `vrtsekorisnika` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrtsekorisnika` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-04 12:40:58
