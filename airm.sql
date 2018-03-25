-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.77-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema airm
--

CREATE DATABASE IF NOT EXISTS airm;
USE airm;

--
-- Definition of table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
CREATE TABLE `admin_details` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` (`id`,`name`,`username`,`password`) VALUES 
 (1,'naveen','admin','admin');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;


--
-- Definition of table `f_booking`
--

DROP TABLE IF EXISTS `f_booking`;
CREATE TABLE `f_booking` (
  `booking_id` int(10) NOT NULL auto_increment,
  `booking_user` varchar(100) NOT NULL,
  `journey_date` date NOT NULL,
  `f_no` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `paid` varchar(100) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_booking`
--

/*!40000 ALTER TABLE `f_booking` DISABLE KEYS */;
INSERT INTO `f_booking` (`booking_id`,`booking_user`,`journey_date`,`f_no`,`seat`,`paid`,`id_no`,`first_name`,`last_name`) VALUES 
 (1,'admin','2018-04-29','AIR - 5215','2','4000','3232','naveen','nagulapalli'),
 (26,'admin','2018-04-29','AIR-5215','1','4000','1210314336','naveen','nagulapalli'),
 (29,'admin','2018-05-05','AIR - 7565','1','4500','1210314301','teja','alle'),
 (30,'admin','2018-05-16','AIR - 7565','2','9900','213','navee','nvs'),
 (32,'teja','2018-05-11','AIR-3259','10','20000','121','charan','g'),
 (33,'admin','2018-05-11','AIR-3259','20','40000','12103','TEJA','alle'),
 (34,'teja','2018-05-11','AIR-3259','15','30000','123','teja','alle');
/*!40000 ALTER TABLE `f_booking` ENABLE KEYS */;


--
-- Definition of table `f_details`
--

DROP TABLE IF EXISTS `f_details`;
CREATE TABLE `f_details` (
  `id` int(20) NOT NULL auto_increment,
  `f_no` varchar(100) NOT NULL,
  `movement` varchar(100) NOT NULL,
  `f_source` varchar(100) NOT NULL,
  `f_dest` varchar(100) NOT NULL,
  `depart_date` date NOT NULL,
  `depart_time` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total_seat` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_details`
--

/*!40000 ALTER TABLE `f_details` DISABLE KEYS */;
INSERT INTO `f_details` (`id`,`f_no`,`movement`,`f_source`,`f_dest`,`depart_date`,`depart_time`,`price`,`total_seat`) VALUES 
 (6,'AIR-3259','UP','Chennai','Kolkata','2018-05-11','12:20AM','2000','-1'),
 (7,'AIR - 7565','UP','Chennai','Banglore','2018-05-05','11:20AM','4500','46'),
 (8,'AIR - 7565','UP','Chennai','Banglore','2018-05-05','11:20AM','9950','46'),
 (10,'AIR - 7565','UP','Chennai','Banglore','2018-05-16','11:20AM','4950','48'),
 (11,'AIR - 7565','UP','Chennai','Banglore','2018-05-05','11:20AM','4590','46'),
 (12,'AIR - 7565','UP','Chennai','Banglore','2018-05-05','11:20AM','9450','46'),
 (13,'AIR - 7565','UP','Chennai','Banglore','2018-05-05','11:20AM','4509','46'),
 (15,'AIR - 7565','UP','Chennai','Banglore','2018-05-05','11:20AM','4590','46'),
 (18,'AIR - 1499','UP','MUMBAI','KOLKATA','2018-03-22','12:00AM','5000','50');
/*!40000 ALTER TABLE `f_details` ENABLE KEYS */;


--
-- Definition of table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `id` int(10) NOT NULL auto_increment,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `web_url` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`id`,`firstname`,`lastname`,`username`,`password`,`email_id`,`web_url`) VALUES 
 (1,'naveen','nagulapalli','naveen','1234','naveen@gmail.com','naveen.com'),
 (3,'teja','alle','teja','1234','teja@gmail.com','teja.com');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
