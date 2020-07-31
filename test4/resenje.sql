-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2020 at 11:32 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test4`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorije`
--

DROP TABLE IF EXISTS `kategorije`;
CREATE TABLE IF NOT EXISTS `kategorije` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorije`
--

INSERT INTO `kategorije` (`id`, `naziv`, `opis`) VALUES
(1, 'Kategorija I', 'opis Kategorije I'),
(2, 'Kategorija II', 'Opis kategorije II');

-- --------------------------------------------------------

--
-- Table structure for table `kategorije_proizvodi`
--

DROP TABLE IF EXISTS `kategorije_proizvodi`;
CREATE TABLE IF NOT EXISTS `kategorije_proizvodi` (
  `id_kategorije` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorije_proizvodi`
--

INSERT INTO `kategorije_proizvodi` (`id_kategorije`, `id_proizvoda`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodavci`
--

DROP TABLE IF EXISTS `prodavci`;
CREATE TABLE IF NOT EXISTS `prodavci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prodavci`
--

INSERT INTO `prodavci` (`id`, `ime`, `prezime`) VALUES
(1, 'Petar', 'Petrovic'),
(2, 'Milan', 'Milosevic');

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

DROP TABLE IF EXISTS `proizvodi`;
CREATE TABLE IF NOT EXISTS `proizvodi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `prodavac_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`id`, `naziv`, `opis`, `prodavac_id`) VALUES
(1, 'Banana', 'banane iz Kostarike', 1),
(2, 'Jabuke', 'Jabuke iz Srbije', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
