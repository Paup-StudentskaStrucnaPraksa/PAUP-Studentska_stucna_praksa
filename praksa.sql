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
-- Table structure for table `poduzeca`
--

DROP TABLE IF EXISTS `poduzeca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poduzeca` (
  `id_poduzeca` int(11) NOT NULL AUTO_INCREMENT,
  `nazivPoduzeca` varchar(20) NOT NULL,
  `adresa` varchar(20) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `url` varchar(40) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `faks` varchar(20) DEFAULT NULL,
  `odgovornaOsoba` varchar(20) DEFAULT NULL,
  `opisPoduzeca` varchar(50) DEFAULT NULL,
  `aktivno` tinyint(4) NOT NULL DEFAULT '0',
  `brojStudenata` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poduzeca`),
  UNIQUE KEY `id_poduzeca_UNIQUE` (`id_poduzeca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poduzeca`
--

LOCK TABLES `poduzeca` WRITE;
/*!40000 ALTER TABLE `poduzeca` DISABLE KEYS */;
INSERT INTO `poduzeca` VALUES (1,'Prvo','M.Gupca 20','prvo@prvo.hr','prvo.hr','0971234567','040825456','Štef','vrlo važno poduzece',1,0),(2,'Drugo','Trg maršala tita','drugo@drugo.hr','drugo.hr','0991234567','042258789','Mirko','još važnije poduzece',1,0);
/*!40000 ALTER TABLE `poduzeca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `praksa`
--

DROP TABLE IF EXISTS `praksa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `praksa` (
  `idpraksa` int(11) NOT NULL AUTO_INCREMENT,
  `MBRStudenta` varchar(13) NOT NULL,
  `id_poduzeca` int(11) NOT NULL,
  `zavrseno` tinyint(4) DEFAULT '0',
  `zakljucano` tinyint(4) DEFAULT '0',
  `godina` year(4) NOT NULL,
  PRIMARY KEY (`idpraksa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `praksa`
--

LOCK TABLES `praksa` WRITE;
/*!40000 ALTER TABLE `praksa` DISABLE KEYS */;
INSERT INTO `praksa` VALUES (1,'1234567890123',1,0,0,0000),(2,'1234567890123',1,0,0,2017),(3,'1234567890123',2,0,0,2017),(4,'1232343454567',2,0,0,2017);
/*!40000 ALTER TABLE `praksa` ENABLE KEYS */;
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
  PRIMARY KEY (`maticniBroj`),
  UNIQUE KEY `mail_UNIQUE` (`mail`),
  UNIQUE KEY `maticniBroj_UNIQUE` (`maticniBroj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1232343454567','Marko','Markic','Markograd','marko@marko.com','098172','Održivi razvoj',1,'markec','!2Asdf'),('1234567890123','Ana','Anic','anina adresa','ana@anic.com','123456','Racunalstvo',2,'ana','!2Asdf');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-04 20:21:16
