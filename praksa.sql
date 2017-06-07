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
INSERT INTO `__migrationhistory` VALUES ('201706072023573_InitialCreate','Praksa.Models.ApplicationDbContext','ã\0\0\0\0\0\0\›\\[o\„∫~/\–ˇ \Ë±»±r\Èn∑Å}rú§\r∫π`ù=\Ë€ÇñhGXâ‘ë®úEY˙ì˙:î®/∫ÿä\Ì,∞∞\»\·7\√\·êá˘\ﬂ˛;˝\È%¨g\'>%3˚drl[ò∏\‘Û\…zfßlı\√\'˚ßˇ¯á\ÈïæXøtgúZídf?1ù;N\‚>\·%ì\–wcö\–õ∏4têGù\”\„\„ø:\'\'∞,k˙%%\ÃqˆüsJ\\±∑\‘\√A\" °fë°Zw(\ƒIÑ\\<≥bÙ=Aìú–∂.Å¨lBb \‚˘\◊/XL\…zA\n_#t+$Xà~^ë˜\Ì\≈Ò)\ÔÖS5,†\‹4a4xr&\‘\‚\»\Õ7RÆ]™\rw\nfØº◊ôÚfˆçá≥¢/4\0\»\œ\ÁAÃâgˆm\…\‚\"â\Ó0õ\r\'9\‰upø\—¯˚§éxdınwTö\—\È\‰òˇ;≤\Êi¿\“\œNYåÇ#\Î!]æ˚¸˙Høc2;;YÆ\Œ>}¯àº≥è\∆g\Í=Öæ]£\0äb\Z\·d√´≤ˇ∂\Â4\€9r√≤Y≠MÆ∞%ò∂uã^>c≤fO0WN?\Ÿ÷µˇÇΩ¢D\◊W\‚\√ÇF,N\·Û.\r¥pY\Ô¥Ú\‰ˇ∑p=˝qÆw\Ë\Ÿ_gC/Òáâ√º˙ÇÉ¨6yÚ£|z5\∆˚õ ªéi»øõˆï\◊~[\–4vyg®ë\‰\≈kÃö\“Mù\ x{ô4á\Zﬂ¨\‘\√7m.©j\ﬁZRﬁ°MfB¡b◊≥°ê˜m˘ˆ∂∏ã(Ç¡\ÀLãk§\Õ\‡\Z˚\‘DjfêUWs\“\◊`t\‰˜º˛]Ö\»FX\0{p∑c\Â\«!.{˘3sCd∞\Ã(I`˛{G\…Sã\Ës\—\ÿMc0\ÀCaÙ\Ê\‹û(¡wi∏\‰÷æ;^£\r\Õ\„oÙ\Zπå\∆WÑ∑\⁄\Z\Ô3uø”î]\Ô1¸ïπ ˇ|Ù\√˛\0£às\·∫8IÆ¡ò±7ß\‡UÄ7ÑùùÜ\„k”æêyÄ¸P\ÔÅH´Ë∑Ç¥ÚBÙä\'b \”y#m¢~¶küÙµ 5ãöStä*»Üä\ ¡˙I*(ÕÇfùr\ÊT£˘w\Ÿç\Ô\‡e∞á\Ô\·m∑yõ÷Çö\Z∞B\‚øaÇcX∆º\ƒéI5}÷ç}8\Ÿq¶oæ7eú~AA:6´çfC∂å?2\ÿ√ü\rôòP¸\Ï{\‹+\Èq\Ï)àæΩ˛D\’=\Á$\…v=\Z\›\‹5Û›¨¶\Èrë$\‘ı≥Y†	xâpES~\·¨\Ó\ÿE\ﬁ9˛C˜˘ñ%\–7[6™{râÃ∞u\·\Ê¡9J\\\‰©jÑy+vTç`U§)‹üû`\È8\Êç?%0S}\¬\‘i\·◊èP–©%©e\œ-å˜Ω\‰!\◊\\\‚Œ∞S}ò\Î\√\\Äíè4(]\Zö:5ãk7DÉ\◊j\ZÛ.∂\Zw%\Z±õ\Ïù\rv)¸∑71\Ãvç\Ì¿8\€U\“G\0co*\Œ*}\r@>∏öÅJ\'&ÉÅ\nój\'\⁄\‘\ÿ¥©íwg†˘µ\Ô¯K\Á\’C3\œ\ÊAy˜\€z´∫ˆ`õ\r}òi\Êæ\'¥a\–«™y^.y%~aö\√\»)\Œgâpue\·\‡Ãö!õ\ \ﬂ\’˙°N;àlDmÄï°uÄä\À?HôPÑ+by≠\“	/b\0lwkÖkø[≥ª~	Z#4_ï\ \∆\Ÿ\ÎÙQˆ¨¥\≈\»{j8\ZÉêØf\«{(\≈óU\”\«\‚\r\◊:&£EAû´AIEgF\◊Raö\›Z\“9dC\\≤≠¥$πO-ù]K\¬Fªï§q\n∏[©®πÖè4ŸäHGπ€îuS\'OãS«ê?5ΩEQ\‰ìu-üJîXã<ôj˛\√bx™Qòc8n¢\…8*•-91\Z£5ñjÅ5Hz\Ì\«	ªD-èÛÃΩP!\”Ó≠Ü\Âø`Y\ﬂ>\’A,ˆÅÇöˇ.\¬gı+˚\∆6´˙!¢˘5t.\‰\ŒLA\◊Ωæπ\≈S\€PÄbM\–~NÉ4$f\ﬂ\ \‹:ø∫´∑\œKTÑ©#…Ø¯Nä¢∑©ı^c¢Œá\Ì«ßÙZ6#3ÑI”Ö\œY◊µ\…5£a©:ä)Tµ∑13π/}\«Iv\náS\'\¬\€\Ã&ëâRE1j\…\nX≠Æ?j3ﬂ§éŸ¨\Èè(%ï\‘!•™R\÷SG\ZB\÷+6\¬3hTO—üÉö,RGWk˚#k\“F\Í–ö\Í\r∞52\Àu˝Q5ô%u`Mu\Ï*\ÕD^?xø2U6Ÿ∞ÚÉ\Ïv;ñ\„m\√q6º\⁄}}®V<K\‹\»+`¢¸ \r\…xö\€ƒêÚ\–\≈vÜd¿0Ø7çK\Ó\Êr\”z3o\∆l\‹\\7ñÙ∂õ{3\ﬁ0s}S£P\Œq2I…Ω<\œIÁ∂©8Cu?éQU9âmjúŸ∑Øã_É	Øüd?ÁÅè˘\Í]P\‹\"\‚Øp\¬Út\r˚\√\‰/\“#õ\√y\‚$âhŒ†¶W/\Õ1\€A\‚yF±˚Ñb5\rbãG!®aæ!~ô\Ÿˇ\ Zùg¡\n˛++>≤níØ\ƒˇ5Öä\«8\≈÷ø’¥\Œqí\‰\€OU˙§°øVo˛˘-ozd\›\«0aŒ≠cIóõåpÛ°\√ iÚ¶[H≥ÒÛá˜;°\ZØ¥®“Ñ\ÿ¸Q¡í\“`î…≤´•abil\n¶y0\‘8J3\Â˙ofLÙ˜\‡ìeâ˛1v˝¸A\ÏÒ\–\Œ\Îül$©Ò\rÄO\ÿ\÷/\0˙ØDE\À=\Ó6ö\—.V•Lœù\‘[•S\Ó{{R≠7ùÙju?§-“§7∞áwña<⁄∂®I \r{ü˝\ÊY√áí(\\•p\Ï7?xó)¡-@ø´L\‡\»]\”\‰\‚\Ï?\ﬂw◊∂fä\›x\“‰∞¨\ﬁ36ë°µˇ\‹\›]õ)æ{\‡\∆6(C˜¿lm_˚\Áû-≠˜∫˜|[5u\»p£w\Â\”\Ês8\Ê/)A\ÓQ\Ê\œ ı	\\m…ß+3Ss\Êò\ÃXô8\n_Ö¢ùÌ∞æä\røµ≥Ç¶ù≠!ﬂ≤ç∑Xˇ[yövﬁÜ,\∆}dkÛu\Ÿ\Ÿ\ÎX[∫\”{\ ¸mÙ§#—º\ÀgmΩPOâæ£(•1{ó\√\Ô\'Øwïå9u\‰Ò™˜º∞w\÷˛T\"\ÏﬂâøÆ ¯N$\ÿm\Ïö%\Õ\rY\—bÛñ$*H§\Õ-f»É-ı\"f˛\nπ™yd9{«ùÖ\Ï¯\«{7\‰>eQ †\À8\\çÄw\⁄¯g\…\ Môß˜Qˆ\'I\∆\Ëà\ÈÛ\0˝=˘9ıØî˚Z2@p\ÔB\ƒq˘X2\œ]øñHwîÙ\Í+ù¢GFÄ%˜dÅûÒ&≤Å˘}\∆k\‰æV@H˜@4\’>ΩÙ\—:Fa\"0™ˆ	6\ÏÖ/?˛m`1T\0\0','6.1.3-40302');
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
INSERT INTO `poduzeca` VALUES (1,'Prvo','M.Gupca 20','prvo@prvo.hr','prvo.hr','0971234567','040825456','≈†tef','vrlo va≈æno poduzece',1,0),(2,'Drugo','Trg mar≈°ala tita','drugo@drugo.hr','drugo.hr','0991234567','042258789','Mirko','jo≈° va≈ænije poduzece',1,0);
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
INSERT INTO `student` VALUES ('1232343454567','Marko','Markic','Markograd','marko@marko.com','098172','Odr≈æivi razvoj',1,'markec','!2Asdf'),('1234567890123','Ana','Anic','anina adresa','ana@anic.com','123456','Racunalstvo',2,'ana','!2Asdf');
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
