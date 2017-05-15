/*
SQLyog Community v8.61 
MySQL - 5.7.18-log : Database - praksa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`praksa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `praksa`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `korisnickoIme` varchar(20) NOT NULL,
  `sifra` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id_admin`,`ime`,`prezime`,`korisnickoIme`,`sifra`) values (1,'Ivo','Ivic','ivoivic','123');

/*Table structure for table `poduzeca` */

DROP TABLE IF EXISTS `poduzeca`;

CREATE TABLE `poduzeca` (
  `id_poduzeca` int(11) NOT NULL,
  `nazivPoduzeca` varchar(20) NOT NULL,
  `adresaPoduzeca` varchar(20) DEFAULT NULL,
  `mailPoduzeca` varchar(20) DEFAULT NULL,
  `urlPoduzeca` varchar(20) DEFAULT NULL,
  `telefonPoduzeca` varchar(20) DEFAULT NULL,
  `faxPoduzeca` varchar(20) DEFAULT NULL,
  `odgovornaOsobaPoduzeca` varchar(20) DEFAULT NULL,
  `opisPoduzeca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_poduzeca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `poduzeca` */

insert  into `poduzeca`(`id_poduzeca`,`nazivPoduzeca`,`adresaPoduzeca`,`mailPoduzeca`,`urlPoduzeca`,`telefonPoduzeca`,`faxPoduzeca`,`odgovornaOsobaPoduzeca`,`opisPoduzeca`) values (1,'Prvo','M.Gupca 20','prvo@prvo.hr','prvo.hr','0971234567','040825456','Štef','vrlo važno poduzece'),(2,'Drugo','Trg maršala tita','drugo@drugo.hr','drugo.hr','0991234567','042258789','Mirko','još važnije poduzece');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `maticniBrojStudenta` int(11) NOT NULL,
  `ImeStudenta` varchar(20) NOT NULL,
  `PrezimeStudenta` varchar(20) NOT NULL,
  `AdresaStudenta` varchar(20) DEFAULT NULL,
  `MailStudenta` varchar(20) NOT NULL,
  `TelefonStudenta` varchar(20) DEFAULT NULL,
  `smjerStudija` enum('Računarstvo','Održivi razvoj','Menadžmend turizma i sporta') DEFAULT NULL,
  `godinaStudija` enum('prva','druga','treca','cetvrta','peta') DEFAULT NULL,
  `korisnickoImeStudenta` varchar(20) NOT NULL,
  `korisnickaLozinkaStudenta` varchar(20) NOT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id_student`,`maticniBrojStudenta`,`ImeStudenta`,`PrezimeStudenta`,`AdresaStudenta`,`MailStudenta`,`TelefonStudenta`,`smjerStudija`,`godinaStudija`,`korisnickoImeStudenta`,`korisnickaLozinkaStudenta`) values (1,123456789,'Ivo','Ivić','S.Kolara 100','ivo.ivic@gmail.com','0981234567','Računarstvo','druga','ivek','ivekzna'),(2,987654321,'Marko','Maric','A.Cesarice 50','marko.maric@gmail.co','0911234567','Menadžmend turizma i sporta','cetvrta','marac','maraczna');

/*Table structure for table `vrtsekorisnika` */

DROP TABLE IF EXISTS `vrtsekorisnika`;

CREATE TABLE `vrtsekorisnika` (
  `id_VrtsaKorisnika` int(11) NOT NULL,
  `administrator` varchar(20) DEFAULT NULL,
  `voditelj_prakse` varchar(20) DEFAULT NULL,
  `student` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_VrtsaKorisnika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrtsekorisnika` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
