-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2021 at 10:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Rostmana`
--

-- --------------------------------------------------------

--
-- Table structure for table `automodes`
--

CREATE TABLE `automodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `automodes`
--

INSERT INTO `automodes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fullauto', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `builders`
--

CREATE TABLE `builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` double(8,2) NOT NULL,
  `length` double(8,2) NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `automode_id` int(10) UNSIGNED NOT NULL,
  `watermode_id` int(10) UNSIGNED NOT NULL,
  `picture` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plant_id` bigint(20) UNSIGNED NOT NULL,
  `qrcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `builders`
--

INSERT INTO `builders` (`id`, `name`, `model`, `width`, `length`, `icon`, `gender_id`, `automode_id`, `watermode_id`, `picture`, `created_at`, `updated_at`, `plant_id`, `qrcode`) VALUES
(4, 'rostmana', 'rm-456', 10.00, 10.00, '1608538786.jpg', 1, 1, 1, 1, NULL, NULL, 3, '1233213'),
(5, 'banamana', 'ba-465', 1.00, 1.00, '1608538786.jpg', 1, 1, 1, 1, '2020-12-21 04:49:47', '2020-12-21 04:49:47', 3, '123456'),
(7, 'cc', 'ccc', 1.00, 1.00, '1608555237.jpg', 1, 1, 1, 1, '2020-12-21 09:23:57', '2020-12-21 09:23:57', 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `builder_user`
--

CREATE TABLE `builder_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `builder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `builder_user`
--

INSERT INTO `builder_user` (`id`, `user_id`, `builder_id`) VALUES
(4, 115, 4),
(5, 55, 5),
(6, 55, 6),
(7, 55, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache09034237883|127.0.0.1', 'i:1;', 1613824287),
('laravel_cache09034237883|127.0.0.1:timer', 'i:1613824287;', 1613824287),
('laravel_cache1ae05881cd1d622fe0007ec5bba46650cd8563dc', 'i:1;', 1613820917),
('laravel_cache1ae05881cd1d622fe0007ec5bba46650cd8563dc:timer', 'i:1613820917;', 1613820917),
('laravel_cache5c785c036466adea360111aa28563bfd556b5fba', 'i:3;', 1613475098),
('laravel_cache5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1613475098;', 1613475098),
('laravel_cache683e725c03a87baaad2623231644e944e537acab', 'i:1;', 1613469105),
('laravel_cache683e725c03a87baaad2623231644e944e537acab:timer', 'i:1613469105;', 1613469105),
('laravel_cache700a13684b273a554eb87ee5ad57e55c7ba73805', 'i:1;', 1613997688),
('laravel_cache700a13684b273a554eb87ee5ad57e55c7ba73805:timer', 'i:1613997688;', 1613997688),
('laravel_cache8b3c1baa9a59940230afa437584a3fa450bcff60', 'i:1;', 1613297187),
('laravel_cache8b3c1baa9a59940230afa437584a3fa450bcff60:timer', 'i:1613297187;', 1613297187),
('laravel_cache8effee409c625e1a2d8f5033631840e6ce1dcb64', 'i:2;', 1614073850),
('laravel_cache8effee409c625e1a2d8f5033631840e6ce1dcb64:timer', 'i:1614073850;', 1614073850),
('laravel_cachea1c6118c206818330f4eb82ca28827592a502e56', 'i:1;', 1613836264),
('laravel_cachea1c6118c206818330f4eb82ca28827592a502e56:timer', 'i:1613836264;', 1613836264);

-- --------------------------------------------------------

--
-- Table structure for table `categoryfertilizers`
--

CREATE TABLE `categoryfertilizers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fertilizer_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryfertilizers`
--

INSERT INTO `categoryfertilizers` (`id`, `fertilizer_type`, `created_at`, `updated_at`) VALUES
(1, 'حیوانی', NULL, NULL),
(2, 'good', '2020-12-06 09:47:49', '2020-12-06 09:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `categorysoils`
--

CREATE TABLE `categorysoils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `soil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorysoils`
--

INSERT INTO `categorysoils` (`id`, `name`, `created_at`, `updated_at`, `soil`) VALUES
(1, 'برگ', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `category_plants`
--

CREATE TABLE `category_plants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TypePlants` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_plants`
--

INSERT INTO `category_plants` (`id`, `TypePlants`, `created_at`, `updated_at`) VALUES
(1, 'گل های فصلی ', NULL, NULL),
(2, 'کاکتوس', '2020-12-02 09:48:48', '2020-12-02 09:48:48'),
(3, 'برگ سبز', NULL, NULL),
(4, 'درختچه', NULL, NULL),
(5, 'ارگانیک', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comands`
--

CREATE TABLE `comands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `builder_id` bigint(20) UNSIGNED NOT NULL,
  `fan_status` tinyint(1) NOT NULL DEFAULT 0,
  `vap_status` tinyint(1) NOT NULL DEFAULT 0,
  `fogg_status` tinyint(1) NOT NULL DEFAULT 0,
  `light_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'wood', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` int(10) UNSIGNED NOT NULL,
  `temp` double(8,2) UNSIGNED NOT NULL,
  `light` double(8,2) UNSIGNED NOT NULL,
  `humidity_soil` double(8,2) UNSIGNED NOT NULL,
  `humidity_air` double(8,2) UNSIGNED NOT NULL,
  `water_level` float NOT NULL,
  `fan_status` tinyint(1) NOT NULL,
  `fogger_status` tinyint(1) NOT NULL,
  `builder_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `name`, `temp`, `light`, `humidity_soil`, `humidity_air`, `water_level`, `fan_status`, `fogger_status`, `builder_id`, `created_at`, `updated_at`) VALUES
