-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2024 at 08:54 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `mobile`, `email`, `password`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin', '01839317038', 'admin@gmail.com', '$2y$10$5qPezdsIICcH.T7Ai9wGuOj3ccWR9Bn.7ljK6HqppIncIZtr/O/hW', 'admin-1703581178.jpeg', 1, '2023-12-26 12:52:57', '2024-03-16 04:53:59'),
(5, 'Nowab Shorif', '6', '01839317938', 'nsanoman@gmail.com', '$2y$10$z0W1lJfVZvYEdi9VLqC4se6TxZFy0t7U2G11SHsurk1/il2ZPpLYy', '', 1, '2024-01-31 08:22:06', '2024-03-10 07:21:55'),
(7, 'Malek Azad', '4', '01622985526', 'malekazad1980@gmail.com', '$2y$10$KUdqpi8zo/HxKxSe36OjueL8NFZZc8jf3zQ4m7y.GSoU7rlXFngaC', '', 1, '2024-01-31 09:01:19', '2024-01-31 09:01:19'),
(8, 'Shuvo Talukder', '5', '01739317038', 'shuvotalukder@gmail.com', '$2y$10$qWzXJ2oDAKO85/wO33JKlOp26UfR440ohwLvOF27w8eQR98QXI/TC', '', 1, '2024-01-31 11:35:38', '2024-03-10 07:21:15'),
(9, 'Mobarak Hossain', '2', '01839317032', 'mobarakhossain@gmail.com', '$2y$10$Kuq1fBZImldpio1SBUBMguSVHBc2Xwrd4mzQRyEi3YZUOLClLfSaG', '', 1, '2024-03-10 07:23:20', '2024-03-10 07:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `schedule_id` int NOT NULL,
  `enrolle_id` int NOT NULL,
  `date` date NOT NULL,
  `attendance_status` tinyint NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_by_id` tinyint NOT NULL,
  `updated_by_id` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `schedule_id`, `enrolle_id`, `date`, `attendance_status`, `comment`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 2, 13, '2024-03-06', 1, NULL, 1, 1, 0, '2024-03-06 13:17:08', '2024-03-06 13:17:08'),
(2, 2, 26, '2024-03-06', 1, NULL, 1, 1, 0, '2024-03-06 13:17:08', '2024-03-06 13:17:08'),
(3, 2, 27, '2024-03-06', 1, NULL, 1, 1, 0, '2024-03-06 13:17:08', '2024-03-06 13:17:08'),
(4, 2, 13, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:17:16', '2024-03-06 13:17:16'),
(5, 2, 26, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:17:16', '2024-03-06 13:17:16'),
(6, 2, 27, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:17:16', '2024-03-06 13:17:16'),
(7, 2, 13, '2024-03-30', 1, NULL, 1, 1, 0, '2024-03-06 13:24:20', '2024-03-06 13:24:20'),
(8, 2, 26, '2024-03-30', 0, NULL, 1, 1, 0, '2024-03-06 13:24:20', '2024-03-06 13:24:20'),
(9, 2, 27, '2024-03-30', 1, NULL, 1, 1, 0, '2024-03-06 13:24:20', '2024-03-06 13:24:20'),
(10, 1, 2, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(11, 1, 3, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(12, 1, 5, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(13, 1, 6, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(14, 1, 7, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(15, 1, 8, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(16, 1, 9, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(17, 1, 10, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(18, 1, 11, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(19, 1, 12, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(20, 1, 15, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(21, 1, 16, '2024-03-07', 1, NULL, 1, 1, 0, '2024-03-06 13:25:21', '2024-03-06 13:25:21'),
(22, 1, 2, '2024-03-29', 0, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(23, 1, 3, '2024-03-29', 0, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(24, 1, 5, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(25, 1, 6, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(26, 1, 7, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(27, 1, 8, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(28, 1, 9, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(29, 1, 10, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(30, 1, 11, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(31, 1, 12, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(32, 1, 15, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34'),
(33, 1, 16, '2024-03-29', 1, NULL, 1, 1, 0, '2024-03-06 13:25:34', '2024-03-06 13:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `basic_infos`
--

CREATE TABLE `basic_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'footer-text',
  `phone1` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favIcon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptPaymentType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyRightName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyRightLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `mapLink` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `pinterest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `linkedIn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_infos`
--

INSERT INTO `basic_infos` (`id`, `title`, `moto`, `phone1`, `phone2`, `email`, `address`, `logo`, `favIcon`, `currency_code`, `currency_symbol`, `acceptPaymentType`, `copyRightName`, `copyRightLink`, `mapLink`, `facebook`, `instagram`, `twitter`, `pinterest`, `linkedIn`, `created_at`, `updated_at`) VALUES
(1, 'VENAM', 'Namkand sodales vel online best prices Amazon Check out ethnic wear, formal wear western wear Blood Pressure Rate Monito.', '458-965-3224', '458-965-3224', 'Support@info.Com', 'W898 RTower Stat, Suite 56 Brockland, CA 9622 United States.', 'logo-1708599085.png', 'favIcon-1708599085.png', 'BDT', '৳', 'apt-1702371011.png', '<p>Copyright © 2024 <font color=\"#0000ff\"><b style=\"\">SDL</b> </font>All Rights Reserved.</p>', 'https://www.youtube.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.096340089998!2d90.41232931081352!3d23.74394367858587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b889a0e3b047%3A0x35d210fbb5e92f48!2z4Ka44Ka_4Ka4IOCmoeCnh-CmrSDgprLgpr_gpq7gpr_gpp_gp4fgpqE!5e0!3m2!1sen!2sbd!4v1702803916155!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.youtube.com/', '2023-12-12 09:09:15', '2024-03-06 05:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `basic_info_translations`
--

CREATE TABLE `basic_info_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `basic_info_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_info_translations`
--

INSERT INTO `basic_info_translations` (`id`, `basic_info_id`, `locale`, `title`, `moto`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'bn', 'ভেনাম', '\"আপনার গ্রাহকদের সম্মান (এবং শেষ পর্যন্ত ভালবাসা) অর্জন করতে, আপনাকে প্রথমে সেই গ্রাহকদের সম্মান করতে হবে। সেই কারণেই বেশিরভাগ বিজয়ী কোম্পানির দ্বারা গোল্ডেন রুল আচরণ গ্রহণ করা হয়।\" - কলিন ব্যারেট, সাউথওয়েস্ট এয়ারলাইন্সের প্রেসিডেন্ট এমেরিটা\"', 'W898 RTower Stat, Suite 56 Brockland, CA 9622 United States.\"\"', '2024-01-24 08:57:58', '2024-01-30 06:21:33'),
(2, 1, 'en', 'Task Management System', '\"To earn the respect (and eventually love) of your customers, you first have to respect those customers. That is why Golden Rule behavior is embraced by most of the winning companies.\" – Colleen Barrett, Southwest Airlines President Emerita', 'W898 RTower Stat, Suite 56 Brockland, CA 9622 United States.\"', '2024-01-24 08:58:11', '2024-03-11 09:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` int NOT NULL,
  `trainer_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_scheduled` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `course_id`, `trainer_id`, `title`, `is_scheduled`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'B-PL-1', 1, 1, NULL, NULL, '2024-02-19 09:16:01', '2024-02-19 09:16:01'),
(2, 2, 1, 'B-JR-1', 0, 1, NULL, NULL, '2024-02-19 09:37:50', '2024-02-19 09:40:44'),
(5, 4, 4, 'B-CN-1', 0, 1, NULL, NULL, '2024-02-19 10:13:03', '2024-02-19 10:13:03'),
(6, 1, 2, 'B-PL-2', 1, 1, NULL, NULL, '2024-02-19 10:13:45', '2024-02-19 10:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'AL', 'Albania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZ', 'Algeria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AS', 'American Samoa', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'AD', 'Andorra', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AO', 'Angola', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AI', 'Anguilla', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AQ', 'Antarctica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AG', 'Antigua and Barbuda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'AR', 'Argentina', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'AM', 'Armenia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'AW', 'Aruba', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'AU', 'Australia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'AT', 'Austria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'AZ', 'Azerbaijan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BS', 'Bahamas', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BH', 'Bahrain', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BD', 'Bangladesh', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BB', 'Barbados', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BY', 'Belarus', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BE', 'Belgium', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BZ', 'Belize', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BJ', 'Benin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'BM', 'Bermuda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BT', 'Bhutan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BO', 'Bolivia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BA', 'Bosnia and Herzegovina', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'BW', 'Botswana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'BV', 'Bouvet Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'BR', 'Brazil', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'IO', 'British Indian Ocean Territory', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'BN', 'Brunei Darussalam', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'BG', 'Bulgaria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'BF', 'Burkina Faso', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'BI', 'Burundi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'KH', 'Cambodia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'CM', 'Cameroon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'CA', 'Canada', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CV', 'Cape Verde', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'KY', 'Cayman Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'CF', 'Central African Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'TD', 'Chad', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CL', 'Chile', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'CN', 'China', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'CX', 'Christmas Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'CC', 'Cocos (Keeling) Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'CO', 'Colombia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'KM', 'Comoros', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'CD', 'Democratic Republic of the Congo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'CG', 'Republic of Congo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'CK', 'Cook Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'CR', 'Costa Rica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'HR', 'Croatia (Hrvatska)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'CU', 'Cuba', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'CY', 'Cyprus', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'CZ', 'Czech Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DK', 'Denmark', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'DJ', 'Djibouti', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'DM', 'Dominica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'DO', 'Dominican Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'TL', 'East Timor', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'EC', 'Ecuador', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'EG', 'Egypt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'SV', 'El Salvador', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'GQ', 'Equatorial Guinea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'ER', 'Eritrea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'EE', 'Estonia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ET', 'Ethiopia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'FK', 'Falkland Islands (Malvinas)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'FO', 'Faroe Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'FJ', 'Fiji', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'FI', 'Finland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'FR', 'France', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'FX', 'France, Metropolitan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'GF', 'French Guiana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'PF', 'French Polynesia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'TF', 'French Southern Territories', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'GA', 'Gabon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'GM', 'Gambia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'GE', 'Georgia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'DE', 'Germany', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'GH', 'Ghana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'GI', 'Gibraltar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'GG', 'Guernsey', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'GR', 'Greece', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'GL', 'Greenland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'GD', 'Grenada', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'GP', 'Guadeloupe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'GU', 'Guam', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'GT', 'Guatemala', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'GN', 'Guinea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'GW', 'Guinea-Bissau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'GY', 'Guyana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'HT', 'Haiti', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'HM', 'Heard and Mc Donald Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'HN', 'Honduras', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'HK', 'Hong Kong', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'HU', 'Hungary', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'IS', 'Iceland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'IN', 'India', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'IM', 'Isle of Man', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'ID', 'Indonesia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'IR', 'Iran (Islamic Republic of)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'IQ', 'Iraq', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'IE', 'Ireland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'IL', 'Israel', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'IT', 'Italy', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'CI', 'Ivory Coast', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'JE', 'Jersey', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'JM', 'Jamaica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'JP', 'Japan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'JO', 'Jordan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'KZ', 'Kazakhstan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'KE', 'Kenya', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'KI', 'Kiribati', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'KR', 'Korea, Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'XK', 'Kosovo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'KW', 'Kuwait', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'KG', 'Kyrgyzstan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'LA', 'Lao People\'s Democratic Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'LV', 'Latvia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'LB', 'Lebanon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'LS', 'Lesotho', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'LR', 'Liberia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'LY', 'Libyan Arab Jamahiriya', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'LI', 'Liechtenstein', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'LT', 'Lithuania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'LU', 'Luxembourg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'MO', 'Macau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'MK', 'North Macedonia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'MG', 'Madagascar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'MW', 'Malawi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'MY', 'Malaysia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'MV', 'Maldives', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'ML', 'Mali', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'MT', 'Malta', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'MH', 'Marshall Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'MQ', 'Martinique', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'MR', 'Mauritania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'MU', 'Mauritius', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'YT', 'Mayotte', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'MX', 'Mexico', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'FM', 'Micronesia, Federated States of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'MD', 'Moldova, Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'MC', 'Monaco', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'MN', 'Mongolia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'ME', 'Montenegro', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'MS', 'Montserrat', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'MA', 'Morocco', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'MZ', 'Mozambique', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'MM', 'Myanmar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'NA', 'Namibia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'NR', 'Nauru', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'NP', 'Nepal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'NL', 'Netherlands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'AN', 'Netherlands Antilles', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'NC', 'New Caledonia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'NZ', 'New Zealand', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'NI', 'Nicaragua', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'NE', 'Niger', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'NG', 'Nigeria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'NU', 'Niue', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'NF', 'Norfolk Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'MP', 'Northern Mariana Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'NO', 'Norway', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'OM', 'Oman', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'PK', 'Pakistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'PW', 'Palau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'PS', 'Palestine', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'PA', 'Panama', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'PG', 'Papua New Guinea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'PY', 'Paraguay', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'PE', 'Peru', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'PH', 'Philippines', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'PN', 'Pitcairn', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'PL', 'Poland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'PT', 'Portugal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'PR', 'Puerto Rico', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'QA', 'Qatar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'RE', 'Reunion', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'RO', 'Romania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'RU', 'Russian Federation', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'RW', 'Rwanda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'KN', 'Saint Kitts and Nevis', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'LC', 'Saint Lucia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'VC', 'Saint Vincent and the Grenadines', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'WS', 'Samoa', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'SM', 'San Marino', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'ST', 'Sao Tome and Principe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'SA', 'Saudi Arabia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'SN', 'Senegal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'RS', 'Serbia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'SC', 'Seychelles', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'SL', 'Sierra Leone', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'SG', 'Singapore', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'SK', 'Slovakia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'SI', 'Slovenia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'SB', 'Solomon Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'SO', 'Somalia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'ZA', 'South Africa', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'GS', 'South Georgia South Sandwich Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'SS', 'South Sudan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'ES', 'Spain', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'LK', 'Sri Lanka', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'SH', 'St. Helena', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'PM', 'St. Pierre and Miquelon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'SD', 'Sudan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'SR', 'Suriname', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'SZ', 'Eswatini', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'SE', 'Sweden', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'CH', 'Switzerland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'SY', 'Syrian Arab Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'TW', 'Taiwan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'TJ', 'Tajikistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'TZ', 'Tanzania, United Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'TH', 'Thailand', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'TG', 'Togo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'TK', 'Tokelau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'TO', 'Tonga', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'TT', 'Trinidad and Tobago', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'TN', 'Tunisia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'TR', 'Turkey', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'TM', 'Turkmenistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'TC', 'Turks and Caicos Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'TV', 'Tuvalu', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'UG', 'Uganda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'UA', 'Ukraine', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'AE', 'United Arab Emirates', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'GB', 'United Kingdom', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'US', 'United States', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'UM', 'United States minor outlying islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'UY', 'Uruguay', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'UZ', 'Uzbekistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'VU', 'Vanuatu', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'VA', 'Vatican City State', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'VE', 'Venezuela', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'VN', 'Vietnam', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'VG', 'Virgin Islands (British)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'VI', 'Virgin Islands (U.S.)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'WF', 'Wallis and Futuna Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'EH', 'Western Sahara', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'YE', 'Yemen', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'ZM', 'Zambia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'ZW', 'Zimbabwe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_duration` int NOT NULL,
  `per_class_duration` int NOT NULL,
  `total_class` int NOT NULL,
  `class_per_week` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `objective` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `methodology` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `benifits` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_syllabus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `total_duration`, `per_class_duration`, `total_class`, `class_per_week`, `objective`, `methodology`, `benifits`, `short_syllabus`, `description`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 'PHP (LARAVEL)', 40, 2, 20, '3', '<p><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Exemplary Customer Service World-Wide and Locally<br><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span><br></p>', '<p><span style=\"color: rgb(33, 33, 33); font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">Interactive Lecture, Video clips, Role Play, Practical exercise, Question and Answer Session.</span><br></p>', '<p><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Exemplary Customer Service World-Wide and Locally<br><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span><br></p>', '<p><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Exemplary Customer Service World-Wide and Locally<br><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span><span style=\"background-color: rgb(245, 245, 245); color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; font-weight: 700;\">Exemplary Customer Service World-Wide and Locally</span><br></p><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any</span><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Exemplary Customer Service World-Wide and Locally<br><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Exemplary Customer Service World-Wide and Locally<br><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">&nbsp;Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span>', '<p><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Exemplary Customer Service World-Wide and Locally<br><br>The 4 ‘S`s and 4 ‘T`s for Successful Customer Service<br><br>Knowing the Tactful Techniques-</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the Words to Welcome and Comfort customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Saying the Most Difficult Words</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Use the Words to Make the Relationship</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Retain customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Identify and use the Words to Persuade them</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Knowing the U-turn method to calm a complaining customer and bring him back</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Categorising Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Types of Customers</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- the Right Medication for the Right Patient</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your own personality type and ways to change it</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Activity (Role Play): Change yourself!</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Excel on Managing Complaints</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Escalating the Complaints to the Respective Concerns</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Words of Apologies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Empathising</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Strategic initiatives to constructive resolutions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Knowing Customers by Analyzing Personality and Communication Styles</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Categorizing Customers into 4 main Characteristics trait- DISC Method</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Analysing and Understanding the Characteristics and Make Action Plan to manage them Effectively</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Communicating and Treating the Customers According to their Communication Level</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Creating a High Impression/Image of Your Company by Building Trust in their Minds</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Handling Difficult Customers</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Best way to Say “No” to Customers- The Winning Strategies</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Taking and Working on Customers` Feedbacks</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Win them by Building Trust and Integrity</span><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To build relationships</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To achieve retention</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- To create company image/brand</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Know your product well</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Be Emotionally Intelligent</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Stay Aware of Your Emotions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control all your Perceptions</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Control any Outbursts in Difficult Situations</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Overcome all Negative Hunch</span><br style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(33, 33, 33); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">- Recharge yourself</span><br></p>', 1, 1, 1, '2024-02-25 04:40:34', '2024-02-25 04:43:31');
INSERT INTO `courses` (`id`, `title`, `total_duration`, `per_class_duration`, `total_class`, `class_per_week`, `objective`, `methodology`, `benifits`, `short_syllabus`, `description`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(2, 'JavaScript', 300, 4, 10, '50', '<h2 style=\"font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(33, 33, 33); margin-top: 20px; margin-bottom: 10px; font-size: 18px; background-color: rgb(245, 245, 245);\">Introduction</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 14px; line-height: 24px; color: rgb(66, 66, 66); font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; background-color: rgb(245, 245, 245);\"><span style=\"font-family: SolaimanLipi, Roboto;\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span></p>', '<h2 style=\"font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(33, 33, 33); margin-top: 20px; margin-bottom: 10px; font-size: 18px; background-color: rgb(245, 245, 245);\">Introduction</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 14px; line-height: 24px; color: rgb(66, 66, 66); font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; background-color: rgb(245, 245, 245);\"><span style=\"font-family: SolaimanLipi, Roboto;\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span></p>', '<h2 style=\"font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(33, 33, 33); margin-top: 20px; margin-bottom: 10px; font-size: 18px; background-color: rgb(245, 245, 245);\">Introduction</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 14px; line-height: 24px; color: rgb(66, 66, 66); font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; background-color: rgb(245, 245, 245);\"><span style=\"font-family: SolaimanLipi, Roboto;\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span></p>', '<h2 style=\"font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(33, 33, 33); margin-top: 20px; margin-bottom: 10px; font-size: 18px; background-color: rgb(245, 245, 245);\">Introduction</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 14px; line-height: 24px; color: rgb(66, 66, 66); font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; background-color: rgb(245, 245, 245);\"><span style=\"font-family: SolaimanLipi, Roboto;\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span></p>', '<h2 style=\"font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(33, 33, 33); margin-top: 20px; margin-bottom: 10px; font-size: 18px; background-color: rgb(245, 245, 245);\">Introduction</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 14px; line-height: 24px; color: rgb(66, 66, 66); font-family: Inter, &quot;Noto Sans Bengali UI&quot;, bdjobselearning, sans-serif; background-color: rgb(245, 245, 245);\"><span style=\"font-family: SolaimanLipi, Roboto;\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span></p>', 1, 1, NULL, '2024-02-25 04:45:03', '2024-02-25 04:45:03'),
(3, 'Python(Django)', 200, 4, 20, '3', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', 1, 1, NULL, '2024-02-25 04:45:43', '2024-02-25 04:45:43'),
(4, 'C#.net MVC', 300, 4, 20, '2', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', '<p><span style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\">Just as there are no business without a customer, there will be no customer if you cannot make them happy. It is the art of serving customers that draws the customers` attention and retains them to a particular business. This break-through, inspirational workshop gets the customer service staff invigorated as it portrays the benefits of positive customer experience and discusses the strategies to create customer service excellence by bringing in the significance of handling techniques exclusive for internal and external customers by means of creative exercises, role plays, case studies and line prompts in light of best practices globally</span><br style=\"color: rgb(66, 66, 66); font-family: SolaimanLipi, Roboto; font-size: 14px; background-color: rgb(245, 245, 245);\"></p>', 1, 1, 1, '2024-02-25 04:46:33', '2024-02-25 04:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `currency_symbols`
--

CREATE TABLE `currency_symbols` (
  `id` int NOT NULL,
  `country` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_symbols`
--

INSERT INTO `currency_symbols` (`id`, `country`, `currency`, `code`, `symbol`) VALUES
(1, 'Afghanistan', 'Afghan afghani', 'AFN', '؋'),
(2, 'Akrotiri and Dhekelia (UK)', 'European euro', 'EUR', '€'),
(3, 'Aland Islands (Finland)', 'European euro', 'EUR', '€'),
(4, 'Albania', 'Albanian lek', 'ALL', 'Lek'),
(5, 'Algeria', 'Algerian dinar', 'DZD', 'DA'),
(6, 'American Samoa (USA)', 'United States dollar', 'USD', '$'),
(7, 'Andorra', 'European euro', 'EUR', '€'),
(8, 'Angola', 'Angolan kwanza', 'AOA', 'Kz'),
(9, 'Anguilla (UK)', 'East Caribbean dollar', 'XCD', '$'),
(10, 'Antigua and Barbuda', 'East Caribbean dollar', 'XCD', '$'),
(11, 'Argentina', 'Argentine peso', 'ARS', '$'),
(12, 'Armenia', 'Armenian dram', 'AMD', '֏'),
(13, 'Aruba (Netherlands)', 'Aruban florin', 'AWG', 'ƒ'),
(14, 'Ascension Island (UK)', 'Saint Helena pound', 'SHP', '£'),
(15, 'Australia', 'Australian dollar', 'USD', '$'),
(16, 'Austria', 'European euro', 'EUR', '€'),
(17, 'Azerbaijan', 'Azerbaijan manat', 'AZN', 'ман'),
(18, 'Bahamas', 'Bahamian dollar', 'BSD', '$'),
(19, 'Bahrain', 'Bahraini dinar', 'BHD', 'BD'),
(20, 'Bangladesh', 'Bangladeshi taka', 'BDT', '৳'),
(21, 'Barbados', 'Barbadian dollar', 'BBD', '$'),
(23, 'Belgium', 'European euro', 'EUR', '€'),
(24, 'Belize', 'Belize dollar', 'BZD', 'BZ$'),
(25, 'Benin', 'West African CFA franc', 'XOF', 'CFA'),
(26, 'Bermuda (UK)', 'Bermudian dollar', 'BMD', '$'),
(28, 'Bolivia', 'Bolivian boliviano', 'BOB', '$b'),
(29, 'Bonaire (Netherlands)', 'United States dollar', 'USD', '$'),
(30, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina convertible mark', 'BAM', 'KM'),
(31, 'Botswana', 'Botswana pula', 'BWP', 'P'),
(32, 'Brazil', 'Brazilian real', 'BRL', 'R$'),
(33, 'British Indian Ocean Territory (UK)', 'United States dollar', 'USD', '$'),
(34, 'British Virgin Islands (UK)', 'United States dollar', 'USD', '$'),
(35, 'Brunei', 'Brunei dollar', 'BND', '$'),
(36, 'Bulgaria', 'Bulgarian lev', 'BGN', 'лв'),
(37, 'Burkina Faso', 'West African CFA franc', 'XOF', 'CFA'),
(38, 'Burundi', 'Burundi franc', 'BIF', 'FBu'),
(39, 'Cabo Verde', 'Cape Verdean escudo', 'CVE', 'Esc'),
(40, 'Cambodia', 'Cambodian riel', 'KHR', '៛'),
(41, 'Cameroon', 'Central African CFA franc', 'XAF', 'FCFA'),
(42, 'Canada', 'Canadian dollar', 'CAD', '$'),
(43, 'Caribbean Netherlands (Netherlands)', 'United States dollar', 'USD', '$'),
(44, 'Cayman Islands (UK)', 'Cayman Islands dollar', 'KYD', '$'),
(45, 'Central African Republic', 'Central African CFA franc', 'XAF', 'FCFA'),
(46, 'Chad', 'Central African CFA franc', 'XAF', 'FCFA'),
(47, 'Chatham Islands (New Zealand)', 'New Zealand dollar', 'NZD', '$'),
(48, 'Chile', 'Chilean peso', 'CLP', '$'),
(49, 'China', 'Chinese Yuan Renminbi', 'CNY', '¥'),
(50, 'Christmas Island (Australia)', 'Australian dollar', 'USD', '$'),
(51, 'Cocos (Keeling) Islands (Australia)', 'Australian dollar', 'USD', '$'),
(52, 'Colombia', 'Colombian peso', 'COP', '$'),
(53, 'Comoros', 'Comorian franc', 'KMF', 'CF'),
(54, 'Congo, Democratic Republic of the', 'Congolese franc', 'CDF', 'CDF'),
(55, 'Congo, Republic of the', 'Central African CFA franc', 'XAF', 'FCFA'),
(57, 'Costa Rica', 'Costa Rican colon', 'CRC', '₡'),
(58, 'Cote d\'Ivoire', 'West African CFA franc', 'XOF', 'CFA'),
(59, 'Croatia', 'Croatian kuna', 'HRK', 'kn'),
(60, 'Cuba', 'Cuban peso', 'CUP', '₱'),
(61, 'Curacao (Netherlands)', 'Netherlands Antillean guilder', 'ANG', 'ƒ'),
(62, 'Cyprus', 'European euro', 'EUR', '€'),
(63, 'Czechia', 'Czech koruna', 'CZK', 'Kč'),
(64, 'Denmark', 'Danish krone', 'DKK', 'kr'),
(65, 'Djibouti', 'Djiboutian franc', 'DJF', 'Fdj'),
(66, 'Dominica', 'East Caribbean dollar', 'XCD', '$'),
(67, 'Dominican Republic', 'Dominican peso', 'DOP', 'RD$'),
(68, 'Ecuador', 'United States dollar', 'USD', '$'),
(69, 'Egypt', 'Egyptian pound', 'EGP', '£'),
(70, 'El Salvador', 'United States dollar', 'USD', '$'),
(71, 'Equatorial Guinea', 'Central African CFA franc', 'XAF', 'FCFA'),
(72, 'Eritrea', 'Eritrean nakfa', 'ERN', 'Nkf'),
(73, 'Estonia', 'European euro', 'EUR', '€'),
(74, 'Eswatini (formerly Swaziland)', 'Swazi lilangeni', 'SZL', 'L'),
(75, 'Ethiopia', 'Ethiopian birr', 'ETB', 'Br'),
(76, 'Falkland Islands (UK)', 'Falkland Islands pound', 'FKP', '£'),
(77, 'Faroe Islands (Denmark)', 'Faroese krona', 'FK', '$'),
(78, 'Fiji', 'Fijian dollar', 'FJD', '$'),
(79, 'Finland', 'European euro', 'EUR', '€'),
(80, 'France', 'European euro', 'EUR', '€'),
(81, 'French Guiana (France)', 'European euro', 'EUR', '€'),
(82, 'French Polynesia (France)', 'CFP franc', 'XPF', '₣'),
(83, 'Gabon', 'Central African CFA franc', 'XAF', 'FCFA'),
(84, 'Gambia', 'Gambian dalasi', 'GMD', 'D'),
(85, 'Georgia', 'Georgian lari', 'GEL', 'ლ'),
(86, 'Germany', 'European euro', 'EUR', '€'),
(87, 'Ghana', 'Ghanaian cedi', 'GHS', 'GH₵'),
(88, 'Gibraltar (UK)', 'Gibraltar pound', 'GIP', '£'),
(89, 'Greece', 'European euro', 'EUR', '€'),
(90, 'Greenland (Denmark)', 'Danish krone', 'DKK', 'kr'),
(91, 'Grenada', 'East Caribbean dollar', 'XCD', '$'),
(92, 'Guadeloupe (France)', 'European euro', 'EUR', '€'),
(93, 'Guam (USA)', 'United States dollar', 'USD', '$'),
(94, 'Guatemala', 'Guatemalan quetzal', 'GTQ', 'Q'),
(95, 'Guernsey (UK)', 'Guernsey Pound', 'GGP', '£'),
(96, 'Guinea', 'Guinean franc', 'GNF', 'FG'),
(97, 'Guinea-Bissau', 'West African CFA franc', 'XOF', 'CFA'),
(98, 'Guyana', 'Guyanese dollar', 'GYD', '$'),
(100, 'Honduras', 'Honduran lempira', 'HNL', 'L'),
(101, 'Hong Kong (China)', 'Hong Kong dollar', 'HKD', '$'),
(102, 'Hungary', 'Hungarian forint', 'HUF', 'Ft'),
(103, 'Iceland', 'Icelandic krona', 'ISK', 'kr'),
(104, 'India', 'Indian rupee', 'INR', '₹'),
(105, 'Indonesia', 'Indonesian rupiah', 'IDR', 'Rp'),
(107, 'Iran', 'Iranian rial', 'IRR', '﷼'),
(108, 'Iraq', 'Iraqi dinar', 'IQD', 'ع.د'),
(109, 'Ireland', 'European euro', 'EUR', '€'),
(110, 'Isle of Man (UK)', 'Manx pound', 'IMP', '£'),
(111, 'Israel', 'Israeli new shekel', 'ILS', '₪'),
(112, 'Italy', 'European euro', 'EUR', '€'),
(113, 'Jamaica', 'Jamaican dollar', 'JMD', 'J$'),
(114, 'Japan', 'Japanese yen', 'JPY', '¥'),
(115, 'Jersey (UK)', 'Jersey pound', 'JEP', '£'),
(116, 'Jordan', 'Jordanian dinar', 'JOD', 'د.ا'),
(117, 'Kazakhstan', 'Kazakhstani tenge', 'KZT', 'лв'),
(118, 'Kenya', 'Kenyan shilling', 'KES', 'Ksh'),
(119, 'Kiribati', 'Australian dollar', 'USD', '$'),
(120, 'Kosovo', 'European euro', 'EUR', '€'),
(121, 'Kuwait', 'Kuwaiti dinar', 'KWD', 'د.ك'),
(122, 'Kyrgyzstan', 'Kyrgyzstani som', 'KGS', 'лв'),
(123, 'Laos', 'Lao kip', 'LAK', '₭'),
(124, 'Latvia', 'European euro', 'EUR', '€'),
(125, 'Lebanon', 'Lebanese pound', 'LBP', '£'),
(127, 'Liberia', 'Liberian dollar', 'LRD', '$'),
(128, 'Libya', 'Libyan dinar', 'LYD', 'ل.د'),
(129, 'Liechtenstein', 'Swiss franc', 'CHF', 'CHF'),
(130, 'Lithuania', 'European euro', 'EUR', '€'),
(131, 'Luxembourg', 'European euro', 'EUR', '€'),
(132, 'Macau (China)', 'Macanese pataca', 'MOP', 'MOP$'),
(133, 'Madagascar', 'Malagasy ariary', 'MGA', 'Ar'),
(134, 'Malawi', 'Malawian kwacha', 'MWK', 'MK'),
(135, 'Malaysia', 'Malaysian ringgit', 'MYR', 'RM'),
(136, 'Maldives', 'Maldivian rufiyaa', 'MVR', 'Rf'),
(137, 'Mali', 'West African CFA franc', 'XOF', 'CFA'),
(138, 'Malta', 'European euro', 'EUR', '€'),
(139, 'Marshall Islands', 'United States dollar', 'USD', '$'),
(140, 'Martinique (France)', 'European euro', 'EUR', '€'),
(142, 'Mauritius', 'Mauritian rupee', 'MUR', '₨'),
(143, 'Mayotte (France)', 'European euro', 'EUR', '€'),
(144, 'Mexico', 'Mexican peso', 'MXN', '$'),
(145, 'Micronesia', 'United States dollar', 'USD', '$'),
(146, 'Moldova', 'Moldovan leu', 'MDL', 'L'),
(147, 'Monaco', 'European euro', 'EUR', '€'),
(148, 'Mongolia', 'Mongolian tugrik', 'MNT', '₮'),
(149, 'Montenegro', 'European euro', 'EUR', '€'),
(150, 'Montserrat (UK)', 'East Caribbean dollar', 'XCD', '$'),
(151, 'Morocco', 'Moroccan dirham', 'MAD', 'MAD'),
(152, 'Mozambique', 'Mozambican metical', 'MZN', 'MT'),
(153, 'Myanmar (formerly Burma)', 'Myanmar kyat', 'MMK', 'K'),
(154, 'Namibia', 'Namibian dollar', 'NAD', '$'),
(155, 'Nauru', 'Australian dollar', 'USD', '$'),
(156, 'Nepal', 'Nepalese rupee', 'NPR', '₨'),
(157, 'Netherlands', 'European euro', 'EUR', '€'),
(158, 'New Caledonia (France)', 'CFP franc', 'XPF', '₣'),
(159, 'New Zealand', 'New Zealand dollar', 'NZD', '$'),
(160, 'Nicaragua', 'Nicaraguan cordoba', 'NIO', 'C$'),
(161, 'Niger', 'West African CFA franc', 'XOF', 'CFA'),
(162, 'Nigeria', 'Nigerian naira', 'NGN', '₦'),
(163, 'Niue (New Zealand)', 'New Zealand dollar', 'NZD', '$'),
(164, 'Norfolk Island (Australia)', 'Australian dollar', 'USD', '$'),
(165, 'Northern Mariana Islands (USA)', 'United States dollar', 'USD', '$'),
(166, 'North Korea', 'North Korean won', 'KPW', '₩'),
(167, 'North Macedonia (formerly Macedonia)', 'Macedonian denar', 'MKD', 'ден'),
(168, 'Norway', 'Norwegian krone', 'NOK', 'kr'),
(169, 'Oman', 'Omani rial', 'OMR', '﷼'),
(170, 'Pakistan', 'Pakistani rupee', 'PKR', '₨'),
(171, 'Palau', 'United States dollar', 'USD', '$'),
(172, 'Palestine', 'Israeli new shekel', 'ILS', '₪'),
(173, 'Panama', 'United States dollar', 'USD', '$'),
(174, 'Papua New Guinea', 'Papua New Guinean kina', 'PGK', 'K'),
(175, 'Paraguay', 'Paraguayan guarani', 'PYG', 'Gs'),
(176, 'Peru', 'Peruvian sol', 'PEN', 'S/.'),
(177, 'Philippines', 'Philippine peso', 'PHP', 'Php'),
(178, 'Pitcairn Islands (UK)', 'New Zealand dollar', 'NZD', '$'),
(179, 'Poland', 'Polish zloty', 'PLN', 'zł'),
(180, 'Portugal', 'European euro', 'EUR', '€'),
(181, 'Puerto Rico (USA)', 'United States dollar', 'USD', '$'),
(182, 'Qatar', 'Qatari riyal', 'QAR', '﷼'),
(183, 'Reunion (France)', 'European euro', 'EUR', '€'),
(184, 'Romania', 'Romanian leu', 'RON', 'lei'),
(185, 'Russia', 'Russian ruble', 'RUB', 'руб'),
(186, 'Rwanda', 'Rwandan franc', 'RWF', 'R₣'),
(187, 'Saba (Netherlands)', 'United States dollar', 'USD', '$'),
(188, 'Saint Barthelemy (France)', 'European euro', 'EUR', '€'),
(189, 'Saint Helena (UK)', 'Saint Helena pound', 'SHP', '£'),
(190, 'Saint Kitts and Nevis', 'East Caribbean dollar', 'XCD', '$'),
(191, 'Saint Lucia', 'East Caribbean dollar', 'XCD', '$'),
(192, 'Saint Martin (France)', 'European euro', 'EUR', '€'),
(193, 'Saint Pierre and Miquelon (France)', 'European euro', 'EUR', '€'),
(194, 'Saint Vincent and the Grenadines', 'East Caribbean dollar', 'XCD', '$'),
(195, 'Samoa', 'Samoan tala', 'WST', 'WS$'),
(196, 'San Marino', 'European euro', 'EUR', '€'),
(198, 'Saudi Arabia', 'Saudi Arabian riyal', 'SAR', '﷼'),
(199, 'Senegal', 'West African CFA franc', 'XOF', 'CFA'),
(200, 'Serbia', 'Serbian dinar', 'RSD', 'Дин.'),
(201, 'Seychelles', 'Seychellois rupee', 'SCR', '₨'),
(202, 'Sierra Leone', 'Sierra Leonean leone', 'SLL', 'Le'),
(203, 'Singapore', 'Singapore dollar', 'SGD', '$'),
(204, 'Sint Eustatius (Netherlands)', 'United States dollar', 'USD', '$'),
(205, 'Sint Maarten (Netherlands)', 'Netherlands Antillean guilder', 'ANG', 'ƒ'),
(206, 'Slovakia', 'European euro', 'EUR', '€'),
(207, 'Slovenia', 'European euro', 'EUR', '€'),
(208, 'Solomon Islands', 'Solomon Islands dollar', 'SBD', '$'),
(209, 'Somalia', 'Somali shilling', 'SOS', 'S'),
(210, 'South Africa', 'South African rand', 'ZAR', 'R'),
(211, 'South Georgia Island (UK)', 'Pound sterling', 'GBP', '£'),
(212, 'South Korea', 'South Korean won', 'KRW', '₩'),
(213, 'South Sudan', 'South Sudanese pound', 'SSP', '£'),
(214, 'Spain', 'European euro', 'EUR', '€'),
(215, 'Sri Lanka', 'Sri Lankan rupee', 'LKR', '₨'),
(216, 'Sudan', 'Sudanese pound', 'SDG', 'ج.س'),
(217, 'Suriname', 'Surinamese dollar', 'SRD', '$'),
(218, 'Svalbard and Jan Mayen (Norway)', 'Norwegian krone', 'NOK', 'kr'),
(219, 'Sweden', 'Swedish krona', 'SEK', 'kr'),
(220, 'Switzerland', 'Swiss franc', 'CHF', 'CHF'),
(221, 'Syria', 'Syrian pound', 'SYP', '£'),
(222, 'Taiwan', 'New Taiwan dollar', 'TWD', 'NT$'),
(223, 'Tajikistan', 'Tajikistani somoni', 'TJS', 'SM'),
(224, 'Tanzania', 'Tanzanian shilling', 'TZS', 'TSh'),
(225, 'Thailand', 'Thai baht', 'THB', '฿'),
(226, 'Timor-Leste', 'United States dollar', 'USD', '$'),
(227, 'Togo', 'West African CFA franc', 'XOF', 'CFA'),
(228, 'Tokelau (New Zealand)', 'New Zealand dollar', 'NZD', '$'),
(229, 'Tonga', 'Tongan pa’anga', 'TOP', 'T$'),
(230, 'Trinidad and Tobago', 'Trinidad and Tobago dollar', 'TTD', 'TT$'),
(231, 'Tristan da Cunha (UK)', 'Pound sterling', 'GBP', '£'),
(232, 'Tunisia', 'Tunisian dinar', 'TND', 'DT'),
(233, 'Turkey', 'Turkish lira', 'TRY', '₺'),
(234, 'Turkmenistan', 'Turkmen manat', 'TMT', 'T'),
(235, 'Turks and Caicos Islands (UK)', 'United States dollar', 'USD', '$'),
(236, 'Tuvalu', 'Australian dollar', 'USD', '$'),
(237, 'Uganda', 'Ugandan shilling', 'UGX', 'USh'),
(238, 'Ukraine', 'Ukrainian hryvnia', 'UAH', '₴'),
(239, 'United Arab Emirates', 'UAE dirham', 'AED', 'د.إ'),
(240, 'United Kingdom', 'Pound sterling', 'GBP', '£'),
(241, 'United States of America', 'United States dollar', 'USD', '$'),
(242, 'Uruguay', 'Uruguayan peso', 'UYU', '$U'),
(243, 'US Virgin Islands (USA)', 'United States dollar', 'USD', '$'),
(244, 'Uzbekistan', 'Uzbekistani som', 'UZS', 'лв'),
(246, 'Vatican City (Holy See)', 'European euro', 'EUR', '€'),
(248, 'Vietnam', 'Vietnamese dong', 'VND', '₫'),
(249, 'Wake Island (USA)', 'United States dollar', 'USD', '$'),
(250, 'Wallis and Futuna (France)', 'CFP franc', 'XPF', '₣'),
(251, 'Yemen', 'Yemeni rial', 'YER', '﷼'),
(252, 'Zambia', 'Zambian kwacha', 'ZMW', 'ZK'),
(253, 'Zimbabwe', 'United States dollar', 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_by_id`, `updated_by_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Marketing', NULL, 1, 1, NULL, '2024-02-24 08:47:54'),
(2, 'IT services', NULL, 1, 1, NULL, '2024-02-24 08:49:24'),
(4, 'Design', 1, NULL, 1, '2024-02-24 08:49:40', '2024-02-24 08:49:40'),
(6, 'Quality Assurance', 1, NULL, 1, '2024-02-24 08:56:41', '2024-02-24 08:56:41'),
(7, 'Product development', 1, NULL, 1, '2024-02-24 08:57:07', '2024-02-24 08:57:07'),
(9, 'HR', 1, NULL, 1, '2024-02-24 11:30:35', '2024-02-24 11:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_by_id`, `updated_by_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Software Architect', NULL, 1, 1, NULL, '2024-02-24 09:23:14'),
(2, 'VP of Marketing', NULL, 1, 1, NULL, '2024-02-24 09:23:01'),
(3, 'Product Manager', NULL, 1, 1, NULL, '2024-02-24 09:22:48'),
(4, 'Manager', 1, NULL, 1, '2024-02-24 09:20:57', '2024-02-24 09:20:57'),
(5, 'Software Engineer', 1, NULL, 1, '2024-02-24 09:23:26', '2024-02-24 09:23:26'),
(6, 'Software Developer', 1, NULL, 1, '2024-02-24 09:23:33', '2024-02-24 09:23:33'),
(7, 'CEO', 1, NULL, 1, '2024-02-24 09:24:11', '2024-02-24 09:24:11'),
(8, 'CTO', 1, NULL, 1, '2024-02-24 09:24:19', '2024-02-24 09:24:19'),
(9, 'Junior Software Developer', 1, NULL, 1, '2024-02-24 09:25:04', '2024-02-24 09:25:04'),
(10, 'Principal Software Engineer', 1, NULL, 1, '2024-02-24 09:25:31', '2024-02-24 09:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `enrolles`
--

CREATE TABLE `enrolles` (
  `id` bigint UNSIGNED NOT NULL,
  `schedule_id` int NOT NULL,
  `trainee_id` int NOT NULL,
  `certificate_no` bigint UNSIGNED DEFAULT NULL,
  `enroll_date` date NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolles`
--

INSERT INTO `enrolles` (`id`, `schedule_id`, `trainee_id`, `certificate_no`, `enroll_date`, `note`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 15, '2024-02-19', 'Note', 1, 1, 1, '2024-02-19 14:06:34', '2024-02-29 10:47:02'),
(3, 1, 3, 14, '2024-02-14', 'Note', 1, 1, 1, '2024-02-19 14:09:46', '2024-02-29 10:46:55'),
(5, 1, 9, 13, '1972-02-29', 'Soluta id aspernatur', 1, 1, 1, '2024-02-22 07:53:48', '2024-02-29 10:46:51'),
(6, 1, 6, 12, '1973-08-09', 'Aute mollit possimus', 1, 1, 1, '2024-02-22 07:53:58', '2024-02-29 10:46:46'),
(7, 1, 8, 11, '1970-02-25', 'Dolorem adipisci nos', 1, 1, 1, '2024-02-22 07:54:24', '2024-02-29 10:46:41'),
(8, 1, 11, 10, '2013-10-31', 'Similique officia du', 1, 1, 1, '2024-02-22 07:55:22', '2024-02-29 10:46:35'),
(9, 1, 12, 9, '1978-09-17', 'Sunt ea hic occaeca', 1, 1, 1, '2024-02-22 07:55:53', '2024-02-29 10:46:30'),
(10, 1, 7, 8, '2024-02-22', 'Adipisicing voluptat', 1, 1, 1, '2024-02-22 07:57:17', '2024-02-29 10:46:25'),
(11, 1, 10, 7, '2006-09-30', 'Porro cupidatat aut', 1, 1, 1, '2024-02-22 07:58:10', '2024-02-29 10:46:18'),
(12, 1, 13, 6, '2024-02-22', 'Note', 1, 1, 1, '2024-02-22 08:01:16', '2024-02-29 10:46:11'),
(13, 2, 2, 5, '2024-02-22', 'Note', 1, 1, 1, '2024-02-22 11:44:11', '2024-02-29 10:46:06'),
(15, 1, 2, 4, '2024-02-27', NULL, 1, 1, 1, '2024-02-27 06:26:19', '2024-02-29 10:46:03'),
(16, 1, 6, 3, '2024-02-27', NULL, 1, 1, 1, '2024-02-27 06:26:19', '2024-02-29 10:45:56'),
(17, 1, 8, NULL, '2024-02-27', NULL, 0, 1, 1, '2024-02-27 06:26:19', '2024-02-27 06:58:39'),
(18, 1, 9, NULL, '2024-02-27', NULL, 0, 1, 1, '2024-02-27 06:26:19', '2024-02-27 06:58:31'),
(20, 1, 2, NULL, '2024-02-29', 'Note', 0, 1, 1, '2024-02-27 06:51:01', '2024-02-27 06:58:27'),
(21, 5, 3, 2, '2024-02-29', 'Note', 1, 1, 1, '2024-02-29 06:59:17', '2024-02-29 10:45:51'),
(23, 5, 10, 17, '2024-02-29', NULL, 1, 1, 1, '2024-02-29 06:59:17', '2024-02-29 11:05:26'),
(24, 5, 12, 1, '2024-02-29', NULL, 1, 1, 1, '2024-02-29 06:59:17', '2024-02-29 10:45:47'),
(25, 5, 7, 16, '2024-02-29', NULL, 1, 1, 1, '2024-02-29 06:59:17', '2024-02-29 10:48:41'),
(26, 2, 3, 18, '2024-03-06', NULL, 1, 1, NULL, '2024-03-06 12:28:36', '2024-03-06 12:28:36'),
(27, 2, 6, 19, '2024-03-06', NULL, 1, 1, NULL, '2024-03-06 12:28:36', '2024-03-06 12:28:36'),
(28, 6, 14, 20, '2024-03-09', NULL, 1, 1, NULL, '2024-03-09 05:36:48', '2024-03-09 05:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint UNSIGNED NOT NULL,
  `schedule_id` int NOT NULL,
  `evaluation_date` date NOT NULL,
  `total_marks` int NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`id`, `schedule_id`, `evaluation_date`, `total_marks`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-02-21', 100, 1, 1, '2024-02-22 13:54:36', '2024-02-22 13:55:28'),
(2, 2, '2024-02-22', 100, 1, NULL, '2024-02-22 13:55:11', '2024-02-22 13:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_details`
--

CREATE TABLE `evaluation_details` (
  `id` bigint UNSIGNED NOT NULL,
  `evaluation_id` int NOT NULL,
  `enroll_id` int NOT NULL,
  `obtain_marks` int NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evaluation_details`
--

INSERT INTO `evaluation_details` (`id`, `evaluation_id`, `enroll_id`, `obtain_marks`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 90, 'Excellent', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(2, 1, 3, 80, 'Excellent', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(3, 1, 5, 80, 'Excellent', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(4, 1, 6, 70, 'Good', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(5, 1, 7, 60, 'Good', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(6, 1, 8, 80, 'Excellent', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(7, 1, 9, 50, 'Fair', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(8, 1, 10, 60, 'Good', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(9, 1, 11, 70, 'Good', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(10, 1, 12, 99, 'Excellent', '2024-02-22 13:54:36', '2024-02-22 13:54:36'),
(11, 2, 13, 70, 'Good', '2024-02-22 13:55:11', '2024-02-22 13:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `expense_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_id` int NOT NULL,
  `expense_date` date NOT NULL,
  `total_expense` double(20,2) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_no`, `schedule_id`, `expense_date`, `total_expense`, `note`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, '123456', 1, '2024-02-20', 5500.00, NULL, 1, 1, 1, '2024-02-25 12:14:05', '2024-02-25 12:52:48'),
(2, '123457', 2, '2024-02-26', 1080.00, 'Note', 1, 1, 1, '2024-02-25 12:25:18', '2024-02-25 12:52:18'),
(3, '54455', 2, '2024-02-22', 2652.00, 'Nothing', 1, 1, 1, '2024-02-25 12:53:23', '2024-02-25 13:04:15'),
(6, '43543', 1, '2024-02-13', 2025.00, 'Nothing', 1, 1, NULL, '2024-02-25 13:04:02', '2024-02-25 13:04:02'),
(7, '45657', 5, '2023-01-01', 20000.00, NULL, 1, 1, 1, '2024-03-09 05:23:21', '2024-03-09 05:29:25'),
(8, '5678957', 6, '2024-03-21', 10000.00, NULL, 1, 1, NULL, '2024-03-09 05:32:24', '2024-03-09 05:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `expense_details`
--

CREATE TABLE `expense_details` (
  `id` bigint UNSIGNED NOT NULL,
  `expense_id` int NOT NULL,
  `expense_head_id` int NOT NULL,
  `unit_price` double(20,2) NOT NULL,
  `quantity` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_details`
--

INSERT INTO `expense_details` (`id`, `expense_id`, `expense_head_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 2, 2, 90.00, 12.00, '2024-02-25 12:52:18', '2024-02-25 12:52:18'),
(9, 1, 1, 20.00, 100.00, '2024-02-25 12:52:48', '2024-02-25 12:52:48'),
(10, 1, 2, 50.00, 70.00, '2024-02-25 12:52:48', '2024-02-25 12:52:48'),
(16, 6, 1, 45.00, 45.00, '2024-02-25 13:04:02', '2024-02-25 13:04:02'),
(17, 3, 1, 34.00, 44.00, '2024-02-25 13:04:15', '2024-02-25 13:04:15'),
(18, 3, 2, 34.00, 34.00, '2024-02-25 13:04:15', '2024-02-25 13:04:15'),
(20, 7, 1, 20.00, 1000.00, '2024-03-09 05:29:25', '2024-03-09 05:29:25'),
(21, 8, 5, 2500.00, 4.00, '2024-03-09 05:32:24', '2024-03-09 05:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `expense_heads`
--

CREATE TABLE `expense_heads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_heads`
--

INSERT INTO `expense_heads` (`id`, `title`, `code`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Employe Salary', 'ES', 1, 1, 1, '2024-02-25 06:17:06', '2024-02-25 06:18:13'),
(2, 'Official Cost', 'OC', 1, 1, 1, '2024-02-25 06:17:26', '2024-02-25 06:19:33'),
(5, 'Others', 'ot', 1, 1, NULL, '2024-02-25 12:54:36', '2024-02-25 12:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `child_id` int NOT NULL DEFAULT '0',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `child_id`, `menu_name`, `route`, `created_at`, `updated_at`) VALUES
(1, 0, -1, 'Dashboard', 'dashboard.index', NULL, NULL),
(3, 1, -1, 'Total Sales', NULL, NULL, NULL),
(4, 1, -1, 'Total Orders', NULL, NULL, NULL),
(5, 1, -1, 'New Orders', NULL, NULL, NULL),
(6, 1, -1, 'Pending Orders', NULL, NULL, NULL),
(7, 1, -1, 'Total Products', NULL, NULL, NULL),
(8, 1, -1, 'Active Products', NULL, NULL, NULL),
(9, 1, -1, 'Total Customers', NULL, NULL, NULL),
(10, 1, -1, 'New Customers', NULL, NULL, NULL),
(11, 1, -1, 'Latest Orders', NULL, NULL, NULL),
(12, 0, -1, 'Basic Info Manage', 'basic-infos.index', NULL, NULL),
(13, 12, 0, 'Edit', 'basic-infos.edit', NULL, NULL),
(14, 0, -1, 'Admin', NULL, NULL, NULL),
(15, 14, 0, 'Role Manage', 'roles.index', NULL, NULL),
(16, -1, 15, 'Add', 'roles.create', NULL, NULL),
(17, -1, 15, 'Edit', 'roles.edit', NULL, NULL),
(18, -1, 15, 'Delete', 'roles.destroy', NULL, NULL),
(19, 14, 0, 'Admin Manage', 'admins.index', NULL, NULL),
(20, -1, 19, 'Add', 'admins.create', NULL, NULL),
(21, -1, 19, 'Edit', 'admins.edit', NULL, NULL),
(22, -1, 19, 'Delete', 'admins.destroy', NULL, NULL),
(23, 0, -1, 'Settings', NULL, NULL, NULL),
(26, 23, -1, 'Update Password', 'admins.update.password', NULL, NULL),
(27, 23, -1, 'Update Details', 'admins.update.details', NULL, NULL),
(28, 0, -1, 'Catalogue Manage', NULL, NULL, NULL),
(29, 28, -1, 'Category', 'categories.index', NULL, NULL),
(30, -1, 29, 'Add', 'categories.create', NULL, NULL),
(31, -1, 29, 'Edit', 'categories.edit', NULL, NULL),
(32, -1, 29, 'Delete', 'categories.destroy', NULL, NULL),
(33, 28, -1, 'Sub Category', 'sub-categories.index', NULL, NULL),
(34, -1, 33, 'Add', 'sub-categories.create', NULL, NULL),
(35, -1, 33, 'Edit', 'sub-categories.edit', NULL, NULL),
(36, -1, 33, 'Delete', 'sub-categories.destroy', NULL, NULL),
(38, 28, -1, 'Sub Child', 'sub-child.index', NULL, NULL),
(39, -1, 38, 'Add', 'sub-child.create', NULL, NULL),
(40, -1, 38, 'Edit', 'sub-child.edit', NULL, NULL),
(41, -1, 38, 'Delete', 'sub-child.destroy', NULL, NULL),
(42, 28, -1, 'Color', 'colors.index', NULL, NULL),
(43, -1, 42, 'Add', 'colors.create', NULL, NULL),
(44, -1, 42, 'Edit', 'colors.edit', NULL, NULL),
(45, -1, 42, 'Delete', 'colors.destroy', NULL, NULL),
(46, 28, -1, 'Product', 'products.index', NULL, NULL),
(47, -1, 46, 'Add', 'products.create', NULL, NULL),
(48, -1, 46, 'Edit', 'products.edit', NULL, NULL),
(49, -1, 46, 'Delete', 'products.destroy', NULL, NULL),
(50, 0, -1, 'Order Manage', 'orders.index', NULL, NULL),
(51, 50, -1, 'Edit', 'orders.edit', NULL, NULL),
(52, 50, -1, 'Print', 'orders.print', NULL, NULL),
(53, 0, -1, 'Customer Manage', 'customers.index', NULL, NULL),
(54, 0, -1, 'Today\'s Deal Manage', 'deals.index', NULL, NULL),
(55, 54, 0, 'Add', 'deals.create', NULL, NULL),
(56, 54, 0, 'Edit', 'deals.edit', NULL, NULL),
(57, 54, 0, 'Delete', 'deals.destroy', NULL, NULL),
(58, 0, -1, 'Home Feature Manage', 'home-features.index', NULL, NULL),
(59, 58, 0, 'Edit', 'home-features.edit', NULL, NULL),
(60, 0, -1, ' Blog Category Manage', 'blog-category.index', NULL, NULL),
(61, 60, 0, 'Add', 'blog-category.create', NULL, NULL),
(62, 60, 0, 'Edit', 'blog-category.edit', NULL, NULL),
(63, 60, 0, 'Delete', 'blog-category.destroy', NULL, NULL),
(64, 0, -1, 'Blog Manage', 'blogs.index', NULL, NULL),
(65, 64, 0, 'Add', 'blogs.create', NULL, NULL),
(66, 64, 0, 'Edit', 'blogs.edit', NULL, NULL),
(67, 64, 0, 'Delete', 'blogs.destroy', NULL, NULL),
(68, 0, -1, 'About Us Manage', 'about-us.index', NULL, NULL),
(69, 68, 0, 'Edit', 'about-us.edit', NULL, NULL),
(70, 0, 0, 'Slider Manage', 'sliders.index', NULL, NULL),
(71, 70, 0, 'Add', 'sliders.create', NULL, NULL),
(72, 70, 0, 'Edit', 'sliders.edit', NULL, NULL),
(73, 70, 0, 'Delete', 'sliders.destroy', NULL, NULL),
(74, 0, 0, 'Review Manage', 'reviews.index', NULL, NULL),
(75, 74, 0, 'Edit', 'reviews.edit', NULL, NULL),
(76, 0, 0, 'Coupons Manage', 'coupons_manage.index', NULL, NULL),
(77, 76, 0, 'Add', 'coupons_manage.create', NULL, NULL),
(78, 76, 0, 'Edit', 'coupons_manage.edit', NULL, NULL),
(79, 76, 0, 'Delete', 'coupons_manage.destroy', NULL, NULL),
(80, 0, 0, 'Message Manage', 'messages.index', NULL, NULL),
(81, 80, 0, 'Status', 'messages.status', NULL, NULL),
(82, 80, 0, 'Delete', 'messages.destroy', NULL, NULL),
(83, 0, 0, 'Service Manage', 'services.index', NULL, NULL),
(84, 83, 0, 'Add', 'services.create', NULL, NULL),
(85, 83, 0, 'Edit', 'services.edit', NULL, NULL),
(86, 83, 0, 'Delete', 'services.destroy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2023_10_21_001204_create_basic_infos_table', 2),
(44, '2023_12_26_114309_create_admins_table', 9),
(48, '2014_10_12_000000_create_users_table', 12),
(80, '2024_01_24_143300_create_basic_info_translations_table', 31),
(81, '2024_01_30_123321_create_roles_table', 32),
(82, '2024_01_30_123933_create_privileges_table', 33),
(83, '2024_01_30_140322_create_menus_table', 33),
(84, '2024_02_18_073857_create_trainees_table', 34),
(85, '2024_02_18_073855_create_trainers_table', 35),
(87, '2024_02_18_141853_create_departments_table', 37),
(88, '2024_02_18_151618_create_designations_table', 38),
(89, '2024_02_18_073852_create_schedules_table', 39),
(90, '2024_02_18_073853_create_batches_table', 40),
(91, '2024_02_18_073851_create_enrolles_table', 41),
(92, '2024_02_18_073854_create_attendances_table', 42),
(93, '2024_02_22_161016_create_evaluations_table', 43),
(94, '2024_02_22_162427_create_evaluation_details_table', 43),
(95, '2024_02_18_073856_create_courses_table', 44),
(96, '2024_02_25_120043_create_expense_heads_table', 45),
(97, '2024_02_25_122743_create_expenses_table', 46),
(98, '2024_02_25_123102_create_expense_details_table', 46),
(99, '2024_03_10_132750_create_task_types_table', 47),
(100, '2024_03_10_133028_create_task_type_details_table', 47),
(101, '2024_03_10_163641_create_tasks_table', 48),
(104, '2024_03_12_102628_create_task_details_dependencies_table', 50),
(105, '2024_03_10_163809_create_task_details_table', 51);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(458, 4, 28, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(459, 4, 29, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(460, 4, 30, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(461, 4, 31, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(462, 4, 32, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(463, 4, 33, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(464, 4, 34, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(465, 4, 35, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(466, 4, 36, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(467, 4, 38, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(468, 4, 39, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(469, 4, 40, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(470, 4, 41, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(471, 4, 42, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(472, 4, 43, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(473, 4, 44, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(474, 4, 45, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(475, 4, 46, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(476, 4, 47, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(477, 4, 48, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(478, 4, 49, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(479, 4, 1, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(501, 2, 1, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(502, 2, 28, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(503, 2, 46, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(504, 2, 47, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(505, 2, 48, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(506, 2, 49, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(513, 5, 1, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(514, 5, 23, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(515, 5, 26, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(516, 5, 27, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(517, 5, 28, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(518, 5, 46, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(519, 5, 47, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(520, 5, 48, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(521, 5, 49, '2024-01-31 13:16:03', '2024-01-31 13:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` int NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_by`, `role`, `created_at`, `updated_at`) VALUES
(2, 1, 'Publish', '2024-01-31 06:31:11', '2024-03-13 05:00:25'),
(4, 1, 'PDF', '2024-01-31 08:00:27', '2024-03-13 05:00:13'),
(5, 1, 'Image', '2024-01-31 11:34:05', '2024-03-13 05:00:08'),
(6, 1, 'Script', '2024-03-10 07:13:24', '2024-03-13 05:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `batch_id` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `week_days` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `result_entry` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `batch_id`, `start_time`, `end_time`, `week_days`, `start_date`, `end_date`, `result_entry`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 6, '01:20:00', '18:25:00', '1,3,4', '2023-02-01', '2024-03-30', 1, 1, 1, 1, '2024-02-19 12:27:41', '2024-03-06 05:54:38'),
(2, 1, '10:00:00', '18:00:00', '0,3,4', '2024-02-06', '2024-03-22', 1, 1, 1, 1, '2024-02-19 13:06:55', '2024-03-06 05:54:30'),
(5, 2, '10:00:00', '13:00:00', '0,4,5', '2024-02-28', '2024-03-31', 0, 1, 1, 1, '2024-02-29 06:57:41', '2024-02-29 09:19:26'),
(6, 5, '11:30:00', '23:30:00', '0,1,3', '2024-03-09', '2024-03-31', 0, 1, 1, NULL, '2024-03-09 05:31:04', '2024-03-09 05:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `task_type_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_type_id`, `name`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Task - 1', 1, 1, NULL, '2024-03-14 09:28:11', '2024-03-14 10:07:29'),
(7, 1, 'Task - 3', 1, 1, NULL, '2024-03-16 06:19:45', '2024-03-16 08:20:49'),
(10, 6, 'Task - 4', 1, 1, NULL, '2024-03-16 06:54:36', '2024-03-16 06:58:14'),
(11, 1, 'Task - 6', 0, 1, NULL, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(13, 1, 'Task - 8', 0, 1, NULL, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(14, 1, 'Test', 0, 1, NULL, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(15, 6, 'Task - 2323', 0, 1, NULL, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(16, 1, 'Task w-032', 0, 1, NULL, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(17, 6, 'tyujygj', 0, 1, NULL, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(18, 9, 'Book Building - 1', 0, 1, NULL, '2024-07-25 09:58:45', '2024-07-25 09:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `task_details`
--

CREATE TABLE `task_details` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `task_type_id` int NOT NULL,
  `task_type_detais_id` int NOT NULL,
  `task_section_id` int NOT NULL,
  `task_section_value` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_details`
--

INSERT INTO `task_details` (`id`, `task_id`, `task_type_id`, `task_type_detais_id`, `task_section_id`, `task_section_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 6, 25, 1, '2024-03-14 09:28:11', '2024-03-14 09:49:15'),
(2, 1, 1, 2, 5, 25, 1, '2024-03-14 09:28:11', '2024-03-14 10:00:39'),
(3, 1, 1, 3, 4, 25, 1, '2024-03-14 09:28:11', '2024-03-14 10:02:49'),
(4, 1, 1, 4, 2, 25, 1, '2024-03-14 09:28:11', '2024-03-14 10:07:29'),
(23, 7, 1, 1, 6, 25, 1, '2024-03-16 06:19:45', '2024-03-16 06:20:58'),
(24, 7, 1, 2, 5, 25, 1, '2024-03-16 06:19:45', '2024-03-16 06:21:49'),
(25, 7, 1, 3, 4, 25, 1, '2024-03-16 06:19:45', '2024-03-16 06:22:42'),
(26, 7, 1, 4, 2, 25, 1, '2024-03-16 06:19:45', '2024-03-16 08:20:49'),
(34, 10, 6, 13, 6, 30, 1, '2024-03-16 06:54:36', '2024-03-16 06:55:02'),
(35, 10, 6, 14, 4, 30, 1, '2024-03-16 06:54:36', '2024-03-16 06:55:52'),
(36, 10, 6, 15, 2, 40, 1, '2024-03-16 06:54:36', '2024-03-16 06:58:14'),
(37, 11, 1, 1, 6, 25, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(38, 11, 1, 2, 5, 25, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(39, 11, 1, 3, 4, 25, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(40, 11, 1, 4, 2, 25, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(45, 13, 1, 1, 6, 25, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(46, 13, 1, 2, 5, 25, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(47, 13, 1, 3, 4, 25, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(48, 13, 1, 4, 2, 25, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(49, 14, 1, 1, 6, 25, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(50, 14, 1, 2, 5, 25, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(51, 14, 1, 3, 4, 25, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(52, 14, 1, 4, 2, 25, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(53, 15, 6, 13, 6, 30, 0, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(54, 15, 6, 14, 4, 30, 0, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(55, 15, 6, 15, 2, 40, 0, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(56, 16, 1, 1, 6, 25, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(57, 16, 1, 2, 5, 25, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(58, 16, 1, 3, 4, 25, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(59, 16, 1, 4, 2, 25, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(60, 17, 6, 13, 6, 30, 0, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(61, 17, 6, 14, 4, 30, 0, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(62, 17, 6, 15, 2, 40, 0, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(63, 18, 9, 19, 6, 25, 0, '2024-07-25 09:58:45', '2024-07-25 09:58:45'),
(64, 18, 9, 20, 2, 75, 0, '2024-07-25 09:58:45', '2024-07-25 09:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `task_details_dependencies`
--

CREATE TABLE `task_details_dependencies` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `task_details_id` int NOT NULL,
  `task_type_id` int NOT NULL,
  `task_type_detais_id` int NOT NULL,
  `task_section_id` int NOT NULL,
  `received_by` int DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `shown_status` tinyint NOT NULL DEFAULT '0',
  `completion_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_details_dependencies`
--

INSERT INTO `task_details_dependencies` (`id`, `task_id`, `task_details_id`, `task_type_id`, `task_type_detais_id`, `task_section_id`, `received_by`, `received_at`, `completed_at`, `shown_status`, `completion_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 6, 6, '2024-03-14 03:49:11', '2024-03-14 03:49:15', 1, 1, '2024-03-14 09:28:11', '2024-03-14 09:49:15'),
(2, 1, 2, 1, 2, 6, 5, '2024-03-14 03:49:41', '2024-03-14 04:00:39', 1, 1, '2024-03-14 09:28:11', '2024-03-14 10:00:39'),
(3, 1, 3, 1, 3, 5, 4, '2024-03-14 04:02:31', '2024-03-14 04:02:33', 1, 1, '2024-03-14 09:28:11', '2024-03-14 10:02:33'),
(4, 1, 3, 1, 3, 6, 4, '2024-03-14 04:02:40', '2024-03-14 04:02:49', 1, 1, '2024-03-14 09:28:11', '2024-03-14 10:02:49'),
(5, 1, 4, 1, 4, 4, 2, '2024-03-14 04:07:26', '2024-03-14 04:07:29', 1, 1, '2024-03-14 09:28:11', '2024-03-14 10:07:29'),
(27, 7, 23, 1, 1, 6, 6, '2024-03-16 12:20:47', '2024-03-16 12:20:58', 1, 1, '2024-03-16 06:19:45', '2024-03-16 06:20:58'),
(28, 7, 24, 1, 2, 6, 5, '2024-03-16 12:21:41', '2024-03-16 12:21:49', 1, 1, '2024-03-16 06:19:45', '2024-03-16 06:21:49'),
(29, 7, 25, 1, 3, 5, 4, '2024-03-16 12:22:30', '2024-03-16 12:22:34', 1, 1, '2024-03-16 06:19:45', '2024-03-16 06:22:34'),
(30, 7, 25, 1, 3, 6, 4, '2024-03-16 12:22:36', '2024-03-16 12:22:42', 1, 1, '2024-03-16 06:19:45', '2024-03-16 06:22:42'),
(31, 7, 26, 1, 4, 4, 2, '2024-03-16 02:20:47', '2024-03-16 02:20:49', 1, 1, '2024-03-16 06:19:45', '2024-03-16 08:20:49'),
(40, 10, 34, 6, 13, 6, 6, '2024-03-16 12:54:58', '2024-03-16 12:55:02', 1, 1, '2024-03-16 06:54:36', '2024-03-16 06:55:02'),
(41, 10, 35, 6, 14, 6, 4, '2024-03-16 12:55:50', '2024-03-16 12:55:52', 1, 1, '2024-03-16 06:54:36', '2024-03-16 06:55:52'),
(42, 10, 36, 6, 15, 4, 2, '2024-03-16 12:58:11', '2024-03-16 12:58:14', 1, 1, '2024-03-16 06:54:36', '2024-03-16 06:58:14'),
(43, 11, 37, 1, 1, 6, NULL, NULL, NULL, 1, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(44, 11, 38, 1, 2, 6, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(45, 11, 39, 1, 3, 5, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(46, 11, 39, 1, 3, 6, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(47, 11, 40, 1, 4, 4, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:27', '2024-03-16 08:24:27'),
(53, 13, 45, 1, 1, 6, NULL, NULL, NULL, 1, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(54, 13, 46, 1, 2, 6, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(55, 13, 47, 1, 3, 5, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(56, 13, 47, 1, 3, 6, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(57, 13, 48, 1, 4, 4, NULL, NULL, NULL, 0, 0, '2024-03-16 08:24:53', '2024-03-16 08:24:53'),
(58, 14, 49, 1, 1, 6, NULL, NULL, NULL, 1, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(59, 14, 50, 1, 2, 6, NULL, NULL, NULL, 0, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(60, 14, 51, 1, 3, 5, NULL, NULL, NULL, 0, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(61, 14, 51, 1, 3, 6, NULL, NULL, NULL, 0, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(62, 14, 52, 1, 4, 4, NULL, NULL, NULL, 0, 0, '2024-03-18 08:53:01', '2024-03-18 08:53:01'),
(63, 15, 53, 6, 13, 6, NULL, NULL, NULL, 1, 0, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(64, 15, 54, 6, 14, 6, NULL, NULL, NULL, 0, 0, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(65, 15, 55, 6, 15, 4, NULL, NULL, NULL, 0, 0, '2024-03-18 08:53:47', '2024-03-18 08:53:47'),
(66, 16, 56, 1, 1, 6, NULL, NULL, NULL, 1, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(67, 16, 57, 1, 2, 6, NULL, NULL, NULL, 0, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(68, 16, 58, 1, 3, 5, NULL, NULL, NULL, 0, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(69, 16, 58, 1, 3, 6, NULL, NULL, NULL, 0, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(70, 16, 59, 1, 4, 4, NULL, NULL, NULL, 0, 0, '2024-03-18 08:54:09', '2024-03-18 08:54:09'),
(71, 17, 60, 6, 13, 6, NULL, NULL, NULL, 1, 0, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(72, 17, 61, 6, 14, 6, NULL, NULL, NULL, 0, 0, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(73, 17, 62, 6, 15, 4, NULL, NULL, NULL, 0, 0, '2024-03-18 08:54:23', '2024-03-18 08:54:23'),
(74, 18, 63, 9, 19, 5, NULL, NULL, NULL, 0, 0, '2024-07-25 09:58:45', '2024-07-25 09:58:45'),
(75, 18, 63, 9, 19, 4, NULL, NULL, NULL, 0, 0, '2024-07-25 09:58:45', '2024-07-25 09:58:45'),
(76, 18, 64, 9, 20, 2, NULL, NULL, NULL, 1, 0, '2024-07-25 09:58:45', '2024-07-25 09:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `task_types`
--

CREATE TABLE `task_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_types`
--

INSERT INTO `task_types` (`id`, `name`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 'TT-1', 1, 1, 1, '2024-03-11 12:52:35', '2024-03-12 08:29:49'),
(6, 'TT-2', 1, 1, 1, '2024-03-16 06:51:59', '2024-03-16 06:52:17'),
(9, 'Book Building - 1', 1, 1, NULL, '2024-07-25 09:58:34', '2024-07-25 09:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `task_type_details`
--

CREATE TABLE `task_type_details` (
  `id` bigint UNSIGNED NOT NULL,
  `task_type_id` int NOT NULL,
  `section_id` int NOT NULL,
  `next_section_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dependency_section_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_value` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_type_details`
--

INSERT INTO `task_type_details` (`id`, `task_type_id`, `section_id`, `next_section_ids`, `dependency_section_ids`, `section_value`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '5,4', '6', 25, '2024-03-11 12:52:35', '2024-03-12 08:29:49'),
(2, 1, 5, '4', '6', 25, '2024-03-11 12:52:35', '2024-03-12 08:29:49'),
(3, 1, 4, '2', '5,6', 25, '2024-03-11 12:52:35', '2024-03-12 08:29:49'),
(4, 1, 2, '0', '4', 25, '2024-03-11 12:52:35', '2024-03-12 08:29:49'),
(5, 2, 6, '5,4', '6', 33, '2024-03-12 08:27:15', '2024-03-16 05:03:11'),
(6, 2, 5, '4', '6', 33, '2024-03-12 08:27:15', '2024-03-16 05:03:11'),
(7, 2, 4, '0', '4', 34, '2024-03-12 08:27:15', '2024-03-16 05:03:11'),
(8, 3, 5, '5', '4', 50, '2024-03-16 05:17:37', '2024-03-16 05:17:37'),
(9, 3, 4, '0', '4', 50, '2024-03-16 05:17:37', '2024-03-16 05:17:37'),
(10, 4, 5, '5', '4', 50, '2024-03-16 05:17:37', '2024-03-16 05:17:37'),
(11, 4, 4, '0', '4', 50, '2024-03-16 05:17:37', '2024-03-16 05:17:37'),
(12, 5, 5, '5', '4', 100, '2024-03-16 06:37:05', '2024-03-16 06:37:05'),
(13, 6, 6, '4', '6', 30, '2024-03-16 06:51:59', '2024-03-16 06:52:17'),
(14, 6, 4, '2', '6', 30, '2024-03-16 06:51:59', '2024-03-16 06:52:17'),
(15, 6, 2, '0', '4', 40, '2024-03-16 06:51:59', '2024-03-16 06:52:17'),
(16, 7, 5, '6', '4', 100, '2024-03-16 09:06:46', '2024-03-16 09:06:46'),
(17, 8, 5, '5', '4', 50, '2024-03-16 09:10:26', '2024-03-16 09:10:26'),
(18, 8, 2, '0', '6', 50, '2024-03-16 09:10:26', '2024-03-16 09:10:26'),
(19, 9, 6, '6', '5,4', 25, '2024-07-25 09:58:34', '2024-07-25 09:58:34'),
(20, 9, 2, '0', '2', 75, '2024-07-25 09:58:34', '2024-07-25 09:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`id`, `name`, `department_id`, `designation_id`, `joining_date`, `phone`, `email`, `sex`, `address`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(2, 'Nowab Shorif', '2', '2', '2024-02-19', '+8801839317038', 'malekazad@gmail.com', 'Male', 'Companygonj, Noakhali.', 1, 1, 1, '2024-02-19 06:34:30', '2024-02-19 06:37:54'),
(3, 'Malek Azad', '1', '2', '2024-02-19', '+8801839317038', 'nsanoman@gmail.com', 'Male', 'Companygonj, Noakhali.', 1, 1, NULL, '2024-02-19 06:37:31', '2024-02-19 06:37:31'),
(5, 'Carolyn Hinton', '2', '3', '2006-03-28', '+1 (987) 512-7114', 'vofatedag@mailinator.com', 'Male', 'Ex exercitation ipsa', 1, 1, NULL, '2024-02-22 07:51:08', '2024-02-22 07:51:08'),
(6, 'Demetria Coleman', '1', '2', '2010-01-14', '+1 (266) 562-5625', 'folyxa@mailinator.com', 'Female', 'Quas aut ex nihil mo', 1, 1, NULL, '2024-02-22 07:51:16', '2024-02-22 07:51:16'),
(7, 'Francesca Curtis', '2', '3', '1971-01-05', '+1 (701) 861-8567', 'gyvob@mailinator.com', 'Male', 'Elit Nam ea ad dolo', 1, 1, NULL, '2024-02-22 07:51:25', '2024-02-22 07:51:25'),
(8, 'Keely Colon', '1', '2', '1995-11-12', '+1 (149) 352-2585', 'kefax@mailinator.com', 'Male', 'Esse corrupti volup', 1, 1, NULL, '2024-02-22 07:51:32', '2024-02-22 07:51:32'),
(9, 'Harding Henderson', '1', '1', '1984-08-04', '+1 (313) 158-4179', 'mavycat@mailinator.com', 'Male', 'Magnam in quo tempor', 1, 1, NULL, '2024-02-22 07:51:44', '2024-02-22 07:51:44'),
(10, 'Victoria Howe', '2', '2', '1999-05-14', '+1 (686) 822-9055', 'vyvorecewi@mailinator.com', 'Male', 'Facere aliquip exerc', 1, 1, NULL, '2024-02-22 07:51:56', '2024-02-22 07:51:56'),
(11, 'Hector Reid', '2', '2', '1987-11-06', '+1 (329) 974-7478', 'bivyjulyvy@mailinator.com', 'Female', 'Est cupidatat dolore', 1, 1, NULL, '2024-02-22 07:52:07', '2024-02-22 07:52:07'),
(12, 'Ralph Roman', '1', '3', '1979-06-10', '+1 (773) 616-3485', 'xevuk@mailinator.com', 'Male', 'Nostrud maiores volu', 1, 1, NULL, '2024-02-22 07:52:23', '2024-02-22 07:52:23'),
(13, 'Hammett Ramos', '1', '1', '1983-01-22', '+1 (112) 862-6851', 'vapam@mailinator.com', 'Female', 'Rem sint minim volu', 1, 1, NULL, '2024-02-22 08:01:00', '2024-02-22 08:01:00'),
(14, 'Reese Greer', '9', '9', '1980-01-01', '+1 (277) 909-5874', 'xogizovajy@mailinator.com', 'Male', 'Ut accusamus accusan', 1, 1, NULL, '2024-03-09 05:36:17', '2024-03-09 05:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `work_experience` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `email`, `sex`, `address`, `education`, `work_experience`, `status`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Aman Ullah', '+8801839317038', 'aman@gmail.com', 'Male', 'Companygonj, Noakhali.', 'BSc in MT CGPA: 3.50 Passing year - 2024.', 'Software developer in SDL', 1, 1, 1, '2024-02-19 07:12:55', '2024-02-24 12:57:12'),
(2, 'Alexa', '+88018457657', 'alexa@gmail.com', 'Female', 'usa', 'BSc in MT CGPA: 3.50 Passing year - 2024.', 'Software developer in SDL', 1, 1, 1, '2024-02-19 07:17:14', '2024-02-24 12:56:54'),
(4, 'Shoriful', '+8801839317038', 'shoriful@gmail.com', 'Male', 'Companygonj, Noakhali.', 'BSc in MT CGPA: 3.50 Passing year - 2024.', 'Software developer in SDL', 1, 1, 1, '2024-02-19 09:49:51', '2024-02-24 12:56:32'),
(5, 'A', '+8801839317038', 'nsanoman@gmail.com', 'Male', 'Companygonj, Noakhali.', 'BSc in CSE CGPA: 3.50 Passing year - 2024.', 'Software developer in SDL', 1, 1, 1, '2024-02-24 12:47:21', '2024-02-24 12:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `google_id`, `facebook_id`, `phone`, `default_address`, `image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Malek Azad', 'admin@gmail.com', '$2y$10$nfBiU5lwi0SMVZQryw7YqeXOjO1D5fC.wrw8nyw9NSDS6T/MwxhI6', NULL, NULL, '01839317038', 'Companygonj, Noakhali.', '', NULL, NULL, NULL, '2024-01-24 09:45:33'),
(3, 'Nowab Shorif', 'nsanoman@gmail.com', '$2y$10$eadL0JnVW4Y/VSnnHqbA1.7KwQuarPcHvDXAYFM7eYVDR7N0z0MCy', NULL, NULL, '01839317038', 'Companygonj, Noakhali.', '', NULL, 'nkQUqfBv58y9RV4P1C4R3b1ZmgLb9cydgN11XpPibDSsiu17Z23oLRX9QgeV', '2024-01-02 12:59:51', '2024-01-29 10:15:29'),
(4, 'Nowab Shorif', 'noman@gmail.com', '$2y$10$oY8fbyLIFiPPAtT2EjNA5em9FZas8N.xgYG.veh0T98FRW.8OD.hG', NULL, NULL, '01839317038', 'Companygonj, Noakhali.', NULL, NULL, NULL, '2024-01-14 06:30:18', '2024-01-14 06:30:18'),
(5, 'Nowab Shorif', 'aman@gmail.com', '$2y$10$XYof07GT8QRRv0qaqPiZpu78Wsv5GP2AJR5Fs7WtzXHAgD49T8dI6', NULL, NULL, '234567890', 'Companygonj, Noakhali.', NULL, NULL, NULL, '2024-01-14 06:33:19', '2024-01-14 06:33:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_infos`
--
ALTER TABLE `basic_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info_translations`
--
ALTER TABLE `basic_info_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basic_info_translations_basic_info_id_locale_unique` (`basic_info_id`,`locale`),
  ADD KEY `basic_info_translations_locale_index` (`locale`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_symbols`
--
ALTER TABLE `currency_symbols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolles`
--
ALTER TABLE `enrolles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_no_2` (`certificate_no`),
  ADD UNIQUE KEY `certificate_no` (`certificate_no`) USING BTREE;

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_details`
--
ALTER TABLE `evaluation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_details`
--
ALTER TABLE `expense_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_details`
--
ALTER TABLE `task_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_details_dependencies`
--
ALTER TABLE `task_details_dependencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_types`
--
ALTER TABLE `task_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_type_details`
--
ALTER TABLE `task_type_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `basic_infos`
--
ALTER TABLE `basic_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_info_translations`
--
ALTER TABLE `basic_info_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `enrolles`
--
ALTER TABLE `enrolles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evaluation_details`
--
ALTER TABLE `evaluation_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expense_details`
--
ALTER TABLE `expense_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `expense_heads`
--
ALTER TABLE `expense_heads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `task_details`
--
ALTER TABLE `task_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `task_details_dependencies`
--
ALTER TABLE `task_details_dependencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `task_types`
--
ALTER TABLE `task_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `task_type_details`
--
ALTER TABLE `task_type_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `trainees`
--
ALTER TABLE `trainees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
