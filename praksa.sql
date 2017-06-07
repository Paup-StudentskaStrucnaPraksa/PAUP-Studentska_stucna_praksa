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
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ContextKey` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`MigrationId`,`ContextKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('201706072023573_InitialCreate','Praksa.Models.ApplicationDbContext','�\0\0\0\0\0\0\�\\[o\�~/\�� \�ȱr\�n��}r��\r��`�=\�ۂ�hGX�ԑ��EY���:��/�؊\�,��\�\�7\�\���\��;�\�%�g\'>%3�drl[��\��\�zf�l�\�\'�����\��X�tg�Z�df?1�;N\�>\�%�\�wc�\���4t�G�\�\�\�:\'\'�,k�%%\�q��sJ\\��\�\�A\"ʡf��Zw(\�I�\\<�b�=A��ж.��lBb \��\�/XL\�zA\n_#t+$X�~^��\�\��)\�S5,�\�4a4xr&\�\�\�\�7R�]�\rw\nf��י�f�����/4\0\�\�\�Ảg�m\�\�\"�\�0�\r\'9\�up�\�����xd�nwT�\�\�\��;�\�i�\�\�NY��#\�!]����H�c2;;Y�\�>}�����\�g\�=��]�\0�b\Z\�dë���\�4\�9ròY�M��%��u�^>c�fO0WN?\�ֵ����D\�W\�\��F,N\��.\r�pY\��\���p=��q�w\�\�_gC/�ü����6y�|z5\��� ��iȿ���\�~[\�4vyg��\�\�k̚\�M�\�x{�4�\Z߬\�\�7m.�j\�ZRޡMfB�b׳���m�����(��\�L�k�\�\�\Z�\�Djf�UWs\�\�`t\����]�\�FX\0{p�c\�\�!.{�3sCd�\�(I`�{G\�S�\��s\�\�Mc0\�Ca�\�\��(�wi�\�־;^�\r\�\�o�\Z��\�W��\�\Z\�3u�Ӕ]\�1��� �|�\��\0��s\�8I����7�\�U�7����\�kӾ�y��P\�H�跂��B��\'b \�y#m�~�k��� 5��St�*Ȇ�\���I*(͂f�r\�T��w\��\�\�e��\�\�m�y�ւ�\Z�B\�a�cXƼ\��I5}֍}8\��q�o�7e�~AA:6��fC��?2\�ß\r��P�\�{\�+\�q\�)����D\�=\�$\�v=\Z\�\�5�ݬ�\�r�$\���Y�	x�pES~�\�\�\�E\�9�C���%\�7[6�{r�̰u\�\��9J\\\�j�y+vT�`U�)ܟ�`\�8\�?%0S}\�\�i\�׏PЩ%�e\�-���\�!\�\\\�ΰS}�\�\�\\���4(]\Z�:5�k7D�\�j\Z�.�\Zw%\Z��\��\rv)��71\�v�\��8\�U\�G\0co*\�*}\r@>���J\'&��\n�j\'\�\�\����wg���\��K\�\�C3\�\�Ay�\�z���`�\r}�i\�\'�a\�Ǫy^.y%~a�\�\�)\�g�pue\�\�̚!�\�\�\���N;�lDm���u��\�?H�P�+by�\�	/b\0lwk�k�[��~	Z#4_�\�\�\�\��Q���\�\�{j8\Z���f\�{(\��U\�\�\�\r\�:&�EA��AIEgF\�Ra�\�Z\�9dC\\���$�O-�]K\�F���q\n�[�����4يHG�۔uS\'O�Sǐ?5�EQ\�u-�J�X�<�j�\�bx�Q�c8n�\�8*�-91\Z�5�j�5Hz\�\�	�D-��̽P!\�\�`Y\�>\�A,�����.\�g�+�\�6��!��5t.\�\�LA\����\�S\�P�bM\�~N�4$f\�\�\�:����\�KT��#ɯ�N�����^c�·\�ǧ�Z6#3�IӅ\�Y׵\�5�a�:�)T��13�/}\�Iv\n�S\'\�\�\�&��RE1j\�\nX��?j3ߤ�٬\�(%�\�!��R\�SG\ZB\�+6\�3hTOџ��,RGWk�#k\�F\�К\�\r�52\�u�Q5�%u`Mu\�*\�D^?x�2U6ٰ�\�v;�\�m\�q6�\�}}�V<K\�\�+`�� \r\�x�\�Đ�\�\�v�d�0�7�K\�\�r\�z3o\�l\�\\7����{3\�0s}S�P\�q2Iɽ<\�I綩8Cu?�QU9�mj�ٷ��_�	��d?灏�\�]P\�\"\�p\��t\r�\�\�/\�#�\�y�\�$�hΠ�W/\�1\�A\�yF���b5\rb�G!�a�!~�\��\�Z�g�\n�++>�n��\��5��\�8\�ֿմ\�q�\�\�OU����Vo��-ozd\�\�0aέcI���p�\� i�[H����;�\Z���҄\��Q��\�`�ɲ��abil\n�y0\�8J3\��ofL��\��e��1v��A\��\�\�\�l$��\r�O\�\�/\0��DE\�=\�6�\�.V�Lϝ\�[�S\�{{R�7��ju?�-Ҥ7��w�a<ڶ�I \r{��\�YÇ�(\\�p\�7?x�)�-@��L\�\�]\�\�\�\�?\�w׶f�\�x\�䰬\�36����\�\�]�)�{\�\�6(C��lm_�\�-����|[5u\�p�w\�\�\�s8\�/)A\�Q\�\� �	\\mɧ+3Ss\�\�X�8\n_�����\r�������!߲��X�[y�vކ,\�}dk�u\�\�\�X[�\�{\��m��#Ѽ\�gm�PO���(�1{�\�\�\'�w��9u\�����w\��T\"\�߉�� �N$\�m\�%\�\rY\�b�$*H�\�-fȃ-�\"f�\n��yd9{ǝ�\��\�{7\�>eQʠ\�8\\��w\��g\�\�M���Q�\'I\�\��\��\0�=�9����Z2@p\�B\�q�X2\�]��Hw��\�+��GF�%�d���&���}\�k\�V@H�@4\�>��\�:Fa\"0���	6\�/?�m`1T\0\0','6.1.3-40302');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(128) CHARACTER SET utf8 NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(128) CHARACTER SET utf8 NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `ApplicationUser_Claims` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) CHARACTER SET utf8 NOT NULL,
  `ProviderKey` varchar(128) CHARACTER SET utf8 NOT NULL,
  `UserId` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`,`UserId`),
  KEY `ApplicationUser_Logins` (`UserId`),
  CONSTRAINT `ApplicationUser_Logins` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(128) CHARACTER SET utf8 NOT NULL,
  `RoleId` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IdentityRole_Users` (`RoleId`),
  CONSTRAINT `ApplicationUser_Roles` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `IdentityRole_Users` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(128) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEndDateUtc` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2017-06-07 22:30:21