(3, 1, 10.00, 2.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 09:27:03', '2020-11-25 09:27:03'),
(4, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 09:29:26', '2020-11-25 09:29:26'),
(5, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 09:29:26', '2020-11-25 09:29:26'),
(6, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 10:19:37', '2020-11-25 10:19:37'),
(7, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 10:20:18', '2020-11-25 10:20:18'),
(8, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 10:22:25', '2020-11-25 10:22:25'),
(9, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 10:22:50', '2020-11-25 10:22:50'),
(10, 1, 10.00, 10.00, 10.00, 10.00, 0, 1, 1, 7, '2020-11-25 10:23:30', '2020-11-25 10:23:30'),
(11, 1, 10.00, 10.00, 10.00, 11.00, 0, 1, 1, 7, '2020-11-25 10:28:59', '2020-11-25 10:28:59'),
(12, 1, 12.00, 10.00, 10.00, 11.00, 0, 1, 1, 7, '2020-11-28 05:52:04', '2020-11-28 05:52:04'),
(13, 1, 10.00, 10.00, 10.00, 11.00, 100, 1, 1, 7, '2020-12-30 01:26:52', '2020-12-30 01:26:52'),
(14, 1, 10.00, 10.00, 10.00, 11.00, 100, 1, 1, 7, '2020-12-30 03:52:48', '2020-12-30 03:52:48'),
(15, 1, 10.00, 10.00, 10.00, 11.00, 80, 1, 1, 7, '2020-12-30 03:53:05', '2020-12-30 03:53:05'),
(16, 1, 10.00, 10.00, 10.00, 11.00, 70, 1, 1, 7, '2020-12-30 03:56:23', '2020-12-30 03:56:23'),
(17, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:14:22', '2020-12-30 05:14:22'),
(18, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:14:32', '2020-12-30 05:14:32'),
(19, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:14:42', '2020-12-30 05:14:42'),
(20, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:14:53', '2020-12-30 05:14:53'),
(21, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:15:03', '2020-12-30 05:15:03'),
(22, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:15:13', '2020-12-30 05:15:13'),
(23, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:15:23', '2020-12-30 05:15:23'),
(24, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:15:33', '2020-12-30 05:15:33'),
(25, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:15:43', '2020-12-30 05:15:43'),
(26, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:15:53', '2020-12-30 05:15:53'),
(27, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:16:03', '2020-12-30 05:16:03'),
(28, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:16:13', '2020-12-30 05:16:13'),
(29, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:16:23', '2020-12-30 05:16:23'),
(30, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:16:33', '2020-12-30 05:16:33'),
(31, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:16:43', '2020-12-30 05:16:43'),
(32, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:16:54', '2020-12-30 05:16:54'),
(33, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:17:04', '2020-12-30 05:17:04'),
(34, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:17:14', '2020-12-30 05:17:14'),
(35, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:17:24', '2020-12-30 05:17:24'),
(36, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:17:34', '2020-12-30 05:17:34'),
(37, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:17:44', '2020-12-30 05:17:44'),
(38, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:17:54', '2020-12-30 05:17:54'),
(39, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:18:04', '2020-12-30 05:18:04'),
(40, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:18:14', '2020-12-30 05:18:14'),
(41, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:18:24', '2020-12-30 05:18:24'),
(42, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:27:24', '2020-12-30 05:27:24'),
(43, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:27:34', '2020-12-30 05:27:34'),
(44, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:27:44', '2020-12-30 05:27:44'),
(45, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:27:54', '2020-12-30 05:27:54'),
(46, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:28:05', '2020-12-30 05:28:05'),
(47, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:28:15', '2020-12-30 05:28:15'),
(48, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:28:25', '2020-12-30 05:28:25'),
(49, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:28:35', '2020-12-30 05:28:35'),
(50, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:28:45', '2020-12-30 05:28:45'),
(51, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:28:55', '2020-12-30 05:28:55'),
(52, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:29:05', '2020-12-30 05:29:05'),
(53, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2020-12-30 05:29:15', '2020-12-30 05:29:15'),
(54, 1, 10.00, 10.00, 10.00, 11.00, 100, 1, 1, 7, '2021-01-03 04:16:26', '2021-01-03 04:16:26'),
(59, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2021-01-06 03:55:18', '2021-01-06 03:55:18'),
(60, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2021-01-06 03:55:28', '2021-01-06 03:55:28'),
(61, 1, 10.00, 10.00, 10.00, 11.00, 128, 1, 1, 7, '2021-01-06 04:20:47', '2021-01-06 04:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_11_16_120754_create_profiles_table', 1),
(10, '2020_11_16_134533_create_builders_table', 1),
(11, '2020_11_21_115554_create_automodes_table', 1),
(12, '2020_11_21_115611_create_genders_table', 1),
(13, '2020_11_21_115632_create_watermodes_table', 1),
(14, '2020_11_21_115649_create_pictures_table', 1),
(15, '2020_11_21_122649_create_builder_user', 1),
(16, '2020_11_22_122847_create_logs_table', 2),
(18, '2020_11_23_090713_create_category_plants_table', 3),
(19, '2020_11_23_090740_create_categoryfertilizers_table', 3),
(28, '2020_11_23_082234_create_plants_table', 4),
(29, '2020_11_24_090718_add_plantid_to_builders_table', 5),
(30, '2020_11_24_102835_add_qrcode_to_builders_table', 6),
(31, '2020_11_24_121743_add_name_to_categorysoil_table', 7),
(32, '2020_11_24_122102_add_soil_to_categorysoil_table', 8),
(38, '2020_12_21_101405_create_comands_table', 9),
(39, '2021_01_18_101924_create_cache_table', 9),
(40, '2021_01_31_085108_create_jobs_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00362357ad434fecfbdb56b017f0c8f088023da7418a1293921c458b175042b03207f3eaad40cd30', 141, 1, 'NewToken', '[]', 0, '2021-01-31 05:54:23', '2021-01-31 05:54:23', '2022-01-31 09:24:23'),
('00e0a166ab629dcd0dd7e16634a116c45e710f376cf2322ed866472600a0bbb97a1a7ae5b85420ac', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-13 07:44:11', '2021-02-13 07:44:11', '2022-02-13 11:14:11'),
('029732d9b658e4a2f9925413ac8ab41ed79317d368fa94a20e21773f98334f6453f80280e354461e', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-16 06:10:24', '2021-02-16 06:10:24', '2022-02-16 09:40:24'),
('029905c41a0563cd829ad3d035d30e1495ae4dd668e8255a0d95ade74796887335df007adae6c098', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 11:09:33', '2020-12-12 11:09:33', '2021-12-12 14:39:33'),
('03b9cfcac7260756a99857faf89f19035b73b438068c34fc50b11238b52984cda118fa6db6883e03', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-15 08:04:46', '2021-02-15 08:04:46', '2022-02-15 11:34:46'),
('043287cdf1d5d8103025015e74e0667f530585d213d5af661f39ae99bab28a01d2f07b7e609b1df6', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 10:51:07', '2020-12-26 10:51:07', '2021-12-26 14:21:07'),
('0438fd48172fd257cdab32d53ee6169719dfb40924cb3c5a467139498061c3c25bbcb310aaec707f', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:37:40', '2020-12-26 09:37:40', '2021-12-26 13:07:40'),
('047a4b63cb0c653d262ae02a1428fce03f293fccd494463ae69215b1bfbcbd5228574aa6ae3a562c', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 10:07:42', '2020-12-13 10:07:42', '2021-12-13 13:37:42'),
('060f32bf41bdbfa1307d91d8c0d5881c32072106708afa302a82b2474f226dee010810dc90f94d25', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 11:57:11', '2021-01-16 11:57:11', '2022-01-16 15:27:11'),
('06979bf04478364a5375244b9f47e9fa073a9a3879a77c1b848bd5481e6385ac4e2f6f060f3c8fdf', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:14:22', '2021-02-02 10:14:22', '2022-02-02 13:44:22'),
('0708a2fce739128cfbad824723d8d73f2965ce7e9f34159687ff9ab6ee2f2c3c356821dae460bb31', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 05:53:15', '2021-01-16 05:53:15', '2022-01-16 09:23:15'),
('079cc42ef546873fb3d689d5f4ac78f606f900ab22140d39cdaf8e9389e1531e6b9713c873a5bf45', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:36:00', '2020-12-12 09:36:00', '2021-12-12 13:06:00'),
('0903f2f8c010d41d03d2c21ffd569cbd95d55cb9b60da52f12a4621b2ce820bc885d8d5308ec5cb0', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:51:30', '2020-12-27 05:51:30', '2021-12-27 09:21:30'),
('0a753ec271f984a566db321767123122f393132e434d673adf752edd583167f1860376560a114d8b', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 10:54:57', '2020-12-26 10:54:57', '2021-12-26 14:24:57'),
('0ae61e7b51dc73997e02edcf08ddeca183e436c5bd15893a54c2796aea5c61dbe79a0d0da26a8d9b', 52, 1, 'NewToken', '[]', 0, '2020-12-16 10:21:02', '2020-12-16 10:21:02', '2021-12-16 13:51:02'),
('0dfdaa3676126e14de481a6af29ab340077d34300e5a4ba11dd753caa7fa404f4c97a4da58f92017', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 09:19:20', '2021-01-16 09:19:20', '2022-01-16 12:49:20'),
('0e4ea3747f0565962bfec348811b583326485e413d1010c8c7d8f9d2e95478b3a362bffdfb836ab0', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:35:58', '2020-12-12 09:35:58', '2021-12-12 13:05:58'),
('0f6243b68876d4cd07eab8c4163d33d849165e7dff6a21342386d7ba1771d312b5bcff2884314143', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:43:46', '2020-12-26 09:43:46', '2021-12-26 13:13:46'),
('0fee5ace38a319926303a035dd0680306e7414dbf95711fa1dc3cea42af4aa2abf576dc89a4adba6', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:11', '2021-02-02 10:13:11', '2022-02-02 13:43:11'),
('1024f1f935f44a48423d62079a73373e56e277475379b602cee37be135502f6e497d51e16442b74b', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 11:27:03', '2021-02-06 11:27:03', '2022-02-06 14:57:03'),
('10676bce4d8ab1bcb870ec6aff16a6df0ecc27bbcd0a784c92b27d3af8ac24b60ee573124733597c', 137, 1, 'NewToken', '[]', 0, '2021-01-31 05:31:51', '2021-01-31 05:31:51', '2022-01-31 09:01:51'),
('1067c7f03ec684968ce24c706712f49551af8bae0c59f524655767e23b170086bd2564322c8bc93d', 140, 1, 'NewToken', '[]', 0, '2021-01-31 05:50:59', '2021-01-31 05:50:59', '2022-01-31 09:20:59'),
('122c63a010ce1b7e36075f09c73382f54f8766d2d794b652ef2b6f2a0fb10de906b29d15fd4ef75b', 93, 1, 'NewToken', '[]', 0, '2021-01-25 10:48:33', '2021-01-25 10:48:33', '2022-01-25 14:18:33'),
('14d03af6a190cdb43230ddbb2f4341f57b8dc244efcbfe52ee923dd9d199efbe76948c71593121c4', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 08:54:40', '2021-01-18 08:54:40', '2022-01-18 12:24:40'),
('15b631cf4baf76a322e920ede15055724e41c74483927919a0f8e33fc32ad6ecb77c53ac272490e8', 147, 1, 'Personal Access Token', '[]', 0, '2021-02-03 07:56:44', '2021-02-03 07:56:44', '2022-02-03 11:26:44'),
('15db42cc1c5047c5088336913bc41fe4ab73cff2abcc92c6c52ece77ca931728fb64bcc1fd516ad1', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 05:37:15', '2020-12-01 05:37:15', '2021-12-01 09:07:15'),
('16654e4f6767d1aeae74b3e21df9d4d13781bad4d11d549b0c7254bb015c36de55cfa3ea524f9b10', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:17', '2021-02-02 10:13:17', '2022-02-02 13:43:17'),
('180d9514cae3408acd0579969b50108e5e81cc0778a649a46e88079baf42d4d02baf0ace2c23b734', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:24:43', '2020-12-13 08:24:43', '2021-12-13 11:54:43'),
('1851b15767cecc3cf602f2656b51e9c79fb52a53bbee3621afa1e8125c9476cc05cca0d98dc11a52', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 04:57:20', '2020-12-12 04:57:20', '2021-12-12 08:27:20'),
('18d7b67415d8bc6d716cebc6f153647cd87922e10e4388734fe75f2b9fe9909cac813041c8053601', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:12:58', '2021-02-02 10:12:58', '2022-02-02 13:42:58'),
('191ca5895b7cd633ff532a599001c74658adce9686e35f0c749f8569ed5f6608e672da6c27199d5c', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 12:03:52', '2021-01-16 12:03:52', '2022-01-16 15:33:52'),
('1aa2c50c306a67e58d6a11eab795b5f8b0d0535c3813a35d813ebdda552c5acfb494c1086f80ed6c', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 10:39:51', '2021-01-26 10:39:51', '2022-01-26 14:09:51'),
('1b3a57619cd5536d435b468d0dc66bad4da6fd0769ffe3adeee3dd4ee9859834aeb6c657007842ac', 75, 1, 'NewToken', '[]', 0, '2021-01-25 08:14:16', '2021-01-25 08:14:16', '2022-01-25 11:44:16'),
('1bf0b3d93f71dddb2157dad2cf17f62c7adf9882e5c49bfeff862793e6b50e97de0d96455415bdad', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 05:34:17', '2021-01-24 05:34:17', '2022-01-24 09:04:17'),
('1c6897b62f8bb7cd4e60e94c6f284b93c487f96721502d4b65cddeaaf249e968d320a9803e58c40f', 92, 1, 'NewToken', '[]', 0, '2021-01-25 10:48:17', '2021-01-25 10:48:17', '2022-01-25 14:18:17'),
('1d927646687dc7be0cba2f2a6986662d80ce9e6923e0b3fe4ae3e685eefd39ced666825be0d98797', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:12:54', '2021-02-02 10:12:54', '2022-02-02 13:42:54'),
('1e77bf5452ef78409db00d3dcc91577f2c5660d65fdcc7938f2422f6b762282a78122c020b631824', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:46:09', '2020-12-27 05:46:09', '2021-12-27 09:16:09'),
('2030f43bafa8ae628af741afa42e2235c10d501cccb3b19899c29483630da3aeeb6e4fecc63b09d1', 108, 1, 'NewToken', '[]', 0, '2021-01-30 06:52:48', '2021-01-30 06:52:48', '2022-01-30 10:22:48'),
('21144f5c2d69d35c89fb710e0d15f07c4cc6a8b0e66c14a36cbe693e2c80317d9a3eab575cf34a06', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 06:19:32', '2021-02-20 06:19:32', '2022-02-20 09:49:32'),
('21c245ac74fd80a8d38cace16db5a925a1172adb80889bc1b2f995bfb8752d13f7514b4bbda403d3', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:36:47', '2020-12-12 09:36:47', '2021-12-12 13:06:47'),
('22700427a750ca1c6788ab346279789fdb79538d27a74d13169a6faabfac85c65a82d78f6ae453d9', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:12:55', '2021-02-02 10:12:55', '2022-02-02 13:42:55'),
('22dd6aa5fe4100b1c4c7f28567240ea66b7a670f36a71d48983fa7b9de1471ebea8b7523eafb991b', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 10:54:00', '2020-12-26 10:54:00', '2021-12-26 14:24:00'),
('2626ef045cf2cbae4bfefe45e42694b7bcb65e56263b15ada043d9257e94a27498b5d04476ca6c7a', 118, 1, 'NewToken', '[]', 0, '2021-01-30 09:31:38', '2021-01-30 09:31:38', '2022-01-30 13:01:38'),
('2663483d98e0abdef1304c78487e7498f0dacb41dd4d2823429b55b057d4145823eb6e10f7fa4df6', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 10:38:59', '2021-01-16 10:38:59', '2022-01-16 14:08:59'),
('2695babb45aa07bae0890c8d3879caebb8e93973892ec9f35f3ee8538a61a15043136b0f410f7bcc', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 10:47:34', '2020-12-12 10:47:34', '2021-12-12 14:17:34'),
('26eeba68a6e60401de9119d3f7b4b85522beb10488191fed1daf244d403b054232fd7d0e193e144b', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 06:04:24', '2021-01-26 06:04:24', '2022-01-26 09:34:24'),
('270f3c2a778b3d90792ea0568a6446799a8ece93f04dfd3384c820daa1499cbfad9d922125791321', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 05:28:24', '2020-12-12 05:28:24', '2021-12-12 08:58:24'),
('2841a1a024bea61a0748dc2c657051a2d2ed2727d4f88fcf67d46427e1785f765abb0dc933113c72', 144, 1, 'NewToken', '[]', 0, '2021-01-31 07:10:50', '2021-01-31 07:10:50', '2022-01-31 10:40:50'),
('2a75a91b4a1926db1be91debeeda1c8087fe71b8c5610793b166af648a31118095b539a1a70cf174', 105, 1, 'NewToken', '[]', 0, '2021-01-30 06:27:06', '2021-01-30 06:27:06', '2022-01-30 09:57:06'),
('2be6b73abdef65ffc0db9c8122fed702cc206c6ebce638695fa21077ba5204648e75eecda606bda1', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:29:54', '2021-01-26 05:29:54', '2022-01-26 08:59:54'),
('2c276b824094b8415755f912ddae2e0b83baf71aeb29bc945b40f13d206be308ed821c53c00162b1', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 06:08:42', '2021-01-18 06:08:42', '2022-01-18 09:38:42'),
('2d9433997fd87e508baa443b0eb88240c133f93c13fecad5acc9d7ee0c20610a76024470046b0b09', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 10:30:31', '2020-12-01 10:30:31', '2021-12-01 14:00:31'),
('2dfc8b9916826a55131bf819c070095ccf98602b2d1ce0bc429f426d55f9b83c696d88c643fa502e', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-23 09:29:59', '2021-01-23 09:29:59', '2022-01-23 12:59:59'),
('2ebfea31524eefe49ed9c39cc4bb8ec02b883c54474acce0003e6d06cd9ef986bc8ae8dd54046584', 54, 1, 'NewToken', '[]', 0, '2020-12-16 10:22:28', '2020-12-16 10:22:28', '2021-12-16 13:52:28'),
('30ddf766efb4691f693799c9c0fd43e6c915227b4a4974ffb0bdb90b8c1c21653e9e51406d08c875', 146, 1, 'NewToken', '[]', 0, '2021-02-01 05:59:34', '2021-02-01 05:59:34', '2022-02-01 09:29:34'),
('319d46cd16018df70882df0971540a88457ab64e2d3b14efa9cde7d0f1170e729c5d5cd156b67c42', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 06:24:34', '2021-01-27 06:24:34', '2022-01-27 09:54:34'),
('31b2e147e83f6c4beec212840d353e70e3c0621b56aec4ee77936d017616ab2b76cab1a9eeaf2799', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-17 09:08:59', '2021-02-17 09:08:59', '2022-02-17 12:38:59'),
('329ed337b318e86c7b237b0a58f89e92933e61ca85f30e6d4202fdee28c3a90a0d7f493891d1d8ea', 125, 1, 'NewToken', '[]', 0, '2021-01-30 11:11:13', '2021-01-30 11:11:13', '2022-01-30 14:41:13'),
('32a3950b63e2cd5a676390cc4c547dd402a1f87f86a405569eae56bd7c0f653c6fec96a6d4ae4345', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-17 09:15:02', '2021-02-17 09:15:02', '2022-02-17 12:45:02'),
('33a61ab70a1c4df87760ff87674b462bb0b64f463d58cca3826f6a36c224a282a99132681bd46ebc', 103, 1, 'NewToken', '[]', 0, '2021-01-30 06:19:22', '2021-01-30 06:19:22', '2022-01-30 09:49:22'),
('34811c842cda77b8f310153a9af86429296408461de31405a6349a56d69a88429da0f1cbe1f75969', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:14:17', '2021-02-02 10:14:17', '2022-02-02 13:44:17'),
('3486017c4637a5a266010a2d912f130902973f5822b635b736978c6355e788f7561b7e68f8cf8a8d', 114, 1, 'NewToken', '[]', 0, '2021-01-30 08:43:07', '2021-01-30 08:43:07', '2022-01-30 12:13:07'),
('3518d93388ee5e3ea51138c67936aa313a86270bbc162891536bc3ed1aa4cc1a9ab727ca42c6f05f', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 11:57:15', '2021-01-16 11:57:15', '2022-01-16 15:27:15'),
('3624cd123288f5b1224c071d540c064b9ef03ac8f11c8646f5b0b33868822e6e8c6d35b9247180e1', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 05:43:15', '2020-11-30 05:43:15', '2021-11-30 09:13:15'),
('368ff033ffe4b431a61366e3ff9549980b6c59d9803ae58e1dce6e085fbc7902ccfb53e99c0cdced', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 06:08:41', '2021-01-18 06:08:41', '2022-01-18 09:38:41'),
('3795e59756778dfb15167e99672ed86fb592041b65f4011d5bad31a283fb22f1585bbde848bbbf79', 132, 1, 'NewToken', '[]', 0, '2021-01-30 11:47:09', '2021-01-30 11:47:09', '2022-01-30 15:17:09'),
('37a3e367906cbbcefb521175a35607cf91ce755726c86319ebfc514cfae465e5e90843bcdd046a71', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 04:48:45', '2021-02-20 04:48:45', '2022-02-20 08:18:45'),
('389c0f23a6658177c071266f6da3d5acfbf2fd586d91a817554850df1edf0b70fe4eea7de2c66678', 150, 1, 'NewToken', '[]', 0, '2021-02-06 11:19:25', '2021-02-06 11:19:25', '2022-02-06 14:49:25'),
('3cedad87ba15fe7bf654f75950cd60794beb9a54257ad1d2b8f935c5d9af31800929004a7ce4169c', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:44:25', '2020-12-27 05:44:25', '2021-12-27 09:14:25'),
('3d303e1239c9c27f0c65b0e88f9f206132cdb7adf2b09ff02c950e3429b72afb789df044389f9e56', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-07 05:10:31', '2021-02-07 05:10:31', '2022-02-07 08:40:31'),
('3e0ffbbf23fa9cb91482fd0d9269fdad182a97daa384cf46e5b75e48b8247d1f8edac672563b1389', 90, 1, 'NewToken', '[]', 0, '2021-01-25 10:12:41', '2021-01-25 10:12:41', '2022-01-25 13:42:41'),
('3f70f6924294034b074ca3316145c8c242017995e67a795fd85623db4ee7c2122f899a452a50dc75', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:16', '2021-02-02 10:13:16', '2022-02-02 13:43:16'),
('427cec47a9aa8101aea4162cceb2ad662e0d4cc365e73c1e2c1c9c762d3e0db87799761f9b0ed5c7', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:12:57', '2021-02-02 10:12:57', '2022-02-02 13:42:57'),
('42a6569f0ccf897541c8fd29f554f8a612544832dea33be13e097336fdb0f26f96fb9c8fb2433c73', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 12:34:19', '2021-01-16 12:34:19', '2022-01-16 16:04:19'),
('42c7c592cf2e2a8dad8b481aa415c44f21937944cf618f831ce8a82ec0f5489b26cea90c426f4242', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:29:54', '2021-01-26 05:29:54', '2022-01-26 08:59:54'),
('42c858ed1122bd91ade58a83f3ef7ea2e805b90ed6b7f16880c0231ac8bd862b107ca88fe2bfdbc8', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 06:49:49', '2021-01-27 06:49:49', '2022-01-27 10:19:49'),
('42e6954513044cac5936941b00e884d70f9f68707198c0b4f466aed06062cf95d21626146e8afea2', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 09:55:16', '2021-02-06 09:55:16', '2022-02-06 13:25:16'),
('448ddb3c0823ed40a76e324a1cf5e95cbe91a0a04541d105fa40194d36b4c13f48ca05dd13ff578f', 130, 1, 'NewToken', '[]', 0, '2021-01-30 11:35:37', '2021-01-30 11:35:37', '2022-01-30 15:05:37'),
('44b0da0398ccf0ec76fcb57777ace47b5a649d0e8534a8f4b6af7ccf01d8bc9f530190885bfd7e7b', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 04:20:52', '2020-12-27 04:20:52', '2021-12-27 07:50:52'),
('45b96142e7dfe0be1dd548195d9bdea9e7a4c140598525eb013267526710b072e11fde0d72ebf526', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 10:59:01', '2020-12-12 10:59:01', '2021-12-12 14:29:01'),
('475a3ce4f525ca4a90797a141408d020fe2446c53b794da3f1d1c9696c078bafe4b46425b31ba375', 102, 1, 'NewToken', '[]', 0, '2021-01-30 04:33:26', '2021-01-30 04:33:26', '2022-01-30 08:03:26'),
('4781806522e0ff929742dcaf72604453c71d0ebea7f99d7bfc229f083e1f4987c409271841fe8985', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 04:48:25', '2021-02-20 04:48:25', '2022-02-20 08:18:25'),
('47fcdbbf5b72ed115a971c32ed21f356cc6ceffb927582a300cc4f13edfd0a826565a38baf9c3c69', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:52:29', '2020-12-27 05:52:29', '2021-12-27 09:22:29'),
('49df40f5fa9a9e5a0bb82f28ce9a089589fd6ad314069dc93844b27ca9d57fe2b2fed3b7a538f63c', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-09 11:02:15', '2020-12-09 11:02:15', '2021-12-09 14:32:15'),
('4c3967450d2dc0c19566bc64cdedfe6988056f9fb51c856c50e15559a36b71802988817fd154d23f', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 04:23:05', '2020-12-27 04:23:05', '2021-12-27 07:53:05'),
('4c4264a3b306d74c72c3820771d32e24b11e068dfec2a8042997257b810c1706b6ca17890f6e018d', 13, 1, 'Personal Access Token', '[]', 0, '2020-11-30 09:23:07', '2020-11-30 09:23:07', '2021-11-30 12:53:07'),
('4d43a20ac3335d72837fd0ad035bdbfaa665206fe2893c32790e16e59b27570345f51aa96bd2d9ba', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-03 07:48:01', '2021-02-03 07:48:01', '2022-02-03 11:18:01'),
('4de7528b5ebf9f3cdeebcddcf3751a50f01c8180d6dbf6941a27a0b6770f676f67e4f1d63686d7ca', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 10:40:29', '2021-01-26 10:40:29', '2022-01-26 14:10:29'),
('4e16683f55f20bcb8c35255cee051286ce7e38bd8bd3143f4dd7145c91c96dd98913eb3ce02b151a', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:11:30', '2021-02-02 10:11:30', '2022-02-02 13:41:30'),
('504660998301d32bcade4c641d9b5be7949b2b340cc115aa86e770531a52be9dc0bcc8e13112d420', 87, 1, 'NewToken', '[]', 0, '2021-01-25 10:11:51', '2021-01-25 10:11:51', '2022-01-25 13:41:51'),
('51b48a8ee3f3c2300f6e724106ea777d4c72c18619ad6634eeb6013ad04ecf90b794bfac1b0b256b', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-16 06:47:30', '2021-02-16 06:47:30', '2022-02-16 10:17:30'),
('51f047c97da6ee67382d27ff2659cb4803f6daf7b0af7d382b0a6e5b77f146068096d87c8377e952', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 09:33:47', '2021-02-06 09:33:47', '2022-02-06 13:03:47'),
('525596a4a0059f00dcbd5e2c83d60fd54142bec26998b87ba5357a00308eeef35794c45e0e5d1297', 136, 1, 'NewToken', '[]', 0, '2021-01-31 05:28:32', '2021-01-31 05:28:32', '2022-01-31 08:58:32'),
('525a7d3e52a41aa68ecbb59040b40dc12d73c5c7433013376d2c0451b7a63946dc6d520f32a3e4f0', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:29:54', '2021-01-26 05:29:54', '2022-01-26 08:59:54'),
('52cf4df0eccedbcec2203c72f8dd12427bf95d14d3b2042ca74825543769a661172aa0cc1d93f236', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:31:23', '2020-12-26 09:31:23', '2021-12-26 13:01:23'),
('53bcfcdf9cadc8079b91df88e8552d28bb60eb756a525c4afa2a16786b3a6d46c21403adac9d98b4', 116, 1, 'NewToken', '[]', 0, '2021-01-30 08:50:45', '2021-01-30 08:50:45', '2022-01-30 12:20:45'),
('5689577c1781d216e6ea98a97ddf87dbc742fd33830714112d33b56c20791b78ddb2c394ed2ad2c9', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-13 13:07:39', '2021-02-13 13:07:39', '2022-02-13 16:37:39'),
('56b87179831f0de9be25bc7538d5816a578f2fc8747117f42de15f199cfee11ee4eb91d082222311', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 06:03:40', '2021-01-27 06:03:40', '2022-01-27 09:33:40'),
('57aecaaea215d0db500474b7afd0beda1648c4dba11d49cc2d1ee10d1c053e0153e4fb19d3af15c2', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 10:27:41', '2021-01-26 10:27:41', '2022-01-26 13:57:41'),
('57c189f7a1d5f29e3cba9ef08d2a802abf972e035d7b703f1737acb17ca8500d6e97340a19662c83', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:13', '2021-02-02 10:13:13', '2022-02-02 13:43:13'),
('58dd7152101db848befaa9f4da0e3c6003271e3103ada7f243041844a25533de97926a46906783bf', 94, 1, 'NewToken', '[]', 0, '2021-01-25 10:49:13', '2021-01-25 10:49:13', '2022-01-25 14:19:13'),
('58f4204102bc079a93eadb88362170daaf3c814b57239624ca4038303ae04254ff82653a87d8806a', 13, 1, 'Personal Access Token', '[]', 0, '2020-11-30 09:46:36', '2020-11-30 09:46:36', '2021-11-30 13:16:36'),
('5a4b743839710275f7ac74efb0172a3c372e66e1d22dfe264560f2259e376a3c41afb42798838fb5', 91, 1, 'NewToken', '[]', 0, '2021-01-25 10:13:51', '2021-01-25 10:13:51', '2022-01-25 13:43:51'),
('5b92c18e181e260b42d0ff4c4c7712094f942c957340b74eeec78a293f05fb04b66e30d1b9dc5861', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 11:30:07', '2021-02-06 11:30:07', '2022-02-06 15:00:07'),
('5ddd6ba824354607e2a13ce8d8c66489102a81a4fcf791c995c8ea8757e73dde4387947efb3c1938', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 07:02:09', '2021-01-16 07:02:09', '2022-01-16 10:32:09'),
('5fd6ed500037677d7dae777ecdfb965ea183190062501492593aad6f42337b0348658c4a0720aaf9', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 08:40:23', '2021-01-27 08:40:23', '2022-01-27 12:10:23'),
('5ff73d6f1c8f74896fdf7c7ebf2a7db0182fd15aae383b43c74dda03e7eba022626f9306ae0fb989', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-14 09:24:44', '2020-12-14 09:24:44', '2021-12-14 12:54:44'),
('6084f92abbb6ac6e43d127ef3614522fb68305f668b67f6bf58ba5db87e4c6bb361ffd73578bcb74', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:58:23', '2021-01-26 05:58:23', '2022-01-26 09:28:23'),
('6106aabf87845613f0fa3c879eb6f42b36fad07524ec736806ab54e09b24660cd1eed27d0f2ae211', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-09 09:37:32', '2020-12-09 09:37:32', '2021-12-09 13:07:32'),
('610f488fe3c84c2f134e5efdbb45b78d61207bfc5d78b460ac93fb64d529d2cd5445ec6655ee50b9', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:04', '2021-02-02 10:13:04', '2022-02-02 13:43:04'),
('6112eb6f0f78480870c451735af426af0700bdbb5e4b9edfbc39aa0cb504235d8d84365dc543385a', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 05:51:01', '2021-01-16 05:51:01', '2022-01-16 09:21:01'),
('6148f0f154e8179821a8539df7409ee9b4a1db88581c8c14b0ff536b794669fd4bc6cea7ccb849de', 140, 1, 'Personal Access Token', '[]', 0, '2021-01-31 05:52:01', '2021-01-31 05:52:01', '2022-01-31 09:22:01'),
('62e86ffdcb8da5ea26732bf53465c2d75f9f9eca6e191dcf4f1e3a23873efabafee8e6e7c07b2d4f', 124, 1, 'NewToken', '[]', 0, '2021-01-30 11:06:48', '2021-01-30 11:06:48', '2022-01-30 14:36:48'),
('63083ec353c24b415c039bd750b28ff9d2a22fec1332e7a575e59e12cee7fca49b738cef6c187af5', 143, 1, 'NewToken', '[]', 0, '2021-01-31 06:15:08', '2021-01-31 06:15:08', '2022-01-31 09:45:08'),
('637f9a432329d0894a9bae5e654bde3d432c2a4de03b93e0ab721b1ce9d1235a8149d6e4ede07616', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 05:50:55', '2021-01-16 05:50:55', '2022-01-16 09:20:55'),
('63d79fed7a7915d6d5b92ee1a99a07426b29efd594aea018db85c1b28ce75c9fb8dcd31a256c1028', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:05', '2021-02-02 10:13:05', '2022-02-02 13:43:05'),
('642a4690f58fbc7978f7c86d73e36122b26a943c8708cff69141441564ca57b2e072a29ddd301c9d', 148, 1, 'NewToken', '[]', 0, '2021-02-06 11:15:41', '2021-02-06 11:15:41', '2022-02-06 14:45:41'),
('64c4f09c53de64a24e517ca9833da3b7972e520382980c80b730fa0d674420cbf0a41826a32b8223', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:12:56', '2021-02-02 10:12:56', '2022-02-02 13:42:56'),
('64d4d3cdf6ddfdb04ad16e17742846ffbac2379f8b1f1b2915176f05ba433c0943e90dfa759a88e8', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-07 05:13:57', '2021-02-07 05:13:57', '2022-02-07 08:43:57'),
('6551b98dba9fc91ca619f693d0b979c2503213d251fecb89f44a5ac0f32f3461d544c3676d04b10d', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-17 04:42:58', '2021-02-17 04:42:58', '2022-02-17 08:12:58'),
('65d4391687b3d8306d699038dbd1ce5420ce22605e16e8551b75e77e898bc21dada6e92c1ba3be07', 109, 1, 'NewToken', '[]', 0, '2021-01-30 06:54:25', '2021-01-30 06:54:25', '2022-01-30 10:24:25'),
('67dce58467103a88d6715d036fbd4a962745fbb267baf278c6bba7c54875c5846fbfc6b81a532b53', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 10:28:05', '2020-12-01 10:28:05', '2021-12-01 13:58:05'),
('684105ad3313fa00dcf5cd99cdcd316617168fa160f1f46332b3673ebffae1f935b3e772f730ef2f', 80, 1, 'NewToken', '[]', 0, '2021-01-25 09:19:00', '2021-01-25 09:19:00', '2022-01-25 12:49:00'),
('69042021220993ca5f3b2d9741300971a2695ee541ab5ab43413bfaf1c28889dcde22f3ff33b1d4f', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-15 06:02:29', '2021-02-15 06:02:29', '2022-02-15 09:32:29'),
('6914762d5bdacd79f0bc0463f4ee17f2e2fa4c111cbf5db523acfa355ba3a9c516666ef541b75310', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:33:59', '2020-12-27 05:33:59', '2021-12-27 09:03:59'),
('69e2cd512090f2cc240c8d5ff26ec9b136bc20a2fecaeba914aa60983ab3e368cb96673216ae8a86', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:37:41', '2020-12-26 09:37:41', '2021-12-26 13:07:41'),
('6a251b9dbed92aad95c1fbb01039efb448a429e5ae6b34d70f3e0911005b791161212d67748b3470', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 06:50:36', '2021-01-27 06:50:36', '2022-01-27 10:20:36'),
('6a4a1384e17f84af2e760d8c6959bb0b43d3372ac12593ce88af486cb40fec9ee971a9204cd8ea97', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 09:07:12', '2020-12-27 09:07:12', '2021-12-27 12:37:12'),
('6ae6cd2e924f9de287c9f2fa5e8d7814d01cf51ece710a78aa6150155e32464925f8144494307d1c', 104, 1, 'NewToken', '[]', 0, '2021-01-30 06:26:15', '2021-01-30 06:26:15', '2022-01-30 09:56:15'),
('6d05147e645edcf45887148a3974e489b2d90c521fdce4fcf9441af68546cfe078295fef4b3750c0', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:18', '2021-02-02 10:13:18', '2022-02-02 13:43:18'),
('6e3342ddd22f8f34a72d7c6664db328bcd9c046055b6ea50acb1e6fd541be4ced74bcc32a1622057', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 12:23:52', '2021-01-16 12:23:52', '2022-01-16 15:53:52'),
('6e37eff5262bd0da579761a058c4a8abac4928b06357aa4d6721d31b591a47cd9cbb01c1114506e1', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-07 07:36:35', '2021-02-07 07:36:35', '2022-02-07 11:06:35'),
('71eaa4db8350c1c753508f378b8406faf87297030452f3578ead3d14e73f48a0a2201b75f9c2b108', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 10:45:24', '2020-12-26 10:45:24', '2021-12-26 14:15:24'),
('72f6a77470175150aab78056a442f466ef9479e54199462ba31d964a7be0045336eeab92bdc324b0', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 05:20:56', '2020-12-01 05:20:56', '2021-12-01 08:50:56'),
('73ed7d4ac0fefa7536fe4aa01f1af413ba38b49ed69a275705012b3c43a51e602f86c3302288226f', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 06:57:26', '2021-01-24 06:57:26', '2022-01-24 10:27:26'),
('74ffeafa4406305104cf055e40559285b783d145beb3f04cb39a68f71eba0fd8db4d142e57e011dc', 128, 1, 'NewToken', '[]', 0, '2021-01-30 11:15:46', '2021-01-30 11:15:46', '2022-01-30 14:45:46'),
('75f451c1d6d2c0f17682240484f74129b7f560fed99516bb5e2783b755caf896e86a9b245cf9bbe8', 107, 1, 'NewToken', '[]', 0, '2021-01-30 06:30:07', '2021-01-30 06:30:07', '2022-01-30 10:00:07'),
('75fcbb98fee271ebd8cb2e20b015bd5af4ff186b281b6575c39cc6d550ce7a99e0e77bced230f2f4', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-13 13:01:02', '2021-02-13 13:01:02', '2022-02-13 16:31:02'),
('76a65a5759021b60781cde1f326573695e893dfaccaabe252f4248f0a8beb8219be8555b16abdace', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 10:40:59', '2021-01-26 10:40:59', '2022-01-26 14:10:59'),
('76fa4ce899d04271cc8c67675850e83c083de79824e1ec23831a3d2277c8a8e58b27034c66f5ed9d', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:33:37', '2020-12-26 09:33:37', '2021-12-26 13:03:37'),
('7752a4e34653c82e9848a60c9932b7dc3b5c203dceddd6617517a107124fc98c4c5610c17d4843fd', 13, 1, 'NewToken', '[]', 0, '2020-11-30 09:16:57', '2020-11-30 09:16:57', '2021-11-30 12:46:57'),
('77e185fcbf02b3eec0a98c984bbf58934da3884b92b5a94c7a7dac08659afbdebb68cf1e9d7b0afa', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 11:32:25', '2021-01-27 11:32:25', '2022-01-27 15:02:25'),
('798c0e2206364e81d2a8e9abe63459df2443a2c7053ac7660bbc11b68e5fe9e3195efe50f0cd8207', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:50:44', '2020-12-27 05:50:44', '2021-12-27 09:20:44'),
('79e14a4752746162462d8b2653ac8ce08cc4b19e9e57b47f79993091dbeea2738e18bccb5b462f17', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 10:43:53', '2021-01-27 10:43:53', '2022-01-27 14:13:53'),
('7aa52f6d8e0488c6c96b39f331b91ff20359022b309a5425343d2b97c0be7ee02a1e42d2a3678eef', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 04:10:41', '2020-12-01 04:10:41', '2021-12-01 07:40:41'),
('7b8974d475f73655c6dc27bfc4a4a3d63fa1c0ad14fdd2d034ad68bb2520ac32a472300d5dc76444', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-19 03:44:31', '2020-12-19 03:44:31', '2021-12-19 07:14:31'),
('7c7a4896ec5c6942c1fb7a4164afbb9768ecbc430ebca92540c59af8babad3bd2c6455363fd3dd6d', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:14', '2021-02-02 10:13:14', '2022-02-02 13:43:14'),
('7f209ac770ffaab273ed46e17ab68bd9d6126152a8bef9fbe54e98fe44ee41dc958f22fb3d926bb9', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 05:41:04', '2021-01-18 05:41:04', '2022-01-18 09:11:04'),
('7f3820bb5123cf323d78b44ab77bfa5f2ed5a8c1bab290832d10d73161e3f8ed42cfb5d8f56fe9ba', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 06:19:50', '2021-02-20 06:19:50', '2022-02-20 09:49:50'),
('7f6626eb90177b7f2f9d15291e61e06880eb081734e50210d918e48672e50be08cd52425a11f44e0', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:21:47', '2021-02-02 10:21:47', '2022-02-02 13:51:47'),
('7faec15f63a0692920f39ab63c4baf5533ab4525f28d60ef4d0ade6ebb546ec36cb0fe7247cd974f', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 04:26:19', '2020-12-01 04:26:19', '2021-12-01 07:56:19'),
('7fc467ccfe02aaeaba58bc236126d6880522e5a0f236f20f082501765aec9407cb06f5597db818dc', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-10 05:52:05', '2020-12-10 05:52:05', '2021-12-10 09:22:05'),
('806db972bfc76761a40920a8b3b3134e6a8ccdc1d7ddff89023af11a27d01841df81cab78104f0b8', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:14:18', '2021-02-02 10:14:18', '2022-02-02 13:44:18'),
('80e34178eea5e0135ee3f694851448daf84812e411f6e4df8e39b17319256189c725d225a6ad1c90', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:45:07', '2020-12-26 09:45:07', '2021-12-26 13:15:07'),
('814893aded80ecbf6b0dc9f8098f2ee3e5748dd461a5812350440d829e9afcbb46a3d08f11c8a2ba', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:36:28', '2020-12-12 09:36:28', '2021-12-12 13:06:28'),
('8226c2653c007fa1ca8bb5b211357127889d201f57c20ebc93e30c925ec2ed5b19dcd8350e90cfcd', 122, 1, 'NewToken', '[]', 0, '2021-01-30 11:04:12', '2021-01-30 11:04:12', '2022-01-30 14:34:12'),
('824b5bb7f8811a46dfdfc09c5f87490e21eaccc99b158536e3bb6b886a042f2690148afa7ebae408', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:38:01', '2020-12-12 09:38:01', '2021-12-12 13:08:01'),
('82e60cb7676fa739f0f158e23aec43ff040de2cd43236c3bd7647e83017e252d46ca6bbab17869dd', 129, 1, 'NewToken', '[]', 0, '2021-01-30 11:30:16', '2021-01-30 11:30:16', '2022-01-30 15:00:16'),
('83070a0b6d8d1fdafcdffe9c2d03541f72877f6e88ceb7691bc2bb378f9691b5e31b431cac29a33d', 121, 1, 'NewToken', '[]', 0, '2021-01-30 11:02:28', '2021-01-30 11:02:28', '2022-01-30 14:32:28'),
('852e4417e61f9a7de9c8ece15b87733f3f5e627849576c13213dca6a2057c519d16c7d81bba6ad5f', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 07:05:57', '2021-01-27 07:05:57', '2022-01-27 10:35:57'),
('88dafb0736b71d5417b031770c38cdd70f78415b16a9db9cb39edcac923b32e4edf473a334447a8c', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-29 07:52:00', '2020-11-29 07:52:00', '2021-11-29 11:22:00'),
('898d9adb108518fe0e0f732d6b24be6d3ce79357ea3123a8f40abda8dbb053b04a5b9347a54cfdf9', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-02 11:12:48', '2021-02-02 11:12:48', '2022-02-02 14:42:48'),
('8b79de4f1d6e3122d74f6ff425dcc0b7f1fa01d2e83915641d8e0d741a83a8d57a4228ac8048863e', 131, 1, 'NewToken', '[]', 0, '2021-01-30 11:39:22', '2021-01-30 11:39:22', '2022-01-30 15:09:22'),
('8c0da9d6dfd5c569aafda22e4741351bcd64c51fd3fbebd75d3939e9513935d7a59db9482b79bf09', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 06:17:50', '2021-01-27 06:17:50', '2022-01-27 09:47:50'),
('8dcce852fc2ba198e613371ed1cdb1fc7fa1adf1614beb186d2669fd3ba61b21e7c54c42b170ec04', 149, 1, 'NewToken', '[]', 0, '2021-02-06 11:17:38', '2021-02-06 11:17:38', '2022-02-06 14:47:38'),
('8e44d02dafdc0fe24d00ec704e87a565bcbe17febf0b4fe3a212ea5e472e34ae74ea4e70f299dd7f', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:58:00', '2021-01-26 05:58:00', '2022-01-26 09:28:00'),
('8e6c579b29f2b38741a6101f6c055cbba087dc6ff41966c4a802924d2254dcde9da1e831b0d35e8f', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:15', '2021-02-02 10:13:15', '2022-02-02 13:43:15'),
('8f820475aaac03661e821899536f7b218c57b85a10cc58ea10ab136f8fd46e3fd566ec06c530b5df', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 06:18:50', '2021-02-20 06:18:50', '2022-02-20 09:48:50'),
('90f8eb120f07257acb33f5f544e8a3a586fa323681ba345cdebd09026060f9c6688515d1ba6cb289', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 04:36:00', '2020-12-12 04:36:00', '2021-12-12 08:06:00'),
('912610ca3bd0eb75e279225a2c4d11d4fbfed2b1a54d1ec75b8fb49ac41c9ae37694956585e17434', 147, 1, 'NewToken', '[]', 0, '2021-02-03 07:55:28', '2021-02-03 07:55:28', '2022-02-03 11:25:28'),
('91d784bf98d6c06b9952c56ec53fa3ebf0c2fb8feb7a97668d666068684705dd7ebcc66ca138b1f1', 50, 1, 'NewToken', '[]', 0, '2020-12-16 10:13:30', '2020-12-16 10:13:30', '2021-12-16 13:43:30'),
('92c3ca2a653f60bf219001f4fe529b9514b701be4c5046ba8b5dae77fc540386ec4334f1fb976052', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 10:29:57', '2021-01-26 10:29:57', '2022-01-26 13:59:57'),
('9559d062dc3f8775eb2cb311e90135943a1db445634e7868cbe80372cc904943bf1363d6710f7e8e', 71, 1, 'NewToken', '[]', 0, '2021-01-25 08:11:37', '2021-01-25 08:11:37', '2022-01-25 11:41:37'),
('96900a731219fed80a60fd2f1ade7c40b5a8f9571013135984cbe9504eaa75f672efb56d6fc5e1db', 97, 1, 'NewToken', '[]', 0, '2021-01-25 11:06:12', '2021-01-25 11:06:12', '2022-01-25 14:36:12'),
('9c584857d1e85841a771e4b8284adfe221179f7e5da9e0e571e01b9a3ee0cba0b0f0b3acbb8b1be3', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:17:24', '2021-01-26 05:17:24', '2022-01-26 08:47:24'),
('9d05316bf9bc20cba0ea5c3f713d841271f5cc7bcd88be262afdc5e9d83115cc4fafb2cf767b3264', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-09 10:56:09', '2020-12-09 10:56:09', '2021-12-09 14:26:09'),
('9d177706383e656f33da4f670a55774bf9854adfd6bda1d776e705b10380d5c210b8cc362454cb0d', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 11:13:14', '2021-02-06 11:13:14', '2022-02-06 14:43:14'),
('9d59f3d23ed5aaf9a3d14faed4c35943b09c7ff5b1710a5f96bf3c67c624d1e36f0fa4eca46e4a92', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 06:31:06', '2021-01-24 06:31:06', '2022-01-24 10:01:06'),
('9e3e63fff8b651d4708057ec28a1401afb5372d09f15fc7ef8717c4127992ce98966a3e5e7e4ffd1', 1, 1, 'NewToken', '[]', 0, '2020-11-21 09:45:46', '2020-11-21 09:45:46', '2021-11-21 13:15:46'),
('9e951fa4d18026b8eb13cfa389b078a006e250b8acd2f13f2e1e82f385cc9a6ff5349b5905209ea4', 139, 1, 'NewToken', '[]', 0, '2021-01-31 05:42:43', '2021-01-31 05:42:43', '2022-01-31 09:12:43'),
('9f92465a6f3c2d7912dd76a4ce90c3b76be93d37ec3742fb7cf530e1525d6faa0d01d17f8c5e9f48', 78, 1, 'NewToken', '[]', 0, '2021-01-25 09:16:45', '2021-01-25 09:16:45', '2022-01-25 12:46:45'),
('a0154e1025abdc116d951948df89c4064d4d0675c5fd363c90d8aa7a58efb3104befe472469f95e9', 96, 1, 'NewToken', '[]', 0, '2021-01-25 11:06:06', '2021-01-25 11:06:06', '2022-01-25 14:36:06'),
('a069851589c1ca52818005fee2b72c26876f3fb0ee553475cb1585f998aee937d908768783eb82e4', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:32:22', '2020-12-26 09:32:22', '2021-12-26 13:02:22'),
('a16d417869898d6bcfc6b6fadfdca544276979a6a1e0d560496d3b752b16df1176852117a5784cbe', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:21:31', '2021-02-02 10:21:31', '2022-02-02 13:51:31'),
('a29ae56fb073db860a6954655dc566bcee5faaaa97564c2dfda35dfb945c56bcc9204c8e8646a6f3', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-14 06:35:27', '2021-02-14 06:35:27', '2022-02-14 10:05:27'),
('a3260c0acec0659c804786be827220efde85a98f54ae5611f9fa8edec07f45a8ed8fcbb16dc8359f', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:39:09', '2020-12-13 08:39:09', '2021-12-13 12:09:09'),
('a39169b9e7d420606e13cfe55fc51b0651bebfde3b210deb5073a92cb4068a3ea10b263bf7ee3482', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 06:56:52', '2021-01-24 06:56:52', '2022-01-24 10:26:52'),
('a4206cf055ff6bd0f9a3423ffdad3ccc518e968fd2acf0081e2475a7a31e2b3ede112fae61415bae', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 08:04:17', '2021-02-20 08:04:17', '2022-02-20 11:34:17'),
('a4c8c1c816b26433854ee96a861915c01d1e886aa4d893af1a0d369920117551673843b4792401cf', 117, 1, 'NewToken', '[]', 0, '2021-01-30 09:29:22', '2021-01-30 09:29:22', '2022-01-30 12:59:22'),
('a5059e30d43b072a961f5bc1a9e70e239f285ecb4e706eddc9857cde2d528705edc2a70c82364581', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:00', '2021-02-02 10:13:00', '2022-02-02 13:43:00'),
('a53f5e5fff4bad1e689d8e7a9998753d8a12087cfabf71e6cc3c20c3d5bc8799af609111e05563ea', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 12:34:22', '2021-01-16 12:34:22', '2022-01-16 16:04:22'),
('a5582821575a21e9865e297ae1f1b2e1fea6c19d57a00a1cd6734426050861c5ed223a6b6c41b8a9', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 04:04:48', '2021-02-20 04:04:48', '2022-02-20 07:34:48'),
('a6239ab03847c45746d76240688c3f141135aa95be6468c61a4a7786526ab810d986cbb161c1269c', 112, 1, 'NewToken', '[]', 0, '2021-01-30 07:22:20', '2021-01-30 07:22:20', '2022-01-30 10:52:20'),
('a68477f2113aef3cfb0b632c33e275d5e487bdcd4e51a3560b2854449a75a8fa400c992c35117efe', 126, 1, 'NewToken', '[]', 0, '2021-01-30 11:11:43', '2021-01-30 11:11:43', '2022-01-30 14:41:43'),
('a6bc453d10737bb6a2d2c408bf65e6d444527ded2f7094dd284e39375a612d61259e131674a3e787', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:41:09', '2020-12-12 09:41:09', '2021-12-12 13:11:09'),
('a72c5e7d164c02dfbc23f472fb388cd600d13b3d6b51fc9255c8b61775826035502cd893290f888e', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-19 04:38:07', '2020-12-19 04:38:07', '2021-12-19 08:08:07'),
('a86ba21e3aa31473e1513181c2ffbf3e815a526cf34d53c317fed56cb4c158de0f1cf73e07b3a1fd', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-03 07:51:24', '2021-02-03 07:51:24', '2022-02-03 11:21:24'),
('aab399ab5f7460f573384d818f7e6020853a2e4b98e65528f47f5e28b54ab1a1f6352ddd6df86e2e', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:36:08', '2020-12-27 05:36:08', '2021-12-27 09:06:08'),
('ab5d7faeef5ba9a8e1f512641fc89c0d2186f57422da75d85d50a5e57f116313b5ef978363fa3a3b', 115, 1, 'NewToken', '[]', 0, '2021-01-30 08:47:55', '2021-01-30 08:47:55', '2022-01-30 12:17:55'),
('ab9a86c85944847aeff7e7d8b25b1168490f582d6fb96165526c0f1a812bc0814de7de7036bdaa19', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 11:09:58', '2020-12-12 11:09:58', '2021-12-12 14:39:58'),
('ac7ec726f6c81fc8dc938e52a66822510cd68dcc9b0733dde6be152604b932550c16a97e8308d158', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 12:23:55', '2021-01-16 12:23:55', '2022-01-16 15:53:55'),
('ad8ddedeaf52b15a83d74cc18f192ccdd3f11a8113c1d6ab2be6e6e3beb8d692a786df2bcf9cbfbe', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 05:04:02', '2020-12-12 05:04:02', '2021-12-12 08:34:02'),
('aff0eb995000b52d536c15533d3f5bd1a0547ee86d86eb866f4ccbc5c8171b55a275211c21b8474c', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-13 09:55:32', '2021-02-13 09:55:32', '2022-02-13 13:25:32'),
('b0340eb5a54c7bfef7eed3ba54243ed0d98f7091d731132e9cc0f2cf0c209a0501f86128f211aafc', 135, 1, 'NewToken', '[]', 0, '2021-01-31 05:16:50', '2021-01-31 05:16:50', '2022-01-31 08:46:50'),
('b112b2cc39e2c60f37a64fa8ccdd069840d5d30a3d8f205c22b3a74cb8e639aa94e74d558ff2f38d', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-17 05:00:35', '2021-02-17 05:00:35', '2022-02-17 08:30:35'),
('b1219581b41310f942c1ab9ee67d18e34f321d6f8bf3467170f5b86b5f458932558447d41e16c667', 145, 1, 'NewToken', '[]', 0, '2021-01-31 07:13:12', '2021-01-31 07:13:12', '2022-01-31 10:43:12'),
('b262a2fc1f8afcfd79bceac2e71400f22bd6da8418735fa069070be465992c2004e222cb3cb1cc19', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 09:43:24', '2021-02-06 09:43:24', '2022-02-06 13:13:24'),
('b6214be4e7f96c0668b643c9b639375e41196de5172f121bb0130756844ab65a59facd76397fb105', 119, 1, 'NewToken', '[]', 0, '2021-01-30 11:01:08', '2021-01-30 11:01:08', '2022-01-30 14:31:08'),
('b78f23533224e73058a7deea0f0fad70687b5ae11f15d94d1599278f0844c8f9964adc448cc41b7c', 95, 1, 'NewToken', '[]', 0, '2021-01-25 10:51:48', '2021-01-25 10:51:48', '2022-01-25 14:21:48'),
('b7c94d4cd6863bfa8e3694ced26c5156dee5f2f0392f905592190d81f06c5bbf79d85960374ef6d3', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:37:46', '2020-12-13 08:37:46', '2021-12-13 12:07:46'),
('b819abd9fc3dad523a60d2c9fb18f2428d5648bb24bd14d786630e1431465f2e2ea9d2fe8b5ec1a7', 142, 1, 'NewToken', '[]', 0, '2021-01-31 06:08:37', '2021-01-31 06:08:37', '2022-01-31 09:38:37'),
('b8250224bb4462a0d6c5b580b06f1b2e2582dba56c05fa893e9884a6947eefee1b0a3fbb7cf514ec', 133, 1, 'NewToken', '[]', 0, '2021-01-30 11:49:51', '2021-01-30 11:49:51', '2022-01-30 15:19:51'),
('b99e43ae6010df52ce1c3ef082621847b5eac777dda3d08a1d3ee8341c4aff27a0fc752edce99f37', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 10:48:31', '2021-01-26 10:48:31', '2022-01-26 14:18:31'),
('b9e8b0937fff14abc76537b2f5ca36d95ca133742c1061993eff1cf89f0bdac0e177c2a50a5c59ba', 111, 1, 'NewToken', '[]', 0, '2021-01-30 07:17:51', '2021-01-30 07:17:51', '2022-01-30 10:47:51'),
('ba752dd402c9f2ccaa58c383ecc9aacf027c9713c7470f20d2548e769cb20e3b0d1728ba2d2156bb', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 10:57:04', '2020-12-12 10:57:04', '2021-12-12 14:27:04'),
('baf03a704b892ed9c01a7c8677fc110d298dca4cfe51c9165d8b869d64f54780c35913ef5fea9ae8', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 10:37:00', '2020-12-27 10:37:00', '2021-12-27 14:07:00'),
('bbdb4c28621b2aa5b57d65e72581888fbc11bd6c0cfc5b4a157321212a17c3010390b029e9b410bc', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-03 07:50:58', '2021-01-03 07:50:58', '2022-01-03 11:20:58'),
('bc1492dbc9d0744f166b6248985a40a6718c60e4311c54d9ed737331c7c89b6a2e626837fb997d5e', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:19', '2021-02-02 10:13:19', '2022-02-02 13:43:19'),
('bc452c7398416c4aa8088f6823502468596047b9c16ac24101c849d7956352ed064e1e6245e9b830', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 05:55:18', '2021-01-18 05:55:18', '2022-01-18 09:25:18'),
('bc551bb488be457f5e9d77e2658b154903f0c9edceb22c8bd5adc90e71a954a8e3e6296c55d3ca82', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 05:26:57', '2021-01-26 05:26:57', '2022-01-26 08:56:57'),
('bd2df47e605f98ecfa386b58bdf43b0a0e694425ffe01eeb482bd19cc39d52385fb7075b498c20f9', 51, 1, 'NewToken', '[]', 0, '2020-12-16 10:14:51', '2020-12-16 10:14:51', '2021-12-16 13:44:51'),
('bdd68e09ff18113e1f63c68ba02b0985451d20796270c1da65a725cf7ddda425ee67fb9750943cbf', 138, 1, 'NewToken', '[]', 0, '2021-01-31 05:35:41', '2021-01-31 05:35:41', '2022-01-31 09:05:41'),
('bde714c84e466f80631ccf6760e0b6826dbc1749f6c40e457b16dcf3f3b123c53677572a118ce765', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-14 05:38:56', '2021-02-14 05:38:56', '2022-02-14 09:08:56'),
('be2cd861cc908717c15904940fb90835581042c7db862575842bb84cc5416226eb0e65be413487b4', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-22 09:10:29', '2021-02-22 09:10:29', '2022-02-22 12:40:29'),
('be3748d2b523a8c0e7127563bb96bce42d193d97a9a857439a82fb5687da4879c46f55112f1b5c58', 69, 1, 'NewToken', '[]', 0, '2021-01-25 06:17:39', '2021-01-25 06:17:39', '2022-01-25 09:47:39'),
('be5501247a32bb2a63c0f6c48fba029d238295e3391c1807d1cc6c54940924148e81b5ccc58258a6', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:20:27', '2020-12-13 08:20:27', '2021-12-13 11:50:27'),
('bed5b06bf95359645cae06a26d0aab7a3aa93c6a6e04fe3738edad905d8619451bbfa70d2abf925d', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 10:36:32', '2020-12-12 10:36:32', '2021-12-12 14:06:32'),
('bfc574089048031611dadde191c17927bbc65e17a84e28f1ee75d0bbe62065f90591aa7dad346b2e', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:36:08', '2020-12-12 09:36:08', '2021-12-12 13:06:08'),
('c08bc8e0a2af012fe53dc633c14be4ba6ed4f3d7d7a1520767775d0bae9a069b543416d88c000aa0', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:33:53', '2020-12-26 09:33:53', '2021-12-26 13:03:53'),
('c114e2e4f3b67608686acb050854d651351338b229d43b26711dce5e5eb63b6dfc28a9d00be03d63', 98, 1, 'NewToken', '[]', 0, '2021-01-25 11:40:36', '2021-01-25 11:40:36', '2022-01-25 15:10:36'),
('c338280b48a577f6ce4a9cf75b895b2ae8532d73d4e63c7a20c93ea1d38d3608dd00491fca226e21', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 06:57:11', '2021-01-24 06:57:11', '2022-01-24 10:27:11'),
('c420886fc09279d230da736955c506380eaca9f6f2b14b3c4aa44b64854768eeb9d60c0bc73fe232', 120, 1, 'NewToken', '[]', 0, '2021-01-30 11:01:40', '2021-01-30 11:01:40', '2022-01-30 14:31:40'),
('c4220dbac296f50807f5d6135f4202ec00df5e35eaba6c562dfcfc19cdb4ec9bce3140d02e1f0e1e', 127, 1, 'NewToken', '[]', 0, '2021-01-30 11:14:23', '2021-01-30 11:14:23', '2022-01-30 14:44:23'),
('c4c19b2b1e1f0aabc8d2b69efbdbb001876d5d4d39762b15a28d1e9b082033978e759f86717293c2', 123, 1, 'NewToken', '[]', 0, '2021-01-30 11:04:55', '2021-01-30 11:04:55', '2022-01-30 14:34:55'),
('c4d43330cd1702f84361a10f85831760a5a9685aaa8bc836fce1315d0786e695de7970ec9772cf87', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 04:37:13', '2020-12-01 04:37:13', '2021-12-01 08:07:13'),
('c67ac7df6183b8ae423cfddd8850df1bde52bf3ae16d8e66b202a4ecb2c68b8953df99dc2ef76c39', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:45:22', '2020-12-27 05:45:22', '2021-12-27 09:15:22'),
('c688fee4ece89197355f06faecdfae18362dd9195aee1c891af4c9bd17ce87cb2c12096db54c35a2', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 05:28:38', '2020-12-12 05:28:38', '2021-12-12 08:58:38'),
('c9f1ab1af4b70be0a3f34b1184967201e768ece1232eb6ed5eaed5e13a0fb0fef75e046dad4775f7', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:44:09', '2020-12-13 08:44:09', '2021-12-13 12:14:09'),
('cb260007721b1adeb8203ed416d82397f4df204f7ffb426e881b2ef909025d5f9dfb5cf494684634', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:19', '2021-02-02 10:13:19', '2022-02-02 13:43:19'),
('cba4fa7d53b67a582e0a1ec40f61a1de059eb9007e43bbe35f809128e49da7bae842c2ca8859d42f', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-06 12:14:09', '2021-02-06 12:14:09', '2022-02-06 15:44:09'),
('ccc1c3d39651768813fed8b4f780c8a3552401465b07d2e57f537efb39ffd73e4c2c045bf9c73dfe', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 05:37:23', '2020-12-01 05:37:23', '2021-12-01 09:07:23'),
('cd3fe3274ea11d2ae8d1abe4a9ec99d84649b78d57d162f3de97fb71882dc0a19b2911b23fa04855', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:23:37', '2021-02-02 10:23:37', '2022-02-02 13:53:37'),
('cd87d6e9dc8c391935cc3fc37bd2b80216b2fd4a001a8004ed34ce4c736af594aca51bebdb717da2', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 06:31:17', '2021-01-24 06:31:17', '2022-01-24 10:01:17'),
('cd8dde27f691f5e2246a5120d749bb694ad297d614dc92c7019dd66046f5a90faf6041b74cae7869', 70, 1, 'NewToken', '[]', 0, '2021-01-25 06:19:49', '2021-01-25 06:19:49', '2022-01-25 09:49:49'),
('cec87fad9a4a202e10bf238647f79e1f0b635903cf6ba1bc23b1ba0264666ea8b2916f900823761f', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 05:04:00', '2020-12-12 05:04:00', '2021-12-12 08:34:00'),
('cf8a83fa4b8538d7a16dfa28668ad549f3527fafb4d3be7d63607079ece8a1a460662d54f4a2a543', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:01', '2021-02-02 10:13:01', '2022-02-02 13:43:01'),
('cfddc965d182d23920c00ac14f765547f63821467bd112008b8b878a93f9175bb9cbc0f264c29a14', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:13:13', '2021-02-02 10:13:13', '2022-02-02 13:43:13'),
('d0b2087e9eed477b9875570fab6015db79495360aac05bb3b07918d1f62602d8d7825e43c833bf66', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-10 05:51:43', '2020-12-10 05:51:43', '2021-12-10 09:21:43'),
('d0da29e86d126672e450bc1d2518d66f888a76ba7f93253654a29463d802b873af45f593ad367eb1', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 06:08:43', '2021-01-18 06:08:43', '2022-01-18 09:38:43'),
('d3adde8e6a506a3b18101cfe63a203808120c0187023138204f99a01d47921ba1c7aa56c88b1603b', 53, 1, 'NewToken', '[]', 0, '2020-12-16 10:21:43', '2020-12-16 10:21:43', '2021-12-16 13:51:43'),
('d40751e0073b2b8fb5a9318b7ab525692d959e7a2b22eccf114db68e43b6a83121f2294983083989', 110, 1, 'NewToken', '[]', 0, '2021-01-30 06:56:57', '2021-01-30 06:56:57', '2022-01-30 10:26:57'),
('d55c30daf12aa38bd2078587f8467048e362b61919430f7c6c8f99428688e596c50dca4f17b7f240', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 06:24:18', '2020-12-26 06:24:18', '2021-12-26 09:54:18'),
('d7528248e1045aa434ce37bc20b9902803bf13f3e439ce68095e76f1715a759cc77222d61ba1386a', 74, 1, 'NewToken', '[]', 0, '2021-01-25 08:11:51', '2021-01-25 08:11:51', '2022-01-25 11:41:51'),
('d7cab845e387da16a513f2f8bc1b988f2a5bcc9c5fa40af23dc24c4e5957a14e4a4f4d2a09851eee', 106, 1, 'NewToken', '[]', 0, '2021-01-30 06:29:06', '2021-01-30 06:29:06', '2022-01-30 09:59:06'),
('d980df2871886ca15dc51047c4bae7e58d9ed99dc0bc9d72fabbe67950fd90677e45849ba8c211af', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-13 07:51:49', '2021-02-13 07:51:49', '2022-02-13 11:21:49'),
('d9f2fb39ea1973f56828c795a0d5c262379ffc455f1cc9421740ec84cf1ec1c6ad541eb0f9c4172d', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:50:44', '2020-12-27 05:50:44', '2021-12-27 09:20:44'),
('dab3b7e42ad67219157ec0165aa8153af8533c8505e0833cc565025b374d341dd4da32d5476fc60a', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 06:22:50', '2020-11-30 06:22:50', '2021-11-30 09:52:50'),
('db2f747d50ca3660e989034976e1af958c1d546e6545877f5d643d9e5534f28ed8086ee4b374a415', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-30 04:32:54', '2021-01-30 04:32:54', '2022-01-30 08:02:54'),
('db4280230ec868bf9688a6fe77691677476b151a172fca6e9e4c158c37f38e199bc30655da09e7a2', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 04:13:27', '2020-12-01 04:13:27', '2021-12-01 07:43:27'),
('db51013c18f0c00d9abb780f65d314619ab2862ca4bfa998cf47c7dd18f8633266352b7ce2aaa55f', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 09:44:12', '2020-12-13 09:44:12', '2021-12-13 13:14:12'),
('dcdb39cb28787ef1adb8c3f2ef30cd48131a34cd5c516e8a943846adcfc709963119735f4f562323', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:37:39', '2020-12-26 09:37:39', '2021-12-26 13:07:39');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('dd2495c3a76ff5cb283bc8872040cc6a50f87f05157a721164e8e397a7c52b98d763f7cfb7de9138', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 10:34:53', '2020-12-13 10:34:53', '2021-12-13 14:04:53'),
('de516e1b7b58136fffd7c983b283bf38dc4594c4a10aab9fe0427413ca147f94f81d54782d0b5602', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-03 06:11:43', '2021-01-03 06:11:43', '2022-01-03 09:41:43'),
('df5d57db45bee212078f162b97887e314829c285bf3b39bd8af8daf0617834e13bb482b4d0cb69c9', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 10:01:16', '2020-12-26 10:01:16', '2021-12-26 13:31:16'),
('dfb1744f7cff04daf6ad388745c50191cd8ffa3901bdaa6e3ced5cc0cf4ab0cbe18e9ceaf5588d68', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-20 04:04:51', '2021-02-20 04:04:51', '2022-02-20 07:34:51'),
('e0000de2f8ea83650ada25204c6cc1a62b38d1c79b2f20b0b1127350e90b72a180c8fc6f9a04a995', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 04:46:01', '2020-12-12 04:46:01', '2021-12-12 08:16:01'),
('e0f9a0964f20462d716c76c9afd25251c6bee53f37757015dabf3d56aa3762556494470cf39a5cc1', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 09:42:56', '2020-12-26 09:42:56', '2021-12-26 13:12:56'),
('e106d34e433aa9c38dfa44b219760615030e50456c6ad3d9cf6a45c088fac34940b5f8afc75840c9', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 05:43:42', '2021-01-16 05:43:42', '2022-01-16 09:13:42'),
('e170e40b3750c46e1203f9b505eeadc47b96bd4a9e965b013a3b6e507ac8c509b9df8e47b6f2a163', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-27 10:54:50', '2021-01-27 10:54:50', '2022-01-27 14:24:50'),
('e37685324b67f4e2549e2a1aef14c57d66b830b960ab42f2fcabe904a4c4501d8315986a03c65de9', 134, 1, 'NewToken', '[]', 0, '2021-01-30 11:52:27', '2021-01-30 11:52:27', '2022-01-30 15:22:27'),
('e3aa13dda494c6181aa35974d691309ce84a7fe3ab7a4eeb167911a345a5b1a39cee91e2c0e9d203', 69, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:21:31', '2021-02-02 10:21:31', '2022-02-02 13:51:31'),
('e3ab3d16429bd811210fc6a8f16b1dfa243c91e1fc2c839c2cf912758bf91e3cd6af1f63f48e7a7e', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-13 08:08:40', '2021-02-13 08:08:40', '2022-02-13 11:38:40'),
('e4b7b8dd50a0ecd0941b8a8dd7a9f8e64afaa29b4a9aa434cfe3203fa34d7629bbcff254525f845a', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 06:08:46', '2021-01-18 06:08:46', '2022-01-18 09:38:46'),
('e72fcb83a8a4329932f10445db32b9b0141310792532203931971afff60cb482f626195ce5002723', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:40:09', '2020-12-13 08:40:09', '2021-12-13 12:10:09'),
('e95a2c96c5e871fef3697b269b8f98c986dac7e1debebce4c4c527e90657f6e2604bbec2e12543ad', 113, 1, 'NewToken', '[]', 0, '2021-01-30 07:30:14', '2021-01-30 07:30:14', '2022-01-30 11:00:14'),
('ea64affa3c3fc3d4529ad0f58d404c00e16097fd449e1dca769b1360d137b0b74b4da33bb2250801', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 10:33:59', '2020-12-01 10:33:59', '2021-12-01 14:03:59'),
('eacdef9724c4feeb88ac32701387502f18e1aafb26067d048d23f4417a13443721f542d8c7220f50', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-24 06:41:35', '2021-01-24 06:41:35', '2022-01-24 10:11:35'),
('ec922f5018aca3f29ededbc13fc79dd172875a027518d1d6d77612873648012135eede354f8d0908', 55, 1, 'Personal Access Token', '[]', 0, '2021-02-17 04:41:19', '2021-02-17 04:41:19', '2022-02-17 08:11:19'),
('ed6449483cad26ce2fba6cb8bfe35fc089c13807a5af9d312f26c91078c84c58db98cefff4d55662', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 12:27:54', '2021-01-16 12:27:54', '2022-01-16 15:57:54'),
('ed94c0d140fbf7bdf70ffc378e0ad6f5a98248a566505e5d78c752c6a5e85647d5d6ace2ddb6d2a7', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-18 06:08:43', '2021-01-18 06:08:43', '2022-01-18 09:38:43'),
('edf70d9c730e7fececbe93c6ed5e03e2c4860102db9fc740fa967faf10527254872175715e720ecc', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 07:05:55', '2021-01-16 07:05:55', '2022-01-16 10:35:55'),
('eeeda3aa7dd2f4c54d2c991883bbdef50e7acfa4f82d33865c16bc9c5d1ec77c256cfb2acfb41229', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 08:27:56', '2021-01-26 08:27:56', '2022-01-26 11:57:56'),
('f09e38b0b9a5e7fcaf23746fd374d0bd2a7371a991f0afddaf4e193942530dc42342ccdaff4458aa', 140, 1, 'Personal Access Token', '[]', 0, '2021-01-31 05:51:31', '2021-01-31 05:51:31', '2022-01-31 09:21:31'),
('f0b61af05b4c22855348a8b1de11a5eecd3a013c55704c0fa89720837ec3dc9c176432440aa123e0', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-27 05:53:47', '2020-12-27 05:53:47', '2021-12-27 09:23:47'),
('f1319656795becf56ac944975852a1bb456e691237db981b5a159120f04e0e08f8488cbdf146be07', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-12 09:36:30', '2020-12-12 09:36:30', '2021-12-12 13:06:30'),
('f496715d3e50ffb183e84c5ec36d2f897b28c98ba4df1cd9104cf7fe29e52ec308edd2149d80d0bb', 140, 1, 'Personal Access Token', '[]', 0, '2021-02-02 10:14:19', '2021-02-02 10:14:19', '2022-02-02 13:44:19'),
('f523b6716c7b1aa82d17f00c05de71d0df3b540692c734a06d28d5dea48978cc342272dbfd225b3e', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-30 05:00:30', '2021-01-30 05:00:30', '2022-01-30 08:30:30'),
('f55ef3ddbea7686740c36ec7a737114f0ec9ba92d18be56a9bc10c747d9b1f7e9df536930257c29c', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-10 05:35:00', '2020-12-10 05:35:00', '2021-12-10 09:05:00'),
('f5b6b256d96f412f7d396c6c3d86b1ac23fa5fc309e784b8699c112b40cffcee3e09f156fc8a5d2d', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-16 11:54:39', '2021-01-16 11:54:39', '2022-01-16 15:24:39'),
('f5fc76d52c9a4caa1eccf67038ba7581b32be2e6a553b6e2cbd1f1b03175714bf1537d692d23cfcf', 55, 1, 'Personal Access Token', '[]', 0, '2020-12-26 10:46:32', '2020-12-26 10:46:32', '2021-12-26 14:16:32'),
('f9311138e05e57ab1cc8ffb845fd8bf410cb985137c407f0d9e33f83d5956ceaabeb26bbff09ae61', 55, 1, 'Personal Access Token', '[]', 0, '2021-01-26 06:02:26', '2021-01-26 06:02:26', '2022-01-26 09:32:26'),
('fb2cc287de5f03111e76ef3d4f5fad6df71937b126b1ff1f8a06029b95e713d5c76738649c99aa9a', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-01 10:28:10', '2020-12-01 10:28:10', '2021-12-01 13:58:10'),
('fdb08945e1336163a871d765fdddff7ab640b8ed7a3a1b95332beb20d20bbf2337f941e743111d3c', 13, 1, 'Personal Access Token', '[]', 0, '2020-12-13 08:40:22', '2020-12-13 08:40:22', '2021-12-13 12:10:22'),
('ff88dfdcebdedd2fd6d4937f96a11262cb0f28453e70a2df0db6ab468a57662c6659a28eda8cae7a', 13, 1, 'Personal Access Token', '[]', 0, '2020-11-30 09:46:42', '2020-11-30 09:46:42', '2021-11-30 13:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'sGXqGmRuPQfXmT9u96aepFfAoycQjt12qge1O26e', NULL, 'http://localhost', 1, 0, 0, '2020-11-21 09:35:33', '2020-11-21 09:35:33'),
(2, NULL, 'Laravel Password Grant Client', '6aeFQUFDYdlAAsNnsGiG17iet6oS6HJN6RgYCyLz', 'users', 'http://localhost', 0, 1, 0, '2020-11-21 09:35:33', '2020-11-21 09:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-21 09:35:33', '2020-11-21 09:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameUrl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `E_Name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `P_Water_S` int(11) DEFAULT NULL,
  `P_WaterـW` int(11) DEFAULT NULL,
  `time_fertilizer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prune` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planttype` bigint(20) UNSIGNED NOT NULL,
  `temp` double(8,2) UNSIGNED NOT NULL,
  `light` double(8,2) UNSIGNED NOT NULL,
  `humidity_soil` double(8,2) UNSIGNED NOT NULL,
  `humidity_air` double(8,2) UNSIGNED NOT NULL,
  `soil_id` bigint(20) UNSIGNED NOT NULL,
  `fertilizer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `name`, `E_Name`, `photo`, `P_Water_S`, `P_WaterـW`, `time_fertilizer`, `prune`, `description`, `planttype`, `temp`, `light`, `humidity_soil`, `humidity_air`, `soil_id`, `fertilizer_id`, `created_at`, `updated_at`) VALUES
(3, 'گل رز', 'rose', '1608455318.png', 1, 2, 'asdasd', 'asdasd', 'دیدی شد ', 1, 10.00, 10.00, 10.00, 10.00, 1, 1, NULL, NULL),
(66, 'افرای کاکتوسی ', NULL, '1614068919.jpg', 2, 1, 'سبارر', 'زمستان', 'خیلی خوبه', 2, 10.00, 10.00, 10.00, 10.00, 1, 1, '2020-12-20 05:38:38', '2020-12-20 05:38:38'),
(67, 'afra1', NULL, '1608455624.png', NULL, NULL, NULL, NULL, NULL, 1, 10.00, 10.00, 10.00, 10.00, 1, 1, '2020-12-20 05:43:44', '2020-12-20 05:43:44'),
(68, 'afra1', NULL, '1608455646.png', NULL, NULL, NULL, NULL, NULL, 1, 10.00, 10.00, 10.00, 10.00, 1, 1, '2020-12-20 05:44:06', '2020-12-20 05:44:06'),
(69, 'afra4', 'afra4', '1608455717.png', 3, 4, 'asasd', 'asdasd', 'asdasas', 4, 10.00, 10.00, 10.00, 10.00, 1, 1, '2020-12-20 05:45:17', '2020-12-20 05:45:17'),
(70, 'afra4', 'afra4', '1608456312.png', 213, 213, 'qwe', 'qwe', 'qweqwe', 3, 10.00, 10.00, 10.00, 10.00, 1, 1, '2020-12-20 05:55:12', '2020-12-20 05:55:12'),
(71, 'afra۲', 'afra۲', '1608456579.png', 2, 1, 'دوباز', 'زمستان', 'شسیبشسیب', 5, 10.00, 10.00, 10.00, 10.00, 1, 1, '2020-12-20 05:59:39', '2020-12-20 05:59:39'),
(72, 'گل رز', NULL, '1614069244.jpg', NULL, NULL, NULL, NULL, NULL, 1, 10.00, 10.00, 10.00, 10.00, 1, 1, '2021-02-22 11:55:23', '2021-02-23 05:04:04'),
(73, 'گل رز', NULL, '/opt/lampp/temp/phpnYHjAr', NULL, NULL, NULL, NULL, NULL, 1, 10.00, 10.00, 10.00, 10.00, 1, 1, '2021-02-22 12:03:29', '2021-02-22 12:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT 1,
  `Birth` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `firstname`, `lastname`, `sex`, `Birth`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(9, 55, 'asdasd', '123456', 0, '2020-01-22', 'asdasdsad', '1608365007.svg', '2020-12-19 03:42:03', '2021-01-24 06:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phonenumber` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phonenumber`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(55, '09353368454', 1, NULL, '$2y$10$deNcxI1nlDCwrCr7VrsX0.NykUDLJzQqZ7cBciJL.FB6bKcFTeCze', NULL, '2020-12-19 03:42:03', '2021-01-24 06:38:13'),
(69, '09353368479', 0, NULL, '$2y$10$28o865PGDgJN/UErPRIuCOImmYwZGQSWvIYQZmUJX1S5PsLztToGe', NULL, '2021-01-25 06:17:39', '2021-01-25 06:17:39'),
(70, '024', 0, NULL, '$2y$10$ZOkMHlqBCKevmOKSSonyheFzNXM3MqILfoTaUyFCgkTK3vdCer.cW', NULL, '2021-01-25 06:19:49', '2021-01-25 06:19:49'),
(71, '0246625', 0, NULL, '$2y$10$GOpJ6URMGupWoAxYS08DGe3GlJf4JFA4DGGajU12xLkU74.P4FGza', NULL, '2021-01-25 08:11:37', '2021-01-25 08:11:37'),
(74, '02466253', 0, NULL, '$2y$10$mK2M8l6qDXI.d6GEvN2GdOz8eRhPOJtLahPGpFI559ZFaTSwOYL5q', NULL, '2021-01-25 08:11:51', '2021-01-25 08:11:51'),
(75, '0915355471', 0, NULL, '$2y$10$CwRkgzeIaHyovmwp/sN/jeYZamTB4K7ApKFX1Kbis2mg/C3P0NBS.', NULL, '2021-01-25 08:14:16', '2021-01-25 08:14:16'),
(78, '091253554671', 0, NULL, '$2y$10$7GGsPt4xN6G.OON6.ZiOXORObXlXUjcX2CJHfvcqGmnzUB3KSPqDO', NULL, '2021-01-25 09:16:45', '2021-01-25 09:16:45'),
(80, '091255554671', 0, NULL, '$2y$10$dWSrhUg2VKzXfu7YIRais.NFR.ZKssKcBcnMH9DtQclg5ZHs7CS02', NULL, '2021-01-25 09:19:00', '2021-01-25 09:19:00'),
(87, '09985245555', 0, NULL, '$2y$10$pyq7lqWw23Ot.xJfNX0DhOY9h2ZbfuMEuW1BNC2UkmW5plSStB7jW', NULL, '2021-01-25 10:11:51', '2021-01-25 10:11:51'),
(90, '09985245999', 0, NULL, '$2y$10$KhQbSVjjCPzkSfDBU2ZuMuZlRgjXC.Y271nixBipfuYZ3de9aStpK', NULL, '2021-01-25 10:12:41', '2021-01-25 10:12:41'),
(91, '09212223653', 0, NULL, '$2y$10$sgAolfOVL6DBNMSYKLbcBu8meMjspclebEe0aoblJ4Dj7QoGKcTGq', NULL, '2021-01-25 10:13:51', '2021-01-25 10:13:51'),
(92, '09333333331', 0, NULL, '$2y$10$9mqnkoCOVxNzHIc0GX31TOuTuUU6F44RU0di17c/uVB.aHlnYplEi', NULL, '2021-01-25 10:48:17', '2021-01-25 10:48:17'),
(93, '09333339331', 0, NULL, '$2y$10$gqW3W2KxDP79mteVKLsOcen/rMzrB2bfKPDYvaZkdjR7LaGBsD89m', NULL, '2021-01-25 10:48:33', '2021-01-25 10:48:33'),
(94, '09312653165', 0, NULL, '$2y$10$j9RtM7GY4SrsiIScqIQQLesw2riIbo/gbs0c/K.beN894qOiSP1tK', NULL, '2021-01-25 10:49:13', '2021-01-25 10:49:13'),
(95, '09315243165', 0, NULL, '$2y$10$QNXwYCtz0dUyxl0K.akEsuKGBOv6e.VJzgvnhnYYmyhr8CwLCkQvS', NULL, '2021-01-25 10:51:48', '2021-01-25 10:51:48'),
(96, '09102787923', 0, NULL, '$2y$10$6FAm33FUWZaCByotvPQD9OxI720naWvVXETTcLWfQwEdIjxQ1t9zq', NULL, '2021-01-25 11:06:06', '2021-01-25 11:06:06'),
(97, '0910278923', 0, NULL, '$2y$10$2cw8p5CyPiBNtMWAXWpO6OL8hCa23aI83kS7vtHkVsJOna.oruWzq', NULL, '2021-01-25 11:06:12', '2021-01-25 11:06:12'),
(98, '09034237883', 0, NULL, '$2y$10$Z7Fr/VVDg4KmJIZxxuEuoepDoiD7dFIw4kCznczgcGeHN0jOEOZni', NULL, '2021-01-25 11:40:36', '2021-01-25 11:40:36'),
(102, '09999999999', 0, NULL, '$2y$10$GBrhfSQh0HDj0DfaryglC.O7d3EBCjXeFNe6hCJOjU.DEW0qE0jCi', NULL, '2021-01-30 04:33:26', '2021-01-30 04:33:26'),
(103, '09999999998', 0, NULL, '$2y$10$iG3k3ivLmQC37fQeM3uDweAQA3uVS.B1YXPfXbKsznKCU.A7X7Jli', NULL, '2021-01-30 06:19:22', '2021-01-30 06:19:22'),
(104, '09111111212', 0, NULL, '$2y$10$02gkVhK4lEZ.uZ3A3bv98eMmEHcMtk.YqwKhHKD/lrXGCndBM//Na', NULL, '2021-01-30 06:26:15', '2021-01-30 06:26:15'),
(105, '09141111212', 0, NULL, '$2y$10$mfHhUomKbFtHwDM2mENAL.cXvFN1phru04nDJXYydXRollEq9CHWm', NULL, '2021-01-30 06:27:06', '2021-01-30 06:27:06'),
(106, '09141111213', 0, NULL, '$2y$10$v1x2X9WKjg4IQMKsHV6qDeUoMntTe.b5t1VToIFNRjdtitMmXHoEe', NULL, '2021-01-30 06:29:06', '2021-01-30 06:29:06'),
(107, '09141111214', 0, NULL, '$2y$10$P20ls0zUmttNLNgHsiq6J.vVTjf/SQFMs0bJV0YM0hkFXgGa4CD46', NULL, '2021-01-30 06:30:07', '2021-01-30 06:30:07'),
(108, '09141111215', 0, NULL, '$2y$10$EPeFtPncWWxuLi6P8d6SIeOvWEp2LdWGMGiLDHToG3WmAWFFE9GS6', NULL, '2021-01-30 06:52:48', '2021-01-30 06:52:48'),
(109, '09141111216', 0, NULL, '$2y$10$yr/r2AFBPV3HYosEtZoAMOIQH22ZtD2yHTp6KYqMXdyO8jnIv47EC', NULL, '2021-01-30 06:54:25', '2021-01-30 06:54:25'),
(110, '09141111217', 0, NULL, '$2y$10$PQTJ3re.zhT.DxTRIF.enOeBfrE9TcX7LA3fIghgNtD75WreHh7ca', NULL, '2021-01-30 06:56:57', '2021-01-30 06:56:57'),
(111, '09141111221', 0, NULL, '$2y$10$vYFsYGfDPr6TlqnT7JtOO.JJDvSThPSVyMYPhldSEEwyXJvDgt0g2', NULL, '2021-01-30 07:17:51', '2021-01-30 07:17:51'),
(112, '09141111222', 0, NULL, '$2y$10$nhH9wlzdqRK2usQ0jx6PoemhpS0Wve9jNIFkWz7FpHJnUYqcSINlm', NULL, '2021-01-30 07:22:20', '2021-01-30 07:22:20'),
(113, '09141111223', 0, NULL, '$2y$10$i/No6n1ahht6bsmLKybP7enVYN9tyJa4rgZyMHfa60jkeoGFcSQhu', NULL, '2021-01-30 07:30:14', '2021-01-30 07:30:14'),
(114, '09141111224', 0, NULL, '$2y$10$4oP22FHm6wFmoMBrRNm.mujvWHW0TA3fLm6IDefH9rwYh5prqLKmm', NULL, '2021-01-30 08:43:07', '2021-01-30 08:43:07'),
(115, '09141111225', 0, NULL, '$2y$10$BzOu9DOHXzu/DhXS0gHPreNJUrzjusNkeD.cA/yqopDmgZX1vW0Uy', NULL, '2021-01-30 08:47:55', '2021-01-30 08:47:55'),
(116, '09141111226', 0, '2021-01-31 05:17:23', '$2y$10$BzU6cEf0/5g9SZfK3jkoEeL94Zz.xdJhx8x.goDzuNwvCYkCCo4xe', NULL, '2021-01-30 08:50:45', '2021-01-31 05:17:23'),
(117, '09141111227', 0, NULL, '$2y$10$Gyseiv05rQ0GKASK/2WISekzAGxUHYPIK.pvmpNSwfW1qiMFO4rpa', NULL, '2021-01-30 09:29:22', '2021-01-30 09:29:22'),
(118, '09141111228', 0, NULL, '$2y$10$2a4tLdSbhI6a5xSjdsveFeoHosLU2nt3e3VyfMyPXRRBEnU5oCKC.', NULL, '2021-01-30 09:31:38', '2021-01-30 09:31:38'),
(119, '09141111229', 0, NULL, '$2y$10$57tSQst66S2tzp0fS.NM/.502C7RKwxE43WwLsc714Gl/x21j67/a', NULL, '2021-01-30 11:01:08', '2021-01-30 11:01:08'),
(120, '09141111231', 0, NULL, '$2y$10$5aSWzU64YRyS7guP1TvoHekap.nK/gP7tA8th9rFJciWqENr0LtJ.', NULL, '2021-01-30 11:01:40', '2021-01-30 11:01:40'),
(121, '09999999991', 0, NULL, '$2y$10$6dpDw742kzgqBUCLq5qp7utrLy/SCH9Q/FeJVBJ/eGw9WXFR3A6/G', NULL, '2021-01-30 11:02:28', '2021-01-30 11:02:28'),
(122, '09151111231', 0, NULL, '$2y$10$FQPhxYjfICLxaHxoyEm5G.klIsZ8utTwvHTC3xZgRRduoLAMCA4ve', NULL, '2021-01-30 11:04:12', '2021-01-30 11:04:12'),
(123, '09151111232', 0, NULL, '$2y$10$6y/iutiQpkEtAyWn2LkAl.w0S3eIPQcF3llWt8FEayIi7LP05v1o6', NULL, '2021-01-30 11:04:55', '2021-01-30 11:04:55'),
(124, '09151111234', 0, NULL, '$2y$10$7K9id1.9Q1fM2u1Ugm3uYuNF3DdmM3ZDZsPHNZvl.SzYH95.j6H4a', NULL, '2021-01-30 11:06:48', '2021-01-30 11:06:48'),
(125, '09151111235', 0, NULL, '$2y$10$NK2MbVqdH7KHdVF25rD9G.nEa2SX/xWa4XuBc8.M0hsxfoT38Y4yu', NULL, '2021-01-30 11:11:13', '2021-01-30 11:11:13'),
(126, '09999999992', 0, NULL, '$2y$10$24t4aSTORzDFsRxsnewvyuiyJ9D9PBt3c8KR.Kx4B7aFvK6vElfAy', NULL, '2021-01-30 11:11:43', '2021-01-30 11:11:43'),
(127, '09151111236', 0, NULL, '$2y$10$MQE6Mg7wfLz6PNsNI.2bX.wxyYbXc6YW.jDi7R2MmY4cvdziLjDD2', NULL, '2021-01-30 11:14:23', '2021-01-30 11:14:23'),
(128, '09151111237', 0, NULL, '$2y$10$5Nf4tiY06qkwiX3fVEJqcOi038X5z2m/R3I8CNjiKuaqtiSubCnoq', NULL, '2021-01-30 11:15:46', '2021-01-30 11:15:46'),
(129, '09151111238', 0, NULL, '$2y$10$vlTAkMwI.vXp1VP5UbENyuRVN4Z2SA2rFUFCxQsSPKFpoTStD6llC', NULL, '2021-01-30 11:30:16', '2021-01-30 11:30:16'),
(130, '09151111241', 0, NULL, '$2y$10$7tqgn6HdWi86MFYkePiime.DkgDAHmsd8AEwGKKdFl33UJs917uR6', NULL, '2021-01-30 11:35:37', '2021-01-30 11:35:37'),
(131, '09151111243', 0, NULL, '$2y$10$u59YOcXi4fNhsmJtc8wEH.HNfFIMdBZqhf9jldlnaqhFA7tWK8lwC', NULL, '2021-01-30 11:39:22', '2021-01-30 11:39:22'),
(132, '09151111244', 0, NULL, '$2y$10$rsupVmTCbbyHQ9V2ouWZxOtdswvoZGQOA68qMyR6ffqoGUxDzFwVm', NULL, '2021-01-30 11:47:09', '2021-01-30 11:47:09'),
(133, '09151111246', 0, NULL, '$2y$10$whbqDfmpi.4VyFzehYa78.R43VmHAtb7IsbzOwv8VO3m3.FX1mv5y', NULL, '2021-01-30 11:49:51', '2021-01-30 11:49:51'),
(134, '09151111247', 0, NULL, '$2y$10$6l.bX7VITGn9PsXBh60U0elh/MmduQimWYoh0iyZ30k2H3qF9zICi', NULL, '2021-01-30 11:52:27', '2021-01-30 11:52:27'),
(135, '09151111249', 0, NULL, '$2y$10$CvRhJz8XbhVVpL4/AmqP4efKKqIjeCTNgeXAk2sWxGPvcHeibhJRG', NULL, '2021-01-31 05:16:50', '2021-01-31 05:16:50'),
(136, '09151111251', 0, NULL, '$2y$10$cHFaTTyt9tDwWYJRDHeZhOaDwEW4689Hw7PRk7hpSYU0Z6FZ/khBm', NULL, '2021-01-31 05:28:32', '2021-01-31 05:28:32'),
(137, '09151111252', 0, NULL, '$2y$10$UX2Tr9DmTbdxtQs10Iek5u78tvvxntcKtIiQDDD8fyYr9t6vHuE3G', NULL, '2021-01-31 05:31:51', '2021-01-31 05:31:51'),
(138, '09151111253', 0, NULL, '$2y$10$p4AbxXXQSNaag8iZFfvIF.jkgpidmFHAHcflIcOu3nCOX3P.jr9Dq', NULL, '2021-01-31 05:35:40', '2021-01-31 05:35:40'),
(139, '09151111254', 0, NULL, '$2y$10$tjPbdUhaM216u7ZFhVIS..wCuv/Q6pC03HTzVNXHRmcmb71OMaq2.', NULL, '2021-01-31 05:42:43', '2021-01-31 05:42:43'),
(140, '123', 0, '2021-02-06 11:27:08', '$2y$10$9Y65d0.K5oFGUK.W0yOU.OmuF1ND0MBd4fEb/xmdmp1122e4t/Slu', NULL, '2021-01-31 05:50:59', '2021-02-06 11:27:08'),
(141, '09151111255', 0, NULL, '$2y$10$.9b7rS.amCk6s318oFz.wOO8FZsJMCxhp1pX2Bm0FagwTMF7Cd3PS', NULL, '2021-01-31 05:54:23', '2021-01-31 05:54:23'),
(142, '09151111256', 0, NULL, '$2y$10$XvDIe.yaTvAXsxkeqe78COUJt4yBy2T/FmzSQ/hUSEDBEO1d.hGfG', NULL, '2021-01-31 06:08:37', '2021-01-31 06:08:37'),
(143, '09151111257', 0, NULL, '$2y$10$ynqQXbLMtWZiGsVwZ8OykeU8TZrPuaSaNK/N5lOar0h7E0QmDspWm', NULL, '2021-01-31 06:15:08', '2021-01-31 06:15:08'),
(144, '09151111258', 0, NULL, '$2y$10$FZlBZLIKtwsTYBqPnYGD1.9aQ1DzFN.VXaG73oNt/Ol6P62Y1RVy.', NULL, '2021-01-31 07:10:50', '2021-01-31 07:10:50'),
(145, '09151111259', 0, '2021-02-06 11:19:38', '$2y$10$a7TbcKpPV3fUpJrR396xouCu11er9kXTk21vo62eLZ1voh/zChTwm', NULL, '2021-01-31 07:13:12', '2021-02-06 11:19:38'),
(146, '09151111261', 0, NULL, '$2y$10$phbBFPIZznzhdg/Z4fTmXulTv5.JVg1lBLqVUREE8T4cnLQWoBmAW', NULL, '2021-02-01 05:59:34', '2021-02-01 05:59:34'),
(147, '09999999911', 0, NULL, '$2y$10$N9UVECcFQCXOtEIsoj8MGOoBhD1jZkaSTaf3DOvMRB4.uB2bkgY6O', NULL, '2021-02-03 07:55:28', '2021-02-03 07:55:28'),
(148, '09151111262', 0, NULL, '$2y$10$ugm6maKZBAQUjTXqZSk09Og7z7mJWC/sULfr6CTu0jVk8puynQRX6', NULL, '2021-02-06 11:15:41', '2021-02-06 11:15:41'),
(149, '09151111263', 0, NULL, '$2y$10$68nRG8PaseNYKHR7rNf47.jf.szagQix2eGBFnTx5wjTkwzHlM2F.', NULL, '2021-02-06 11:17:38', '2021-02-06 11:17:38'),
(150, '09151111264', 0, NULL, '$2y$10$yaNlVRERExrrHidzkKjNuOPYPqvBFFYMwk/Ms5ez73OV7SDiIkf0q', NULL, '2021-02-06 11:19:25', '2021-02-06 11:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `watermodes`
--

CREATE TABLE `watermodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watermodes`
--

INSERT INTO `watermodes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tanker', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automodes`
--
ALTER TABLE `automodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `builders`
--
ALTER TABLE `builders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `builders_plant_id_foreign` (`plant_id`);

--
-- Indexes for table `builder_user`
--
ALTER TABLE `builder_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `categoryfertilizers`
--
ALTER TABLE `categoryfertilizers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorysoils`
--
ALTER TABLE `categorysoils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_plants`
--
ALTER TABLE `category_plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comands`
--
ALTER TABLE `comands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comands_builder_id_foreign` (`builder_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_builder_id_foreign` (`builder_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plants_fertilizer_id_foreign` (`fertilizer_id`),
  ADD KEY `plants_planttype_foreign` (`planttype`),
  ADD KEY `plants_soil_id_foreign` (`soil_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phonenumber_unique` (`phonenumber`);

--
-- Indexes for table `watermodes`
--
ALTER TABLE `watermodes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `automodes`
--
ALTER TABLE `automodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `builders`
--
ALTER TABLE `builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `builder_user`
--
ALTER TABLE `builder_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoryfertilizers`
--
ALTER TABLE `categoryfertilizers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorysoils`
--
ALTER TABLE `categorysoils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_plants`
--
ALTER TABLE `category_plants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comands`
--
ALTER TABLE `comands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `watermodes`
--
ALTER TABLE `watermodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `builders`
--
ALTER TABLE `builders`
  ADD CONSTRAINT `builders_plant_id_foreign` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`id`);

--
-- Constraints for table `comands`
--
ALTER TABLE `comands`
  ADD CONSTRAINT `comands_builder_id_foreign` FOREIGN KEY (`builder_id`) REFERENCES `builders` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_builder_id_foreign` FOREIGN KEY (`builder_id`) REFERENCES `builders` (`id`);

--
-- Constraints for table `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `plants_fertilizer_id_foreign` FOREIGN KEY (`fertilizer_id`) REFERENCES `categoryfertilizers` (`id`),
  ADD CONSTRAINT `plants_planttype_foreign` FOREIGN KEY (`planttype`) REFERENCES `category_plants` (`id`),
  ADD CONSTRAINT `plants_soil_id_foreign` FOREIGN KEY (`soil_id`) REFERENCES `categorysoils` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
