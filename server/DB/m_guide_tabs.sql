-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table travely.m_guide_tabs
CREATE TABLE IF NOT EXISTS `m_guide_tabs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_city_tabs_id` int(10) unsigned NOT NULL,
  `fullname` char(50) NOT NULL,
  `nickname` char(50) NOT NULL,
  `avatar` char(50) DEFAULT NULL,
  `about` varchar(255) NOT NULL,
  `email` char(50) NOT NULL,
  `region` char(50) NOT NULL,
  `price` char(50) NOT NULL DEFAULT '0',
  `rating` tinyint(5) NOT NULL DEFAULT '0',
  `speak` char(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m_guide_tabs_m_city_tabs` (`m_city_tabs_id`),
  CONSTRAINT `FK_m_guide_tabs_m_city_tabs` FOREIGN KEY (`m_city_tabs_id`) REFERENCES `m_city_tabs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
