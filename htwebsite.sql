-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 11:58 AM
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
-- Database: `htwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_card`
--

CREATE TABLE `admin_card` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_card`
--

INSERT INTO `admin_card` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'tg_sibi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(26, 26, 'super deluxe room', 2000, 2000, 'a21', 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(27, 27, 'super deluxe room', 2000, 2000, 'a10', 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(28, 28, 'sample room 2', 1500, 1500, 'a4', 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(29, 29, 'super deluxe room', 2000, 2000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(30, 30, 'sample room 2', 1500, 4500, NULL, 'OBITO', '877846496', 'ANTHIYUR new'),
(31, 31, 'sample room 1', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(32, 32, 'super deluxe room', 2000, 20000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(33, 33, 'super deluxe room', 2000, 2000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(34, 34, 'super deluxe room', 2000, 4000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(35, 35, 'Deluxe Room', 1000, 1000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(36, 36, 'super deluxe room', 2000, 2000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(37, 37, 'Deluxe Room', 1000, 1000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(38, 38, 'Deluxe Room', 1000, 1000, NULL, 'SIBIRAJ', '8778464691', 'ANTHIYU'),
(39, 39, 'Luxury Room', 1500, 1500, 'a22', 'SIBIRAJ L A', '8778464691', 'ANTHIYU'),
(40, 40, 'Luxury Room', 1500, 1500, NULL, 'SIBIRAJ L A', '8778464691', 'ANTHIYU'),
(41, 41, 'Luxury Room', 1500, 1500, 'a14', 'SIBIRAJ L A', '8778464691', 'ANTHIYU'),
(42, 42, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(43, 43, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(44, 44, 'super deluxe room', 2000, 4000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(45, 45, 'Deluxe Room', 1000, 1000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(46, 46, 'super deluxe room', 2000, 2000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(47, 47, 'super deluxe room', 2000, 2000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(48, 48, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(49, 49, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(50, 50, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(51, 51, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(52, 52, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(53, 53, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(54, 54, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(55, 55, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(56, 56, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(57, 57, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(58, 58, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(59, 59, 'super deluxe room', 2000, 2000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(60, 60, 'Luxury Room', 1500, 1500, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(61, 61, 'Luxury Room', 1500, 1500, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(62, 62, 'Deluxe Room', 1000, 1000, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(63, 63, 'Luxury Room', 1500, 1500, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(64, 64, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(65, 65, 'Luxury Room', 1500, 1500, NULL, 'SIBIRAJ L A', '123231', '12121'),
(66, 66, 'simple', 1700, 1700, NULL, 'SIBIRAJ L A', '8778464694', 'ANTHIYUR'),
(67, 67, 'simple', 1700, 3400, NULL, 'Maneesh M', '1212124156', 'afscgfagfdytefdiycgefgieugfuve'),
(68, 68, 'super deluxe room', 2000, 2000, NULL, 'Maneesh M', '1212124156', 'afscgfagfdytefdiycgefgieugfuve');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` varchar(500) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(26, 17, 30, '2023-06-01', '2023-06-02', 1, NULL, 'booked', 'ORD_1786566591', '1125548846646', 2000, 'TXN_SUCCESS', 'SUCCESS', '1', '2023-05-30 13:21:41'),
(27, 17, 30, '2023-06-01', '2023-06-02', 1, NULL, 'booked', 'ORD_1754404299', NULL, 0, 'pending', NULL, '1', '2023-05-30 15:24:28'),
(28, 17, 29, '2023-06-02', '2023-06-03', 0, NULL, 'payment failed', 'ORD_176541601', NULL, 0, 'pending', NULL, NULL, '2023-05-30 15:25:35'),
(29, 17, 30, '2023-06-01', '2023-06-02', 0, 1, 'cancelled', 'ORD_1787103301', NULL, 0, 'pending', NULL, NULL, '2023-05-30 15:26:19'),
(30, 17, 29, '2023-06-01', '2023-06-04', 0, 1, 'cancelled', 'ORD_1720738813', NULL, 0, 'pending', NULL, NULL, '2023-05-30 15:27:24'),
(31, 17, 28, '2023-06-01', '2023-06-02', 0, NULL, 'payment failed', 'ORD_1777905815', NULL, 0, 'pending', NULL, NULL, '2023-05-30 17:33:08'),
(32, 17, 30, '2023-05-30', '2023-06-09', 0, NULL, 'pending', 'ORD_1788074673', NULL, 0, 'pending', NULL, NULL, '2023-05-30 20:15:33'),
(33, 17, 30, '2023-05-31', '2023-06-01', 0, NULL, 'pending', 'ORD_1721624560', NULL, 0, 'pending', NULL, NULL, '2023-05-30 20:17:33'),
(34, 17, 30, '2023-06-01', '2023-06-03', 1, NULL, 'booked', 'ORD_1732760180', NULL, 1200, 'TXN_SUCCESS', 'success', '1', '2022-05-30 23:33:39'),
(35, 17, 31, '2023-06-01', '2023-06-02', 0, 1, 'cancelled', 'ORD_1743005714', '123546', 200, 'TXN_SUCCESS', 'success', NULL, '2023-05-31 00:32:57'),
(36, 17, 30, '2023-05-31', '2023-06-01', 0, NULL, 'pending', 'ORD_1717142285', NULL, 0, 'pending', NULL, NULL, '2023-05-31 09:19:20'),
(37, 17, 31, '2023-06-01', '2023-06-02', 0, NULL, 'pending', 'ORD_1781669740', NULL, 0, 'pending', NULL, NULL, '2023-05-31 09:20:40'),
(38, 17, 31, '2023-06-01', '2023-06-02', 0, NULL, 'pending', 'ORD_1735472858', NULL, 0, 'pending', NULL, NULL, '2023-05-31 11:10:51'),
(39, 17, 29, '2023-06-01', '2023-06-02', 1, NULL, 'booked', 'ORD_1762341994', NULL, 0, 'TXN_SUCCESS', 'success', '0', '2023-01-31 12:13:33'),
(40, 17, 29, '2023-06-01', '2023-06-02', 0, 1, 'cancelled', 'ORD_1786141037', NULL, 0, 'TXN_SUCCES', 'success', NULL, '2023-05-31 12:15:30'),
(41, 17, 29, '2023-06-01', '2023-06-02', 1, NULL, 'booked', 'ORD_1779668925', NULL, 0, 'TXN_SUCCES', 'success', '1', '2023-03-31 15:48:21'),
(42, 17, 28, '2023-05-31', '2023-06-01', 0, NULL, 'booked', 'ORD_1765192265', NULL, 0, 'pending', NULL, NULL, '2023-05-31 22:34:52'),
(43, 17, 28, '2023-06-01', '2023-06-02', 0, NULL, 'pending', 'ORD_1783360470', NULL, 0, 'pending', NULL, NULL, '2023-05-31 22:40:27'),
(44, 17, 30, '2023-06-01', '2023-06-03', 0, NULL, 'pending', 'ORD_1776279959', NULL, 0, 'pending', NULL, NULL, '2023-05-31 22:46:38'),
(45, 17, 31, '2023-06-02', '2023-06-03', 0, 0, 'cancelled', 'ORD_1771822825', NULL, 5000, 'TXN_SUCCES', 'success', NULL, '2023-06-01 00:06:58'),
(46, 17, 30, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1712685832', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:09:46'),
(47, 17, 30, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1762412248', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:13:42'),
(48, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1736173478', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:16:00'),
(49, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1764234410', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:17:10'),
(50, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'booked', 'ORD_1787098015', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:23:28'),
(51, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1732251722', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:26:22'),
(52, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1741539513', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:26:50'),
(53, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1754197371', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:31:29'),
(54, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1792322822', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:34:33'),
(55, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1714068855', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:53:05'),
(56, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1742744023', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:54:50'),
(57, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1787082623', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:55:08'),
(58, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1760926088', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:55:21'),
(59, 17, 30, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1752307130', NULL, 0, 'pending', NULL, NULL, '2023-06-01 08:56:56'),
(60, 17, 29, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1760090988', NULL, 0, 'pending', NULL, NULL, '2023-06-01 09:00:20'),
(61, 17, 29, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1792465547', NULL, 0, 'pending', NULL, NULL, '2023-06-01 09:03:03'),
(62, 17, 31, '2023-06-03', '2023-06-04', 0, NULL, 'pending', 'ORD_1771244495', NULL, 0, 'pending', NULL, NULL, '2023-06-01 09:04:05'),
(63, 17, 29, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1746672373', NULL, 0, 'pending', NULL, NULL, '2023-06-01 09:16:55'),
(64, 17, 28, '2023-06-02', '2023-06-03', 0, NULL, 'pending', 'ORD_1727275002', NULL, 0, 'pending', NULL, NULL, '2023-06-01 10:51:35'),
(65, 26, 29, '2023-06-03', '2023-06-04', 0, NULL, 'pending', 'ORD_2659135960', NULL, 0, 'pending', NULL, NULL, '2023-06-02 08:55:37'),
(66, 17, 28, '2023-06-03', '2023-06-04', 0, NULL, 'pending', 'ORD_1726506728', NULL, 0, 'pending', NULL, NULL, '2023-06-02 09:10:15'),
(67, 27, 28, '2023-06-04', '2023-06-06', 0, NULL, 'pending', 'ORD_277053943', NULL, 0, 'pending', NULL, NULL, '2023-06-03 11:14:56'),
(68, 27, 30, '2023-06-04', '2023-06-05', 0, 1, 'cancelled', 'ORD_2752426835', NULL, 0, 'pending', NULL, NULL, '2023-06-03 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(18, 'IMG_43831.png'),
(19, 'IMG_76052.png'),
(20, 'IMG_62968.png'),
(21, 'IMG_55201.png'),
(22, 'IMG_89135.png'),
(23, 'IMG_47281.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(50) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '10/A,Anthiyur,TamilNadu', 'https://goo.gl/maps/ZCg71ttTRFh', 918778464690, 918778464694, 'sibirajl007@gmail.com', 'https://www.facebook.com/profile.php?id=100070183846468', 'https://www.instagram.com/tg_obito_/', 'wwe.twitter.com', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31268.954724290976!2d77.589698!3d11.579123!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba9479ffa3882f3:0xf13aa1aa9aded562!2sAnthiyur, Tamil Nadu!5e0!3m2!1sen!2sin!4v1684650378442!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(7, 'IMG_11935.svg', 'spa', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. \r\n            Dignissimos neque perspiciatis officia, provident aspernatur eos eveniet.'),
(9, 'IMG_35453.svg', 'wifi', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. \r\n            Dignissimos neque perspiciatis officia, provident aspernatur eos eveniet.'),
(13, 'IMG_60940.svg', 'sstsres', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos neque perspiciatis officia, provident aspernatur eos eveniet.'),
(15, 'IMG_62642.svg', 'AC', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos neque perspiciatis officia, provident aspernatur eos eveniet.'),
(16, 'IMG_58311.svg', 'Geyser', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos neque perspiciatis officia, provident aspernatur eos eveniet.'),
(17, 'IMG_42470.svg', 'TV', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos neque perspiciatis officia, provident aspernatur eos eveniet.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(9, 'bedroom'),
(10, 'balcony'),
(13, 'kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(6, 26, 30, 17, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducim', 1, '2023-05-31 14:47:17'),
(7, 34, 30, 17, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducim', 1, '2023-05-31 14:47:24'),
(8, 26, 30, 17, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducim', 1, '2023-05-31 14:49:10'),
(9, 27, 30, 17, 3, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducim', 1, '2023-05-31 14:49:19'),
(10, 34, 30, 17, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducim', 1, '2023-05-31 14:49:30'),
(11, 41, 29, 17, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducim', 1, '2023-05-31 15:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(25, 'Sibi2', 5000, 10000, 1, 2, 0, 'dfgyufgieusiijbcjsdbuefguei', 1, 1),
(26, 'zoro', 1200, 10000, 120, 4, 3, 'jbfugvrebgreorfrghriuhkjnxkbvuireyvfgnire0', 1, 1),
(27, 'sample room 0', 1250, 12000, 30, 3, 1, '4nohpg5ohjbguoknb;kntpb[t', 1, 1),
(28, 'simple', 1200, 1700, 100, 4, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducimus molestias temporibus? Dignissimos.', 1, 0),
(29, 'Luxury Room', 1500, 1500, 2, 3, 1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducimus molestias temporibus? Dignissimos.', 1, 0),
(30, 'super deluxe room', 400, 2000, 25, 2, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducimus molestias temporibus? Dignissimos.', 1, 0),
(31, 'Deluxe Room', 1500, 1000, 20, 2, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducimus molestias temporibus?23', 1, 0),
(32, 'asas', 21, 1000, 23, 2, 2, 'asasas', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(99, 30, 7),
(100, 30, 9),
(101, 30, 13),
(102, 30, 15),
(103, 30, 16),
(104, 30, 17),
(105, 31, 9),
(106, 31, 15),
(107, 31, 16),
(108, 31, 17),
(109, 29, 7),
(110, 29, 13),
(111, 28, 15),
(112, 28, 17),
(115, 32, 9),
(116, 32, 16);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(74, 30, 9),
(75, 30, 10),
(76, 30, 13),
(77, 31, 9),
(78, 31, 13),
(79, 29, 9),
(80, 29, 10),
(81, 28, 9),
(82, 28, 13),
(85, 32, 9),
(86, 32, 10);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(71, 29, 'IMG_65844.png', 0),
(72, 29, 'IMG_84469.png', 0),
(74, 30, 'IMG_37902.png', 1),
(84, 29, 'IMG_18312.png', 1),
(86, 31, 'IMG_37870.png', 1),
(87, 31, 'IMG_79516.png', 0),
(88, 28, 'IMG_63535.png', 1),
(89, 32, 'IMG_65028.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_tittle` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_tittle`, `site_about`, `shutdown`) VALUES
(1, 'SS HOTEL', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti nulla esse odit asperiores laudantium expedita fugiat similique impedit dolores earum dicta ad repellat nobis, harum blanditiis ducimus molestias temporibus?23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(17, 'Member', 'IMG_20090.jpg'),
(18, 'Member', 'IMG_84022.jpg'),
(19, 'Member', 'IMG_29214.jpg'),
(20, 'Member', 'IMG_99773.jpg'),
(21, 'Member', 'IMG_67033.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phonenum` varchar(150) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(17, 'SIBIRAJ L A', 'sibiraj.cs21@bitsathy.ac.i', 'ANTHIYUR', '8778464694', 638501, '2004-06-12', 'IMG_46461.jpeg', '$2y$10$R64PaD9qg1SsjdPgZwOKUuC.Nz6iJnASLBujYymH4y7IDpPT4CPJW', 1, NULL, NULL, 1, '2023-05-28 21:45:05'),
(22, 'SIBIRAJ L A', 'sibirajl007@gmail.com', 'aadddddd', '877846469', 12121212, '2023-05-18', 'IMG_67989.jpeg', '$2y$10$cdVc1n6XSaG1DA11mmWhIukMJor1n/RToflqcjXD5ta7qnmkO6zBO', 1, '92582d705ca41e068e36a85c550abf15', NULL, 0, '2023-05-31 09:15:14'),
(24, 'SIBIRAJ L A', 'sibiraj.cs21@bitsathy.ac\r\n', 'ANTHIYUR', '1234567890', 638501, '2004-06-12', 'IMG_57448.jpeg', '$2y$10$tfsVrPM5PsN8xM63jRstX.vOaFF.CgvQeU5RnpXtd2mC1TldtpEuW', 1, NULL, NULL, 1, '2023-06-01 11:10:56'),
(25, 'Navin', 'naveenkumar.cs21@bitsathy.ac.in', 'dvsvsvdjhsvdh', '12121', 121212, '2023-06-02', 'IMG_55572.jpeg', '$2y$10$FzNjO5Sj8GOa24WewfJAH.sca/d0iznq98SALqkVprMNXP7nttEay', 0, '18992886a65c2f280d1c62b4c0382d1b', NULL, 1, '2023-06-02 08:50:25'),
(26, 'SIBIRAJ L A', 'sibiraj.cs21@bitsath\r\n', '12121', '123231', 1212, '2023-06-09', 'IMG_53384.jpeg', '$2y$10$MrUnn6pW7z48ORzK6BcoWOrOoiO1GRQXBmTse.JSjYf4SCSpiLRl.', 1, '9de64eec654687e9c3de4c9d10c2a677', NULL, 1, '2023-06-02 08:53:11'),
(27, 'Maneesh M', 'maneesh.cs21@bitsathy.ac.in', 'afscgfagfdytefdiycgefgieugfuve', '1212124156', 12412, '2023-05-28', 'IMG_51273.jpeg', '$2y$10$TgOAML5RSoD4Ujw39z724emqqKJfSo85Jz6TFq1VQJtaIKzg9I5lm', 1, '3b3abb03d4f029a57b8c8b769147de0d', NULL, 1, '2023-06-03 11:12:10'),
(28, 'Pranesh p', 'pranesh.cs21@bitsathy.ac.in', 'bigunij rptb tyionjlm jl', '874623136', 121212, '2023-06-05', 'IMG_31742.jpeg', '$2y$10$7.pclAdfzgZ5IJas0wNLXuF71AxjFuMF9GlBnJLRxE6YgXDrfAwRW', 0, '18cfd0691bfa15dfcb485ec4f67644f5', NULL, 1, '2023-06-05 10:22:58'),
(29, 'SIBIRAJ L A', 'sibiraj.cs21@bitsathy.ac.in', 'asadsasadad', '454512', 212121, '2023-06-07', 'IMG_68189.jpeg', '$2y$10$g6.vlIsN/imWiu3k09S0M.1MdQe3Dmy6qtPh962M5.jgnJENfGAYy', 1, NULL, NULL, 1, '2023-06-06 11:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(29, 'SIBIRAJ L A', 'naveenkumar.cs21@bitsathy.ac.in', 'addadad', 'whudhejfne', '2023-06-03 11:21:54', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_card`
--
ALTER TABLE `admin_card`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_card`
--
ALTER TABLE `admin_card`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
