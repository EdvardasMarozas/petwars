-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 12:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petswar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'luhitigahu@mailinator.com', '$2b$10$U6gjauKNzH4geWF3DgdWgu3mydk.A83NwD0d/ZW2zoQhoVgKCaghe'),
(2, 'jonas@gmail.com', '$2b$10$zeFHuSvsN5Of1Dla8RAn3eV21/6avTuGlTaD3KDK1s4a4vcrzMoD2'),
(3, 'My2email@gmail.com', '$2b$10$KVl2Agl.e1kskPXlmNFYAeQ43qd0jZCqfCaGOty6zvVEMwY0MA2MC');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `ID` int(10) UNSIGNED NOT NULL,
  `species_ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(90) NOT NULL,
  `image` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`ID`, `species_ID`, `name`, `image`, `email`, `created_at`) VALUES
(1, 25, 'Whimsey', '6ada14_1.webp', 'yoka-bebosi53@aol.com', '2024-01-23 21:43:32'),
(2, 41, 'Valentina', '7bc3a6_2.webp', 'fil-ojasanu72@yahoo.com', '2024-01-24 23:03:52'),
(3, 47, 'Gary', '8e56a2_3.webp', 'mure_kuxeya71@outlook.com', '2024-01-24 23:05:54'),
(4, 26, 'Wanda', 'e766f1_4.webp', 'baberuf_uho67@outlook.com', '2024-01-21 22:16:31'),
(5, 46, 'Bubba', '0e3350_5.webp', 'lotebax-alo30@outlook.com', '2024-01-24 23:05:40'),
(7, 48, 'Alkura', '465209_7.webp', 'tonofu-tiba97@aol.com', '2024-01-24 23:06:12'),
(8, 28, 'Harambe', '48493e_8.webp', 'mat-inurubi52@outlook.com', '2024-01-21 22:24:11'),
(9, 58, 'Samui', '3467da_9.webp', 'ruzayuz_awu37@gmail.com', '2024-01-24 23:30:23'),
(10, 40, 'Jabbo', '07ccfc_10.webp', 'jemukuj_abi98@outlook.com', '2024-01-24 23:03:30'),
(11, 45, 'Quiffy', '4c8345_11.webp', 'mac-exegedi95@aol.com', '2024-01-24 23:05:22'),
(12, 59, 'Capper', 'feb7df_12.webp', 'kagi_denexo65@aol.com', '2024-01-24 23:31:10'),
(13, 32, 'Geisha', '923d46_13.webp', 'feze_somija7@gmail.com', '2024-01-22 22:26:12'),
(14, 44, 'Chandor', '95d99a_14.webp', 'getivil_idi14@mail.com', '2024-01-24 23:04:53'),
(15, 43, 'Quigley', 'f849bd_15.webp', 'netiso-rata28@outlook.com', '2024-01-24 23:04:28'),
(16, 29, 'Kendi', '95d79d_16.webp', 'yugiyi_luvo29@aol.com', '2024-01-21 22:24:53'),
(20, 42, 'Verona', '24f52a_20.webp', 'jeyadah_owe73@aol.com', '2024-01-24 23:04:16'),
(76, 28, 'Micheal', 'c5d29d_76.webp', 'ilovepets@gmail.com', '2024-01-21 22:24:11'),
(84, 42, 'bambukas', '47722e_84.webp', 'someemail@gmail.com', '2024-01-24 23:04:16'),
(88, 42, 'Stuart Rosales', '86dc79_88.webp', 'roqesu@mailinator.com', '2024-01-24 23:04:16'),
(92, 42, 'Carl', '276065_92.webp', 'syxufabe@mailinator.com', '2024-01-24 23:04:16'),
(100, 59, 'Adam Jordan', 'de3eee_100.webp', 'qyfileho@mailinator.com', '2024-01-24 23:31:10'),
(103, 40, 'Jake', '53e47d_103.webp', 'kagi_den@yahoo.com', '2024-01-24 23:03:30'),
(104, 58, 'Kojasto', 'b099f1_104.webp', 'sefysafa@yahoo.com', '2024-01-24 23:30:23'),
(105, 59, 'Liutukas', 'ace8e4_105.webp', 'kiiop123@gmail.com', '2024-01-24 23:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`ID`, `name`) VALUES
(19, 'ruoniuks'),
(25, 'goat'),
(26, 'tiger'),
(28, 'monkey'),
(29, 'weasel'),
(32, 'seal'),
(40, 'Hyena'),
(41, 'beaver'),
(42, 'fox'),
(43, 'frog'),
(44, 'Horse'),
(45, 'sheep'),
(46, 'racoon'),
(47, 'Bird'),
(48, 'Leamur'),
(58, 'Ežiukas'),
(59, 'Lion');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `ID` int(10) UNSIGNED NOT NULL,
  `pets1_ID` int(10) UNSIGNED NOT NULL,
  `pets2_ID` int(10) UNSIGNED NOT NULL,
  `result` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`ID`, `pets1_ID`, `pets2_ID`, `result`, `created_at`) VALUES
(85, 4, 15, '4', '2024-01-18 20:15:07'),
(86, 2, 7, '2', '2024-01-18 20:15:08'),
(87, 7, 1, '7', '2024-01-18 20:15:08'),
(88, 10, 3, '10', '2024-01-18 20:15:08'),
(90, 5, 3, '5', '2024-01-18 20:15:09'),
(91, 13, 12, '13', '2024-01-18 20:15:09'),
(93, 12, 14, '12', '2024-01-18 20:15:10'),
(94, 13, 10, '13', '2024-01-18 20:15:10'),
(95, 16, 4, '16', '2024-01-18 20:15:11'),
(96, 14, 15, '14', '2024-01-18 20:15:11'),
(98, 15, 76, '15', '2024-01-18 20:15:12'),
(99, 3, 11, '3', '2024-01-18 20:15:12'),
(100, 9, 12, '9', '2024-01-18 20:15:12'),
(102, 8, 2, '8', '2024-01-18 20:15:13'),
(103, 4, 8, '4', '2024-01-18 20:15:13'),
(105, 12, 5, '12', '2024-01-18 20:15:14'),
(106, 16, 20, '16', '2024-01-18 20:15:16'),
(108, 5, 8, '5', '2024-01-18 20:16:53'),
(109, 8, 10, '8', '2024-01-18 20:17:12'),
(110, 76, 3, '76', '2024-01-18 20:17:20'),
(111, 8, 1, '8', '2024-01-18 20:17:23'),
(112, 13, 76, '13', '2024-01-18 20:20:09'),
(113, 14, 76, '14', '2024-01-18 20:20:10'),
(114, 76, 13, '76', '2024-01-18 20:20:41'),
(116, 9, 76, '9', '2024-01-18 20:20:41'),
(117, 8, 16, '8', '2024-01-18 20:20:42'),
(118, 1, 8, '1', '2024-01-18 20:20:42'),
(119, 7, 11, '7', '2024-01-18 20:20:42'),
(121, 7, 14, '7', '2024-01-18 20:20:43'),
(122, 20, 3, '20', '2024-01-18 20:20:43'),
(124, 2, 76, '2', '2024-01-18 20:20:44'),
(125, 14, 10, '14', '2024-01-18 20:20:44'),
(126, 20, 76, '20', '2024-01-18 20:24:23'),
(127, 16, 3, '16', '2024-01-18 20:24:24'),
(128, 10, 7, '10', '2024-01-18 20:25:16'),
(129, 8, 4, '8', '2024-01-18 20:25:17'),
(130, 11, 16, '11', '2024-01-18 20:26:13'),
(131, 5, 76, '5', '2024-01-18 20:26:13'),
(132, 7, 8, '7', '2024-01-18 20:27:25'),
(135, 2, 8, '2', '2024-01-18 20:30:24'),
(136, 8, 15, '8', '2024-01-18 20:31:40'),
(137, 12, 11, '12', '2024-01-19 07:25:19'),
(138, 1, 8, '1', '2024-01-19 07:25:20'),
(139, 13, 20, '13', '2024-01-19 07:25:21'),
(140, 5, 13, '5', '2024-01-19 07:37:39'),
(143, 12, 11, '12', '2024-01-19 07:50:10'),
(144, 13, 11, '13', '2024-01-19 07:53:37'),
(146, 4, 3, '4', '2024-01-19 08:01:43'),
(147, 5, 14, '5', '2024-01-19 08:09:46'),
(149, 11, 76, '11', '2024-01-19 08:15:33'),
(150, 8, 3, '8', '2024-01-19 08:15:55'),
(151, 8, 11, '8', '2024-01-19 08:16:37'),
(152, 7, 5, '7', '2024-01-19 08:17:45'),
(153, 2, 12, '2', '2024-01-19 08:18:05'),
(155, 12, 3, '12', '2024-01-19 08:18:53'),
(156, 7, 8, '7', '2024-01-19 08:19:57'),
(157, 14, 3, '14', '2024-01-19 08:22:06'),
(158, 76, 8, '76', '2024-01-19 08:23:16'),
(160, 15, 3, '15', '2024-01-19 08:24:35'),
(161, 1, 5, '1', '2024-01-19 08:25:40'),
(162, 16, 7, '16', '2024-01-19 08:26:08'),
(163, 16, 4, '16', '2024-01-19 11:12:16'),
(164, 8, 7, '8', '2024-01-19 11:14:10'),
(165, 5, 4, '5', '2024-01-19 11:14:13'),
(166, 13, 1, '13', '2024-01-19 11:14:17'),
(167, 76, 7, '76', '2024-01-19 11:14:22'),
(169, 3, 13, '3', '2024-01-19 11:27:32'),
(170, 15, 2, '15', '2024-01-19 11:28:31'),
(171, 3, 12, 'draw', '2024-01-19 11:33:29'),
(172, 1, 11, '1', '2024-01-19 11:36:21'),
(173, 15, 20, '15', '2024-01-19 11:41:29'),
(174, 2, 3, '2', '2024-01-19 11:41:46'),
(175, 20, 76, '20', '2024-01-19 11:42:17'),
(176, 12, 10, '12', '2024-01-19 11:43:13'),
(178, 14, 9, 'draw', '2024-01-19 12:18:05'),
(179, 76, 8, 'draw', '2024-01-19 12:19:18'),
(180, 76, 10, 'draw', '2024-01-19 12:24:08'),
(181, 10, 76, '10', '2024-01-19 12:24:11'),
(182, 14, 10, '14', '2024-01-19 12:24:14'),
(184, 12, 13, 'draw', '2024-01-19 12:28:44'),
(185, 13, 12, '13', '2024-01-19 12:28:54'),
(186, 20, 8, '20', '2024-01-19 12:28:57'),
(187, 9, 3, '9', '2024-01-19 12:29:00'),
(188, 8, 7, 'draw', '2024-01-19 12:29:03'),
(189, 2, 15, 'draw', '2024-01-19 12:29:05'),
(191, 7, 9, 'draw', '2024-01-19 12:29:09'),
(192, 16, 13, 'draw', '2024-01-19 12:29:16'),
(193, 5, 4, 'draw', '2024-01-19 12:29:19'),
(194, 3, 76, 'draw', '2024-01-19 12:29:20'),
(195, 8, 76, 'draw', '2024-01-19 12:32:17'),
(196, 2, 13, 'draw', '2024-01-19 12:43:02'),
(197, 4, 15, 'draw', '2024-01-19 12:44:19'),
(199, 14, 4, '14', '2024-01-19 13:56:04'),
(202, 8, 7, '8', '2024-01-19 16:32:03'),
(205, 4, 16, '4', '2024-01-19 16:46:58'),
(206, 11, 7, 'draw', '2024-01-19 16:53:29'),
(208, 10, 12, '10', '2024-01-19 16:55:02'),
(209, 4, 76, '4', '2024-01-19 16:57:14'),
(210, 13, 12, 'draw', '2024-01-19 16:57:22'),
(211, 13, 10, 'draw', '2024-01-19 16:57:24'),
(212, 5, 15, '5', '2024-01-19 16:57:53'),
(213, 4, 9, '4', '2024-01-19 17:00:12'),
(214, 14, 5, 'draw', '2024-01-19 17:00:28'),
(218, 3, 76, '3', '2024-01-19 17:07:27'),
(219, 8, 11, '8', '2024-01-19 17:08:28'),
(220, 2, 13, '2', '2024-01-21 15:29:30'),
(224, 10, 20, '10', '2024-01-21 22:50:59'),
(225, 14, 7, 'draw', '2024-01-21 22:51:07'),
(226, 88, 8, 'draw', '2024-01-21 22:51:21'),
(228, 16, 13, 'draw', '2024-01-21 22:52:00'),
(232, 3, 84, '3', '2024-01-21 23:12:40'),
(233, 3, 5, '3', '2024-01-21 23:12:53'),
(236, 92, 20, '92', '2024-01-21 23:13:54'),
(237, 10, 3, '10', '2024-01-21 23:13:56'),
(238, 7, 76, '7', '2024-01-21 23:14:11'),
(239, 88, 1, '88', '2024-01-22 13:58:17'),
(246, 5, 14, 'draw', '2024-01-22 18:28:52'),
(251, 13, 8, 'draw', '2024-01-22 18:33:58'),
(252, 12, 100, 'draw', '2024-01-22 18:34:09'),
(253, 84, 2, 'draw', '2024-01-22 18:34:21'),
(254, 1, 76, 'draw', '2024-01-22 18:34:25'),
(255, 88, 12, 'draw', '2024-01-22 18:34:29'),
(260, 13, 1, 'draw', '2024-01-22 20:30:13'),
(272, 5, 3, 'draw', '2024-01-22 20:38:00'),
(273, 14, 2, 'draw', '2024-01-22 20:38:13'),
(274, 1, 8, 'draw', '2024-01-22 20:38:22'),
(275, 8, 11, '8', '2024-01-22 20:38:36'),
(276, 7, 9, 'draw', '2024-01-22 20:39:27'),
(278, 2, 3, 'draw', '2024-01-22 20:41:12'),
(279, 88, 8, 'draw', '2024-01-22 20:41:30'),
(280, 100, 76, 'draw', '2024-01-22 20:41:45'),
(281, 9, 14, 'draw', '2024-01-22 20:42:30'),
(285, 11, 5, 'draw', '2024-01-22 20:43:56'),
(286, 15, 8, 'draw', '2024-01-22 20:44:15'),
(287, 13, 16, 'draw', '2024-01-22 20:44:34'),
(288, 84, 16, '84', '2024-01-22 20:46:34'),
(289, 8, 100, '8', '2024-01-22 21:15:50'),
(290, 2, 13, '2', '2024-01-22 21:15:52'),
(291, 76, 20, '76', '2024-01-22 21:15:54'),
(292, 9, 20, '9', '2024-01-22 21:15:55'),
(293, 12, 88, '12', '2024-01-22 21:15:56'),
(295, 5, 7, '5', '2024-01-22 21:15:57'),
(296, 3, 76, '3', '2024-01-22 21:15:58'),
(299, 76, 84, '76', '2024-01-22 21:49:43'),
(300, 20, 16, '20', '2024-01-22 21:49:50'),
(303, 8, 7, 'draw', '2024-01-22 21:51:07'),
(304, 88, 9, 'draw', '2024-01-22 22:06:16'),
(305, 92, 7, 'draw', '2024-01-22 22:08:17'),
(306, 20, 12, 'draw', '2024-01-22 22:10:22'),
(308, 16, 84, 'draw', '2024-01-22 22:10:32'),
(309, 15, 3, 'draw', '2024-01-22 22:10:44'),
(311, 88, 1, 'draw', '2024-01-22 22:14:27'),
(312, 4, 16, '4', '2024-01-22 22:15:04'),
(316, 11, 3, 'draw', '2024-01-22 22:15:35'),
(317, 15, 2, 'draw', '2024-01-23 08:21:52'),
(320, 100, 20, 'draw', '2024-01-23 08:24:01'),
(325, 8, 11, 'draw', '2024-01-23 20:17:57'),
(326, 13, 14, 'draw', '2024-01-23 20:22:14'),
(329, 5, 10, 'draw', '2024-01-23 20:25:53'),
(330, 12, 8, 'draw', '2024-01-23 20:27:17'),
(331, 13, 92, 'draw', '2024-01-23 20:27:21'),
(334, 88, 5, 'draw', '2024-01-23 20:29:16'),
(339, 2, 100, 'draw', '2024-01-23 20:30:45'),
(341, 15, 92, 'draw', '2024-01-23 20:37:28'),
(342, 20, 12, 'draw', '2024-01-23 20:37:36'),
(343, 84, 12, 'draw', '2024-01-23 20:37:42'),
(348, 3, 8, 'draw', '2024-01-23 20:41:00'),
(350, 10, 8, 'draw', '2024-01-23 20:41:44'),
(351, 92, 2, 'draw', '2024-01-23 20:41:47'),
(352, 16, 4, 'draw', '2024-01-23 20:41:52'),
(354, 8, 92, 'draw', '2024-01-23 20:42:46'),
(355, 3, 1, 'draw', '2024-01-23 20:43:05'),
(357, 12, 20, 'draw', '2024-01-23 20:51:19'),
(358, 16, 92, 'draw', '2024-01-23 20:55:24'),
(359, 103, 11, 'draw', '2024-01-23 20:58:45'),
(360, 10, 92, 'draw', '2024-01-23 20:58:49'),
(361, 3, 12, 'draw', '2024-01-23 21:00:39'),
(363, 13, 5, 'draw', '2024-01-23 21:12:16'),
(364, 1, 104, 'draw', '2024-01-23 21:12:52'),
(365, 1, 104, 'draw', '2024-01-23 21:12:56'),
(366, 1, 104, 'draw', '2024-01-23 21:13:22'),
(367, 5, 8, 'draw', '2024-01-23 21:13:27'),
(368, 15, 100, 'draw', '2024-01-23 21:13:36'),
(370, 84, 104, 'draw', '2024-01-23 21:14:03'),
(371, 100, 10, 'draw', '2024-01-23 21:14:09'),
(372, 100, 88, 'draw', '2024-01-23 21:15:00'),
(374, 103, 104, 'draw', '2024-01-23 21:16:49'),
(375, 92, 11, 'draw', '2024-01-23 21:17:06'),
(376, 7, 84, 'draw', '2024-01-23 21:17:09'),
(377, 1, 5, 'draw', '2024-01-23 21:18:26'),
(378, 88, 20, 'draw', '2024-01-23 21:18:39'),
(379, 1, 8, 'draw', '2024-01-23 21:18:53'),
(382, 11, 100, 'draw', '2024-01-23 21:41:28'),
(383, 8, 16, 'draw', '2024-01-23 21:43:45'),
(384, 5, 3, 'draw', '2024-01-23 21:45:21'),
(385, 7, 1, 'draw', '2024-01-23 21:46:01'),
(386, 4, 7, 'draw', '2024-01-23 21:48:34'),
(387, 7, 4, '7', '2024-01-23 21:48:36'),
(388, 14, 15, 'draw', '2024-01-23 21:50:53'),
(389, 15, 16, 'draw', '2024-01-23 21:53:31'),
(390, 10, 3, 'draw', '2024-01-23 21:53:52'),
(391, 3, 11, 'draw', '2024-01-23 21:54:52'),
(392, 12, 15, 'draw', '2024-01-23 21:55:17'),
(393, 88, 92, 'draw', '2024-01-23 21:55:44'),
(394, 84, 103, 'draw', '2024-01-23 21:56:35'),
(395, 11, 104, 'draw', '2024-01-23 21:56:40'),
(396, 104, 4, 'draw', '2024-01-23 21:57:15'),
(397, 100, 8, 'draw', '2024-01-23 21:57:43'),
(398, 7, 12, 'draw', '2024-01-23 21:57:48'),
(399, 92, 7, 'draw', '2024-01-23 21:57:50'),
(400, 9, 14, 'draw', '2024-01-23 21:58:01'),
(401, 13, 1, 'draw', '2024-01-24 18:13:32'),
(402, 10, 15, 'draw', '2024-01-24 18:32:55'),
(403, 1, 103, 'draw', '2024-01-24 18:35:38'),
(404, 1, 10, 'draw', '2024-01-24 18:35:52'),
(405, 84, 1, 'draw', '2024-01-24 18:36:07'),
(406, 11, 5, 'draw', '2024-01-24 18:44:45'),
(407, 11, 5, 'draw', '2024-01-24 18:49:32'),
(408, 13, 7, 'draw', '2024-01-24 18:51:05'),
(409, 8, 92, 'draw', '2024-01-24 18:51:10'),
(410, 3, 8, 'draw', '2024-01-24 19:05:44'),
(411, 84, 11, 'draw', '2024-01-24 19:05:51'),
(412, 5, 103, 'draw', '2024-01-24 19:07:01'),
(413, 7, 12, 'draw', '2024-01-24 19:15:23'),
(415, 88, 5, 'draw', '2024-01-24 19:20:16'),
(416, 7, 4, 'draw', '2024-01-24 19:20:17'),
(417, 3, 16, 'draw', '2024-01-24 19:20:29'),
(418, 16, 3, '16', '2024-01-24 19:21:32'),
(419, 100, 9, 'draw', '2024-01-24 19:21:34'),
(420, 100, 9, '100', '2024-01-24 19:21:37'),
(421, 8, 92, '8', '2024-01-24 19:21:38'),
(422, 5, 13, 'draw', '2024-01-24 19:21:39'),
(423, 3, 11, 'draw', '2024-01-24 19:22:03'),
(424, 104, 14, 'draw', '2024-01-24 20:00:30'),
(425, 3, 14, 'draw', '2024-01-24 20:19:13'),
(426, 5, 92, 'draw', '2024-01-24 22:35:27'),
(429, 11, 100, '11', '2024-01-24 22:35:53'),
(430, 16, 7, '16', '2024-01-24 22:35:53'),
(431, 1, 11, '1', '2024-01-24 22:35:53'),
(432, 20, 84, 'draw', '2024-01-24 22:36:36'),
(433, 2, 5, 'draw', '2024-01-24 22:36:39'),
(434, 16, 12, 'draw', '2024-01-24 22:36:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pets_species` (`species_ID`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pets1_ID` (`pets1_ID`),
  ADD KEY `pets2_ID` (`pets2_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `fk_pets_species` FOREIGN KEY (`species_ID`) REFERENCES `species` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`pets1_ID`) REFERENCES `pets` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`pets2_ID`) REFERENCES `pets` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;