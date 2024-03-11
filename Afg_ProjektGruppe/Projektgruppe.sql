-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               8.0.36 - MySQL Community Server - GPL
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank Struktur für projektgruppen
CREATE DATABASE IF NOT EXISTS `projektgruppen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projektgruppen`;

-- Exportiere Struktur von Tabelle projektgruppen.klasse
CREATE TABLE IF NOT EXISTS `klasse` (
  `klasse_id` int NOT NULL AUTO_INCREMENT,
  `klasse_name` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `lehrjahr` int NOT NULL,
  PRIMARY KEY (`klasse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle projektgruppen.klasse: ~12 rows (ungefähr)
DELETE FROM `klasse`;
INSERT INTO `klasse` (`klasse_id`, `klasse_name`, `lehrjahr`) VALUES
	(1, 'AP20a', 4),
	(2, 'AP20b', 4),
	(3, 'AP20c', 4),
	(4, 'AP21a', 3),
	(5, 'AP21b', 3),
	(6, 'AP21c', 3),
	(7, 'AP22a', 2),
	(8, 'AP22b', 2),
	(9, 'AP23a', 1),
	(10, 'AP23b', 1),
	(11, 'AP23c', 1),
	(12, 'AP23d', 1);

-- Exportiere Struktur von Tabelle projektgruppen.leiter
CREATE TABLE IF NOT EXISTS `leiter` (
  `leiter_id` int NOT NULL AUTO_INCREMENT,
  `vorname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nachname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`leiter_id`),
  UNIQUE KEY `vorname_nachname` (`vorname`,`nachname`),
  KEY `leiter_id` (`leiter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle projektgruppen.leiter: ~12 rows (ungefähr)
DELETE FROM `leiter`;
INSERT INTO `leiter` (`leiter_id`, `vorname`, `nachname`) VALUES
	(3, 'Ahmed', 'Muster'),
	(10, 'Bruno', 'Betschart'),
	(1, 'Horst', 'Tappert'),
	(6, 'Sally', 'Miller'),
	(8, 'Sandra', 'Büchi'),
	(11, 'Simone', 'Jäger'),
	(4, 'Susan', 'Marty'),
	(7, 'Tanja', 'Schiller'),
	(12, 'Timon', 'Weber'),
	(9, 'Toni', 'Brugger'),
	(5, 'Torsten', 'Meyer'),
	(2, 'Verena', 'Kunert');

-- Exportiere Struktur von Tabelle projektgruppen.teilnehmende
CREATE TABLE IF NOT EXISTS `teilnehmende` (
  `teilnehmende_id` int NOT NULL AUTO_INCREMENT,
  `klasse_id` int NOT NULL,
  PRIMARY KEY (`teilnehmende_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle projektgruppen.teilnehmende: ~204 rows (ungefähr)
DELETE FROM `teilnehmende`;
INSERT INTO `teilnehmende` (`teilnehmende_id`, `klasse_id`) VALUES
	(1, 7),
	(2, 11),
	(3, 9),
	(4, 1),
	(5, 12),
	(6, 7),
	(7, 11),
	(8, 11),
	(9, 4),
	(10, 2),
	(11, 6),
	(12, 3),
	(13, 12),
	(14, 12),
	(15, 2),
	(16, 8),
	(17, 9),
	(18, 8),
	(19, 6),
	(20, 1),
	(21, 4),
	(22, 2),
	(23, 6),
	(24, 12),
	(25, 8),
	(26, 2),
	(27, 3),
	(28, 7),
	(29, 8),
	(30, 1),
	(31, 3),
	(32, 7),
	(33, 7),
	(34, 2),
	(35, 12),
	(36, 6),
	(37, 2),
	(38, 8),
	(39, 8),
	(40, 12),
	(41, 8),
	(42, 6),
	(43, 7),
	(44, 7),
	(45, 9),
	(46, 10),
	(47, 11),
	(48, 10),
	(49, 7),
	(50, 5),
	(51, 6),
	(52, 10),
	(53, 9),
	(54, 5),
	(55, 8),
	(56, 10),
	(57, 7),
	(58, 10),
	(59, 8),
	(60, 6),
	(61, 9),
	(62, 3),
	(63, 9),
	(64, 11),
	(65, 6),
	(66, 12),
	(67, 4),
	(68, 5),
	(69, 8),
	(70, 12),
	(71, 3),
	(72, 5),
	(73, 8),
	(74, 9),
	(75, 10),
	(76, 4),
	(77, 10),
	(78, 10),
	(79, 6),
	(80, 1),
	(81, 8),
	(82, 7),
	(83, 7),
	(84, 4),
	(85, 1),
	(86, 7),
	(87, 9),
	(88, 6),
	(89, 4),
	(90, 2),
	(91, 6),
	(92, 1),
	(93, 8),
	(94, 11),
	(95, 7),
	(96, 10),
	(97, 4),
	(98, 9),
	(99, 4),
	(100, 2),
	(101, 2),
	(102, 5),
	(103, 3),
	(104, 6),
	(105, 11),
	(106, 11),
	(107, 7),
	(108, 9),
	(109, 7),
	(110, 1),
	(111, 4),
	(112, 9),
	(113, 3),
	(114, 4),
	(115, 2),
	(116, 1),
	(117, 1),
	(118, 7),
	(119, 12),
	(120, 6),
	(121, 7),
	(122, 7),
	(123, 2),
	(124, 10),
	(125, 4),
	(126, 2),
	(127, 12),
	(128, 4),
	(129, 9),
	(130, 4),
	(131, 5),
	(132, 9),
	(133, 12),
	(134, 10),
	(135, 3),
	(136, 7),
	(137, 8),
	(138, 10),
	(139, 3),
	(140, 5),
	(141, 6),
	(142, 7),
	(143, 1),
	(144, 6),
	(145, 3),
	(146, 10),
	(147, 2),
	(148, 2),
	(149, 7),
	(150, 8),
	(151, 3),
	(152, 2),
	(153, 10),
	(154, 2),
	(155, 11),
	(156, 12),
	(157, 4),
	(158, 9),
	(159, 8),
	(160, 3),
	(161, 1),
	(162, 12),
	(163, 7),
	(164, 9),
	(165, 12),
	(166, 11),
	(167, 6),
	(168, 10),
	(169, 1),
	(170, 5),
	(171, 1),
	(172, 9),
	(173, 9),
	(174, 9),
	(175, 9),
	(176, 12),
	(177, 12),
	(179, 11),
	(180, 9),
	(182, 9),
	(184, 4),
	(186, 11),
	(187, 1),
	(188, 8),
	(189, 10),
	(193, 1),
	(194, 6),
	(195, 3),
	(196, 11),
	(200, 8),
	(201, 2),
	(205, 12),
	(206, 8),
	(208, 6),
	(209, 1),
	(210, 1),
	(212, 3),
	(213, 5),
	(215, 1),
	(216, 5),
	(217, 1),
	(218, 3),
	(219, 5),
	(220, 6);

-- Exportiere Struktur von Tabelle projektgruppen.zuteilung
CREATE TABLE IF NOT EXISTS `zuteilung` (
  `zuteilung_id` int NOT NULL AUTO_INCREMENT,
  `teilnehmende_id` int NOT NULL,
  `gruppe_id` int NOT NULL,
  PRIMARY KEY (`zuteilung_id`),
  UNIQUE KEY `gruppenzuteilung` (`teilnehmende_id`,`gruppe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle projektgruppen.zuteilung: ~0 rows (ungefähr)
DELETE FROM `zuteilung`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
