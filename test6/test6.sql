-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 31, 2020 at 08:58 AM
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
-- Database: `test6`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'officiis', '2020-07-29 18:42:31', NULL),
(3, 'eum', '2020-07-29 18:42:31', NULL),
(4, 'nihil', '2020-07-29 18:42:31', NULL),
(5, 'tenetur', '2020-07-29 18:42:31', NULL),
(6, 'porro', '2020-07-29 18:42:31', NULL),
(7, 'ullam', '2020-07-29 18:42:31', NULL),
(8, 'magni', '2020-07-29 18:42:31', NULL),
(9, 'voluptate', '2020-07-29 18:42:31', NULL),
(10, 'est', '2020-07-29 18:42:31', NULL),
(1, 'ut', '2020-07-29 18:42:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_year` int(11) NOT NULL,
  `price` double NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `img_src`, `name`, `product_year`, `price`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'https://placeimg.com/400/250/any?74', 'mollitia', 2006, 3406, 8, '2020-07-29 20:29:50', NULL),
(2, 'https://placeimg.com/400/250/any?100', 'non', 2018, 4133, 4, '2020-07-29 20:29:50', NULL),
(3, 'https://placeimg.com/400/250/any?36', 'qui', 2015, 8674, 3, '2020-07-29 20:29:50', NULL),
(4, 'https://placeimg.com/400/250/any?40', 'sint', 2003, 8186, 2, '2020-07-29 20:29:50', NULL),
(5, 'https://placeimg.com/400/250/any?17', 'accusamus', 2013, 2089, 1, '2020-07-29 20:29:50', NULL),
(6, 'https://placeimg.com/400/250/any?69', 'optio', 2002, 9890, 7, '2020-07-29 20:29:50', NULL),
(7, 'https://placeimg.com/400/250/any?64', 'nisi', 2011, 4278, 5, '2020-07-29 20:29:50', NULL),
(8, 'https://placeimg.com/400/250/any?1', 'inventore', 2011, 8119, 6, '2020-07-29 20:29:50', NULL),
(9, 'https://placeimg.com/400/250/any?13', 'accusamus', 2015, 3342, 9, '2020-07-29 20:29:50', NULL),
(10, 'https://placeimg.com/400/250/any?70', 'reprehenderit', 2012, 6085, 10, '2020-07-29 20:29:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_29_001022_create_cars_table', 1),
(5, '2020_07_29_192445_create_brands_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'medhurst.miles', 'dandre99@gmail.com', NULL, '$2y$10$f41KkLWrkO3WEiaoiuw2MeOcmcNaGj4OYWXvxMCjnInymKCDFWzpu', NULL, '2020-07-29 18:44:13', NULL),
(3, 'meagan26', 'dessie37@gmail.com', NULL, '$2y$10$vFX4uQqZtqRoyetqbkG85OgSslt7OTN3JCeN85FRs/QlVzpKE9QoS', NULL, '2020-07-29 18:44:13', NULL),
(5, 'webster.graham', 'angelita46@gmail.com', NULL, '$2y$10$x3idlCQbegtqG/KIFeuS0ulsh1.jhIlIk0saOH0G2UnHBpyJZ4lqq', NULL, '2020-07-29 18:44:13', NULL),
(6, 'odessa.zulauf', 'alexis40@gmail.com', NULL, '$2y$10$waoVx2gZXlUY6WapOw259.dNHH1eg8d8Jx/8ADkgocMVspdeBCCxC', NULL, '2020-07-29 18:44:13', NULL),
(7, 'junior39', 'bayer.dock@gmail.com', NULL, '$2y$10$V0eBGJ4zNVB0fYyr6dRmHuoc.RtGexUS9r9ne3fsqyTBRskOxFCk.', NULL, '2020-07-29 18:44:13', NULL),
(8, 'terrill94', 'stephany.jaskolski@gmail.com', NULL, '$2y$10$7ZAcYyIO2a805u0ozD8Ld.pgnxLs/dMftTNINoFKJJVWKnnLFozfq', NULL, '2020-07-29 18:44:13', NULL),
(9, 'kcremin', 'czulauf@gmail.com', NULL, '$2y$10$cp6T7KBiPsTFVvVnT2r04uJk84qajNsAKBawYNIRA0DrTSv5tCW5u', NULL, '2020-07-29 18:44:13', NULL),
(10, 'ricky78', 'qhammes@gmail.com', NULL, '$2y$10$PvBtYRwV6TvVfkb3G4d22uC25A/ZOwMAZn7igF8.GqpQ/bb0iYURi', NULL, '2020-07-29 18:44:13', NULL),
(11, 'ebony54', 'shane.kilback@gmail.com', NULL, '$2y$10$pjzMz6PFh2yjaakVV0hbpeMWEvRbFITkMxu3Jfei.lDIV.lijqLz.', NULL, '2020-07-29 18:44:13', NULL),
(12, 'hilpert.beaulah', 'anissa85@gmail.com', NULL, '$2y$10$RJFJGuTR4OmHoLl1udm2LuER1QtydfozOZ2ni9laBc2QyIpde5Z16', NULL, '2020-07-29 18:44:13', NULL),
(13, 'test6', 'test6@test', NULL, 'test6@test', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
