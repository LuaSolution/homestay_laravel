-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2020 at 04:18 AM
-- Server version: 10.4.15-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u846104315_temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_money` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `customer_id`, `status`, `total_money`, `user_id`, `created_at`, `updated_at`) VALUES
(14, 14, 4, '21400000', 0, '2019-04-15 21:59:21', '2019-04-16 23:22:29'),
(15, 15, 3, '6800000', 0, '2019-04-15 23:12:06', '2019-04-16 23:18:42'),
(16, 16, 2, '9000000', 0, '2019-04-15 23:18:44', '2019-04-17 00:00:46'),
(17, 17, 1, '8800000', 0, '2019-04-17 00:05:15', '2019-04-17 00:05:15'),
(18, 18, 1, '12400000', 0, '2019-04-17 22:07:04', '2019-04-18 01:18:39'),
(19, 19, 1, '15500000', 0, '2019-04-18 21:46:47', '2019-04-18 21:46:47'),
(20, 20, 1, '4500000', 0, '2019-04-19 23:53:11', '2019-04-19 23:53:11'),
(21, 22, 1, '13200000', 4, '2019-04-21 16:07:56', '2019-04-21 16:07:56'),
(22, 23, 1, '150000', 0, '2019-04-28 11:51:47', '2019-04-28 12:02:07'),
(23, 24, 1, '120000', 0, '2019-04-28 12:13:56', '2019-04-28 12:13:56'),
(24, 25, 1, '230000', 0, '2019-04-28 12:16:31', '2019-04-28 12:16:31'),
(25, 26, 1, '460000', 0, '2019-04-28 12:18:41', '2019-04-28 12:18:41'),
(26, 27, 1, '460000', 0, '2019-04-28 12:21:35', '2019-04-28 12:21:35'),
(27, 28, 1, '460000', 0, '2019-04-28 12:24:09', '2019-04-28 12:24:09'),
(28, 29, 1, '120000', 0, '2019-04-28 12:36:16', '2019-04-28 12:36:16'),
(29, 30, 1, '1020000', 0, '2019-04-28 17:39:06', '2019-04-28 17:39:06'),
(30, 31, 1, '150000', 0, '2019-04-29 14:14:01', '2019-04-29 14:14:01'),
(31, 32, 1, '340000', 0, '2019-04-29 21:04:46', '2019-04-29 21:04:46'),
(32, 33, 1, '340000', 0, '2019-04-29 21:07:00', '2019-04-29 21:07:00'),
(33, 34, 1, '340000', 0, '2019-04-29 21:08:51', '2019-04-29 21:08:51'),
(34, 35, 1, '340000', 0, '2019-04-29 21:10:33', '2019-04-29 21:10:33'),
(35, 36, 1, '340000', 0, '2019-04-29 21:12:01', '2019-04-29 21:12:01'),
(36, 37, 1, '340000', 0, '2019-04-29 21:13:55', '2019-04-29 21:13:55'),
(37, 38, 1, '270000', 0, '2019-04-29 21:15:46', '2019-04-29 21:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `bill_id`, `product_id`, `name`, `qty`, `price`, `image`, `created_at`, `updated_at`) VALUES
(17, 14, 62, 'Điều hòa Inverter LG V13ENS', 2, '4500000', '1554307741.d6d54d513f554362b59c9f823e2396-2e5c3b90-dc30-4938-9226-1b32ff53b864.jpg', '2019-04-15 21:59:21', '2019-04-15 21:59:21'),
(18, 14, 63, 'Máy lạnh Electrolux ESM09CRF', 3, '3000000', '1554307866.471788b34436eee4398e2a784e71ec.jpg', '2019-04-15 21:59:21', '2019-04-15 21:59:21'),
(19, 14, 67, 'Tủ lạnh Mini Midea HS-122SN', 1, '3400000', '1554308441.big174924tulanhmideahs122ln3.jpg', '2019-04-15 21:59:21', '2019-04-15 21:59:21'),
(20, 15, 67, 'Tủ lạnh Mini Midea HS-122SN', 2, '3400000', '1554308441.big174924tulanhmideahs122ln3.jpg', '2019-04-15 23:12:06', '2019-04-15 23:12:06'),
(21, 16, 62, 'Điều hòa Inverter LG V13ENS', 2, '4500000', '1554307741.d6d54d513f554362b59c9f823e2396-2e5c3b90-dc30-4938-9226-1b32ff53b864.jpg', '2019-04-15 23:18:44', '2019-04-15 23:18:44'),
(22, 17, 67, 'Tủ lạnh Mini Midea HS-122SN', 1, '3400000', '1554308441.big174924tulanhmideahs122ln3.jpg', '2019-04-17 00:05:15', '2019-04-17 00:05:15'),
(23, 17, 68, 'Tủ lạnh Inverter Sharp SJ-X176E-SL', 2, '2700000', '1554308624.ese5687sbthu2751d20161026t1746.jpg', '2019-04-17 00:05:15', '2019-04-17 00:05:15'),
(24, 18, 65, 'Smart Tivi Panasonic 49 inch Full HD', 3, '3000000', '1554308147.0u5564d20170812t103825150085.jpg', '2019-04-17 22:07:04', '2019-04-17 22:07:04'),
(25, 18, 67, 'Tủ lạnh Mini Midea HS-122SN', 1, '3400000', '1554308441.big174924tulanhmideahs122ln3.jpg', '2019-04-17 22:07:04', '2019-04-17 22:07:04'),
(26, 19, 68, 'Tủ lạnh Inverter Sharp SJ-X176E-SL', 1, '2700000', '1554308624.ese5687sbthu2751d20161026t1746.jpg', '2019-04-18 21:46:47', '2019-04-18 21:46:47'),
(27, 19, 70, 'Máy giặt cửa ngang Inverter LG', 2, '6400000', '1554309010.95043744556535u2751d20161122t1.jpg', '2019-04-18 21:46:47', '2019-04-18 21:46:47'),
(28, 19, 64, 'Smart Tivi Sharp 40 inch LC-40LE380X', 1, '0', '1554307977.sharplc60le380xjthzpkfgntgiu55.jpg', '2019-04-18 21:46:47', '2019-04-18 21:46:47'),
(29, 20, 62, 'Điều hòa Inverter LG V13ENS', 1, '4500000', '1554307741.d6d54d513f554362b59c9f823e2396-2e5c3b90-dc30-4938-9226-1b32ff53b864.jpg', '2019-04-19 23:53:12', '2019-04-19 23:53:12'),
(30, 21, 70, 'Máy giặt cửa ngang Inverter LG', 1, '6400000', '1554309010.95043744556535u2751d20161122t1.jpg', '2019-04-21 16:07:57', '2019-04-21 16:07:57'),
(31, 21, 67, 'Tủ lạnh Mini Midea HS-122SN', 2, '3400000', '1554308441.big174924tulanhmideahs122ln3.jpg', '2019-04-21 16:07:57', '2019-04-21 16:07:57'),
(32, 22, 75, 'Đầm thời trang cao cấp', 1, '150000', '1556294752.product4-1dad054c-7c31-41fc-8015-4b993a1a7f48.jpg', '2019-04-28 11:51:47', '2019-04-28 11:51:47'),
(33, 23, 74, 'Đầm công sở cao cấp', 1, '120000', '1556294598.product2a.jpg', '2019-04-28 12:13:56', '2019-04-28 12:13:56'),
(34, 24, 77, 'Đầm công sở cao cấp màu xanh', 1, '0', '1556295136.product4b.jpg', '2019-04-28 12:16:32', '2019-04-28 12:16:32'),
(35, 24, 73, 'Váy Midi Caro Vạt Lệch', 1, '230000', '1556294355.product1.jpg', '2019-04-28 12:16:32', '2019-04-28 12:16:32'),
(36, 25, 73, 'Váy Midi Caro Vạt Lệch', 1, '230000', '1556294355.product1.jpg', '2019-04-28 12:18:41', '2019-04-28 12:18:41'),
(37, 25, 76, 'Áo nữ cao cấp', 1, '230000', '1556294966.product5.jpg', '2019-04-28 12:18:41', '2019-04-28 12:18:41'),
(38, 26, 76, 'Áo nữ cao cấp', 1, '230000', '1556294966.product5.jpg', '2019-04-28 12:21:35', '2019-04-28 12:21:35'),
(39, 26, 73, 'Váy Midi Caro Vạt Lệch', 1, '230000', '1556294355.product1.jpg', '2019-04-28 12:21:36', '2019-04-28 12:21:36'),
(40, 27, 73, 'Váy Midi Caro Vạt Lệch', 1, '230000', '1556294355.product1.jpg', '2019-04-28 12:24:09', '2019-04-28 12:24:09'),
(41, 27, 76, 'Áo nữ cao cấp', 1, '230000', '1556294966.product5.jpg', '2019-04-28 12:24:09', '2019-04-28 12:24:09'),
(42, 28, 74, 'Đầm công sở cao cấp', 1, '120000', '1556294598.product2a.jpg', '2019-04-28 12:36:16', '2019-04-28 12:36:16'),
(43, 29, 72, 'Đầm suông nơ ruy băng', 3, '340000', '1556293893.product3 (1).jpg', '2019-04-28 17:39:06', '2019-04-28 17:39:06'),
(44, 30, 75, 'Đầm thời trang cao cấp', 1, '150000', '1556294752.product4-1dad054c-7c31-41fc-8015-4b993a1a7f48.jpg', '2019-04-29 14:14:01', '2019-04-29 14:14:01'),
(45, 31, 72, 'Đầm suông nơ ruy băng', 1, '340000', '1556293893.product3 (1).jpg', '2019-04-29 21:04:46', '2019-04-29 21:04:46'),
(46, 32, 72, 'Đầm suông nơ ruy băng', 1, '340000', '1556293893.product3 (1).jpg', '2019-04-29 21:07:00', '2019-04-29 21:07:00'),
(47, 33, 72, 'Đầm suông nơ ruy băng', 1, '340000', '1556293893.product3 (1).jpg', '2019-04-29 21:08:51', '2019-04-29 21:08:51'),
(48, 34, 72, 'Đầm suông nơ ruy băng', 1, '340000', '1556293893.product3 (1).jpg', '2019-04-29 21:10:33', '2019-04-29 21:10:33'),
(49, 35, 72, 'Đầm suông nơ ruy băng', 1, '340000', '1556293893.product3 (1).jpg', '2019-04-29 21:12:01', '2019-04-29 21:12:01'),
(50, 36, 72, 'Đầm suông nơ ruy băng', 1, '340000', '1556293893.product3 (1).jpg', '2019-04-29 21:13:55', '2019-04-29 21:13:55'),
(51, 37, 77, 'Đầm công sở cao cấp màu xanh', 3, '90000', '1556295136.product4b.jpg', '2019-04-29 21:15:46', '2019-04-29 21:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `home_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `quantity` int(25) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leave_date` datetime DEFAULT NULL,
  `bill` int(255) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `home_id`, `user_id`, `created_at`, `quantity`, `status`, `received_date`, `updated_at`, `leave_date`, `bill`) VALUES
(14, 30, 7, '2019-06-11 17:07:32', 3, 1, '2019-06-12 00:00:00', '2019-06-11 17:15:34', '2019-06-13 00:00:00', 3733332);

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`id`, `name`) VALUES
(0, 'Chưa thanh toán'),
(1, 'Đã thanh toán'),
(2, 'Đã đặt cọc');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delete_at` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `slug`, `description`, `content`, `image`, `tag`, `seo_title`, `seo_description`, `status`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Tin tức2', 'tin-tuc2', 'Thời trang cao cấp', NULL, '1558968632.55711565_2291053181014860_8198097776328835072_n.jpg', '[\"th\\u1ebb b\\u00e0i vi\\u1ebft\"]', NULL, NULL, 1, 0, '2018-12-21 02:36:40', '2019-05-27 21:50:32'),
(2, 1, 'Công nghệ BAC', 'cong-nghe-bac', 'Chiếc smartphone của bạn đã quá cũ kỹ đã đến lúc cần phải thay thế hoặc đơn giản bạn chỉ muốn lên đời máy, muốn mua một chiếc mới hơn, ngon hơn….vậy nên mua điện thoại ở đâu?', NULL, '1545359930.nhung-trang-web-ban-dien-thoai-tai-VN.jpg', '[\"th\\u1ebb b\\u00e0i vi\\u1ebft\"]', NULL, NULL, 1, 0, '2018-12-21 02:38:50', '2019-05-21 23:11:14'),
(3, 1, 'Sản phẩm nổi bật', 'san-pham-noi-bat', 'Sản phẩm nổi bật', NULL, '1545361895.nhung-trang-web-ban-dien-thoai-tai-VN.jpg', 'null', NULL, NULL, 1, 0, '2018-12-21 03:11:35', '2019-05-21 22:15:57'),
(5, 0, 'Tin tức thời trang', 'tin-tuc-thoi-trang', 'Tin tức thời trang, thời trang nam , nữ cao cấp , phù hợp với mọi lứa tuổi , hàng có sẵn phục vụ khách hàng', NULL, '1545363113.340480-ao-kieu-selyna-thoi-trang.jpg', '', NULL, NULL, 0, 0, '2018-12-21 03:31:53', '2019-04-28 17:51:26'),
(18, 1, 'Điện thoại', 'dien-thoai', 'Điện thoại  cao cấp , chính hãng , được sử dụng nhiều nhất , là 1 sự lựa chọn cho giới trẻ và người muốn trải nghiệm công nghệ ...', '<p>Điện thoại &nbsp;cao cấp , ch&iacute;nh h&atilde;ng , được sử dụng nhiều nhất , l&agrave; 1 sự lựa chọn cho giới trẻ v&agrave; người muốn trải nghiệm c&ocirc;ng nghệ ...</p>', '1545580015.dien_thoai_cao_c', '[\"th\\u1ebb b\\u00e0i vi\\u1ebft\"]', NULL, NULL, 0, 0, '2018-12-23 15:46:55', '2019-05-23 06:18:48'),
(19, 1, 'Giáo dục', 'giao-duc', 'Tin tức giáo dục trong và ngoài nước', '<p>Tin tức gi&aacute;o dục trong v&agrave; ngo&agrave;i nước</p>', '1552411520.43877738_700901463608151_7177897633116061696_n.jpg', '[\"th\\u1ebb b\\u00e0i vi\\u1ebft\"]', NULL, NULL, 1, 0, '2019-03-13 00:25:20', '2019-05-21 23:21:07'),
(20, 0, 'Tin tức homestay', 'tin-tuc-khach-san', 'Tin tức homestay', '<p>Tin tức Kh&aacute;ch sạn</p>', NULL, '[\"Tin t\\u1ee9c Kh\\u00e1ch s\\u1ea1n\"]', NULL, NULL, 1, 0, '2019-05-21 22:42:18', '2019-05-21 22:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `parent_id`, `user_id`, `name`, `slug`, `description`, `image`, `tag`, `status`, `created_at`, `updated_at`) VALUES
(23, 0, 1, 'Sản phẩm', 'san-pham', NULL, '1556204707.sp2.jpg', '[null]', 1, '2019-04-25 22:05:07', '2019-04-25 22:05:07'),
(24, 23, 1, 'Sản phẩm mới', 'san-pham-moi', 'Sản phẩm mới cao cấp', '1556204752.converse-ellevietnam1.jpg', '[null]', 1, '2019-04-25 22:05:52', '2019-04-25 22:05:52'),
(25, 23, 1, 'Sản phẩm khuyến mại', 'san-pham-khuyen-mai', 'Sản phẩm mới , Sản phẩm khuyến mại cao cấp', '1556204787.sp3.jpg', '[null]', 1, '2019-04-25 22:06:27', '2019-04-25 22:06:27'),
(26, 23, 1, 'Sản phẩm nổi bật', 'san-pham-noi-bat', NULL, '1556204815.sp4.jpg', '[null]', 1, '2019-04-25 22:06:55', '2019-04-25 22:06:55'),
(27, 23, 1, 'Thời trang Nam', 'thoi-trang-nam', 'Thời trang Nam cao cấp', '1556204881.lk1.png', '[null]', 1, '2019-04-25 22:08:01', '2019-04-25 22:29:20'),
(28, 23, 1, 'Thời trang nữ', 'thoi-trang-nu', 'Thời trang nữ cao cấp', '1556204912.lk3.png', '[null]', 1, '2019-04-25 22:08:32', '2019-04-25 22:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `user_id` int(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `hotel_id`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 29, 'ddanhs gias 1111', 1, NULL, NULL),
(2, NULL, 'ewsrewr', 7, '2019-06-14 09:52:17', '2019-06-14 09:52:17'),
(3, NULL, '34213213', 7, '2019-06-14 09:52:21', '2019-06-14 09:52:21'),
(4, 29, 'dsfeasf', 7, '2019-06-14 09:54:30', '2019-06-14 09:54:30'),
(5, 29, 'ewr', 7, '2019-06-14 09:54:33', '2019-06-14 09:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `phone`, `city`, `district`, `address`, `email`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Duy Quang', '0982039380', NULL, NULL, 'Số 12 Lê Đức Thọ , Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-13 20:45:08', '2019-04-13 20:45:08'),
(2, 'Nguyễn Duy Quang', '0982039380', NULL, NULL, 'Số 12 Lê Đức Thọ , Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-13 20:45:43', '2019-04-13 20:45:43'),
(3, 'Nguyễn Văn A', '0982039380', NULL, NULL, 'Số 1 Hoàng Quốc Việt , HN', 'ndquang1410@gmail.com', NULL, '2019-04-13 20:46:53', '2019-04-13 20:46:53'),
(7, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:55:55', '2019-04-15 21:55:55'),
(8, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:56:08', '2019-04-15 21:56:08'),
(9, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:56:42', '2019-04-15 21:56:42'),
(10, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:56:52', '2019-04-15 21:56:52'),
(11, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:57:27', '2019-04-15 21:57:27'),
(12, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:57:40', '2019-04-15 21:57:40'),
(13, 'Trần Hiền', '0982039380', NULL, NULL, 'Số 1 Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:57:47', '2019-04-15 21:57:47'),
(14, 'Trần Thu Hiền', '0982039380', NULL, NULL, 'Số 1 , Hoàng Quốc Việt , HN', 'ndquang1410@gmail.com', NULL, '2019-04-15 21:59:21', '2019-04-15 21:59:21'),
(15, 'Trần Linh', '0982039380', NULL, NULL, 'Số 1 , Mỹ Đình , Nam Từ Liêm , HN', 'ndquang1410@gmail.com', NULL, '2019-04-15 23:12:05', '2019-04-15 23:12:05'),
(16, 'Nguyễn Kiều Anh', '0982039380', NULL, NULL, 'Số 12 Mỹ đình , Nam từ Liêm , HN', 'ndquang1410@gmail.com', NULL, '2019-04-15 23:18:43', '2019-04-15 23:18:43'),
(17, 'Nguyễn Ngân', '0982039380', NULL, NULL, 'Số 1 Hoàng Đạo Thúy , HN', 'ndquang1410@gmail.com', 'Nhận hàng theo địa chỉ cho trước', '2019-04-17 00:05:15', '2019-04-17 00:05:15'),
(18, 'Nguyễn Ngân', '0982039380', NULL, NULL, 'Số 1 , Viên An , Ứng Hòa , HN', 'ndquang1410@gmail.com', NULL, '2019-04-17 22:07:03', '2019-04-17 22:07:03'),
(19, 'Nguyễn Huyên', '0982039380', NULL, NULL, 'Số 1 , Nguyễn Văn B, Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-18 21:46:46', '2019-04-18 21:46:46'),
(20, 'Nguyễn Thu Trang', '0982039380', NULL, NULL, 'Số 111 Hoàng Quốc Việt , Hà Nội', 'ndquang1410@gmail.com', NULL, '2019-04-19 23:53:10', '2019-04-19 23:53:10'),
(21, 'Nguyễn Thu Trang', '0982039380', NULL, NULL, 'Số 12 , Lê Đức Thọ , Hà Nội', 'ndquang1410@gmail.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-21 16:03:38', '2019-04-21 16:03:38'),
(22, 'Nguyễn Thu Trang', '0982039380', NULL, NULL, 'Số 1 , Lê Đức Thọ , HN', 'ndquang1410@gmail.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-21 16:07:56', '2019-04-21 16:07:56'),
(23, 'Nguyễn Duy Quang', '0982039380', 'Hà Nội', 'Ứng Hòa', 'Số 1 Viên Ngoại , Viên An , Huyện Ứng Hòa, HN', 'ndquang1410@gmail.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-28 11:51:47', '2019-04-28 11:51:47'),
(24, 'Nguyễn Thị Thanh Hương', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Đồng Quang , TP Thái Nguyên', 'thanhhuong@gmail.com', 'Chuyển hàng đến địa chỉ nhận hàng', '2019-04-28 12:13:56', '2019-04-28 12:13:56'),
(25, 'Thanh Hương', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Đồng Quang , TP Thái NGuyên', 'thanhhuong@gmail.com', 'Chuyển hàng đến địa chỉ nhận hàng', '2019-04-28 12:16:31', '2019-04-28 12:16:31'),
(26, 'Nguyễn Ngà', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Z115 , Thái Nguyên ( Cạnh Trường ICTU , ĐH CNTT & TT Thái Nguyên )', 'thanhhuong@gmail.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-28 12:18:40', '2019-04-28 12:18:40'),
(27, 'Nguyễn Thu Nga', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Z115 , Thái Nguyên', 'ndquang1410@gmail.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-28 12:21:35', '2019-04-28 12:21:35'),
(28, 'Nguyễn Linh Miu', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 112 Đồng Quang , TP Thái Nguyên', 'phuonglinh@gmail.com', 'giao hàng đến địa chỉ trên', '2019-04-28 12:24:09', '2019-04-28 12:24:09'),
(29, 'Nguyễn Hoàng Anh', '0982039380', 'Thái Nguyên', 'Thành Phố', '11 Lê Đức Thọ , Hà Nội', 'anh@gmail.com', 'Chuyển đến địa chỉ trên', '2019-04-28 12:36:16', '2019-04-28 12:36:16'),
(30, 'Nguyễn Ngân', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 113 Hoàng Văn Thụ , TP Thái Nguyên', 'namhaha96@yahoo.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-28 17:39:06', '2019-04-28 17:39:06'),
(31, 'Nguyễn Thu Huyền', '0982039380', 'Hà Nội', 'Ứng Hòa', 'Số 1 , Phù Yên , Ba Thá , HN', 'thanhhuong@gmail.com', NULL, '2019-04-29 14:14:00', '2019-04-29 14:14:00'),
(32, 'Nguyễn Duy Quang', '0982039380', 'Hà Nội', 'Ứng Hòa', 'Số 1 , Viên Ngoại , Viên An , Ứng Hòa , HN', 'ndquang1410@gmail.com', 'Chuyển hàng đến địa chỉ trên', '2019-04-29 21:04:45', '2019-04-29 21:04:45'),
(33, 'Nguyễn Thu Trang', '0982039380', 'Thái Nguyên', 'Ứng Hòa', 'Số 1 Nguyễn Hoàng , TP HN', 'quangnd@bytesoft.net', NULL, '2019-04-29 21:06:59', '2019-04-29 21:06:59'),
(34, 'Nguyễn Văn A', '0982039380', 'Hà Nội', 'Thành Phố', 'Số 1, Nguyễn Hoàng ,. HN', 'thanhhuong@gmail.com', NULL, '2019-04-29 21:08:51', '2019-04-29 21:08:51'),
(35, 'Thanh Hương', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Hoàng Văn thụ , TP Thái Nguyên', 'thanhhuong@gmail.com', NULL, '2019-04-29 21:10:32', '2019-04-29 21:10:32'),
(36, 'test', '0982039380', 'Thái Nguyên', 'Thành Phố', 'test', 'ndquang1410@gmail.com', NULL, '2019-04-29 21:12:01', '2019-04-29 21:12:01'),
(37, 'Thanh Hương Test', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Hoàng Văn Thụ , TP Thái Nguyên', 'thanhhuong@gmail.com', NULL, '2019-04-29 21:13:55', '2019-04-29 21:13:55'),
(38, 'Thanh Hương', '0982039380', 'Thái Nguyên', 'Thành Phố', 'Số 1 , Đường Hoàng Văn Thụ , TN', 'thanhhuong@gmail.com', NULL, '2019-04-29 21:15:46', '2019-04-29 21:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `customerreviews`
--

CREATE TABLE `customerreviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `electronic_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_reviewurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `highlights` int(11) DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customerreviews`
--

INSERT INTO `customerreviews` (`id`, `user_id`, `name`, `position`, `company`, `email`, `phone`, `electronic_page`, `address`, `description`, `content`, `seo_title`, `seo_keywork`, `seo_description`, `seo_reviewurl`, `status`, `highlights`, `image`, `order`, `tags`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vũ Thùy Linh', 'Kế toán', 'VHV Group', 'ndquang1410@gmail.com', '0982039380', NULL, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', 'Ba mẹ giao cho Thùy Linh lựa chọn nội thất căn hộ mới mua tại Royal City và Linh đã lựa chọn nội thất  XYZ - Số 1 Việt Nam', '<p>Ba mẹ giao cho Th&ugrave;y Linh&nbsp;lựa chọn nội thất căn hộ mới mua tại Royal City v&agrave; Linh đ&atilde; lựa chọn nội thất&nbsp; XYZ - Số 1 Việt Nam</p>', NULL, '[\"Tags\"]', NULL, 'http://127.0.0.1/duan/nguyenduyquang1410/admin/customerreviews/edit/1', 1, NULL, '1553093908.us_1.png', 1, '[null]', '2019-03-20 21:58:28', '2019-04-16 23:24:21'),
(2, 1, 'Ngọc Trinh', 'Diễn viên', 'SVM Team Group', NULL, '0982039380', NULL, 'Tháp đông , Hoàng Quốc Việt , HN', 'Ba mẹ giao cho Thùy Linh lựa chọn nội thất căn hộ mới mua tại Royal City và Linh đã lựa chọn nội thất  XYZ - Số 1 Việt Nam', '<p>Ba mẹ giao cho Th&ugrave;y Linh&nbsp;lựa chọn nội thất căn hộ mới mua tại Royal City v&agrave; Linh đ&atilde; lựa chọn nội thất&nbsp; XYZ - Số 1 Việt Nam</p>', NULL, '[\"Tags\"]', NULL, 'http://127.0.0.1/duan/nguyenduyquang1410/admin/customerreviews/edit/2', 1, NULL, '1553093972.us_2.png', NULL, '[null]', '2019-03-20 21:59:32', '2019-03-20 23:26:28'),
(3, 1, 'Nguyễn Thanh Tâm', 'Marketing', 'SVM Group', 'ndquang1410@gmail.com', '0982039380', NULL, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', 'Ba mẹ giao cho Thanh Tâm lựa chọn nội thất căn hộ mới mua tại Time City và Tâm đã lựa chọn nội thất XYZ - Số 1 Việt Nam', '<p>Ba mẹ giao cho Thanh T&acirc;m lựa chọn nội thất căn hộ mới mua tại Time City v&agrave; T&acirc;m đ&atilde; lựa chọn nội thất XYZ - Số 1 Việt Nam</p>', NULL, '[\"Tags\"]', NULL, NULL, 1, NULL, '1553094024.us_3.png', NULL, '[null]', '2019-03-20 22:00:24', '2019-04-24 23:54:53'),
(5, 1, 'Nguyễn Duy Quang demo', 'IT', 'VHV Group', 'ndquang1410@gmail.com', '0982039380', NULL, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', NULL, NULL, NULL, '[\"Tags\"]', NULL, 'http://127.0.0.1/duan/nguyenduyquang1410/admin/customerreviews/edit/5', 1, NULL, '1553098424.49717428_533048953866167_6079791795380682752_n.jpg', 5, '[null]', '2019-03-20 23:11:15', '2019-03-21 21:49:06'),
(8, 1, 'Trần Diệu Thanh demo', 'Desgner', 'SVM Group', NULL, '0982039380', NULL, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', NULL, NULL, NULL, '[\"Tags\"]', NULL, 'http://127.0.0.1/duan/nguyenduyquang1410/admin/customerreviews/edit/8', 1, NULL, '1553126626.pic1.jpg', 8, '[null]', '2019-03-21 07:03:46', '2019-03-21 07:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `customer_users`
--

CREATE TABLE `customer_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterPassword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageUpload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customer_users`
--

INSERT INTO `customer_users` (`id`, `fullname`, `birthday`, `gender`, `address`, `phone`, `email`, `username`, `password`, `enterPassword`, `imageUpload`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', NULL, 1, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', 'nguyena@bytesoft.net', 'nguyenduy1', '$2y$10$a32eJQSYGOkbX9yh3H/MHug9/nM1/jNFm79C71qw9H8o0wwX3.eei', '$2y$10$CiRiRfft3SniNqFTdR8vJOHGn2dOQujoRmDhhdQn2sG6TyMFj0oUi', '1555830685.29570404_151966535632260_914808417678645084_n.jpg', '2019-04-21 14:11:25', '2019-04-21 14:11:25'),
(4, 'Nguyễn Thu Trang', NULL, 2, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', 'ndquang1410@gmail.com', 'nguyenduy4', '$2y$10$6pgmjwPqcCJDopWX6LXYleixPG9nlyq7pE2PTIveIbWSSTAh11QZm', '$2y$10$ZfGZq7.Y8WopDmBxcRJjfOlv/UyfXaEdYhw/ZSF1bFT0tDS/a5Dmy', NULL, '2019-04-21 14:38:42', '2019-04-21 14:38:42'),
(5, 'Thanh Hương', '1995-04-08 00:00:00', 2, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', 'thanhhuong@gmail.com', 'thanhhuong', '$2y$10$TfZuyN7gp1aAzNXsVt6R0uDLHdyvgvd2edqll0r.hCJyKUfFzTpKC', '$2y$10$kt8.X1vLmr7TpUwyxmrlR.aoYKQQWPDBbh1Mlvy5fpwp4smPVYwz2', NULL, '2019-04-29 22:00:51', '2019-04-29 22:00:51'),
(6, 'Nguyễn Duy Quang', NULL, 1, 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', NULL, 'quangnd', '$2y$10$rNHohMSGQubU01LR4sP1GeqZQZtTwltk6EgzPLcRQTlM0VQE126xe', '$2y$10$ydJLhOqf/HEy5x1Klx8nnuzHn/M/INku7YsPjbYnTkwMKdvgwCmfe', NULL, '2019-05-26 19:09:48', '2019-05-26 19:09:48'),
(7, 'Nguyen Anh', NULL, 1, '20 Cộng Hòa, phường 4, Tân Bình, HCM', '2334', NULL, 'lua.solution@gmail.com', '$2y$10$wwOzySNcSnpb7QRaRcSAOeHQF/Ir3JiA5tFCLtHmuAljEkWOLQJGm', '$2y$10$Vkl4PHJWB3qx1YDUMWmC8OIAQTea4fwcNftVcwVTAHJ0z.FgJr8/S', NULL, '2019-05-27 21:28:18', '2019-05-27 21:28:18'),
(8, 'Nguyen Anh', NULL, 1, '20 Cộng Hòa, phường 4, Tân Bình, HCM', '859571638', NULL, 'lua.solutioswdasdasdn@gmail.com', '$2y$10$oNy5YCUgBuFC1qIp80Ck4enNBGbbKp9lY/dQmgzlsfQ7wVVEnp3n.', '$2y$10$rTB9Jgm87N2SKlPtdmAttO4f8th8TVeOwafQ2WxSjAE0nNuAKOOLu', NULL, '2019-06-11 10:33:37', '2019-06-11 10:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) DEFAULT 0,
  `acreage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtycustomeytoida` int(5) DEFAULT NULL,
  `qtycustomeytoithieu` int(5) DEFAULT NULL,
  `qtyOrder` int(11) DEFAULT 0,
  `nearby` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT 1,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `address`, `description`, `content`, `phone`, `email`, `avatar`, `images`, `price`, `acreage`, `qtycustomeytoida`, `qtycustomeytoithieu`, `qtyOrder`, `nearby`, `popular`, `user_id`, `status`, `created_at`, `updated_at`, `province_id`) VALUES
(19, 'BE UT HOUSE 05 - CĂN HỘ MINI', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Phòng riêng · 1 phòng tắm · 3 giường · 1 phòng ngủ · 5 khách (tối đa 7 khách)</p>\r\n\r\n<p>Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:</p>\r\n\r\n<p>- Cách nhà thờ Domaine de marie: 450m</p>\r\n\r\n<p>- Cách chợ Đà Lạt: 1,9km</p>\r\n\r\n<p>- Cách chùa Linh Sơn: 1,2km</p>\r\n\r\n<p>- Cách thác Camly : 1,2km</p>\r\n\r\n<p>- Cách quảng trường Lâm Viên: 2km</p>\r\n\r\n<p>- Cách Hồ Xuân Hương: 2km</p>\r\n\r\n<p>- CáCh vườn hoa Đà Lạt: 2,3km</p>\r\n\r\n<p>✅Mô tả: Be Ut House 05 - có tổng diện tích khoảng 600m2</p>\r\n\r\n<ul>\r\n	<li>Phòng ngủ: Với tổng diện tích phòng 38m2, bao gồm : 1 trệt + 1 gác . Nệm/ chăn/ gra/ grab cao cấp được chọn lựa kỹ lưỡng cho khách giấc ngủ thật ngon</li>\r\n	<li>Toilet riêng trong từng phòng cam kết sạch sẽ tuyệt đối</li>\r\n	<li>Bếp chung : Đầy đủ dụng cụ nấu ăn</li>\r\n	<li>Sân vườn rộng rãi, có camping, xích đu cho các bé. Có đốt lửa trại, BBQ tiệc tùng thoải mái</li>\r\n</ul>\r\n\r\n<p>Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:</p>\r\n\r\n<p>- Cách nhà thờ Domaine de marie: 450m</p>\r\n\r\n<p>- Cách chợ Đà Lạt: 1,9km</p>\r\n\r\n<p>- Cách chùa Linh Sơn: 1,2km</p>\r\n\r\n<p>- Cách thác Camly : 1,2km</p>\r\n\r\n<p>- Cách quảng trường Lâm Viên: 2km</p>\r\n\r\n<p>- Cách Hồ Xuân Hương: 2km</p>\r\n\r\n<p>- CáCh vườn hoa Đà Lạt: 2,3km</p>\r\n\r\n<p>✅Mô tả: Be Ut House 05 - có tổng diện tích khoảng 600m2</p>\r\n\r\n<ul>\r\n	<li>Phòng ngủ: Với tổng diện tích phòng 38m2, bao gồm : 1 trệt + 1 gác . Nệm/ chăn/ gra/ grab cao cấp được chọn lựa kỹ lưỡng cho khách giấc ngủ thật ngon</li>\r\n	<li>Toilet riêng trong từng phòng cam kết sạch sẽ tuyệt đối</li>\r\n	<li>Bếp chung : Đầy đủ dụng cụ nấu ăn</li>\r\n	<li>Sân vườn rộng rãi, có camping, xích đu cho các bé. Có đốt lửa trại, BBQ tiệc tùng thoải mái</li>\r\n</ul>', NULL, NULL, '1558857149.187805885.jpg', NULL, 4500000, '45', 5, NULL, 0, NULL, NULL, 7, 1, '2019-05-25 23:13:14', '2019-06-11 11:17:54', 31),
(20, 'Phòng đơn hướng vườn Hồng trứng - Vườn đom đóm', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', 'Phòng riêng · 2 phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)', '<p>Phòng riêng · 2 phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)</p>\r\n\r\n<p>✔️ Phòng Hồng trứng có thể được xem là căn phòng rộng rãi, biệt lập và riêng tư nhất trong các phòng vì nằm góc ngoài của nhà</p>\r\n\r\n<p>✔️ View từ căn phòng sẽ nhìn thẳng ra một cây hồng cổ thụ và khoảng sân thật rộng phía sau nhà</p>\r\n\r\n<p> </p>\r\n\r\n<p>Bạn vui lòng dành chút thời gian tìm hiểu kỹ hơn về Vườn trước khi chọn ở lại Vườn nhé!</p>\r\n\r\n<p>Ở đây tụi mình sống cuộc sống an yên, gần gũi thiên nhiên, sống chậm và lành. Tụi mình hằng ngày vẫn thức dậy trong ánh nắng mai, nghe tiếng chim ríu rít bên tai, mỗi ngày vẫn ra vườn tưới cây, ngắm hoa, hái rau, nấu ăn, làm bánh, chơi đàn, đọc sách, nghe nhạc, tập yoga, thiền, chơi với Lem Mi...và còn tỷ việc khác để sống một cuộc sống nhẹ nhàng.</p>\r\n\r\n<p>Vườn sẽ RẤT phù hợp nếu bạn đang tìm một nơi yên bình thật sự, một ngôi nhà nhỏ để bạn thong thả tận hưởng Đà Lạt trọn vẹn. Nếu bạn là người yêu thiện nhiên, yêu động vật và môi trường, quý những điều giản đơn bình dị, tìm kiếm những giá trị thực sự thì Vườn đom đóm chính là nơi dành cho bạn.</p>\r\n\r\n<p>Ngược lại, Vườn sẽ KHÔNG phù hợp nếu bạn chỉ đơn giản muốn tìm một nơi tiện nghi và sạch bong kin kít để ngủ lại qua đêm hay một ngôi nhà xinh đẹp để chụp hình sống ảo. Bởi vì ở Vườn khá bất tiện, đơn sơ và cũng không xinh xắn bằng các nơi khác. Vườn chỉ có sự mến thương hiếu khách dành cho bạn và còn nhiều điều khác nữa để bạn tự cảm nhận hơn là có thể nói ra bằng lời.</p>\r\n\r\n<p>✔️ Phòng Hồng trứng có thể được xem là căn phòng rộng rãi, biệt lập và riêng tư nhất trong các phòng vì nằm góc ngoài của nhà</p>\r\n\r\n<p>✔️ View từ căn phòng sẽ nhìn thẳng ra một cây hồng cổ thụ và khoảng sân thật rộng phía sau nhà</p>\r\n\r\n<p> </p>\r\n\r\n<p>Bạn vui lòng dành chút thời gian tìm hiểu kỹ hơn về Vườn trước khi chọn ở lại Vườn nhé!</p>\r\n\r\n<p>Ở đây tụi mình sống cuộc sống an yên, gần gũi thiên nhiên, sống chậm và lành. Tụi mình hằng ngày vẫn thức dậy trong ánh nắng mai, nghe tiếng chim ríu rít bên tai, mỗi ngày vẫn ra vườn tưới cây, ngắm hoa, hái rau, nấu ăn, làm bánh, chơi đàn, đọc sách, nghe nhạc, tập yoga, thiền, chơi với Lem Mi...và còn tỷ việc khác để sống một cuộc sống nhẹ nhàng.</p>\r\n\r\n<p>Vườn sẽ RẤT phù hợp nếu bạn đang tìm một nơi yên bình thật sự, một ngôi nhà nhỏ để bạn thong thả tận hưởng Đà Lạt trọn vẹn. Nếu bạn là người yêu thiện nhiên, yêu động vật và môi trường, quý những điều giản đơn bình dị, tìm kiếm những giá trị thực sự thì Vườn đom đóm chính là nơi dành cho bạn.</p>\r\n\r\n<p>Ngược lại, Vườn sẽ KHÔNG phù hợp nếu bạn chỉ đơn giản muốn tìm một nơi tiện nghi và sạch bong kin kít để ngủ lại qua đêm hay một ngôi nhà xinh đẹp để chụp hình sống ảo. Bởi vì ở Vườn khá bất tiện, đơn sơ và cũng không xinh xắn bằng các nơi khác. Vườn chỉ có sự mến thương hiếu khách dành cho bạn và còn nhiều điều khác nữa để bạn tự cảm nhận hơn là có thể nói ra bằng lời.</p>', NULL, NULL, '1558857083.room_20529_48_1550042278.jpg', NULL, 3400000, '70', 1, NULL, 0, NULL, NULL, 7, 1, '2019-05-25 23:58:22', '2019-06-11 11:15:11', 63),
(23, 'Phòng đơn hướng vườn Hồng trứng - Vườn đom đóm22', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Phòng riêng · 2 phòng tắm · 1 giường · 1 phòng ngủ · 2 khách (tối đa 2 khách)</p>\r\n\r\n<p>✔️ Phòng Hồng trứng có thể được xem là căn phòng rộng rãi, biệt lập và riêng tư nhất trong các phòng vì nằm góc ngoài của nhà</p>\r\n\r\n<p>✔️ View từ căn phòng sẽ nhìn thẳng ra một cây hồng cổ thụ và khoảng sân thật rộng phía sau nhà</p>\r\n\r\n<p> </p>\r\n\r\n<p>Bạn vui lòng dành chút thời gian tìm hiểu kỹ hơn về Vườn trước khi chọn ở lại Vườn nhé!</p>\r\n\r\n<p>Ở đây tụi mình sống cuộc sống an yên, gần gũi thiên nhiên, sống chậm và lành. Tụi mình hằng ngày vẫn thức dậy trong ánh nắng mai, nghe tiếng chim ríu rít bên tai, mỗi ngày vẫn ra vườn tưới cây, ngắm hoa, hái rau, nấu ăn, làm bánh, chơi đàn, đọc sách, nghe nhạc, tập yoga, thiền, chơi với Lem Mi...và còn tỷ việc khác để sống một cuộc sống nhẹ nhàng.</p>\r\n\r\n<p>Vườn sẽ RẤT phù hợp nếu bạn đang tìm một nơi yên bình thật sự, một ngôi nhà nhỏ để bạn thong thả tận hưởng Đà Lạt trọn vẹn. Nếu bạn là người yêu thiện nhiên, yêu động vật và môi trường, quý những điều giản đơn bình dị, tìm kiếm những giá trị thực sự thì Vườn đom đóm chính là nơi dành cho bạn.</p>\r\n\r\n<p>Ngược lại, Vườn sẽ KHÔNG phù hợp nếu bạn chỉ đơn giản muốn tìm một nơi tiện nghi và sạch bong kin kít để ngủ lại qua đêm hay một ngôi nhà xinh đẹp để chụp hình sống ảo. Bởi vì ở Vườn khá bất tiện, đơn sơ và cũng không xinh xắn bằng các nơi khác. Vườn chỉ có sự mến thương hiếu khách dành cho bạn và còn nhiều điều khác nữa để bạn tự cảm nhận hơn là có thể nói ra bằng lời.</p>\r\n\r\n<p>✔️ Phòng Hồng trứng có thể được xem là căn phòng rộng rãi, biệt lập và riêng tư nhất trong các phòng vì nằm góc ngoài của nhà</p>\r\n\r\n<p>✔️ View từ căn phòng sẽ nhìn thẳng ra một cây hồng cổ thụ và khoảng sân thật rộng phía sau nhà</p>\r\n\r\n<p> </p>\r\n\r\n<p>Bạn vui lòng dành chút thời gian tìm hiểu kỹ hơn về Vườn trước khi chọn ở lại Vườn nhé!</p>\r\n\r\n<p>Ở đây tụi mình sống cuộc sống an yên, gần gũi thiên nhiên, sống chậm và lành. Tụi mình hằng ngày vẫn thức dậy trong ánh nắng mai, nghe tiếng chim ríu rít bên tai, mỗi ngày vẫn ra vườn tưới cây, ngắm hoa, hái rau, nấu ăn, làm bánh, chơi đàn, đọc sách, nghe nhạc, tập yoga, thiền, chơi với Lem Mi...và còn tỷ việc khác để sống một cuộc sống nhẹ nhàng.</p>\r\n\r\n<p>Vườn sẽ RẤT phù hợp nếu bạn đang tìm một nơi yên bình thật sự, một ngôi nhà nhỏ để bạn thong thả tận hưởng Đà Lạt trọn vẹn. Nếu bạn là người yêu thiện nhiên, yêu động vật và môi trường, quý những điều giản đơn bình dị, tìm kiếm những giá trị thực sự thì Vườn đom đóm chính là nơi dành cho bạn.</p>\r\n\r\n<p>Ngược lại, Vườn sẽ KHÔNG phù hợp nếu bạn chỉ đơn giản muốn tìm một nơi tiện nghi và sạch bong kin kít để ngủ lại qua đêm hay một ngôi nhà xinh đẹp để chụp hình sống ảo. Bởi vì ở Vườn khá bất tiện, đơn sơ và cũng không xinh xắn bằng các nơi khác. Vườn chỉ có sự mến thương hiếu khách dành cho bạn và còn nhiều điều khác nữa để bạn tự cảm nhận hơn là có thể nói ra bằng lời.</p>', NULL, NULL, '1558830046.room_17113_1542533052.jpg', NULL, 4500000, '30', 5, 1, 0, '<p>Giới thiệu về các tiện nghi và dịch vụ tại nơi lưu trú</p>', NULL, 7, 1, '2019-05-26 07:11:00', '2019-06-11 11:20:57', 31),
(24, 'Gác mái Cây bơ - Vườn đom đóm', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Ph&ograve;ng ri&ecirc;ng &middot;&nbsp;2 ph&ograve;ng tắm &middot;&nbsp;1 giường &middot;&nbsp;1 ph&ograve;ng ngủ &middot;&nbsp;2 kh&aacute;ch (tối đa 2 kh&aacute;ch)</p>\r\n\r\n<p>✔️ L&agrave; một trong 3 ph&ograve;ng g&aacute;c m&aacute;i c&oacute; view xinh nhất Vườn, với khung cửa sổ rộng đ&oacute;n b&igrave;nh minh mỗi buổi sớm mai v&agrave; ngắm mưa si&ecirc;u th&iacute;ch</p>\r\n\r\n<p>✔️ Bạn c&oacute; thể trải nghiệm cảm gi&aacute;c vui th&iacute;ch khi tự tay h&aacute;i rau v&agrave; nấu cho m&igrave;nh những bữa ăn thật ngon</p>\r\n\r\n<p>✔️ G&aacute;c m&aacute;i C&acirc;y bơ th&iacute;ch hợp cho c&aacute;c bạn nhẹ nh&agrave;ng, tinh tế, kh&ocirc;ng ngại vận động v&igrave; sẽ cần đi l&ecirc;n cầu thang nhỏ để tới được ph&ograve;ng, kh&ocirc;ng ph&ugrave; hợp với bạn n&agrave;o c&oacute; th&acirc;n h&igrave;nh qu&aacute; khổ hoặc mang nhiều h&agrave;nh l&yacute;.</p>\r\n\r\n<p>Bạn vui l&ograve;ng d&agrave;nh ch&uacute;t thời gian t&igrave;m hiểu kỹ hơn về Vườn trước khi chọn ở lại Vườn nh&eacute;!</p>\r\n\r\n<p>Ở đ&acirc;y tụi m&igrave;nh sống cuộc sống an y&ecirc;n, gần gũi thi&ecirc;n nhi&ecirc;n, sống chậm v&agrave; l&agrave;nh. Tụi m&igrave;nh hằng ng&agrave;y vẫn thức dậy trong &aacute;nh nắng mai, nghe tiếng chim r&iacute;u r&iacute;t b&ecirc;n tai, mỗi ng&agrave;y vẫn ra vườn tưới c&acirc;y, ngắm hoa, h&aacute;i rau, nấu ăn, l&agrave;m b&aacute;nh, chơi đ&agrave;n, đọc s&aacute;ch, nghe nhạc, tập yoga, thiền, chơi với Lem Mi...v&agrave; c&ograve;n tỷ việc kh&aacute;c để sống một cuộc sống nhẹ nh&agrave;ng.</p>\r\n\r\n<p>Vườn sẽ RẤT ph&ugrave; hợp nếu bạn đang t&igrave;m một nơi y&ecirc;n b&igrave;nh thật sự, một ng&ocirc;i nh&agrave; nhỏ để bạn thong thả tận hưởng Đ&agrave; Lạt trọn vẹn. Nếu bạn l&agrave; người y&ecirc;u thiện nhi&ecirc;n, y&ecirc;u động vật v&agrave; m&ocirc;i trường, qu&yacute; những điều giản đơn b&igrave;nh dị, t&igrave;m kiếm những gi&aacute; trị thực sự th&igrave; Vườn đom đ&oacute;m ch&iacute;nh l&agrave; nơi d&agrave;nh cho bạn.</p>\r\n\r\n<p>Ngược lại, Vườn sẽ KH&Ocirc;NG ph&ugrave; hợp nếu bạn chỉ đơn giản muốn t&igrave;m một nơi tiện nghi v&agrave; sạch bong kin k&iacute;t để ngủ lại qua đ&ecirc;m hay một ng&ocirc;i nh&agrave; xinh đẹp để chụp h&igrave;nh sống ảo. Bởi v&igrave; ở Vườn kh&aacute; bất tiện, đơn sơ v&agrave; cũng kh&ocirc;ng xinh xắn bằng c&aacute;c nơi kh&aacute;c. Vườn chỉ c&oacute; sự mến thương hiếu kh&aacute;ch d&agrave;nh cho bạn v&agrave; c&ograve;n nhiều điều kh&aacute;c nữa để bạn tự cảm nhận hơn l&agrave; c&oacute; thể n&oacute;i ra bằng lời.</p>\r\n\r\n<p>✔️ L&agrave; một trong 3 ph&ograve;ng g&aacute;c m&aacute;i c&oacute; view xinh nhất Vườn, với khung cửa sổ rộng đ&oacute;n b&igrave;nh minh mỗi buổi sớm mai v&agrave; ngắm mưa si&ecirc;u th&iacute;ch</p>\r\n\r\n<p>✔️ Bạn c&oacute; thể trải nghiệm cảm gi&aacute;c vui th&iacute;ch khi tự tay h&aacute;i rau v&agrave; nấu cho m&igrave;nh những bữa ăn thật ngon</p>\r\n\r\n<p>✔️ G&aacute;c m&aacute;i C&acirc;y bơ th&iacute;ch hợp cho c&aacute;c bạn nhẹ nh&agrave;ng, tinh tế, kh&ocirc;ng ngại vận động v&igrave; sẽ cần đi l&ecirc;n cầu thang nhỏ để tới được ph&ograve;ng, kh&ocirc;ng ph&ugrave; hợp với bạn n&agrave;o c&oacute; th&acirc;n h&igrave;nh qu&aacute; khổ hoặc mang nhiều h&agrave;nh l&yacute;.</p>\r\n\r\n<p>Bạn vui l&ograve;ng d&agrave;nh ch&uacute;t thời gian t&igrave;m hiểu kỹ hơn về Vườn trước khi chọn ở lại Vườn nh&eacute;!</p>\r\n\r\n<p>Ở đ&acirc;y tụi m&igrave;nh sống cuộc sống an y&ecirc;n, gần gũi thi&ecirc;n nhi&ecirc;n, sống chậm v&agrave; l&agrave;nh. Tụi m&igrave;nh hằng ng&agrave;y vẫn thức dậy trong &aacute;nh nắng mai, nghe tiếng chim r&iacute;u r&iacute;t b&ecirc;n tai, mỗi ng&agrave;y vẫn ra vườn tưới c&acirc;y, ngắm hoa, h&aacute;i rau, nấu ăn, l&agrave;m b&aacute;nh, chơi đ&agrave;n, đọc s&aacute;ch, nghe nhạc, tập yoga, thiền, chơi với Lem Mi...v&agrave; c&ograve;n tỷ việc kh&aacute;c để sống một cuộc sống nhẹ nh&agrave;ng.</p>\r\n\r\n<p>Vườn sẽ RẤT ph&ugrave; hợp nếu bạn đang t&igrave;m một nơi y&ecirc;n b&igrave;nh thật sự, một ng&ocirc;i nh&agrave; nhỏ để bạn thong thả tận hưởng Đ&agrave; Lạt trọn vẹn. Nếu bạn l&agrave; người y&ecirc;u thiện nhi&ecirc;n, y&ecirc;u động vật v&agrave; m&ocirc;i trường, qu&yacute; những điều giản đơn b&igrave;nh dị, t&igrave;m kiếm những gi&aacute; trị thực sự th&igrave; Vườn đom đ&oacute;m ch&iacute;nh l&agrave; nơi d&agrave;nh cho bạn.</p>\r\n\r\n<p>Ngược lại, Vườn sẽ KH&Ocirc;NG ph&ugrave; hợp nếu bạn chỉ đơn giản muốn t&igrave;m một nơi tiện nghi v&agrave; sạch bong kin k&iacute;t để ngủ lại qua đ&ecirc;m hay một ng&ocirc;i nh&agrave; xinh đẹp để chụp h&igrave;nh sống ảo. Bởi v&igrave; ở Vườn kh&aacute; bất tiện, đơn sơ v&agrave; cũng kh&ocirc;ng xinh xắn bằng c&aacute;c nơi kh&aacute;c. Vườn chỉ c&oacute; sự mến thương hiếu kh&aacute;ch d&agrave;nh cho bạn v&agrave; c&ograve;n nhiều điều kh&aacute;c nữa để bạn tự cảm nhận hơn l&agrave; c&oacute; thể n&oacute;i ra bằng lời.</p>', '0982039380', 'ndquang1410@gmail.com', '1558830007.room_18902_8_1552234066.jpg', NULL, 4500000, '30', 4, 1, 0, NULL, NULL, 1, 1, '2019-05-26 07:12:29', '2019-05-26 07:20:07', 31),
(25, 'Happy Land homestay & cafe - Phòng Ngũ Sắc', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Ph&ograve;ng ri&ecirc;ng &middot;&nbsp;1 ph&ograve;ng tắm &middot;&nbsp;1 giường &middot;&nbsp;1 ph&ograve;ng ngủ &middot;&nbsp;1 kh&aacute;ch (tối đa 2 kh&aacute;ch)</p>\r\n\r\n<p>✔️ Căn homestay c&oacute; tổng cộng 6 ph&ograve;ng với mỗi ph&ograve;ng 1 wc ri&ecirc;ng biệt.</p>\r\n\r\n<p>✔️ X&acirc;y từ 2018 với phong c&aacute;ch thiết kế hiện đại &amp; đơn giản</p>\r\n\r\n<p>✔️ Đặc biệt ngo&agrave;i s&acirc;n c&oacute; qu&aacute;n cf đầy nắng ph&ugrave; hợp với c&aacute;c nh&oacute;m bạn cần kh&ocirc;ng gian chuyện tr&ograve;.</p>\r\n\r\n<p>✔️ Nguy&ecirc;n liệu nh&agrave; ho&agrave;n to&agrave;n bằng gỗ - th&acirc;n thiện v&agrave; gần gũi.</p>\r\n\r\n<p>Homestay Happy Land nằm ngay trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt giữa c&aacute;c địa điểm du lịch nổi tiếng như nh&agrave; thờ Mai Anh, biệt điện Trần Lệ Xu&acirc;n...</p>\r\n\r\n<p>Homestay c&oacute; khu nh&agrave; bếp d&agrave;nh cho kh&aacute;ch c&oacute; thể nấu nướng v&agrave; nh&agrave; ăn uống gi&uacute;p kh&aacute;ch vừa thoải m&aacute;i vừa tiện lợi đặc biệt d&agrave;nh cho c&aacute;c gia đ&igrave;nh c&oacute; con nhỏ.</p>\r\n\r\n<p>Căn homestay c&oacute; tổng cộng 6 ph&ograve;ng với mỗi ph&ograve;ng 1 wc ri&ecirc;ng biệt.</p>\r\n\r\n<p>X&acirc;y từ 2018 với phong c&aacute;ch thiết kế hiện đại &amp; đơn giản</p>\r\n\r\n<p>Đặc biệt ngo&agrave;i s&acirc;n c&oacute; qu&aacute;n cf đầy nắng ph&ugrave; hợp với c&aacute;c nh&oacute;m bạn cần kh&ocirc;ng gian chuyện tr&ograve;.</p>\r\n\r\n<p>Nguy&ecirc;n liệu nh&agrave; ho&agrave;n to&agrave;n bằng gỗ - th&acirc;n thiện v&agrave; gần gũi.</p>\r\n\r\n<p>✔️ Căn homestay c&oacute; tổng cộng 6 ph&ograve;ng với mỗi ph&ograve;ng 1 wc ri&ecirc;ng biệt.</p>\r\n\r\n<p>✔️ X&acirc;y từ 2018 với phong c&aacute;ch thiết kế hiện đại &amp; đơn giản</p>\r\n\r\n<p>✔️ Đặc biệt ngo&agrave;i s&acirc;n c&oacute; qu&aacute;n cf đầy nắng ph&ugrave; hợp với c&aacute;c nh&oacute;m bạn cần kh&ocirc;ng gian chuyện tr&ograve;.</p>\r\n\r\n<p>✔️ Nguy&ecirc;n liệu nh&agrave; ho&agrave;n to&agrave;n bằng gỗ - th&acirc;n thiện v&agrave; gần gũi.</p>\r\n\r\n<p>Homestay Happy Land nằm ngay trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt giữa c&aacute;c địa điểm du lịch nổi tiếng như nh&agrave; thờ Mai Anh, biệt điện Trần Lệ Xu&acirc;n...</p>\r\n\r\n<p>Homestay c&oacute; khu nh&agrave; bếp d&agrave;nh cho kh&aacute;ch c&oacute; thể nấu nướng v&agrave; nh&agrave; ăn uống gi&uacute;p kh&aacute;ch vừa thoải m&aacute;i vừa tiện lợi đặc biệt d&agrave;nh cho c&aacute;c gia đ&igrave;nh c&oacute; con nhỏ.</p>\r\n\r\n<p>Căn homestay c&oacute; tổng cộng 6 ph&ograve;ng với mỗi ph&ograve;ng 1 wc ri&ecirc;ng biệt.</p>\r\n\r\n<p>X&acirc;y từ 2018 với phong c&aacute;ch thiết kế hiện đại &amp; đơn giản</p>\r\n\r\n<p>Đặc biệt ngo&agrave;i s&acirc;n c&oacute; qu&aacute;n cf đầy nắng ph&ugrave; hợp với c&aacute;c nh&oacute;m bạn cần kh&ocirc;ng gian chuyện tr&ograve;.</p>\r\n\r\n<p>Nguy&ecirc;n liệu nh&agrave; ho&agrave;n to&agrave;n bằng gỗ - th&acirc;n thiện v&agrave; gần gũi.</p>', '0982039380', 'ndquang1410@gmail.com', '1558830304.room_20529_48_1550042278.jpg', NULL, 4500000, '30', 1, NULL, 0, NULL, NULL, 1, 1, '2019-05-26 07:25:04', '2019-05-26 07:25:04', 63),
(26, 'Xóm Homestay - Tailor store nguyên căn', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Ph&ograve;ng ri&ecirc;ng &middot;&nbsp;2 ph&ograve;ng tắm &middot;&nbsp;3 giường &middot;&nbsp;3 ph&ograve;ng ngủ &middot;&nbsp;6 kh&aacute;ch (tối đa 8 kh&aacute;ch)</p>\r\n\r\n<p>✔️ Mọi thứ đ&atilde; đều được chuẩn bị tinh tươm cho bạn, từ giường ngủ thơm phức m&ugrave;i ga gối mới tới bếp ăn đầy đủ tiện nghi</p>\r\n\r\n<p>✔️ Nơi đ&acirc;y sẽ khiến bạn cảm thấy ấm c&uacute;ng v&agrave; đầy đủ như đang ở tại ch&iacute;nh ng&ocirc;i nh&agrave; của m&igrave;nh vậy.</p>\r\n\r\n<p>✔️ Với một kh&ocirc;ng gian nhiều m&agrave;u sắc, view v&ocirc; c&ugrave;ng đẹp khi nh&igrave;n ra khoảng kh&ocirc;ng gian tuyệt vời ph&iacute;a xa</p>\r\n\r\n<p>Một căn homestay xa trung t&acirc;m nhưng X&oacute;m lại mang trong m&igrave;nh một khung cảnh kh&aacute; l&atilde;ng mạn v&agrave; đầy cỏ c&acirc;y hoa l&aacute;. Ch&uacute;ng t&ocirc;i lu&ocirc;n muốn mang đến cho bạn những điều tuyệt vời nhất khi đến với X&oacute;m. X&oacute;m g&acirc;y ấn tượng mạnh với tất cả những ai từng đặt ch&acirc;n đến đ&acirc;y. Với một kh&ocirc;ng gian nhiều m&agrave;u sắc, view v&ocirc; c&ugrave;ng đẹp khi nh&igrave;n ra khoảng kh&ocirc;ng gian tuyệt vời ph&iacute;a xa. Bạn sẽ tha hồ sống ảo khi đến ở đ&acirc;y, tất cả đều được sắp xếp để mang lại cho bạn những trải nghiệm tuyệt vời.</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i chắc chắn l&agrave; những người th&acirc;n thiện v&agrave; v&ocirc; c&ugrave;ng mến kh&aacute;ch. Lu&ocirc;n d&agrave;nh cho bạn nhiều lời hỏi han, những nụ cười tươi v&agrave;o mỗi s&aacute;ng hay bất cứ khi n&agrave;o bạn gặp họ.&nbsp;Nơi n&agrave;y th&iacute;ch hợp cho những người th&iacute;ch sự b&igrave;nh y&ecirc;n, nh&egrave; nhẹ để tận hưởng c&aacute;i m&aacute;t se lạnh của Đ&agrave; Lạt l&agrave; hết b&agrave;i lu&ocirc;n :))</p>\r\n\r\n<p>﻿X&oacute;m homestay như kiểu một ng&ocirc;i l&agrave;ng cầu vồng thu b&eacute;, tr&ecirc;n cả mong đợi n&ecirc;n m&igrave;nh h&aacute;o hức chia sẻ với mọi người. X&oacute;m homestay với 7 căn nh&agrave; 7 m&agrave;u xinh xắn. Kh&ocirc;ng kh&iacute; trong l&agrave;nh. Mỗi căn nh&agrave; được trang tr&iacute; c&oacute; 1 n&eacute;t ri&ecirc;ng biệt. Ph&ograve;ng ngủ sạch sẽ, tho&aacute;ng m&aacute;t, đồ d&ugrave;ng tất cả đều dễ thương, xinh xắn chỉ cần lần đầu đến đ&acirc;y l&agrave; bạn c&oacute; thể y&ecirc;u được ng&ocirc;i nh&agrave; của ch&uacute;ng t&ocirc;i rồi đ&oacute;.</p>\r\n\r\n<p>✔️ Mọi thứ đ&atilde; đều được chuẩn bị tinh tươm cho bạn, từ giường ngủ thơm phức m&ugrave;i ga gối mới tới bếp ăn đầy đủ tiện nghi</p>\r\n\r\n<p>✔️ Nơi đ&acirc;y sẽ khiến bạn cảm thấy ấm c&uacute;ng v&agrave; đầy đủ như đang ở tại ch&iacute;nh ng&ocirc;i nh&agrave; của m&igrave;nh vậy.</p>\r\n\r\n<p>✔️ Với một kh&ocirc;ng gian nhiều m&agrave;u sắc, view v&ocirc; c&ugrave;ng đẹp khi nh&igrave;n ra khoảng kh&ocirc;ng gian tuyệt vời ph&iacute;a xa</p>\r\n\r\n<p>Một căn homestay xa trung t&acirc;m nhưng X&oacute;m lại mang trong m&igrave;nh một khung cảnh kh&aacute; l&atilde;ng mạn v&agrave; đầy cỏ c&acirc;y hoa l&aacute;. Ch&uacute;ng t&ocirc;i lu&ocirc;n muốn mang đến cho bạn những điều tuyệt vời nhất khi đến với X&oacute;m. X&oacute;m g&acirc;y ấn tượng mạnh với tất cả những ai từng đặt ch&acirc;n đến đ&acirc;y. Với một kh&ocirc;ng gian nhiều m&agrave;u sắc, view v&ocirc; c&ugrave;ng đẹp khi nh&igrave;n ra khoảng kh&ocirc;ng gian tuyệt vời ph&iacute;a xa. Bạn sẽ tha hồ sống ảo khi đến ở đ&acirc;y, tất cả đều được sắp xếp để mang lại cho bạn những trải nghiệm tuyệt vời.</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i chắc chắn l&agrave; những người th&acirc;n thiện v&agrave; v&ocirc; c&ugrave;ng mến kh&aacute;ch. Lu&ocirc;n d&agrave;nh cho bạn nhiều lời hỏi han, những nụ cười tươi v&agrave;o mỗi s&aacute;ng hay bất cứ khi n&agrave;o bạn gặp họ.&nbsp;Nơi n&agrave;y th&iacute;ch hợp cho những người th&iacute;ch sự b&igrave;nh y&ecirc;n, nh&egrave; nhẹ để tận hưởng c&aacute;i m&aacute;t se lạnh của Đ&agrave; Lạt l&agrave; hết b&agrave;i lu&ocirc;n :))</p>\r\n\r\n<p>﻿X&oacute;m homestay như kiểu một ng&ocirc;i l&agrave;ng cầu vồng thu b&eacute;, tr&ecirc;n cả mong đợi n&ecirc;n m&igrave;nh h&aacute;o hức chia sẻ với mọi người. X&oacute;m homestay với 7 căn nh&agrave; 7 m&agrave;u xinh xắn. Kh&ocirc;ng kh&iacute; trong l&agrave;nh. Mỗi căn nh&agrave; được trang tr&iacute; c&oacute; 1 n&eacute;t ri&ecirc;ng biệt. Ph&ograve;ng ngủ sạch sẽ, tho&aacute;ng m&aacute;t, đồ d&ugrave;ng tất cả đều dễ thương, xinh xắn chỉ cần lần đầu đến đ&acirc;y l&agrave; bạn c&oacute; thể y&ecirc;u được ng&ocirc;i nh&agrave; của ch&uacute;ng t&ocirc;i rồi đ&oacute;.</p>', '0982039380', 'ndquang1410@gmail.com', '1558830410.room_18902_8_1552234066.jpg', NULL, 4500000, '30', 2, NULL, 0, '<p>Gần khu du lịch nổi tiếng ở Đ&agrave; Lạt , L&acirc;m đồng</p>', NULL, 1, 1, '2019-05-26 07:26:50', '2019-05-26 07:26:50', 31),
(27, 'Let it be Homestay - phòng riêng Sunshine', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Ph&ograve;ng ri&ecirc;ng &middot;&nbsp;1 ph&ograve;ng tắm &middot;&nbsp;1 giường &middot;&nbsp;1 ph&ograve;ng ngủ &middot;&nbsp;2 kh&aacute;ch (tối đa 3 kh&aacute;ch)</p>\r\n\r\n<p>✔️ Ban c&ocirc;ng của căn hộ rất rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga hoặc ngắm cảnh th&agrave;nh phố</p>\r\n\r\n<p>✔️&nbsp;<strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, trung t&acirc;m th&agrave;nh phố</p>\r\n\r\n<p>✔️ Căn hộ của ch&uacute;ng t&ocirc;i cung cấp cho bạn đ&agrave;y đủ những tiện nghi hiện đại bậc nhất</p>\r\n\r\n<p><strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, nơi bạn c&oacute; thể tận hưởng thi&ecirc;n nhi&ecirc;n trong l&agrave;nh giữa l&ograve;ng th&agrave;nh phố.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m một Homestay giản dị, y&ecirc;n l&agrave;nh với đầy đủ tiện nghi ti&ecirc;u chuẩn kh&aacute;ch sạn th&igrave; Let it be l&agrave; lựa chọn ho&agrave;n hảo. Mở cửa sổ mỗi buổi s&aacute;ng, sương sớm l&agrave;nh lạnh h&ograve;a quyện với hương thơm c&acirc;y cối sẽ tr&agrave;n v&agrave;o cả căn nh&agrave;. Đ&oacute; sẽ l&agrave; trải nghiệm tuyệt vời,1 l&agrave;n gi&oacute; tươi mới cho cuộc sống vốn đ&atilde; rất bận rộn v&agrave; căn thẳng.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; 1 ph&ograve;ng kh&aacute;ch v&agrave; cũng l&agrave; ph&ograve;ng s&aacute;ch, với sofa v&agrave; l&ograve; sưởi;</p>\r\n\r\n<p>1 ph&ograve;ng bếp rộng r&atilde;i đủ bếp gaz, l&ograve; nướng, m&aacute;y xay, gia vị, dụng cụ nấu ăn... ;</p>\r\n\r\n<p>Ban c&ocirc;ng rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga; từ đ&acirc;y rất gần Hồ Xu&acirc;n Hương n&ecirc;n h&atilde;y mang theo gi&agrave;y thể thao để chạy bộ buổi s&aacute;ng bạn nh&eacute;!</p>\r\n\r\n<p>4 ph&ograve;ng ngủ ri&ecirc;ng biệt với giường đ&ocirc;i rộng r&atilde;i, lu&ocirc;n tr&agrave;n ngập gi&oacute; v&agrave; &aacute;nh s&aacute;ng từ cửa sổ lớn, b&agrave;n v&agrave; đ&egrave;n l&agrave;m việc, Tivi, m&aacute;y sấy, b&agrave;n trang điểm, tủ quần &aacute;o; c&aacute;c ph&ograve;ng đều được trang bị Toilet ri&ecirc;ng sạch sẽ v&agrave; 1 Toilet phụ b&ecirc;n ngo&agrave;i...</p>\r\n\r\n<p>✔️ Ban c&ocirc;ng của căn hộ rất rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga hoặc ngắm cảnh th&agrave;nh phố</p>\r\n\r\n<p>✔️&nbsp;<strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, trung t&acirc;m th&agrave;nh phố</p>\r\n\r\n<p>✔️ Căn hộ của ch&uacute;ng t&ocirc;i cung cấp cho bạn đ&agrave;y đủ những tiện nghi hiện đại bậc nhất</p>\r\n\r\n<p><strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, nơi bạn c&oacute; thể tận hưởng thi&ecirc;n nhi&ecirc;n trong l&agrave;nh giữa l&ograve;ng th&agrave;nh phố.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m một Homestay giản dị, y&ecirc;n l&agrave;nh với đầy đủ tiện nghi ti&ecirc;u chuẩn kh&aacute;ch sạn th&igrave; Let it be l&agrave; lựa chọn ho&agrave;n hảo. Mở cửa sổ mỗi buổi s&aacute;ng, sương sớm l&agrave;nh lạnh h&ograve;a quyện với hương thơm c&acirc;y cối sẽ tr&agrave;n v&agrave;o cả căn nh&agrave;. Đ&oacute; sẽ l&agrave; trải nghiệm tuyệt vời,1 l&agrave;n gi&oacute; tươi mới cho cuộc sống vốn đ&atilde; rất bận rộn v&agrave; căn thẳng.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; 1 ph&ograve;ng kh&aacute;ch v&agrave; cũng l&agrave; ph&ograve;ng s&aacute;ch, với sofa v&agrave; l&ograve; sưởi;</p>\r\n\r\n<p>1 ph&ograve;ng bếp rộng r&atilde;i đủ bếp gaz, l&ograve; nướng, m&aacute;y xay, gia vị, dụng cụ nấu ăn... ;</p>\r\n\r\n<p>Ban c&ocirc;ng rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga; từ đ&acirc;y rất gần Hồ Xu&acirc;n Hương n&ecirc;n h&atilde;y mang theo gi&agrave;y thể thao để chạy bộ buổi s&aacute;ng bạn nh&eacute;!</p>\r\n\r\n<p>4 ph&ograve;ng ngủ ri&ecirc;ng biệt với giường đ&ocirc;i rộng r&atilde;i, lu&ocirc;n tr&agrave;n ngập gi&oacute; v&agrave; &aacute;nh s&aacute;ng từ cửa sổ lớn, b&agrave;n v&agrave; đ&egrave;n l&agrave;m việc, Tivi, m&aacute;y sấy, b&agrave;n trang điểm, tủ quần &aacute;o; c&aacute;c ph&ograve;ng đều được trang bị Toilet ri&ecirc;ng sạch sẽ v&agrave; 1 Toilet phụ b&ecirc;n ngo&agrave;i...</p>', '0982039380', 'ndquang1410@gmail.com', '1558830492.room_18153_20_1544776853.jpg', '', 4500000, '30', 1, NULL, 0, NULL, NULL, 1, 1, '2019-05-26 07:28:12', '2019-05-26 07:28:12', 31),
(28, 'Homestay Bolero Đà Lạt - Phòng Bolero', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Ph&ograve;ng ri&ecirc;ng &middot;&nbsp;1 ph&ograve;ng tắm &middot;&nbsp;1 giường &middot;&nbsp;1 ph&ograve;ng ngủ &middot;&nbsp;2 kh&aacute;ch (tối đa 2 kh&aacute;ch)</p>\r\n\r\n<p>Khi ch&uacute;ng ta đi du lịch đến một địa điểm n&agrave;o đ&oacute;, th&igrave; ngo&agrave;i khung cảnh đẹp n&ecirc;n thơ, ẩm thực ngon miệng v&agrave; lạ mắt, kh&iacute; hậu chan h&ograve;a với l&ograve;ng người, th&igrave; một nơi nghỉ ngơi, để trở về như l&agrave; nh&agrave; thật sự tại một nơi xa lạ sau một ng&agrave;y rong chơi gắp nơi, đ&oacute; cũng l&agrave; một phần quan trọng để tạo n&ecirc;n một chuyến du lịch trọn vẹn.</p>\r\n\r\n<p>Một kh&ocirc;ng gian nghỉ dưỡng đầy sắc m&agrave;u của cuộc sống. Với những chủ đề cho mỗi kh&ocirc;ng gian.</p>\r\n\r\n<p>Bolero Homestay hứa hẹn mang đến cho ch&uacute;ng ta một kh&ocirc;ng gian thư th&aacute;i nhất c&oacute; thể. Nơi đ&acirc;y sẽ l&agrave; ng&ocirc;i nh&agrave; thứ hai thật sự của ch&uacute;ng ta khi đặt ch&acirc;n đến v&ugrave;ng đất cao nguy&ecirc;n thơ mộng - Đ&agrave; Lạt.</p>\r\n\r\n<p>Bolero Homestay - Đ&agrave; Lạt nằm gần ngay bến xe lớn TH&Agrave;NH BƯỞI ở đường Lữ Gia. C&aacute;c bạn gần xa khi đến Đ&agrave; Lạt nếu đi xe Th&agrave;nh Bưởi th&igrave; rất thuận tiện cho c&aacute;c bạn di chuyển đến Bolero Home.</p>\r\n\r\n<p>Chỉ c&aacute;ch hồ xu&acirc;n hương 1,7 km. C&aacute;ch chợ Đ&agrave; Lạt 3km v&agrave; chỉ 5km c&aacute;c bạn c&oacute; thể đến Trại M&aacute;t, nơi c&oacute; ch&ugrave;a Linh Phước, ng&ocirc;i ch&ugrave;a ch&eacute;n kiểu c&ugrave;ng tượng Phật l&agrave;m từ hoa Bất Tử tuyệt đẹp, v&agrave; nhi&ecirc;u phong cảnh n&ecirc;n thơ.</p>\r\n\r\n<p>Từ Bolero Home c&aacute;c bạn đi về hướng hồ Xu&acirc;n Hương, c&aacute;c bạn sẽ được đi qua conđường Quang Trung đẹp nhất Đ&agrave; Lạt v&igrave; hai b&ecirc;n đường l&agrave; những h&agrave;ng c&acirc;y đ&agrave;o trắng rất thơ mộng. B&ecirc;n cạnh đ&oacute; c&aacute;c bạn sẽ đi ngang qua Ga Đ&agrave; Lạt, một địa điểm check in l&yacute; tưởng.</p>\r\n\r\n<p>Bolero Homestay nằm tr&ecirc;n đầu d&oacute;c của con đường Lữ Gia, với thiết kế nh&agrave; tho&aacute;ng m&aacute;t, bốn mặt của nh&agrave; đều c&oacute; cửa sổ nh&igrave;n ra cảnh đồi n&uacute;i, kh&ocirc;ng bị che chắn bởi ng&ocirc;i nh&agrave; n&agrave;o. N&ecirc;n v&igrave; thế tất cả c&aacute;c ph&ograve;ng đều c&oacute; cửa sổ v&agrave; ban c&ocirc;ng nh&igrave;n ra ngo&agrave;i.</p>\r\n\r\n<p>C&oacute; chỗ đậu xe từ 4 - 16 chỗ.</p>\r\n\r\n<p>C&oacute; m&aacute;y tắm nước n&oacute;ng lạnh, m&aacute;y sấy t&oacute;c, b&agrave;n ủi v&agrave; một số đồ d&ugrave;ng vệ sinh c&aacute; nh&acirc;n.</p>\r\n\r\n<p>C&oacute; phục vụ m&igrave; g&oacute;i v&agrave; cafe</p>\r\n\r\n<p>C&oacute; cho thu&ecirc; xe tay ga, xe số đời mới. Gi&aacute; từ 100 - 150k/ ng&agrave;y.</p>\r\n\r\n<p>Tư vấn c&aacute;c điểm tham quan, check in miễn ph&iacute;.</p>\r\n\r\n<p>C&oacute; giặt quần &aacute;o gi&aacute; rẻ lấy trong ng&agrave;y.</p>\r\n\r\n<p>C&oacute; thể sử dụng bếp miễn ph&iacute;, c&oacute; s&acirc;n trước đủ rộng để l&agrave;m BBQ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ph&ograve;ng rộng 20m2 với t&ocirc;ng m&agrave;u dĩu d&agrave;ng, giường queen size v&agrave; trang tr&iacute; theo chủ đề &acirc;m nhạc. Bước v&agrave;o căn ph&ograve;ng bạn sẽ c&oacute; một cảm gi&aacute;c thanh b&igrave;nh lạ thường, tạm qu&ecirc;n đi sự n&aacute;o nhiệt của phố phường đ&ocirc;ng đ&uacute;c để nghỉ ngơi, h&iacute;t thở một Đ&agrave; Lạt rất ri&ecirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi ch&uacute;ng ta đi du lịch đến một địa điểm n&agrave;o đ&oacute;, th&igrave; ngo&agrave;i khung cảnh đẹp n&ecirc;n thơ, ẩm thực ngon miệng v&agrave; lạ mắt, kh&iacute; hậu chan h&ograve;a với l&ograve;ng người, th&igrave; một nơi nghỉ ngơi, để trở về như l&agrave; nh&agrave; thật sự tại một nơi xa lạ sau một ng&agrave;y rong chơi gắp nơi, đ&oacute; cũng l&agrave; một phần quan trọng để tạo n&ecirc;n một chuyến du lịch trọn vẹn.</p>\r\n\r\n<p>Một kh&ocirc;ng gian nghỉ dưỡng đầy sắc m&agrave;u của cuộc sống. Với những chủ đề cho mỗi kh&ocirc;ng gian.</p>\r\n\r\n<p>Bolero Homestay hứa hẹn mang đến cho ch&uacute;ng ta một kh&ocirc;ng gian thư th&aacute;i nhất c&oacute; thể. Nơi đ&acirc;y sẽ l&agrave; ng&ocirc;i nh&agrave; thứ hai thật sự của ch&uacute;ng ta khi đặt ch&acirc;n đến v&ugrave;ng đất cao nguy&ecirc;n thơ mộng - Đ&agrave; Lạt.</p>\r\n\r\n<p>Bolero Homestay - Đ&agrave; Lạt nằm gần ngay bến xe lớn TH&Agrave;NH BƯỞI ở đường Lữ Gia. C&aacute;c bạn gần xa khi đến Đ&agrave; Lạt nếu đi xe Th&agrave;nh Bưởi th&igrave; rất thuận tiện cho c&aacute;c bạn di chuyển đến Bolero Home.</p>\r\n\r\n<p>Chỉ c&aacute;ch hồ xu&acirc;n hương 1,7 km. C&aacute;ch chợ Đ&agrave; Lạt 3km v&agrave; chỉ 5km c&aacute;c bạn c&oacute; thể đến Trại M&aacute;t, nơi c&oacute; ch&ugrave;a Linh Phước, ng&ocirc;i ch&ugrave;a ch&eacute;n kiểu c&ugrave;ng tượng Phật l&agrave;m từ hoa Bất Tử tuyệt đẹp, v&agrave; nhi&ecirc;u phong cảnh n&ecirc;n thơ.</p>\r\n\r\n<p>Từ Bolero Home c&aacute;c bạn đi về hướng hồ Xu&acirc;n Hương, c&aacute;c bạn sẽ được đi qua conđường Quang Trung đẹp nhất Đ&agrave; Lạt v&igrave; hai b&ecirc;n đường l&agrave; những h&agrave;ng c&acirc;y đ&agrave;o trắng rất thơ mộng. B&ecirc;n cạnh đ&oacute; c&aacute;c bạn sẽ đi ngang qua Ga Đ&agrave; Lạt, một địa điểm check in l&yacute; tưởng.</p>\r\n\r\n<p>Bolero Homestay nằm tr&ecirc;n đầu d&oacute;c của con đường Lữ Gia, với thiết kế nh&agrave; tho&aacute;ng m&aacute;t, bốn mặt của nh&agrave; đều c&oacute; cửa sổ nh&igrave;n ra cảnh đồi n&uacute;i, kh&ocirc;ng bị che chắn bởi ng&ocirc;i nh&agrave; n&agrave;o. N&ecirc;n v&igrave; thế tất cả c&aacute;c ph&ograve;ng đều c&oacute; cửa sổ v&agrave; ban c&ocirc;ng nh&igrave;n ra ngo&agrave;i.</p>\r\n\r\n<p>C&oacute; chỗ đậu xe từ 4 - 16 chỗ.</p>\r\n\r\n<p>C&oacute; m&aacute;y tắm nước n&oacute;ng lạnh, m&aacute;y sấy t&oacute;c, b&agrave;n ủi v&agrave; một số đồ d&ugrave;ng vệ sinh c&aacute; nh&acirc;n.</p>\r\n\r\n<p>C&oacute; phục vụ m&igrave; g&oacute;i v&agrave; cafe</p>\r\n\r\n<p>C&oacute; cho thu&ecirc; xe tay ga, xe số đời mới. Gi&aacute; từ 100 - 150k/ ng&agrave;y.</p>\r\n\r\n<p>Tư vấn c&aacute;c điểm tham quan, check in miễn ph&iacute;.</p>\r\n\r\n<p>C&oacute; giặt quần &aacute;o gi&aacute; rẻ lấy trong ng&agrave;y.</p>\r\n\r\n<p>C&oacute; thể sử dụng bếp miễn ph&iacute;, c&oacute; s&acirc;n trước đủ rộng để l&agrave;m BBQ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ph&ograve;ng rộng 20m2 với t&ocirc;ng m&agrave;u dĩu d&agrave;ng, giường queen size v&agrave; trang tr&iacute; theo chủ đề &acirc;m nhạc. Bước v&agrave;o căn ph&ograve;ng bạn sẽ c&oacute; một cảm gi&aacute;c thanh b&igrave;nh lạ thường, tạm qu&ecirc;n đi sự n&aacute;o nhiệt của phố phường đ&ocirc;ng đ&uacute;c để nghỉ ngơi, h&iacute;t thở một Đ&agrave; Lạt rất ri&ecirc;ng.</p>', '0982039380', 'ndquang1410@gmail.com', '1558830617.room_18020_33_1544541978.jpg', NULL, 4500000, '30', 1, NULL, 0, NULL, NULL, 1, 1, '2019-05-26 07:30:17', '2019-05-26 07:30:17', 31),
(29, 'Let it be Homestay - Nguyên căn222', 'Đà Lạt, Lâm Đồng, Vietnam', 'Tổng diện tích khoảng 600m2 - Với 6 căn hộ liền kề, rộng rãi, thoáng mát - Bếp đầy đủ dụng cụ nấu ăn => Cho bạn tự phục vụ, thoải mái như ở nhà - Sân vườn rộng, có liều camping, đốt lửa, BBQ thoải mái Đến với homes, các bạn sẽ tận hưởng trọn vẹn không khí trong lành của cây cỏ ở sân vườn, trọn vẹn không khí Đà Lạt. - Phòng ốc được chăm sóc, kiểm tra vệ sinh kỹ lưỡng nghiêm ngặt. Đặc biệt, các bạn hưởng đươc rất nhiều dịch vụ MIỄN PHÍ mà giá rất hợp lý không nơi nào có được- Vì Homes hiểu rằng, chúng tôi tôn trọng bạn, cũng là tôn trọng uy tín của chúng tôi!Vị trí:', '<p>Nguy&ecirc;n căn &middot;&nbsp;4 ph&ograve;ng tắm &middot;&nbsp;4 giường &middot;&nbsp;4 ph&ograve;ng ngủ &middot;&nbsp;10 kh&aacute;ch (tối đa 15 kh&aacute;ch)</p>\r\n\r\n<p>✔️ Ban c&ocirc;ng của căn hộ rất rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga, rất gần Hồ Xu&acirc;n Hương n&ecirc;n h&atilde;y mang theo gi&agrave;y thể thao để chạy bộ</p>\r\n\r\n<p>✔️&nbsp;<strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, trung t&acirc;m th&agrave;nh phố</p>\r\n\r\n<p>✔️ Căn hộ của ch&uacute;ng t&ocirc;i cung cấp cho bạn đ&agrave;y đủ những tiện nghi hiện đại bậc nhất</p>\r\n\r\n<p><strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, nơi bạn c&oacute; thể tận hưởng thi&ecirc;n nhi&ecirc;n trong l&agrave;nh giữa l&ograve;ng th&agrave;nh phố.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m một Homestay giản dị, y&ecirc;n l&agrave;nh với đầy đủ tiện nghi ti&ecirc;u chuẩn kh&aacute;ch sạn th&igrave; Let it be l&agrave; lựa chọn ho&agrave;n hảo. Mở cửa sổ mỗi buổi s&aacute;ng, sương sớm l&agrave;nh lạnh h&ograve;a quyện với hương thơm c&acirc;y cối sẽ tr&agrave;n v&agrave;o cả căn nh&agrave;. Đ&oacute; sẽ l&agrave; trải nghiệm tuyệt vời,1 l&agrave;n gi&oacute; tươi mới cho cuộc sống vốn đ&atilde; rất bận rộn v&agrave; căn thẳng.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; 1 ph&ograve;ng kh&aacute;ch v&agrave; cũng l&agrave; ph&ograve;ng s&aacute;ch, với sofa v&agrave; l&ograve; sưởi;</p>\r\n\r\n<p>1 ph&ograve;ng bếp rộng r&atilde;i đủ bếp gaz, l&ograve; nướng, m&aacute;y xay, gia vị, dụng cụ nấu ăn... ;</p>\r\n\r\n<p>Ban c&ocirc;ng rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga; từ đ&acirc;y rất gần Hồ Xu&acirc;n Hương n&ecirc;n h&atilde;y mang theo gi&agrave;y thể thao để chạy bộ buổi s&aacute;ng bạn nh&eacute;!</p>\r\n\r\n<p>3 ph&ograve;ng ngủ ri&ecirc;ng biệt với giường đ&ocirc;i rộng r&atilde;i, lu&ocirc;n tr&agrave;n ngập gi&oacute; v&agrave; &aacute;nh s&aacute;ng từ cửa sổ lớn, b&agrave;n v&agrave; đ&egrave;n l&agrave;m việc, Tivi, m&aacute;y sấy, b&agrave;n trang điểm, tủ quần &aacute;o; c&aacute;c ph&ograve;ng đều được trang bị Toilet ri&ecirc;ng sạch sẽ v&agrave; 1 Toilet phụ b&ecirc;n ngo&agrave;i...</p>\r\n\r\n<p><strong>Twilight&nbsp;</strong><em>l&agrave; căn ph&ograve;ng ri&ecirc;ng biệt tr&ecirc;n Tầng 2, c&oacute; ban c&ocirc;ng ri&ecirc;ng, l&agrave; nơi ngắm cả th&agrave;nh phố tuyệt đẹp, nhất l&agrave; khi Chạng vạng.</em></p>\r\n\r\n<p><strong><em>New Mon&nbsp;</em></strong><em>l&agrave; ph&ograve;ng đ&oacute;n những cơn gi&oacute; mới, ph&ograve;ng rộng v&agrave; tho&aacute;ng, c&oacute; 2 cửa sổ v&agrave; Toilet ri&ecirc;ng.</em></p>\r\n\r\n<p><strong><em>Breaking Down&nbsp;</em></strong><em>l&agrave; căn ph&ograve;ng đ&oacute;n những tia nắng trong trẻo đầu ti&ecirc;n trong ng&agrave;y</em></p>\r\n\r\n<p>C&aacute;c ph&ograve;ng được bố tr&iacute; 1 giường đ&ocirc;i cỡ Queen d&agrave;nh cho 2 người, kh&ocirc;ng gian nh&agrave; tr&agrave;n ngập &aacute;nh s&aacute;ng v&agrave; gi&oacute; trong l&agrave;nh. Ph&ograve;ng rộng c&oacute; thể th&ecirc;m chăn nệm cho 2 -3 người, ấm &aacute;p v&agrave; đủ tiện nghi, trần cao, tho&aacute;ng, toilet trong, c&oacute; tivi, b&agrave;n v&agrave; đ&egrave;n l&agrave;m việc, b&agrave;n trang điểm, Tủ quần &aacute;o c&ugrave;ng c&aacute;c vật dụng kh&aacute;c...</p>\r\n\r\n<p>Ngo&agrave;i ra bạn c&oacute; thể sử dụng bếp v&agrave; h&aacute;i hoa tr&aacute;i ở vườn để nấu những m&oacute;n y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Tr&agrave; v&agrave; c&agrave; ph&ecirc; lu&ocirc;n c&oacute; sẵn để bạn tự pha cho m&igrave;nh ly tr&agrave; n&oacute;ng giữa tiết trời se lạnh Đ&agrave; Lạt.</p>\r\n\r\n<p><strong><em>Welcome Home!</em></strong></p>\r\n\r\n<p>✔️ Ban c&ocirc;ng của căn hộ rất rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga, rất gần Hồ Xu&acirc;n Hương n&ecirc;n h&atilde;y mang theo gi&agrave;y thể thao để chạy bộ</p>\r\n\r\n<p>✔️&nbsp;<strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, trung t&acirc;m th&agrave;nh phố</p>\r\n\r\n<p>✔️ Căn hộ của ch&uacute;ng t&ocirc;i cung cấp cho bạn đ&agrave;y đủ những tiện nghi hiện đại bậc nhất</p>\r\n\r\n<p><strong>Let it be&nbsp;</strong>l&agrave; một căn nh&agrave; phong c&aacute;ch cổ điển nằm tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, nơi bạn c&oacute; thể tận hưởng thi&ecirc;n nhi&ecirc;n trong l&agrave;nh giữa l&ograve;ng th&agrave;nh phố.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m một Homestay giản dị, y&ecirc;n l&agrave;nh với đầy đủ tiện nghi ti&ecirc;u chuẩn kh&aacute;ch sạn th&igrave; Let it be l&agrave; lựa chọn ho&agrave;n hảo. Mở cửa sổ mỗi buổi s&aacute;ng, sương sớm l&agrave;nh lạnh h&ograve;a quyện với hương thơm c&acirc;y cối sẽ tr&agrave;n v&agrave;o cả căn nh&agrave;. Đ&oacute; sẽ l&agrave; trải nghiệm tuyệt vời,1 l&agrave;n gi&oacute; tươi mới cho cuộc sống vốn đ&atilde; rất bận rộn v&agrave; căn thẳng.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; 1 ph&ograve;ng kh&aacute;ch v&agrave; cũng l&agrave; ph&ograve;ng s&aacute;ch, với sofa v&agrave; l&ograve; sưởi;</p>\r\n\r\n<p>1 ph&ograve;ng bếp rộng r&atilde;i đủ bếp gaz, l&ograve; nướng, m&aacute;y xay, gia vị, dụng cụ nấu ăn... ;</p>\r\n\r\n<p>Ban c&ocirc;ng rộng r&atilde;i v&agrave; xanh tươi, tuyệt vời để tập Yoga; từ đ&acirc;y rất gần Hồ Xu&acirc;n Hương n&ecirc;n h&atilde;y mang theo gi&agrave;y thể thao để chạy bộ buổi s&aacute;ng bạn nh&eacute;!</p>\r\n\r\n<p>3 ph&ograve;ng ngủ ri&ecirc;ng biệt với giường đ&ocirc;i rộng r&atilde;i, lu&ocirc;n tr&agrave;n ngập gi&oacute; v&agrave; &aacute;nh s&aacute;ng từ cửa sổ lớn, b&agrave;n v&agrave; đ&egrave;n l&agrave;m việc, Tivi, m&aacute;y sấy, b&agrave;n trang điểm, tủ quần &aacute;o; c&aacute;c ph&ograve;ng đều được trang bị Toilet ri&ecirc;ng sạch sẽ v&agrave; 1 Toilet phụ b&ecirc;n ngo&agrave;i...</p>\r\n\r\n<p><strong>Twilight&nbsp;</strong><em>l&agrave; căn ph&ograve;ng ri&ecirc;ng biệt tr&ecirc;n Tầng 2, c&oacute; ban c&ocirc;ng ri&ecirc;ng, l&agrave; nơi ngắm cả th&agrave;nh phố tuyệt đẹp, nhất l&agrave; khi Chạng vạng.</em></p>\r\n\r\n<p><strong><em>New Mon&nbsp;</em></strong><em>l&agrave; ph&ograve;ng đ&oacute;n những cơn gi&oacute; mới, ph&ograve;ng rộng v&agrave; tho&aacute;ng, c&oacute; 2 cửa sổ v&agrave; Toilet ri&ecirc;ng.</em></p>\r\n\r\n<p><strong><em>Breaking Down&nbsp;</em></strong><em>l&agrave; căn ph&ograve;ng đ&oacute;n những tia nắng trong trẻo đầu ti&ecirc;n trong ng&agrave;y</em></p>\r\n\r\n<p>C&aacute;c ph&ograve;ng được bố tr&iacute; 1 giường đ&ocirc;i cỡ Queen d&agrave;nh cho 2 người, kh&ocirc;ng gian nh&agrave; tr&agrave;n ngập &aacute;nh s&aacute;ng v&agrave; gi&oacute; trong l&agrave;nh. Ph&ograve;ng rộng c&oacute; thể th&ecirc;m chăn nệm cho 2 -3 người, ấm &aacute;p v&agrave; đủ tiện nghi, trần cao, tho&aacute;ng, toilet trong, c&oacute; tivi, b&agrave;n v&agrave; đ&egrave;n l&agrave;m việc, b&agrave;n trang điểm, Tủ quần &aacute;o c&ugrave;ng c&aacute;c vật dụng kh&aacute;c...</p>\r\n\r\n<p>Ngo&agrave;i ra bạn c&oacute; thể sử dụng bếp v&agrave; h&aacute;i hoa tr&aacute;i ở vườn để nấu những m&oacute;n y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Tr&agrave; v&agrave; c&agrave; ph&ecirc; lu&ocirc;n c&oacute; sẵn để bạn tự pha cho m&igrave;nh ly tr&agrave; n&oacute;ng giữa tiết trời se lạnh Đ&agrave; Lạt.</p>\r\n\r\n<p><strong><em>Welcome Home!</em></strong></p>', '0982039380', 'ndquang1410@gmail.com', '1558830801.1536900002_IMG_0137.jpg', NULL, 4500000, '30', 1, NULL, 0, NULL, NULL, 1, 1, '2019-05-26 07:33:21', '2019-05-27 21:45:59', 31),
(30, 'Nguyen Anh', '20 Cộng Hòa, phường 4, Tân Bình, HCM', 'TT Hun Sen chỉ trích phát biểu về Việt Nam của thủ tướng Singapore', '<p>Thủ tướng Hun Sen chỉ trích &ocirc;ng Lý Hi&ecirc;̉n Long x&uacute;c phạm sự hy sinh của qu&acirc;n t&igrave;nh nguyện Việt Nam giúp giải phóng Campuchia khỏi ch&ecirc;́ đ&ocirc;̣ di&ecirc;̣t chủng Khmer Đỏ.</p>\r\n\r\n<p>Chia sẻ tr&ecirc;n t&agrave;i khoản Facebook đ&ecirc;m 6/6, Thủ tướng Hun Sen n&oacute;i &ocirc;ng rất lấy l&agrave;m tiếc khi biết đăng tải của Thủ tướng L&yacute; Hiển Long h&ocirc;m 31/5 d&ugrave;ng những lời lẽ như &quot;x&acirc;m lược&quot; v&agrave; &quot;chiếm đ&oacute;ng&quot; để n&oacute;i về những người l&iacute;nh t&igrave;nh nguyện Việt Nam gi&uacute;p giải ph&oacute;ng nh&acirc;n d&acirc;n&nbsp;<a href=\"https://news.zing.vn/tieu-diem/campuchia.html\" title=\"Tin tức Campuchia\">Campuchia</a>khỏi chế độ diệt chủng Khmer Đỏ.</p>\r\n\r\n<h3>&Ocirc;ng L&yacute; &quot;x&uacute;c phạm sự hy sinh của qu&acirc;n t&igrave;nh nguyện Việt Nam&quot;</h3>\r\n\r\n<p>&quot;T&ocirc;i rất lấy l&agrave;m tiếc về đăng tải tr&ecirc;n Facebook h&ocirc;m 31/5 của ng&agrave;i L&yacute; Hiển Long, Thủ tướng&nbsp;<a href=\"https://news.zing.vn/tieu-diem/singapore.html\" title=\"Tin tức Singapore\">Singapore</a>, khi &ocirc;ng b&agrave;y tỏ lời chia buồn trước sự ra đi của Đại tướng&nbsp;<a href=\"https://news.zing.vn/tieu-diem/thai-lan.html\" title=\"Tin tức Thái Lan\">Th&aacute;i Lan</a>&nbsp;Prem Tinsulanonda, trong đ&oacute; &ocirc;ng n&oacute;i rằng Tướng Prem (l&uacute;c đ&oacute; l&agrave; thủ tướng Th&aacute;i Lan), đ&atilde; c&ugrave;ng c&aacute;c th&agrave;nh vi&ecirc;n ASEAN (khi đ&oacute; c&oacute; 5 quốc gia) chống lại việc Việt Nam x&acirc;m lược Campuchia v&agrave; chống lại việc ch&iacute;nh phủ Campuchia mới thay thế Khmer Đỏ&rdquo;, &ocirc;ng Hun Sen viết.</p>', '859571638', 'admin@iht.com', '1559893622.6723a01061f48f2fe3685133f678077b2883a7cd.jpg', NULL, 1244444, '44', 333, NULL, 0, NULL, NULL, 1, 1, '2019-06-07 14:46:42', '2019-06-07 14:47:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_utilities`
--

CREATE TABLE `hotel_utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `utilitie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hotel_utilities`
--

INSERT INTO `hotel_utilities` (`id`, `hotel_id`, `utilitie_id`, `created_at`, `updated_at`) VALUES
(1, 16, 1, '2019-05-25 17:44:45', '2019-05-25 17:44:45'),
(2, 16, 2, '2019-05-25 17:44:46', '2019-05-25 17:44:46'),
(3, 16, 3, '2019-05-25 17:44:46', '2019-05-25 17:44:46'),
(4, 16, 5, '2019-05-25 17:44:46', '2019-05-25 17:44:46'),
(5, 16, 6, '2019-05-25 17:44:46', '2019-05-25 17:44:46'),
(6, 16, 10, '2019-05-25 17:44:46', '2019-05-25 17:44:46'),
(7, 16, 11, '2019-05-25 17:44:46', '2019-05-25 17:44:46'),
(8, 18, 2, '2019-05-25 22:56:56', '2019-05-25 22:56:56'),
(9, 18, 3, '2019-05-25 22:56:56', '2019-05-25 22:56:56'),
(10, 18, 5, '2019-05-25 22:56:56', '2019-05-25 22:56:56'),
(23, 21, 1, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(24, 21, 2, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(25, 21, 3, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(26, 21, 4, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(27, 21, 5, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(28, 21, 6, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(29, 21, 10, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(30, 21, 11, '2019-05-26 00:00:19', '2019-05-26 00:00:19'),
(31, 22, 1, '2019-05-26 06:56:30', '2019-05-26 06:56:30'),
(32, 22, 2, '2019-05-26 06:56:32', '2019-05-26 06:56:32'),
(33, 22, 3, '2019-05-26 06:56:32', '2019-05-26 06:56:32'),
(34, 22, 4, '2019-05-26 06:56:33', '2019-05-26 06:56:33'),
(35, 22, 5, '2019-05-26 06:56:33', '2019-05-26 06:56:33'),
(36, 22, 10, '2019-05-26 06:56:33', '2019-05-26 06:56:33'),
(37, 22, 11, '2019-05-26 06:56:34', '2019-05-26 06:56:34'),
(46, 24, 1, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(47, 24, 2, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(48, 24, 4, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(49, 24, 5, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(50, 24, 6, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(51, 24, 10, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(52, 24, 11, '2019-05-26 07:18:49', '2019-05-26 07:18:49'),
(53, 25, 1, '2019-05-26 07:25:04', '2019-05-26 07:25:04'),
(54, 25, 2, '2019-05-26 07:25:04', '2019-05-26 07:25:04'),
(55, 25, 3, '2019-05-26 07:25:05', '2019-05-26 07:25:05'),
(56, 25, 4, '2019-05-26 07:25:05', '2019-05-26 07:25:05'),
(57, 25, 5, '2019-05-26 07:25:05', '2019-05-26 07:25:05'),
(58, 25, 6, '2019-05-26 07:25:05', '2019-05-26 07:25:05'),
(59, 25, 10, '2019-05-26 07:25:05', '2019-05-26 07:25:05'),
(60, 25, 11, '2019-05-26 07:25:05', '2019-05-26 07:25:05'),
(61, 26, 1, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(62, 26, 2, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(63, 26, 3, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(64, 26, 4, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(65, 26, 5, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(66, 26, 6, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(67, 26, 10, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(68, 26, 12, '2019-05-26 07:26:50', '2019-05-26 07:26:50'),
(69, 28, 2, '2019-05-26 07:30:17', '2019-05-26 07:30:17'),
(70, 28, 3, '2019-05-26 07:30:17', '2019-05-26 07:30:17'),
(71, 28, 4, '2019-05-26 07:30:17', '2019-05-26 07:30:17'),
(72, 28, 5, '2019-05-26 07:30:17', '2019-05-26 07:30:17'),
(73, 28, 6, '2019-05-26 07:30:17', '2019-05-26 07:30:17'),
(74, 28, 10, '2019-05-26 07:30:17', '2019-05-26 07:30:17'),
(89, 29, 1, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(90, 29, 2, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(91, 29, 3, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(92, 29, 4, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(93, 29, 5, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(94, 29, 6, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(95, 29, 10, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(96, 29, 11, '2019-05-27 21:46:22', '2019-05-27 21:46:22'),
(105, 30, 2, '2019-06-07 14:47:16', '2019-06-07 14:47:16'),
(106, 30, 3, '2019-06-07 14:47:16', '2019-06-07 14:47:16'),
(107, 30, 4, '2019-06-07 14:47:16', '2019-06-07 14:47:16'),
(108, 30, 6, '2019-06-07 14:47:16', '2019-06-07 14:47:16'),
(109, 20, 1, '2019-06-11 11:15:11', '2019-06-11 11:15:11'),
(110, 20, 2, '2019-06-11 11:15:11', '2019-06-11 11:15:11'),
(111, 20, 3, '2019-06-11 11:15:11', '2019-06-11 11:15:11'),
(112, 20, 4, '2019-06-11 11:15:11', '2019-06-11 11:15:11'),
(113, 20, 5, '2019-06-11 11:15:11', '2019-06-11 11:15:11'),
(114, 20, 6, '2019-06-11 11:15:11', '2019-06-11 11:15:11'),
(115, 19, 2, '2019-06-11 11:17:54', '2019-06-11 11:17:54'),
(116, 19, 3, '2019-06-11 11:17:54', '2019-06-11 11:17:54'),
(117, 19, 4, '2019-06-11 11:17:54', '2019-06-11 11:17:54'),
(118, 19, 5, '2019-06-11 11:17:54', '2019-06-11 11:17:54'),
(119, 19, 10, '2019-06-11 11:17:54', '2019-06-11 11:17:54'),
(120, 19, 11, '2019-06-11 11:17:54', '2019-06-11 11:17:54'),
(137, 23, 1, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(138, 23, 2, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(139, 23, 3, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(140, 23, 4, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(141, 23, 5, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(142, 23, 6, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(143, 23, 10, '2019-06-11 11:20:57', '2019-06-11 11:20:57'),
(144, 23, 11, '2019-06-11 11:20:57', '2019-06-11 11:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 2),
(19, '2018_12_17_143447_create_position_table', 2),
(20, '2019_01_13_111444_create_category_products_table', 2),
(21, '2019_01_22_202312_create_suppliers_table', 2),
(22, '2019_01_22_212221_create_units_table', 2),
(23, '2019_01_22_215347_create_products_table', 3),
(24, '2019_01_23_230301_create_product_category_table', 4),
(25, '2019_02_07_151148_create_product_types_table', 5),
(26, '2019_02_13_225642_create_product_type_ids_table', 6),
(27, '2019_02_15_001155_create_pages_table', 7),
(28, '2019_03_16_232501_create_sliders_table', 8),
(29, '2019_03_19_211921_create_customerreviews_table', 9),
(30, '2019_04_13_181041_create_shoppingcart_table', 10),
(31, '2019_04_21_105458_create_customer_users_table', 11),
(32, '2019_05_22_001944_create_utilities_table', 12),
(33, '2019_05_23_001228_create_hotels_table', 13),
(34, '2019_05_23_230312_create_hotel_utilities_table', 14),
(35, '2019_05_26_225956_create_rooms_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `highlights` int(11) NOT NULL DEFAULT 0,
  `title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_seo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_seo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `parent_id`, `name`, `slug`, `description`, `content`, `image`, `tag`, `status`, `highlights`, `title_seo`, `description_seo`, `image_seo`, `tag_seo`, `created_at`, `updated_at`) VALUES
(8, 1, NULL, 'Về chúng tôi', 've-chung-toi', 'Giới thiệu', '<h1>Giới thiệu</h1>\r\n\r\n<p><strong>I. QU&Aacute; TR&Igrave;NH H&Igrave;NH TH&Agrave;NH PH&Aacute;T TRIỂN</strong></p>\r\n\r\n<p>Trong những năm qua, x&atilde; hội ph&aacute;t triển, kinh tế tăng trưởng đồng thời l&agrave; chất lượng cuộc sống của người d&acirc;n ng&agrave;y c&agrave;ng c&agrave;ng được n&acirc;ng cao nhiều trung t&acirc;m thương mại, nh&agrave; cao tầng, biệt thự được mọc ra k&egrave;m theo đấy l&agrave; nhu cầu mua sắm c&aacute;c thiết bị phục vụ nhu cầu cuộc sống h&agrave;ng ng&agrave;y như TV, Tủ lạnh, Điện gia dụng.....</p>\r\n\r\n<p>Thế giới điện tử&nbsp;<strong>Libra Mart&nbsp;</strong>khai trương showroom tại địa chỉ&nbsp;Số 3, L&ecirc; Th&aacute;nh T&ocirc;ng, Q. Ng&ocirc; Quyền, TP. Hải Ph&ograve;ng ch&iacute;nh thức tham gia v&agrave;o lĩnh vực kinh doanh b&aacute;n lẻ điện tử, tạo ra một phong c&aacute;ch mua sắm ho&agrave;n to&agrave;n mới với người d&acirc;n thủ đ&ocirc;, th&ocirc;ng qua cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ tới người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>&bull; TẦM NH&Igrave;N :</p>\r\n\r\n<p>C&ocirc;ng ty số 1 tại Việt Nam trong lĩnh vực ph&acirc;n phối, b&aacute;n lẻ c&aacute;c sản phẩm điện tử</p>\r\n\r\n<p>&bull; SỨ MỆNH:</p>\r\n\r\n<p>Với kim chỉ nam l&agrave; &ldquo;Kh&ocirc;ng ngừng ph&aacute;t triển v&igrave; kh&aacute;ch h&agrave;ng&rdquo; v&agrave; l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng bằng c&aacute;ch tạo ra những gi&aacute; trị gia tăng như cung cấp c&aacute;c sản phẩm, dịch vụ tốt nhất.</p>\r\n\r\n<p>&bull; MỤC TI&Ecirc;U CHIẾN LƯỢC:</p>\r\n\r\n<p>1. Tối đa ho&aacute; gi&aacute; trị đầu tư của c&aacute;c cổ đ&ocirc;ng; giữ vững tốc độ tăng trưởng lợi nhuận v&agrave; t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh l&agrave;nh mạnh;</p>\r\n\r\n<p>2. Kh&ocirc;ng ngừng n&acirc;ng cao động lực l&agrave;m việc v&agrave; năng lực c&aacute;n bộ;&nbsp;<strong>Libra Mart&nbsp;</strong>phải lu&ocirc;n dẫn đầu ng&agrave;nh điện tử trong việc s&aacute;ng tạo, ph&aacute;t triển ch&iacute;nh s&aacute;ch đ&atilde;i ngộ v&agrave; cơ hội thăng tiến nghề nghiệp cho c&aacute;n bộ của m&igrave;nh;</p>\r\n\r\n<p>3. Duy tr&igrave; sự h&agrave;i l&ograve;ng, trung th&agrave;nh v&agrave; gắn b&oacute; của kh&aacute;ch h&agrave;ng với&nbsp;<strong>Libra Mart</strong>; x&acirc;y dựng&nbsp;<strong>Libra Mart&nbsp;</strong>th&agrave;nh một trong những c&ocirc;ng ty h&agrave;ng đầu Việt Nam c&oacute; chất lượng dịch vụ tốt nhất do kh&aacute;ch h&agrave;ng lựa chọn.</p>\r\n\r\n<p>4. Ph&aacute;t triển&nbsp;<strong>Libra Mart&nbsp;</strong>th&agrave;nh một trong những điện tử h&agrave;ng đầu Việt Nam về: quản l&yacute; tốt nhất, m&ocirc;i trường l&agrave;m việc tốt nhất, văn ho&aacute; doanh nghiệp ch&uacute; trọng kh&aacute;ch h&agrave;ng, th&uacute;c đẩy hợp t&aacute;c v&agrave; s&aacute;ng tạo, linh hoạt nhất khi m&ocirc;i trường kinh doanh thay đổi.</p>\r\n\r\n<p><strong>II. THẾ MẠNH V&Agrave; ĐỊNH HƯỚNG CỦA C&Ocirc;NG TY</strong></p>\r\n\r\n<p>Với kim chỉ nam l&agrave; &ldquo;Kh&ocirc;ng ngừng ph&aacute;t triển v&igrave; kh&aacute;ch h&agrave;ng&rdquo;,&nbsp;<strong>Libra Mart&nbsp;</strong>đ&atilde; quy tụ được Ban L&atilde;nh đạo c&oacute; bề d&agrave;y kinh nghiệm trong c&aacute;c lĩnh vực điện tử kh&ocirc;ng chỉ mạnh về kinh doanh m&agrave; c&ograve;n mạnh về c&ocirc;ng nghệ c&oacute; nhiều tiềm năng ph&aacute;t triển, kết hợp với đội ngũ nh&acirc;n vi&ecirc;n trẻ, năng động v&agrave; chuy&ecirc;n nghiệp tạo l&ecirc;n thế mạnh n&ograve;ng cốt của c&ocirc;ng ty để thực hiện tốt c&aacute;c mục ti&ecirc;u đề ra.</p>\r\n\r\n<p>Hơn nữa, tr&ecirc;n cơ sở nguồn lực của c&ocirc;ng ty v&agrave; nhu cầu của x&atilde; hội,&nbsp;<strong>Libra Mart&nbsp;</strong>lựa chọn ph&aacute;t triển kinh doanh c&aacute;c sản phẩm Điện tử phục vụ nhu cầu thiết yếu của người d&acirc;n với c&aacute;c sản phẩm đa dạng phong ph&uacute; mang lại gi&aacute; trị gia tăng cho người ti&ecirc;u d&ugrave;ng th&ocirc;ng qua c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng.</p>\r\n\r\n<p>Qua qu&aacute; tr&igrave;nh ph&aacute;t triển, b&ecirc;n cạnh việc thiết lập được một hệ thống đối t&aacute;c nước trong nước v&agrave; ngo&agrave;i đến từ c&aacute;c doanh nghiệp lớn của H&agrave;n Quốc, Singapore, Trung Quốc, Nhật Bản, c&oacute; thế mạnh trong c&aacute;c lĩnh vực Điện m&aacute;y, sản phẩm c&ocirc;ng nghệ như: Samsung, Sony, Panasonic, Toshiba, Sharp,... Trong thời gian tới</p>\r\n\r\n<p>C&ocirc;ng ty sẽ đầu tư v&agrave;o c&aacute;c ng&agrave;nh nghề mới như bất động sản, khai th&aacute;c kho&aacute;ng, đầu tư t&agrave;i ch&iacute;nh..</p>\r\n\r\n<p><strong>III. CAM KẾT</strong></p>\r\n\r\n<p><strong>Libra Mart&nbsp;</strong>nỗ lực hướng tới mục ti&ecirc;u ph&aacute;t triển bền vững v&agrave; trở th&agrave;nh thương hiệu h&agrave;ng đầu về cung cấp c&aacute;c sản phẩm Điện tử tại Việt Nam mang tầm cỡ quốc tế. Dựa v&agrave;o nội lực của ch&iacute;nh m&igrave;nh v&agrave; mở rộng hợp t&aacute;c với c&aacute;c đối t&aacute;c trong v&agrave; ngo&agrave;i nước ch&uacute;ng t&ocirc;i cam kết.</p>\r\n\r\n<p>Cam kết với đối t&aacute;c:</p>\r\n\r\n<p>- Trở th&agrave;nh đối t&aacute;c chiến lược trong v&agrave; ngo&agrave;i nước tr&ecirc;n cơ sở &quot;Hợp t&aacute;c, ph&aacute;t triển bền vững&quot; hợp t&aacute;c to&agrave;n diện l&acirc;u d&agrave;i nhằm kịp thời đưa những sản phẩm mới nhất v&agrave; dịch vụ theo c&aacute;c y&ecirc;u cầu đặc th&ugrave; của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Cam kết với kh&aacute;ch h&agrave;ng:</p>\r\n\r\n<p>- Lu&ocirc;n lu&ocirc;n l&agrave;m kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng về c&aacute;c sản phẩm v&agrave; dịch vụ do&nbsp;<strong>Libra Mart&nbsp;</strong>cung cấp. Sự th&agrave;nh c&ocirc;ng h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; thước đo uy t&iacute;n hiệu quả của doanh nghiệp.</p>\r\n\r\n<p>- Gi&aacute; cả h&agrave;ng h&oacute;a lu&ocirc;n hợp l&yacute; v&agrave; được cập nhật ch&iacute;nh x&aacute;c, kịp thời nhất để phục vụ kh&aacute;ch h&agrave;ng tốt nhất.</p>\r\n\r\n<p>- Lu&ocirc;n lắng nghe, ph&acirc;n t&iacute;ch v&agrave; học hỏi từ thị trường trong v&agrave; ngo&agrave;i nước. Kh&ocirc;ng bao giờ tự m&atilde;n với th&agrave;nh c&ocirc;ng đ&atilde; c&oacute;.</p>\r\n\r\n<p>- Lu&ocirc;n nh&igrave;n lại m&igrave;nh để ph&aacute;t triển (đạo đức v&agrave; kiến thức chuy&ecirc;n m&ocirc;n). Mỗi nh&acirc;n vi&ecirc;n l&agrave; một thương hiệu c&aacute; nh&acirc;n. Mỗi nh&acirc;n vi&ecirc;n l&agrave; một đại sứ thiện ch&iacute; của&nbsp;<strong>Libra Mart&nbsp;</strong>đối với thế giới b&ecirc;n ngo&agrave;i.</p>', NULL, '[null]', 1, 1, NULL, NULL, NULL, '[\"[\\\"[\\\\\\\"[\\\\\\\\\\\\\\\"[\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"[\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Tags\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"]\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"]\\\\\\\\\\\\\\\"]\\\\\\\"]\\\"]\"]', '2019-04-21 21:51:09', '2019-04-21 21:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlights` int(11) DEFAULT 0,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `save` int(11) DEFAULT 1,
  `delete_at` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `description`, `content`, `image`, `tag`, `highlights`, `seo_title`, `seo_description`, `seo_image`, `seo_keyword`, `status`, `save`, `delete_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'Mua điện thoại Honor 8X 64GB chính hãng giá rẻ tại Hoàng Hà Mobile', 'mua-dien-thoai-honor-8x-64gb-chinh-hang-gia-re-tai-hoang-ha-mobile', 'Sở hữu những đặc điểm của một chiếc flagship nhưng Honor 8X lại có giá bán rẻ hơn rất nhiều và chiếc điẹn thoại này chắc chắn sẽ không làm bạn phải thất vọng.', '<h2><strong>Mua điện thoại Honor 8X 64GB ch&iacute;nh h&atilde;ng gi&aacute; rẻ tại Ho&agrave;ng H&agrave; Mobile</strong></h2>\r\n\r\n<p><strong>Sở hữu những đặc điểm của một chiếc flagship nhưng Honor 8X lại c&oacute; gi&aacute; b&aacute;n rẻ hơn rất nhiều v&agrave; chiếc điẹn thoại n&agrave;y chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn phải thất vọng.</strong></p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh sang trọng</strong></h3>\r\n\r\n<p>Tiếp nối người đ&agrave;n anh Huawei P20 Pro được ra mắt tại thị trường Việt Nam trước đ&oacute;,&nbsp;<a href=\"https://hoanghamobile.com/honor-8x-64gb-chinh-hang-p13471.html\">Honor 8X</a>&nbsp;cũng sở hữu cho m&igrave;nh thiết kế kim loại &ndash; k&iacute;nh sang trọng như xu thế hiện nay. Ở mặt lưng, ch&uacute;ng ta sẽ c&oacute; một mặt k&iacute;nh b&oacute;ng bẩy c&oacute; thể phản chiếu lại &aacute;nh s&aacute;ng hoặc h&igrave;nh ảnh của bạn v&agrave; đ&acirc;y cũng l&agrave; vị tr&iacute; của hai ống k&iacute;nh camera k&eacute;p, đ&egrave;n flash LED, cảm biến v&acirc;n tay v&agrave; c&aacute;c logo Honor, dual flash.</p>\r\n\r\n<p><img alt=\"Thật khó để kiếm được chiếc smartphone nào có thiết kế đẹp như Honor 8X trong phân khúc tầm trung – cận cao cấp\" src=\"https://hoanghamobile.com/Uploads/Originals/2018/10/16/201810161128142104_Honor-8X-1.png\" /></p>\r\n\r\n<p>Ở ph&iacute;a trước, ch&uacute;ng ta sẽ c&oacute; một m&agrave;n h&igrave;nh tai thỏ với k&iacute;ch thước l&ecirc;n tới 6.5 inches, c&aacute;c g&oacute;c cạnh đều được bo cong tr&ograve;n mềm mại cho khả năng cầm nắm thoải m&aacute;i nhất d&ugrave; sử dụng trong thời gian d&agrave;i. D&ugrave; vậy nhưng trọng lượng của m&aacute;y chỉ khoảng 175g m&agrave; th&ocirc;i n&ecirc;n n&oacute; sẽ kh&ocirc;ng g&acirc;y ra cảm gi&aacute;c mỏi tay cho bạn.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t</strong></h3>\r\n\r\n<p>Giống như c&aacute;c smartphone Android hiện nay, Honor 8X c&oacute; một m&agrave;n h&igrave;nh tai thỏ k&iacute;ch thước si&ecirc;u lớn l&ecirc;n tới 6.5 inches, tỷ lệ 19.5:9 cực cao cho nhiều kh&ocirc;ng gian hiển thị nội dung hơn. M&agrave;n h&igrave;nh n&agrave;y c&oacute; độ ph&acirc;n giải FullHD+ (1080 x 2340 pixels) n&ecirc;n trải nghiệm phần nh&igrave;n của bạn ho&agrave;n to&agrave;n được đảm bảo với c&aacute;c h&igrave;nh ảnh v&agrave; thước phim sắc n&eacute;t nhất.</p>\r\n\r\n<h3><strong>Hiệu năng mượt m&agrave;</strong></h3>\r\n\r\n<p>Cung cấp sức mạnh cho Honor 8X l&agrave; vi xử l&yacute; Kirin 710 được sản xuất tr&ecirc;n tiến tr&igrave;nh 12nm. Vi xử l&yacute; n&agrave;y gồm c&oacute; 8 nh&acirc;n với 4 nh&acirc;n Cortex-A73 hiệu năng cao xung nhịp 2.2 GHz v&agrave; 4 nh&acirc;n Cortex-A53 tiết kiệm điện với xung nhịp tối đa l&agrave; 1.7 GHz. Đi k&egrave;m l&agrave; l&otilde;i đồ họa Mali-G51 MP4 sẽ đ&aacute;p ứng &ldquo;ngon l&agrave;nh&rdquo; mọi tựa game m&agrave; bạn chơi hay xử l&yacute; mượt m&agrave; mọi t&aacute;c vụ, ứng dụng m&agrave; bạn d&ugrave;ng chỉ trong nh&aacute;y mắt.</p>\r\n\r\n<p><img alt=\"hiệu năng Honor 8X\" src=\"https://hoanghamobile.com/Uploads/Originals/2018/10/16/201810161128142260_Honor-8X-3.png\" /></p>\r\n\r\n<p>Honor 8X c&oacute; hai t&ugrave;y chọn bộ nhớ RAM l&agrave; 4/6GB cho ph&eacute;p bạn thoải m&aacute;i đa nhiệm &ldquo;tẹt ga&rdquo; lưu trữ mọi dữ liệu với bộ nhớ trong l&ecirc;n tới 64/128GB. Nếu từng đ&oacute; l&agrave; chưa đủ th&igrave; m&aacute;y c&ograve;n hỗ trợ mở rộng bằng thẻ nhớ microSD tối đa 400GB nữa, qu&aacute; tuyệt đ&uacute;ng kh&ocirc;gn n&agrave;o.</p>\r\n\r\n<p>Khi sở hữu sản phẩm n&agrave;y th&igrave; bạn sẽ nhận được ngay hệ điều h&agrave;nh Android 8.1 Oreo tr&ecirc;n nền giao diện EMUI 8.2 mượt m&agrave; với nhiều tiện &iacute;ch v&agrave; ứng dụng được c&agrave;i sẵn. Vi&ecirc;n pin dung lượng 3.750 mAh c&oacute; thể mang tới một ng&agrave;y d&agrave;i sử dụng với đa t&aacute;c vụ hay hai ng&agrave;y với những t&aacute;c vụ cơ bản như nghe &ndash; gọi &ndash; nhắn tin.</p>\r\n\r\n<h3><strong>Nhiếp ảnh chuy&ecirc;n nghiệp như DSLR</strong></h3>\r\n\r\n<p>Nếu y&ecirc;u th&iacute;ch nhiếp ảnh di động hay đơn giản l&agrave; s&aacute;ng tạo với những khoảnh khắc đời thường th&igrave; h&atilde;y d&agrave;nh sự ch&uacute; &yacute; cho Honor 8X bạn nh&eacute;. M&aacute;y được trang bị cụm camera k&eacute;p sau với một cảm biến 20MP, khẩu độ F/1.8 hỗ trợ lấy n&eacute;t tự động PDAF v&agrave; một cảm biến chiều s&acirc;u 2MP, khẩu độ F/2.4 c&oacute; khả năng chụp ảnh x&oacute;a ph&ocirc;ng chuy&ecirc;n nghiệp v&agrave; chụp ảnh thiếu s&aacute;ng đỉnh cao như c&aacute;c m&aacute;y ảnh DSLR chuy&ecirc;n dụng.</p>\r\n\r\n<p><img alt=\"camera Honor 8x\" src=\"https://hoanghamobile.com/Uploads/Originals/2018/10/16/201810161128142260_Honor-8X-4.png\" /></p>\r\n\r\n<p>Ở ph&iacute;a trước, ch&uacute;ng ta sẽ c&oacute; một camera selfie độ ph&acirc;n giải 16MP, khẩu độ F/2.0 t&iacute;ch hợp nhiều chế độ chụp ảnh kh&aacute;c nhau như l&agrave;m đẹp, sticker,&hellip; sẽ rất ph&ugrave; hợp cho c&aacute;c bạn nữ.</p>\r\n\r\n<p><strong>C&aacute;c t&iacute;nh năng bổ trợ</strong></p>\r\n\r\n<p><strong><img alt=\"các tính năng trên Honor 8X\" src=\"https://hoanghamobile.com/Uploads/Originals/2018/10/16/201810161128142260_Honor-8X-5.png\" /></strong></p>\r\n\r\n<p>Về bảo mật, Honor 8X c&oacute; cho m&igrave;nh hai c&ocirc;ng nghệ bảo mật ti&ecirc;n tiến nhất hiện nay cho c&aacute;c smartphone l&agrave; cảm biến v&acirc;n tay một chạm v&agrave; m&aacute;y &eacute;t. Trqu&eacute;t khu&ocirc;n mặt ở ph&iacute;a trước. Về giải tr&iacute; th&igrave; m&aacute;y c&oacute; cho m&igrave;nh cổng tai nghe 3.5mm, loa ngo&agrave;i c&oacute; &acirc;m lượng lớn v&agrave; sắc nong một bộ sản phẩm th&igrave;&nbsp;<a href=\"https://hoanghamobile.com/honor-c2306.html\">Honor</a>&nbsp;cũng tặng k&egrave;m cho bạn một chiếc tai nghe để sử dụng v&agrave; một chiếc ốp lưng silicon gi&uacute;p bạn bảo vệ m&aacute;y tốt nhất.</p>', '1546873465.dien_thoai_cao_c', 'null', 0, 'Mua điện thoại Honor 8X 64GB chính hãng giá rẻ tại Hoàng Hà Mobile', 'Sở hữu những đặc điểm của một chiếc flagship nhưng Honor 8X lại có giá bán rẻ hơn rất nhiều và chiếc điẹn thoại này chắc chắn sẽ không làm bạn phải thất vọng.', '1546873465.ly-do-my-nu-vung-tau-di-xe-70-ty-khong-so-chong-dai-gia-ngoai-tinh-6-1546352396-627-width640height960.jpg', 'null', 0, 1, 0, '2019-01-22 00:19:06', '2019-04-29 08:42:24'),
(3, 1, 'Những mẫu smartphone bị đánh giá thấp nhất năm 2018', 'nhung-mau-smartphone-bi-danh-gia-thap-nhat-nam-2018', 'Bên cạnh những mẫu điện thoại thông minh tuyệt vời năm 2018 như Galaxy Note 9, Mate 20 Pro hay OnePlus 6T thì vẫn còn một “hàng dài” những smartphone bị đánh giá thấp.', '<h2><strong>BlackBerry Key2</strong></h2>\r\n\r\n<p>D&ugrave; c&oacute; thể BlackBerry do TCL quản l&yacute; kh&ocirc;ng tạo được nhiều dấu ấn như Nokia của HMD Global, nhưng&nbsp;điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; điện thoại của h&atilde;ng kh&ocirc;ng c&oacute; g&igrave; nổi bật. Nổi bật trong thời gian gần đ&acirc;y ch&iacute;nh l&agrave;&nbsp;<a href=\"https://hoanghamobile.com/-blackberry-key-2-chinh-hang-p12773.html\">BlackBerry Key2</a>&nbsp;chạy tr&ecirc;n hệ điều h&agrave;nh Android.</p>\r\n\r\n<p>C&oacute; thể bạn kh&ocirc;ng tin, nhưng vẫn c&oacute; rất nhiều người y&ecirc;u th&iacute;ch b&agrave;n ph&iacute;m vật l&yacute; v&agrave; BlackBerry Key2 cũng sở hữu thiết lập n&agrave;y. B&agrave;n ph&iacute;m n&agrave;y được tối ưu gi&uacute;p người d&ugrave;ng c&oacute; thể g&aacute;n c&aacute;c ứng dụng, qu&eacute;t dấu v&acirc;n tay tại ph&iacute;m c&aacute;ch. BlackBerry cũng ph&aacute;t triển mạnh phần mềm như&nbsp;BlackBerry Hub gi&uacute;p quản l&yacute; th&ocirc;ng b&aacute;o, tin nhắn, quyền ri&ecirc;ng tư v&agrave; bộ bảo mật DTEK.</p>\r\n\r\n<p><img alt=\"smartphone-bi-danh-gia-thap-5 Những mẫu smartphone bị đánh giá thấp nhất năm 2018\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/smartphone-bi-danh-gia-thap-5.jpg\" style=\"height:534px; width:800px\" title=\"\" /></p>\r\n\r\n<p>Mang trong m&igrave;nh &ldquo;nhiều thứ&rdquo; nhưng&nbsp;BlackBerry Key2 vẫn chưa thể hiện được sự &ldquo;s&agrave;nh điệu&rdquo; đ&aacute;ng lẽ ra m&aacute;y phải c&oacute;. Th&ecirc;m v&agrave;o đ&oacute;, hiệu năng cũng chưa thực sự xứng đ&aacute;ng với mức gi&aacute; 650 USD (khoảng 15.6 triệu đồng). Cụ thể, m&aacute;y được trang bị chip&nbsp;Snapdragon 660 tầm trung, RAM 6GB, bộ nhớ trong 64/128GB, camera k&eacute;p 12MP, camera selfie 8MP v&agrave; vi&ecirc;n pin dung lượng 3.500mAh.</p>\r\n\r\n<p>N&oacute;i g&igrave; th&igrave; n&oacute;i, c&oacute; mấy chiếc điện thoại được cung cấp b&agrave;n ph&iacute;m vật l&yacute; đ&uacute;ng kh&ocirc;ng n&agrave;o?</p>\r\n\r\n<h2><strong>LG G7 ThinQ</strong></h2>\r\n\r\n<p>LG đ&atilde; trang bị nhiều thứ đ&aacute;ng mong chờ trong chiếc điện thoại n&agrave;y. Camera phụ g&oacute;c rộng 16MP, hệ thống &acirc;m thanh&nbsp;quad-DAC v&agrave; jack cắm tai nghe 3.5mm. M&aacute;y cũng c&oacute; t&iacute;nh năng chống nước, sạc kh&ocirc;ng d&acirc;y, n&uacute;t gọi trợ l&yacute; ảo, loa BoomBox th&uacute; vị.</p>\r\n\r\n<p><img alt=\"smartphone-bi-danh-gia-thap-4 Những mẫu smartphone bị đánh giá thấp nhất năm 2018\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/smartphone-bi-danh-gia-thap-4.jpg\" style=\"height:534px; width:800px\" title=\"\" /></p>\r\n\r\n<p>C&aacute;c th&ocirc;ng số kĩ thuật đ&aacute;ng ch&uacute; &yacute; bao gồm m&agrave;n h&igrave;nh LCD 6.1 inches, RAM 4/6GB, ROM 64/128GB c&oacute; thể mở rộng. Camera ch&iacute;nh 16MP, camera selfie 8MP. Tuy kh&ocirc;ng c&oacute; những đột ph&aacute; nhưng với mức gi&aacute; dưới 600 USD th&igrave; G7 ThinQ sẽ l&agrave; một sự lựa chọn tuyệt vời.</p>\r\n\r\n<h2><strong>Motorola One Power</strong></h2>\r\n\r\n<p>D&ograve;ng điện thoại Moto gi&aacute; rẻ gần như đ&atilde; &ldquo;lu mờ&rdquo; bởi c&aacute;c sản phẩm đến từ Huawei hay Xiaomi. Tuy nhi&ecirc;n, nếu vẫn muốn đặt niềm tin v&agrave;o Moto th&igrave; bạn c&oacute; thể thử qua chiếc One Power gi&aacute; rẻ.</p>\r\n\r\n<p><img alt=\"smartphone-bi-danh-gia-thap-3 Những mẫu smartphone bị đánh giá thấp nhất năm 2018\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/smartphone-bi-danh-gia-thap-3.jpg\" style=\"height:450px; width:800px\" title=\"\" /></p>\r\n\r\n<p>Nổi bật tr&ecirc;n One Power l&agrave; vi&ecirc;n pin dung lượng khủng 5.000mAh, cho ph&eacute;p sử dụng &ldquo;thả phanh&rdquo; trong 2 ng&agrave;y. M&aacute;y trang bị camera k&eacute;p ph&iacute;a sau 16MP v&agrave; 5MP, camera selfie 12MP với đ&egrave;n flash LED. Kết nối USB-C v&agrave; jack cắm tai nghe 3.5mm. One Power sử dụng chip Snapdragon 636, RAM 3/6GB, bộ nhớ trong 32/64GB c&oacute; thể mở rộng. M&agrave;n h&igrave;nh LCD 6.2 inches độ ph&acirc;n giải FullHD+. Mức gi&aacute; của chiếc điện thoại n&agrave;y chỉ khoảng 226 USD ~ 5.2 triệu đồng.</p>\r\n\r\n<h2><strong>Motorola Moto Z3</strong></h2>\r\n\r\n<p>Flagship n&agrave;y cho cảm gi&aacute;c giống với một chiếc Moto Z2.1 hơn l&agrave; một mẫu m&aacute;y ho&agrave;n to&agrave;n mới khi c&oacute; c&ugrave;ng thiết kế v&agrave; trang bị chip Snapdragon 835, nhưng mẫu điện thoại lại bị đ&aacute;nh gi&aacute; thấp hơn bởi mức gi&aacute; 500 USD.</p>\r\n\r\n<p><img alt=\"smartphone-bi-danh-gia-thap-2 Những mẫu smartphone bị đánh giá thấp nhất năm 2018\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/smartphone-bi-danh-gia-thap-2.jpg\" style=\"height:533px; width:800px\" title=\"\" /></p>\r\n\r\n<p>Moto Z3 sẽ cho người d&ugrave;ng một camera tốt hơn, loa to hơn, gamepad v&agrave; thậm ch&iacute; l&agrave; cả m&aacute;y chiếu nhờ v&agrave; bộ phụ kiện Moto Mod.&nbsp;Kh&ocirc;ng những vậy, Motorola c&ograve;n x&aacute;c nhận rằng&nbsp;Moto Z3 sẽ hỗ trợ mạng 5G nhờ một phụ kiện Moto Mod ri&ecirc;ng v&agrave;o năm 2019.</p>\r\n\r\n<p>M&aacute;y được trang bị RAM 4/6GB, bộ nhớ trong 64/128GB, thiết lập camera k&eacute;p 12MP sau, camera selfie 8MP v&agrave; vi&ecirc;n pin 3.000mAh.</p>\r\n\r\n<h2><strong>Sony Xperia XZ2 Compact</strong></h2>\r\n\r\n<p>Nếu từng c&oacute; một thương hiệu được biết đến với những chiếc smartphone bị đ&aacute;nh gi&aacute; thấp, th&igrave; đ&oacute; sẽ l&agrave; Sony. Nổi tiếng với cảm biến m&aacute;y ảnh nhưng chất lượng camera tr&ecirc;n điện thoại Xperia thường kh&ocirc;ng giữ được phong độ. D&ugrave; vậy nhưng h&atilde;ng vẫn lu&ocirc;n cho ra những chiếc smartphone cao cấp. Nếu bạn đang t&igrave;m kiếm một chiếc điện thoại cao cấp với k&iacute;ch thước nhỏ th&igrave;&nbsp;<a href=\"https://hoanghamobile.com/sony-xperia-xz2-compact-chinh-hang-p12520.html\">Xperia XZ2 Compact</a>&nbsp;sẽ l&agrave; lựa chọn ho&agrave;n hảo</p>\r\n\r\n<p><img alt=\"smartphone-bi-danh-gia-thap-1 Những mẫu smartphone bị đánh giá thấp nhất năm 2018\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/smartphone-bi-danh-gia-thap-1.jpg\" style=\"height:450px; width:800px\" title=\"\" /></p>\r\n\r\n<p>Với trải nghiệm nhiếp ảnh, XZ2 Compact cung cấp một camera đơn 19MP khẩu độ F/ 2.0. N&oacute; c&oacute; khả năng quay video si&ecirc;u chậm 960fps ở độ ph&acirc;n giải 720p hoặc 1080p, thậm ch&iacute; l&agrave; cả chụp dự đo&aacute;n v&agrave; quay video 4K HDR. Ph&iacute;a trước l&agrave; một camera selfie 5MP.</p>\r\n\r\n<p>Sony thường tập trung v&agrave;o đa phương tiện v&agrave; điều n&agrave;y cũng đ&uacute;ng với Xperia XZ2 Compact. M&aacute;y c&oacute; chuyển đổi SDR-to-HDR, loa ph&iacute;a trước, hỗ trợ &acirc;m thanh độ ph&acirc;n giải cao v&agrave; hỗ trợ LDAC cho tai nghe Bluetooth.</p>\r\n\r\n<p>Cấu h&igrave;nh của m&aacute;y bao gồm chip Snapdragon 845, RAM 4GB, bộ nhớ trong 64GB c&oacute; thể mở rộng, pin 2.870mAh, c&oacute; chống nước v&agrave; m&aacute;y qu&eacute;t v&acirc;n tay. Sản phẩm n&agrave;y được b&aacute;n độc quyền v&agrave; c&oacute; gi&aacute; l&agrave; 13.990.000 đồng tại Ho&agrave;ng H&agrave; Mobile.</p>\r\n\r\n<h2><strong>Sony Xperia XZ3</strong></h2>\r\n\r\n<p>Xperia XZ3 l&agrave; một cải tiến của&nbsp;Xperia XZ2, m&aacute;y trang bị m&agrave;n h&igrave;nh OLED 6 inches độ ph&acirc;n giải 1.440p. Camera selfie 13MP, vi&ecirc;n pin dung lượng 3.300mAh hỗ trợ sạc kh&ocirc;ng d&acirc;y.</p>\r\n\r\n<p><img alt=\"smartphone-bi-danh-gia-thap Những mẫu smartphone bị đánh giá thấp nhất năm 2018\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/smartphone-bi-danh-gia-thap.jpg\" style=\"height:500px; width:800px\" title=\"\" /></p>\r\n\r\n<p>T&iacute;nh năng rung th&uacute; vị khi xem phim hay chơi game cũng c&oacute; mặt tr&ecirc;n Xperia XZ3. Đi k&egrave;m l&agrave; chip Snapdragon 845, RAM 4GB, camera ch&iacute;nh 19MP, khẩu độ F/2.0 hỗ trợ quay video si&ecirc;u chậm 960fps. C&oacute; chống nước, USB-C v&agrave; kh&ocirc;ng c&oacute; jack cắm tai nghe.</p>\r\n\r\n<p>Tr&ecirc;n tay đ&acirc;y l&agrave; danh s&aacute;ch những chiếc smartphone bị đ&aacute;nh gi&aacute; thấp nhất trong năm 2018. Nếu c&oacute; th&ecirc;m ứng cử vi&ecirc;n n&agrave;o bạn h&atilde;y để lại &yacute; kiến b&ecirc;n dưới phần b&igrave;nh luận v&agrave; đừng qu&ecirc;n theo d&otilde;i trang tin tức của&nbsp;<a href=\"https://hoanghamobile.com/tin-tuc/category/tin-tuc\">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;nh&eacute;.</p>', '1545580571.smartphone-bi-danh-gia-thap-6-696x392.jpg', 'null', 0, NULL, NULL, '', 'null', 0, 1, 0, '2019-04-06 23:42:18', '2019-04-29 08:42:20'),
(4, 1, 'Samsung tung quảng cáo One UI thể hiện các tính năng mới', 'samsung-tung-quang-cao-one-ui-the-hien-cac-tinh-nang-moi', 'Giao diện One UI ra mắt vào tháng 11 và mới đây đoạn video quảng cáo One UI đã được đăng tải. Hơn 1 phút video đã thể hiện những tính năng One UI trên hệ điều hành mới nhất.', '<h2><strong>Giao diện One UI</strong></h2>\r\n\r\n<p>Phần mềm&nbsp;<a href=\"https://hoanghamobile.com/tin-tuc/one-ui-la-gi\">One UI</a>&nbsp;được tạo ra k&egrave;m với những tối ưu hướng đến sự tập trung. One UI l&agrave;m nổi bật v&agrave; nhấn mạnh c&aacute;c yếu tố quan trọng nhất trong mỗi tương t&aacute;c được cải thiện r&otilde; r&agrave;ng. C&aacute;c t&ugrave;y chọn sẽ xuất hiện hoặc ẩn đi khi thực hiện một số thao t&aacute;c nhất định t&ugrave;y thuộc v&agrave;o những g&igrave; phần mềm thấy cần thiết đến việc hiển thị.</p>\r\n\r\n<p>Tương tự, c&aacute;c biểu tượng v&agrave; văn bản&nbsp;c&oacute; thể được thu nhỏ hoặc ph&oacute;ng to dựa tr&ecirc;n mức độ ưu ti&ecirc;n của ch&uacute;ng.</p>\r\n\r\n<p><img alt=\"quang-cao-one-ui Samsung tung quảng cáo One UI thể hiện các tính năng mới\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/quang-cao-one-ui.jpg\" style=\"height:450px; width:800px\" title=\"\" /></p>\r\n\r\n<p><a href=\"https://hoanghamobile.com/samsung-c33.html\">Samsung</a>&nbsp;cũng chia menu hiển thị l&agrave;m hai khu vực ri&ecirc;ng. Một l&agrave; khu vực xem, hai l&agrave; khu vực tương t&aacute;c.&nbsp;V&ugrave;ng xem chứa một ti&ecirc;u đề lớn gi&uacute;p bạn c&oacute; thể chứa tất cả th&ocirc;ng tin (như khi b&aacute;o thức tiếp theo xuất hiện trong menu b&aacute;o thức). Trong khi khu vực tương t&aacute;c b&ecirc;n dưới &ndash; c&oacute; thể dễ d&agrave;ng truy cập bằng một tay v&agrave; rất nhiều thao t&aacute;c kh&aacute;c nhau.</p>\r\n\r\n<p>Cũng c&oacute; rất nhiều điều chỉnh về mặt thẩm mỹ, ch&uacute;ng phản ảnh thiết kế khối tr&ecirc;n ch&iacute;nh những sản phẩm gần đ&acirc;y của h&atilde;ng Samsung. One UI l&agrave;m cho phần mềm v&agrave; phần cứng c&oacute; vẻ kết nối v&agrave; ph&ugrave; hợp hơn so với giao diện trước kia.</p>\r\n\r\n<h2><strong>Quảng c&aacute;o One UI</strong></h2>\r\n\r\n<p>Theo đoạn video hơn 1 ph&uacute;t quảng c&aacute;o giao diện One UI th&igrave; sẽ c&oacute; một cải tiến lớn so với giao diện Experience. C&oacute; thể thấy c&aacute;c icon đ&atilde; được thiết kế lại ho&agrave;n to&agrave;n, font chữ cũng c&oacute; những thay đổi. Chưa hết, giao diện của c&aacute;c ứng dụng hệ thống trong giao diện One UI đ&atilde; được thay đổi để tối ưu v&agrave; th&acirc;n thiện hơn, mang đến trải nghiệm người d&ugrave;ng mượt hơn.</p>\r\n\r\n<p><img src=\"https://i.ytimg.com/vi/X3LVk0i6bY4/hqdefault.jpg\" /></p>\r\n\r\n<p>Đoạn video quảng c&aacute;o One UI cũng kh&ocirc;ng qu&ecirc;n &ldquo;khoe&rdquo; chế độ &ldquo;ban đ&ecirc;m&rdquo;, đ&acirc;y l&agrave; chế độ th&uacute; vị gi&uacute;p người d&ugrave;ng thoải m&aacute;i nhất khi sử dụng smartphone trong b&oacute;ng tối. Dự kiến giao diện One UI sẽ sẵn s&agrave;ng tr&ecirc;n chiếc Galaxy S10 v&agrave; cập nhật tr&ecirc;n những flagship trước kia c&ugrave;ng với hệ điều h&agrave;nh Android 9 Pie.</p>\r\n\r\n<p>Để cập nhật những tin tức c&ocirc;ng nghệ mới nhất mỗi ng&agrave;y, bạn đừng qu&ecirc;n theo d&otilde;i trang tin tức của&nbsp;<a href=\"https://hoanghamobile.com/tin-tuc/\">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;nh&eacute;!</p>', '1546872157.1546666503-763-sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo-28276690_756878167840960_5524718313351355689_n-1546660032-width650height879.jpg', '[\"Samsung tung qu\\u1ea3ng c\\u00e1o One UI th\\u1ec3 hi\\u1ec7n c\\u00e1c t\\u00ednh n\\u0103ng m\\u1edbi\"]', 0, NULL, NULL, '', '\"null\"', 0, 1, 0, '2019-01-07 14:42:37', '2019-04-29 08:42:12'),
(5, 1, 'Cách bật giao diện tối trên Galaxy Note 9 và Galaxy S9', 'cach-bat-giao-dien-toi-tren-galaxy-note-9-va-galaxy-s9', 'Giao diện One UI mới của Samsung hiện đã cho phép người dùng bật giao diện tối trên Galaxy Note 9 và Galaxy S9. Vậy làm cách nào để bật tính năng này.', '<h2><strong>Giao diện tối của One UI</strong></h2>\r\n\r\n<p>Phần mềm của Samsung từ l&acirc;u đ&atilde; mang đến t&iacute;nh năng thay đổi chủ đề to&agrave;n hệ thống, nhưng chưa c&oacute; chế độ tối hay chế độ ban đ&ecirc;m tr&ecirc;n to&agrave;n hệ thống như nhiều nh&agrave; sản xuất kh&aacute;c. Sự xuất hiện của bản cập nhật Android 9 Pie sẽ mang đến giao diện người d&ugrave;ng mới cho ph&eacute;p bật &ldquo;chế độ ban đ&ecirc;m&rdquo; tr&ecirc;n to&agrave;n bộ hệ thống giao diện. T&iacute;nh năng n&agrave;y cho người d&ugrave;ng sự thoải m&aacute;i tối đa khi sử dụng thiết bị v&agrave;o ban đ&ecirc;m v&agrave; n&oacute; rất th&acirc;n thiện với pin.</p>\r\n\r\n<p><img alt=\"bat-giao-dien-toi-tren-galaxy-note-9-1 Cách bật giao diện tối trên Galaxy Note 9 và Galaxy S9\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/bat-giao-dien-toi-tren-galaxy-note-9-1.jpg\" style=\"height:450px; width:800px\" title=\"\" /></p>\r\n\r\n<h3><strong>C&aacute;ch bật giao diện tối tr&ecirc;n Galaxy Note 9 v&agrave; S9</strong></h3>\r\n\r\n<p>Để bật giao diện tối cho điện thoại&nbsp;<a href=\"https://hoanghamobile.com/galaxy-note-9--c2350.html\">Galaxy Note 9</a>, S9 cần thực hiện c&aacute;c bước sau:</p>\r\n\r\n<ol>\r\n	<li>Mở&nbsp;<strong>C&agrave;i đặt</strong>&nbsp;<strong>(settings)</strong>&nbsp;tr&ecirc;n điện thoại của bạn</li>\r\n	<li>K&eacute;o xuống ph&iacute;a dưới v&agrave; chọn&nbsp;<strong>Hiển thị (Display)</strong></li>\r\n	<li>T&igrave;m chế độ&nbsp;<strong>Ban đ&ecirc;m (Night mode)</strong>&nbsp;v&agrave; nhấn v&agrave;o n&uacute;t&nbsp;<strong>Bật chế độ ngay lập tức (Turn on now)</strong></li>\r\n</ol>\r\n\r\n<p><img alt=\"bat-giao-dien-toi-tren-galaxy-note-9-1-1 Cách bật giao diện tối trên Galaxy Note 9 và Galaxy S9\" src=\"https://hoanghamobile.com/tin-tuc/wp-content/uploads/2018/12/bat-giao-dien-toi-tren-galaxy-note-9-1-1.jpg\" style=\"height:548px; width:800px\" title=\"\" /></p>\r\n\r\n<p>Để đặt cấu h&igrave;nh Chế độ ban đ&ecirc;m, bạn chọn v&agrave;o mục nhập thay v&igrave; chọn chuyển đổi. Ngay l&uacute;c n&agrave;y, kh&ocirc;ng c&oacute; t&ugrave;y chọn cấu h&igrave;nh, bạn c&oacute; thể bật chế độ ban đ&ecirc;m tr&ecirc;n to&agrave;n hệ thống v&agrave;o ban đ&ecirc;m, giống như bạn bật chế độ lọc &aacute;nh s&aacute;ng xanh như h&igrave;nh ảnh hiện tại.</p>\r\n\r\n<p>Để truy cập dễ d&agrave;ng hơn v&agrave;o chế độ ban đ&ecirc;m, bạn c&oacute; thể th&ecirc;m một chuyển đổi nhanh trong phần th&ocirc;ng b&aacute;o.</p>\r\n\r\n<p>Lưu &yacute; rằng, t&iacute;nh năng Dark Mode &ndash; Chế độ ban đ&ecirc;m hiện chưa c&oacute; sẵn tr&ecirc;n c&aacute;c thiết bị Galaxy Note 9 v&agrave; Galaxy S9 do giao diện One UI chưa được ch&iacute;nh thức ph&aacute;t h&agrave;nh. Ch&iacute;nh v&igrave; vậy bạn c&oacute; thể tham khảo trước để biết c&aacute;ch sử dụng cũng như t&aacute;c dụng của n&oacute;.</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; c&aacute;ch bật giao diện tối tr&ecirc;n Galaxy Note 9, S9, ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng. Đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href=\"https://hoanghamobile.com/tin-tuc\">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;để cập nhật những tin tức c&ocirc;ng nghệ mới mỗi ng&agrave;y nh&eacute;!</p>\r\n\r\n<p><strong>Xem th&ecirc;m:&nbsp;</strong>Vsmart Active 1+ Cấu h&igrave;nh tốt, gi&aacute; ph&aacute; đảo tại Ho&agrave;ng H&agrave; Mobile</p>\r\n\r\n<p><img src=\"https://i.ytimg.com/vi/M2ggBhU8quE/hqdefault.jpg\" /></p>\r\n\r\n<p><strong>C&ugrave;ng&nbsp;<a href=\"http://bit.ly/SubscribeHHChannel\">Follow k&ecirc;nh Youtube</a>&nbsp;của Ho&agrave;ng H&agrave; Mobile để cập nhật những tin tức mới nhất, sinh động nhất nh&eacute;!</strong></p>', '1545580813.bat-giao-dien-toi-tren-galaxy-note-9-2-696x392.jpg', 'null', 0, NULL, NULL, '', 'null', 0, 1, 0, '2019-04-29 08:44:45', '2019-04-29 08:45:02'),
(6, 1, 'Mê mẩn diện quần rách, Tâm Tít đích thị là', 'me-man-dien-quan-rach-tam-tit-dich-thi-la', 'Mê mẩn diện quần rách, Tâm Tít đích thị là \"nữ hoàng cái bang\" của Vbiz', '<h2>T&acirc;m T&iacute;t hiện tại ăn diện &quot;chất chơi&quot; v&agrave; sexy hơn ng&agrave;y c&ograve;n hoạt động showbiz nhiều lần.</h2>\r\n\r\n<p>T&acirc;m T&iacute;t, c&ocirc; n&agrave;ng hotgirl đ&igrave;nh đ&aacute;m một thời, lấy chồng đại gia một c&aacute;i cuộc đời bước sang một trang mới. Kh&ocirc;ng chỉ sắm h&agrave;ng hiệu xa xỉ&nbsp;kh&ocirc;ng ngơi tay, T&acirc;m T&iacute;t cứ ra đường l&agrave; d&aacute;t h&agrave;ng hiệu l&ecirc;n người.</p>\r\n\r\n<p>T&acirc;m T&iacute;t c&ograve;n ng&agrave;y c&agrave;ng son sắc mặn m&agrave;, quyến rũ ngay cả khi đ&atilde; l&agrave; mẹ 2 con. Thậm ch&iacute; nhiều người c&ograve;n nhận x&eacute;t lấy chồng v&agrave; sinh con xong nh&igrave;n c&ocirc; c&ograve;n nhuận sắc hơn cả hồi c&ograve;n son rỗi.</p>\r\n\r\n<p>Gu&nbsp;<a href=\"https://eva.vn/thoi-trang-c36.html\">thời trang</a>&nbsp;của b&agrave; mẹ 2 con cũng ng&agrave;y c&agrave;ng chất ngất, c&ocirc; khoe d&aacute;ng với loạt v&aacute;y &aacute;o thời thượng. Đặc biệt, T&acirc;m T&iacute;t rất hay trưng dụng quần jeans r&aacute;ch - xu hướng thời trang được c&ocirc; ứng dụng nhiều nhất. Đến mức fans cho rằng T&acirc;m T&iacute;t ch&iacute;nh l&agrave; &quot;nữ ho&agrave;ng c&aacute;i bang&quot; mỗi khi diện quần jeans r&aacute;ch c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 1\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-photo-1-1534317699359797699717-crop-15343186528451-1546421508-339-width640height426.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p>T&acirc;m T&iacute;t được phong l&agrave; nữ ho&agrave;ng c&aacute;i bang v&igrave; c&ocirc; sở hữu những chiếc quần jeasn r&aacute;ch cực chất. Điển h&igrave;nh l&agrave; item te tua n&agrave;y khi c&ocirc; phối c&ugrave;ng &aacute;o thun ba lỗ, t&uacute;i của Gucci v&agrave; gi&agrave;y b&aacute;nh m&igrave; của&nbsp;Stella McCartney. Set đồ năng động khoẻ khoắn v&agrave; khiến c&ocirc; trẻ hơn chục tuổi.</p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 2\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-1-1546421754-376-width519height588.jpg\" style=\"height:566px; width:500px\" /></p>\r\n\r\n<p>Một lần kh&aacute;c cũng với chiếc quần jeas r&aacute;ch kh&ocirc;ng thua k&eacute;m item ở tr&ecirc;n&nbsp;được b&agrave; mẹ 2 con phối hợp với phụ kiện đi k&egrave;m gồm gi&agrave;y Chanel, t&uacute;i v&agrave; thắt lưng Gucci cộng với đ&oacute; l&agrave; chiếc v&ograve;ng tay cực ngầu của Hermes. Tr&ocirc;ng T&acirc;m T&iacute;t cứ như một chiến binh tr&ecirc;n đường phố.&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" id=\"google_ads_iframe_/214571812/eva.pc.thoi_trang.onpagevideo.640x360_0\" name=\"google_ads_iframe_/214571812/eva.pc.thoi_trang.onpagevideo.640x360_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"640\"></iframe></p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 3\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-32087084_2111956615498200_3510802298924171264_n-1546421508-432-width720height960.jpg\" style=\"height:667px; width:500px\" /></p>\r\n\r\n<p>Thay đổi mỗi chiếc &aacute;o ba lỗ th&agrave;nh &aacute;o c&uacute;p ngực của Dior cho th&ecirc;m gợi cảm để đi h&aacute;t karaoke c&ugrave;ng &ocirc;ng x&atilde;.</p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 4\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-28870726_2038616046165591_5435393201321363509_n-1546421508-593-width719height960.jpg\" style=\"height:667px; width:500px\" /></p>\r\n\r\n<p>Đi du lịch c&ugrave;ng chồng m&agrave; T&acirc;m T&iacute;t vẫn kh&ocirc;ng qu&ecirc;n mang theo quần r&aacute;ch để diện đ&acirc;y n&agrave;y.&nbsp;</p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 5\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-2-1546421856-815-width600height600.jpg\" /></p>\r\n\r\n<p>Nếu kh&ocirc;ng diện quần r&aacute;ch th&igrave; b&agrave; mẹ 2 con cũng thả d&aacute;ng với v&aacute;y xuy&ecirc;n thấu cut out n&oacute;ng bỏng mix với mũ s&agrave;nh điệu của Dior.&nbsp;</p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 6\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-284291203459277692458794983853155193192448n-153430-1546421800-949-width640height640.jpg\" /></p>\r\n\r\n<p>Ra đường dạo với bạn cũng ăn mặc chuẩn như một fashionista với những m&oacute;n đồ xa hoa từ Hermes, Chanel, Saint Laurent...</p>\r\n\r\n<p><img alt=\"me man dien quan rach, tam tit dich thi la &quot;nu hoang cai bang&quot; cua vbiz - 7\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-3121089817576772176490602549651586594897920n-15343-1546421800-488-width640height640.jpg\" /></p>\r\n\r\n<p>Một lần kh&aacute;c lại khoe ch&acirc;n với quần jeans ống rộng mix k&egrave;m với &aacute;o thun của&nbsp;Balmain. C&oacute; thể n&oacute;i từ khi c&oacute; 2 con, T&acirc;m T&iacute;t ch&iacute;nh thức trở th&agrave;nh b&agrave; mẹ ăn mặc &quot;chặt ch&eacute;m&quot; nhất Vbiz.&nbsp;</p>', '1546447558.me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-32087084_2111956615498200_3510802298924171264_n-1546421508-432-width720height960.jpg', 'null', 0, 'Mê mẩn diện quần rách, Tâm Tít đích thị là', 'Tâm Tít, cô nàng hotgirl đình đám một thời, lấy chồng đại gia một cái cuộc đời bước sang một trang mới. Không chỉ sắm hàng hiệu xa xỉ không ngơi tay, Tâm Tít cứ ra đường là dát hàng hiệu lên người.', '1546447558.me-man-dien-quan-rach-tam-tit-dich-thi-la-nu-hoang-cai-bang-cua-vbiz-32087084_2111956615498200_3510802298924171264_n-1546421508-432-width720height960.jpg', 'null', 1, 1, 0, '2019-04-29 08:18:33', '2019-04-29 08:18:33'),
(7, 1, 'Quần rách hở đùi như Tâm Tít, mặc sao không phản cảm?', 'quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam', 'Quần jeans rách là món đồ \"phải có trong tủ\" của nhiều chị em trên toàn thế giới. Hình ảnh con gái mặc quần jeans rách, đi giày thể thao trông rất cá tính, năng động, hoạt bát. Đương nhiên, độ rách của quần phải có điểm dừng, chừng mực, phù hợp hoàn cảnh đi đâu, gặp ai, làm gì...', '<h2>Stylist gợi &yacute; 3 phong c&aacute;ch mặc quần jeans r&aacute;ch c&aacute; t&iacute;nh, năng động m&agrave; kh&ocirc;ng phản cảm.</h2>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 1\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-604-an-nhien1-1541129226-width660height-1541148781-310-width660height603.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Stylist An Nhi&ecirc;n tư vấn mặc tinh tế loại quần jeans r&aacute;ch.</p>\r\n\r\n<p>Quần jeans r&aacute;ch l&agrave; m&oacute;n đồ &quot;phải c&oacute; trong tủ&quot; của nhiều&nbsp;chị em tr&ecirc;n to&agrave;n thế giới. H&igrave;nh ảnh con g&aacute;i mặc quần jeans r&aacute;ch, đi gi&agrave;y thể thao tr&ocirc;ng rất c&aacute; t&iacute;nh, năng động, hoạt b&aacute;t. Đương nhi&ecirc;n,&nbsp;độ r&aacute;ch của quần phải c&oacute; điểm dừng, chừng mực, ph&ugrave; hợp ho&agrave;n cảnh đi đ&acirc;u, gặp ai, l&agrave;m g&igrave;... Việc mặc quần r&aacute;ch một c&aacute;ch kh&ocirc;ng c&acirc;n nhắc c&oacute; thể&nbsp;khiến bạn tr&ocirc;ng&nbsp;phản cảm ở chốn đ&ocirc;ng người.&nbsp;</p>\r\n\r\n<p>Vậy mặc quần r&aacute;ch c&aacute; t&iacute;nh, s&agrave;nh điệu&nbsp;kh&oacute; hay kh&ocirc;ng? Stylist An Nhi&ecirc;n cho rằng:&nbsp;<em>&quot;Mặc quần jeans r&aacute;ch c&aacute; t&iacute;nh kh&ocirc;ng kh&oacute;, chỉ kh&oacute; ở chỗ&nbsp;bạn l&agrave;m c&aacute;ch n&agrave;o để&nbsp;lựa chọn đ&uacute;ng chiếc quần m&igrave;nh cần. Quần r&aacute;ch c&oacute; nhiều loại.&nbsp;C&aacute;c nh&agrave; mốt đ&atilde; biến tấu ch&uacute;ng th&agrave;nh&nbsp;baggy, skinny, quần ống loe, quần ống su&ocirc;ng với những độ r&aacute;ch lớn nhỏ kh&aacute;c nhau.&nbsp;</em></p>\r\n\r\n<p><em>Bạn phải&nbsp;chắc chắn chiếc quần m&igrave;nh mặc xuất hiện đ&uacute;ng nơi, đ&uacute;ng chỗ. V&agrave; thực tế l&agrave;, nếu bạn kh&ocirc;ng phải những fashionista th&igrave; n&ecirc;n hạn chế loại&nbsp;quần r&aacute;ch qu&aacute; to. V&igrave;&nbsp;c&oacute; thể nếu kh&ocirc;ng&nbsp;phải l&agrave; một chuy&ecirc;n gia ăn mặc, bạn dễ biến ch&uacute;ng th&agrave;nh thảm hoạ. Cuối c&ugrave;ng, h&atilde;y mặc những chiếc quần jeans r&aacute;ch thật ngầu v&agrave; tinh tế.&quot;</em></p>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 2\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-442-3-1541067753-width564height846-1541148781-66-width564height846.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Phong c&aacute;ch street style của Bella Hadid.</p>\r\n\r\n<p>Sau c&acirc;u khẳng định ph&iacute;a tr&ecirc;n,&nbsp;stylist An Nhi&ecirc;n đưa ra những gợi &yacute; mặc đẹp cho chị em như b&ecirc;n dưới. C&aacute;ch phối quần jeans r&aacute;ch c&ugrave;ng trang phục kh&aacute;c được chia l&agrave;m 3 phong c&aacute;ch chủ đạo:</p>\r\n\r\n<p>Thứ nhất,&nbsp;phong c&aacute;ch thanh lịch c&ugrave;ng jeans r&aacute;ch để đi l&agrave;m. C&ocirc;ng thức cơ bản: Quần jeans r&aacute;ch vừa phải, &ocirc;m + &aacute;o sơ mi, &aacute;o thun + &aacute;o kho&aacute;c blazer (hoặc kho&aacute;c cardigan nhẹ nh&agrave;ng v&agrave;o m&ugrave;a thu đ&ocirc;ng ) + gi&agrave;y cao g&oacute;t hoặc bốt + t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" id=\"google_ads_iframe_/214571812/eva.pc.thoi_trang.onpagevideo.640x360_0\" name=\"google_ads_iframe_/214571812/eva.pc.thoi_trang.onpagevideo.640x360_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"640\"></iframe></p>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 3\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-298----nh-1-1541067666-width660height95-1541148781-266-width660height955.jpg\" /></p>\r\n\r\n<p>Những gợi &yacute; mặc quần jeans r&aacute;ch thanh lịch, c&oacute; thể mặc đi l&agrave;m.</p>\r\n\r\n<p>Ri&ecirc;ng quần jeans r&aacute;ch lớn (v&iacute; dụ như của T&acirc;m T&iacute;t, Vũ Ho&agrave;ng Điệp...), bạn nữ lưu &yacute;&nbsp;chỉ n&ecirc;n mặc đi dạo phố, đi chơi, kh&ocirc;ng n&ecirc;n mặc đi l&agrave;m, đến&nbsp;những nơi trang trọng, nghi&ecirc;m t&uacute;c. V&igrave; như vậy tr&ocirc;ng rất phản cảm. Nếu đến c&ocirc;ng sở, bạn n&ecirc;n chọn quần jeans&nbsp;kiểu skinny &ocirc;m v&agrave; r&aacute;ch nhỏ, phối c&ugrave;ng sơ mi, &aacute;o&nbsp;kho&aacute;c blaze&nbsp;hoặc &aacute;o kho&aacute;c len cadigan mỏng.</p>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 4\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-701-t--m-t--t2-1541068684-width660heigh-1541148781-64-width660height672.jpg\" /></p>\r\n\r\n<p>T&acirc;m T&iacute;t mới đ&acirc;y g&acirc;y ch&uacute; &yacute; khi mặc jeans r&aacute;ch ra phố.</p>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 5\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-102-v---ho--ng---i---p-1541129878-width-1541148781-702-width500height492.jpg\" /></p>\r\n\r\n<p>Quần jeans r&aacute;ch của Vũ Ho&agrave;ng Điệp g&acirc;y tranh c&atilde;i phản cảm ở chốn đ&ocirc;ng người.</p>\r\n\r\n<p>Thứ hai, chọn quần&nbsp;jeans r&aacute;ch kết hợp c&ugrave;ng c&aacute;c layer kh&aacute;c nhau để biến tấu ph&ugrave; hợp với tinh thần&nbsp;street style - ứng dụng khi đi dạo phố, đi chơi, du lịch.&nbsp;Với sự kết hợp n&agrave;y, ta c&oacute; c&ocirc;ng thức cơ bản: Quần jean r&aacute;ch + &aacute;o thun (&aacute;o crop top, &aacute;o 2 d&acirc;y,... ) + kho&aacute;c th&ecirc;m &aacute;o denim, kaki hoặc bomber + gi&agrave;y thể thao hoặc bốt&nbsp;+ phụ kiện k&iacute;nh, mũ...</p>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 6\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-984-5-1541067761-width564height704-1541148782-936-width564height704.jpg\" /></p>\r\n\r\n<p><img alt=\"quan rach ho dui nhu tam tit, mac sao khong phan cam? - 7\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-11-02/quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-953-ho--ng-th--y-linh-1541129796-width5-1541148781-785-width550height550.jpg\" /></p>\r\n\r\n<p>Một v&agrave;i v&iacute; dụ kh&aacute;c cho phong c&aacute;ch mặc quần r&aacute;ch dạo phố.</p>\r\n\r\n<p>Thứ ba, phối quần jeans r&aacute;ch theo phong c&aacute;ch&nbsp;cơ bản. C&ocirc;ng thức đơn giản l&agrave;:&nbsp;Quần jeans r&aacute;ch + &aacute;o thun free size, &aacute;o hoodie, &aacute;o sơ mi hoặc th&ecirc;m phần nữ t&iacute;nh khi mặc c&ugrave;ng sơ mi trễ vai. C&aacute;ch phối n&agrave;y&nbsp;khiến cho chiếc quần r&aacute;ch kh&ocirc;ng c&ograve;n phản cảm m&agrave; thay v&agrave;o đ&oacute; l&agrave; sự linh hoạt, năng động. Bạn c&oacute; thể mặc n&oacute;&nbsp;đi học, đi chơi, đi dạo phố,...</p>', '1546447705.quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-701-t--m-t--t2-1541068684-width660heigh-1541148781-64-width660height672.jpg', 'null', 0, 'Mê mẩn diện quần rách, Tâm Tít đích thị là', 'Quần jeans rách là món đồ \"phải có trong tủ\" của nhiều chị em trên toàn thế giới. Hình ảnh con gái mặc quần jeans rách, đi giày thể thao trông rất cá tính, năng động, hoạt bát. Đương nhiên, độ rách của quần phải có điểm dừng, chừng mực, phù hợp hoàn cảnh đi đâu, gặp ai, làm gì...', '1546447705.quan-rach-ho-dui-nhu-tam-tit-mac-sao-khong-phan-cam-1541142060-701-t--m-t--t2-1541068684-width660heigh-1541148781-64-width660height672.jpg', 'null', 1, 1, 0, '2019-04-29 13:10:18', '2019-04-29 13:10:18'),
(9, 1, '“Nữ tướng” ngành làm đẹp Đỗ Thị Hoài Diễm ngồi “ghế nóng” Hoa hậu Doanh nhân Hoàn vũ 2019', 'nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019', 'Với nhiều năm kinh nghiệm trong ngành làm đẹp, là tên tuổi được nhiều người kính nể, Đỗ Thị Hoài Diễm chính thức nhận lời mời từ ban tổ chức (BTC) Hoa hậu Doanh nhân Hoàn vũ 2019 ngồi vào ghế nóng cuộc thi được tổ chức tại Thái Lan.', '<h2>Với nhiều năm kinh nghiệm trong ng&agrave;nh l&agrave;m đẹp, l&agrave; t&ecirc;n tuổi được nhiều người k&iacute;nh nể, Đỗ Thị Ho&agrave;i Diễm ch&iacute;nh thức nhận lời mời từ ban tổ chức (BTC) Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ 2019 ngồi v&agrave;o ghế n&oacute;ng cuộc thi được tổ chức tại Th&aacute;i Lan.</h2>\r\n\r\n<p>T&ecirc;n tuổi Đỗ Thị Ho&agrave;i Diễm đ&atilde; kh&ocirc;ng c&ograve;n xa lạ trong ng&agrave;nh l&agrave;m đẹp, c&ocirc; từng vinh dự được nhận kỉ niệm chương do Ph&oacute; chủ tịch nước Đặng Thị Ngọc Thịnh trao tặng, người đẹp c&ograve;n l&agrave; nh&agrave; t&agrave;i trợ đồng h&agrave;nh c&ugrave;ng Hoa hậu biển Việt Nam to&agrave;n cầu 2018. B&ecirc;n cạnh đ&oacute;, nữ doanh nh&acirc;n t&agrave;i sắc thường xuy&ecirc;n được t&ocirc;n vinh v&agrave; trao tặng c&aacute;c giải thưởng cho c&aacute;c th&agrave;nh tựu v&agrave; đ&oacute;ng g&oacute;p của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 1\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3475-1545983181-79-width660height952.jpg\" style=\"height:721px; width:500px\" /></p>\r\n\r\n<p>Vốn hiền l&agrave;nh, thật th&agrave;, nhẹ nh&agrave;ng từ vẻ bề ngo&agrave;i v&agrave; mạnh mẽ, t&aacute;o bạo, chiến lược trong kinh doanh, Đỗ Thị Ho&agrave;i Diễm đ&atilde; kh&ocirc;ng tiếc tiền đầu tư cho c&ocirc;ng t&aacute;c đ&agrave;o tạo, mời chuy&ecirc;n gia đồng h&agrave;nh để x&acirc;y dựng hệ thống vững mạnh v&agrave; c&oacute; sức lan toả. Hiện nay chị đang l&agrave; Tổng gi&aacute;m đốc c&ocirc;ng ty TNHH đầu tư quốc tế Linh Ng&acirc;n với gần 400 đại l&yacute; thương hiệu nước hoa Onic trong cả nước. Chị cũng l&agrave; người sở hữu c&ocirc;ng nghệ điều trị n&aacute;m ti&ecirc;n tiến hiện nay l&agrave; Dimanlaier tại Việt Nam.</p>\r\n\r\n<p>L&agrave; một người d&agrave;y dặn kinh nghiệm v&agrave; c&oacute; tiếng n&oacute;i trong ng&agrave;nh c&ocirc;ng nghiệp l&agrave;m đẹp, kh&ocirc;ng kh&oacute; hiểu khi BTC Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ lại mời Ho&agrave;i Diễm trở th&agrave;nh một trong những gi&aacute;m khảo quyền lực tại cuộc thi Hoa Hậu Doanh nh&acirc;n Ho&agrave;n vũ 2019.</p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 2\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3478-1545983181-925-width660height990.jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n nữ doanh nh&acirc;n nhận lời mời ngồi ghế n&oacute;ng tại một cuộc thi nhan sắc. D&ugrave; l&agrave; người c&oacute; nhiều kinh nghiệm v&agrave; th&iacute;ch nghi tốt với những m&ocirc;i trường l&agrave;m việc kh&aacute;c nhau, Đỗ Thị Ho&agrave;i Diễm vẫn kh&ocirc;ng tr&aacute;nh khỏi sự lo lắng, hồi hộp.<em>&nbsp;&ldquo;T&ocirc;i hy vọng với kinh nghiệm của bản th&acirc;n, t&ocirc;i sẽ gi&uacute;p c&aacute;c th&iacute; sinh khắc phục những thiếu s&oacute;t, đưa ra được những lời khuy&ecirc;n hữu &iacute;ch để c&aacute;c em ho&agrave;n thiện bản th&acirc;n. Nh&igrave;n sơ bộ ban đầu, d&agrave;n th&iacute; sinh năm nay nổi trội về ngoại h&igrave;nh v&agrave; tr&iacute; tuệ, t&ocirc;i hy vọng sẽ gi&uacute;p BTC t&igrave;m ra được Hoa hậu xứng đ&aacute;ng nhất&rdquo;</em>, Ho&agrave;i Diễm b&agrave;y tỏ.</p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 3\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3482-1545983181-753-width660height990.jpg\" /></p>\r\n\r\n<p>Đồng h&agrave;nh với nữ tướng Đỗ Thị Ho&agrave;i Diễm tại Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ 2019 l&agrave; d&agrave;n ban gi&aacute;m khảo quyền lực: Đương kim Hoa hậu Đại sứ Qu&yacute; b&agrave; Ho&agrave;n Vũ thế giới 2018 - Hoa hậu Ch&acirc;u Ngọc B&iacute;ch, c&ocirc; đảm nhận vai tr&ograve; Trưởng Ban gi&aacute;m khảo c&ugrave;ng c&aacute;c gương mặt uy t&iacute;n kh&aacute;c như: &Aacute; hậu Doanh nh&acirc;n Ho&agrave;n vũ 2017 Ngọc Quỳnh, &Aacute; kh&ocirc;i Bảo Ch&acirc;u, Ca sĩ Du Thi&ecirc;n, Ca sĩ Thu Trang&hellip;</p>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c hoạt động kinh doanh, Ho&agrave;i Diễm d&agrave;nh phần lớn thời gian cho c&aacute;c chương tr&igrave;nh thiện nguyện. C&ocirc; hy vọng với những đ&oacute;ng g&oacute;p của m&igrave;nh sẽ gi&uacute;p một phần n&agrave;o đ&oacute;, cải thiện được đời sống của c&aacute;c em.</p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 4\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3483-1545983181-534-width660height990.jpg\" /></p>\r\n\r\n<p>Doanh nh&acirc;n t&agrave;i năng Đỗ Thị Ho&agrave;i Diễm lu&ocirc;n t&iacute;ch cực, lac quan, c&ocirc; l&agrave; một trong những h&igrave;nh mẫu l&yacute; tưởng của phụ nữ hiện đại. Với những g&igrave; đ&atilde; v&agrave; đang l&agrave;m được, Đỗ Thị Ho&agrave;i Diễm được tin tưởng sẽ đưa ra được những lựa chọn x&aacute;c đ&aacute;ng tại Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ 2019.</p>\r\n\r\n<p>Cuộc thi Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ &ndash; Ms Universe Business 2019 nhằm t&ocirc;n vinh nhan sắc, tr&iacute; tuệ, bản lĩnh của c&aacute;c nữ doanh nh&acirc;n, tạo cơ hội cho c&aacute;c nữ l&atilde;nh đạo doanh nghiệp giao lưu, kết nối, quảng b&aacute; doanh nghiệp, học hỏi kinh nghiệm v&agrave; c&ugrave;ng nhau tham gia những hoạt động x&atilde; hội.</p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 5\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3487-1545983181-830-width660height990.jpg\" /></p>\r\n\r\n<p>Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ &ndash; Ms Universe Business 2019 đ&atilde; ch&iacute;nh thức bước v&agrave;o h&agrave;nh tr&igrave;nh đi t&igrave;m gương mặt xứng đ&aacute;ng nhất cho ng&ocirc;i vị cao nhất &ndash; người sẽ l&agrave; niềm tự h&agrave;o cho c&aacute;c nữ doanh nh&acirc;n Việt bởi nhan sắc v&agrave; t&agrave;i năng.</p>\r\n\r\n<p>Được biết, th&iacute; sinh gi&agrave;nh ng&ocirc;i vị cao nhất trong đ&ecirc;m chung kết Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ 2019 sẽ nhận được tổng giải thưởng trị gi&aacute; 1,5 tỷ đồng, vương miện v&agrave; bằng chứng nhận từ ban tổ chức. Ngo&agrave;i ra cuộc thi c&ograve;n trao c&aacute;c danh hiệu &Aacute; hậu 1, &Aacute; hậu 2, &Aacute; hậu 3 v&agrave; c&aacute;c giải thưởng phụ.</p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 6\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3489-1545983181-59-width660height990.jpg\" /></p>\r\n\r\n<p><img alt=\"“nu tuong” nganh lam dep do thi hoai diem ngoi “ghe nong” hoa hau doanh nhan hoan vu 2019 - 7\" src=\"https://cdn.eva.vn/upload/4-2018/images/2018-12-28/nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3490-1545983181-482-width660height990.jpg\" /></p>\r\n\r\n<p>Đ&ecirc;m chung kết v&agrave; đăng quang của cuộc thi Hoa hậu Doanh nh&acirc;n Ho&agrave;n vũ &ndash; Ms Universe Business 2019 sẽ diễn ra v&agrave;o ng&agrave;y 14/03 tại Th&aacute;i Lan.</p>', '1546448218.nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3475-1545983181-79-width660height952.jpg', 'null', 0, '“Nữ tướng” ngành làm đẹp Đỗ Thị Hoài Diễm ngồi “ghế nóng” Hoa hậu Doanh nhân Hoàn vũ 2019', 'Với nhiều năm kinh nghiệm trong ngành làm đẹp, là tên tuổi được nhiều người kính nể, Đỗ Thị Hoài Diễm chính thức nhận lời mời từ ban tổ chức (BTC) Hoa hậu Doanh nhân Hoàn vũ 2019 ngồi vào ghế nóng cuộc thi được tổ chức tại Thái Lan.', '1546448218.nu-tuong-nganh-lam-dep-do-thi-hoai-diem-ngoi-ghe-nong-hoa-hau-doanh-nhan-hoan-vu-2019-img-3475-1545983181-79-width660height952.jpg', 'null', 1, 1, 0, '2019-04-28 18:27:36', '2019-04-28 18:27:36');
INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `description`, `content`, `image`, `tag`, `highlights`, `seo_title`, `seo_description`, `seo_image`, `seo_keyword`, `status`, `save`, `delete_at`, `created_at`, `updated_at`) VALUES
(10, 1, 'Mặc gì cũng như bà già, học ngay Triệu Vy cách', 'mac-gi-cung-nhu-ba-gia-hoc-ngay-trieu-vy-cach', 'Mặc gì cũng như bà già, học ngay Triệu Vy cách \"cưa sừng làm nghé\" đơn giản như không', '<h2>C&aacute;c n&agrave;ng U30, U40 ho&agrave;n to&agrave;n c&oacute; thể học hỏi Triệu Vy với c&ocirc;ng thức mix đồ si&ecirc;u thần th&aacute;nh n&agrave;y.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tạm dừng</p>\r\n\r\n<p>Thời gian hiện tại0:10</p>\r\n\r\n<p>/</p>\r\n\r\n<p>Độ d&agrave;i1:48</p>\r\n\r\n<p>Đ&atilde; tải: 0%</p>\r\n\r\n<p>Tiến tr&igrave;nh: 0%</p>\r\n\r\n<p>To&agrave;n m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Tắt tiếng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giảm c&acirc;n đầy ngoạn mục, Triệu Vy cứ mỗi lần xuất hiện l&agrave; một lần khiến người ta xu&yacute;t xoa bởi sắc v&oacute;c qu&aacute; đỗi ho&agrave;n hảo cũng như&nbsp;gu&nbsp;<a href=\"https://eva.vn/thoi-trang-c36.html\">thời trang</a>&nbsp;cực k&igrave; trẻ trung m&agrave; vẫn&nbsp;hợp tuổi.</p>\r\n\r\n<p>Nếu như c&aacute;ch đ&acirc;y một v&agrave;i năm, Triệu Vy trong mắt c&ocirc;ng ch&uacute;ng như một minh tinh đ&atilde; hết thời với th&acirc;n h&igrave;nh ph&igrave; nhi&ecirc;u mất kiểm so&aacute;t c&ugrave;ng gu thời trang gi&agrave; ch&aacute;t ch&uacute;a th&igrave; hiện tại, Triệu Vy đang dần lấy lại phong độ v&agrave; khẳng định một lần nữa danh xưng mỹ nh&acirc;n kh&ocirc;ng tuổi của showbiz xứ Trung. Kh&ocirc;ng chỉ nỗ lực hết m&igrave;nh trong việc lấy lại v&oacute;c d&aacute;ng thon gọn m&agrave; hơn nữa, Triệu Vy c&ograve;n cực k&igrave; đầu tư cho những &ldquo;bộ c&aacute;nh&rdquo; với khả năng &ldquo;hack&rdquo; tuổi si&ecirc;u thần th&aacute;nh. Điển h&igrave;nh như set đồ m&agrave; Triệu Vy mới diện gần đ&acirc;y trong một lần tham dự sự kiện.</p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 1\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/photo-1-1545908755824628452524--copy--1546403197-843-width600height900.jpeg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p>Cứ tưởng &aacute;o hoodie in chữ chỉ d&agrave;nh cho những c&ocirc; n&agrave;ng trẻ tuổi. Thế nhưng Triệu Vy, người đẹp đ&atilde; bước qua ngưỡng tuổi 40 diện l&ecirc;n vẫn đẹp đến bất ngờ.&nbsp;</p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 2\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/photo-1-15459087593601810295196-1546403338-563-width600height600.jpeg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>Diện cả c&acirc;y đồ đen với &aacute;o hoodie v&agrave; quần jeans r&aacute;ch, tr&ocirc;ng Triệu Vy cực k&igrave; c&aacute; t&iacute;nh,&nbsp;trẻ trung v&agrave; s&agrave;nh điệu. Đặc biệt, m&agrave;u đen khiến set đồ của người đẹp trở n&ecirc;n tinh tế v&agrave; thanh lịch&nbsp;hơn, đ&uacute;ng như những g&igrave; m&agrave; người ta muốn thấy ở những c&ocirc; n&agrave;ng chững tuổi thời hiện đại.</p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 3\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/48944854_2003480633071331_1918221587979436032_n--copy--1546403197-745-width600height400.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p>Kh&ocirc;ng những chẳng bị tố &quot;cưa sừng l&agrave;m ngh&eacute;&quot;, set đồ c&ograve;n gi&uacute;p Triệu Vy &quot;thu hoạch&quot; được cả &quot;rổ&quot; lời khen bởi gu thời trang qu&aacute; đỗi trẻ trung v&agrave; tinh tế.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" id=\"google_ads_iframe_/214571812/eva.pc.thoi_trang.onpagevideo.640x360_0\" name=\"google_ads_iframe_/214571812/eva.pc.thoi_trang.onpagevideo.640x360_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"640\"></iframe></p>\r\n\r\n<p>N&oacute;i đến đ&acirc;y&nbsp;kh&ocirc;ng biết c&aacute;c n&agrave;ng c&oacute; kịp tinh &yacute; m&agrave; nhận ra tuyệt chi&ecirc;u &ldquo;hack&rdquo; tuổi đẹp thần sầu được Triệu Vy lăng x&ecirc; mệt nghỉ chưa nhỉ? Đ&uacute;ng thế, ấy ch&iacute;nh l&agrave; combo kết hợp giữa &aacute;o nỉ/&aacute;o hoodie c&ugrave;ng một item c&oacute; thiết kế tối giản kh&aacute;c như quần jeans, quần kaki hay ch&acirc;n v&aacute;y với c&aacute;c gam m&agrave;u trung t&iacute;nh, trang nh&atilde; v&agrave; nhẹ nh&agrave;ng. Đừng tưởng những items n&agrave;y chỉ d&agrave;nh cho c&aacute;c c&ocirc; n&agrave;ng tuổi đ&ocirc;i mươi nh&eacute;, bởi lẽ tr&ecirc;n thực tế&nbsp;ch&uacute;ng cũng được coi l&agrave; gợi &yacute; si&ecirc;u ho&agrave;n hảo gi&uacute;p c&aacute;c n&agrave;ng U30, U40 tha hồ m&agrave; &ldquo;hack&rdquo; tuổi đấy!</p>\r\n\r\n<p><strong>&Aacute;o nỉ/&aacute;o hoodie + quần jeans/kaki</strong></p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 4\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/photo-5-1545908759367834291565--copy--1546403197-432-width600height750.jpg\" /></p>\r\n\r\n<p>&Aacute;o hoodie/&aacute;o nỉ với c&aacute;c thiết kế đơn giản l&agrave; gợi &yacute; cực hay ho&nbsp;d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i U30, U40.</p>\r\n\r\n<p>C&aacute;c kiểu quần với thiết kế tối giản c&ugrave;ng c&aacute;c gam m&agrave;u cơ bản hay trung t&iacute;nh như quần jeans, quần kaki trắng, đen, x&aacute;m,... dẫu kh&ocirc;ng c&oacute; g&igrave; qu&aacute; đặc biệt nhưng ch&iacute;nh sự &ldquo;kh&ocirc;ng c&oacute; g&igrave; đặc biệt&rdquo; đ&atilde; gi&uacute;p ch&uacute;ng trở th&agrave;nh c&aacute;c items đem theo &ldquo;ph&eacute;p m&agrave;u&rdquo; trẻ h&oacute;a tuyệt vời.</p>\r\n\r\n<p>Hay n&oacute;i đơn giản hơn, đ&acirc;y ch&iacute;nh x&aacute;c l&agrave; những items khiến người diện như trẻ ra cả chục tuổi. Chưa kể đến, kiểu &aacute;o nỉ hay &aacute;o hoodie với thiết kế kh&ocirc;ng qu&aacute; cầu k&igrave; khi kết hợp với c&aacute;c kiểu quần n&agrave;y sẽ tạo n&ecirc;n một set đồ vừa trẻ trung, năng động lại vừa nh&atilde; nhặn, thanh lịch.</p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 5\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/c8f4da6be071cb8773677eb6a0004678--copy--1546403197-551-width600height450.jpg\" /></p>\r\n\r\n<p>&Aacute;o hoodie/&aacute;o nỉ v&agrave; quần jeans được coi l&agrave; &quot;cặp b&agrave;i tr&ugrave;ng&quot; cho một set đồ &quot;hack&quot; tuổi đẹp thần sầu.</p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 6\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/mac-gi-cung-nhu-ba-gia-hoc-ngay-trieu-vy-cach-dien-do-cua-sung-lam-nghe-cuc-tinh-te-7b52d81af5c74a6c57d32aa689a1d036--copy--1546406438-987-width600height836.jpg\" /></p>\r\n\r\n<p>C&aacute;c gam m&agrave;u trầm như đen, xanh đen, x&aacute;m,... kh&ocirc;ng những gi&uacute;p che đi c&aacute;c khuyết điểm ở v&oacute;c d&aacute;ng m&agrave; hơn nữa, ch&uacute;ng&nbsp;cũng khiến&nbsp;c&aacute;c n&agrave;ng tr&ocirc;ng trẻ ra cả v&agrave;i tuổi.</p>\r\n\r\n<p><img alt=\"mac gi cung nhu ba gia, hoc ngay trieu vy cach &quot;cua sung lam nghe&quot; don gian nhu khong - 7\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-02/mac-gi-cung-nhu-ba-gia-hoc-ngay-trieu-vy-cach-dien-do-cua-sung-lam-nghe-cuc-tinh-te-401826358070b571a6bf22802666f88a--copy--1546406477-24-width600height892.jpg\" /></p>\r\n\r\n<p>&Aacute;o hoodie + quần kaki cũng l&agrave; một combo cực ph&ugrave; hợp m&agrave; c&aacute;c n&agrave;ng c&oacute; thể thử &aacute;p dụng. Tuy nhi&ecirc;n, nếu kh&ocirc;ng muốn trở n&ecirc;n qu&aacute; l&ograve;e loẹt v&agrave; nổi bật th&igrave;&nbsp;h&atilde;y lựa chọn những chiếc quần kaki t&ocirc;ng m&agrave;u cơ bản v&agrave; nhẹ nh&agrave;ng&nbsp;như đen, trắng, n&acirc;u be,...</p>\r\n\r\n<p><strong>&Aacute;o nỉ/&aacute;o hoodie + ch&acirc;n v&aacute;y</strong></p>\r\n\r\n<p>Nếu kh&ocirc;ng muốn bị g&ograve; b&oacute; với c&aacute;c kiểu quần d&agrave;i &ocirc;m s&aacute;t, c&aacute;c n&agrave;ng cũng ho&agrave;n to&agrave;n c&oacute; thể thế chỗ ch&uacute;ng bằng những thiết kế ch&acirc;n v&aacute;y tối giản. V&iacute; dụ như c&aacute;c kiểu ch&acirc;n v&aacute;y đơn sắc hoặc ch&acirc;n v&aacute;y kẻ d&aacute;ng d&agrave;i qu&aacute; gối. Kh&aacute;c với vẻ năng động của quần jeans hay quần kaki, ch&acirc;n v&aacute;y d&agrave;i khi kết hợp với &aacute;o nỉ/&aacute;o hoodie sẽ tạo n&ecirc;n một set đồ mang đậm n&eacute;t quyến rũ, nữ t&iacute;nh v&agrave; đặc biệt vẫn cực k&igrave; trẻ trung. Tuy nhi&ecirc;n, h&atilde;y ch&uacute; &yacute; tr&aacute;nh xa những kiểu v&aacute;y qu&aacute; d&agrave;i c&aacute;c n&agrave;ng nh&eacute;, bởi lẽ ch&uacute;ng sẽ khiến set đồ tr&ocirc;ng rườm r&agrave; v&agrave; k&eacute;m tinh tế&nbsp;đi&nbsp;rất nhiều.</p>', '1546448543.photo-1-1545908755824628452524--copy--1546403197-843-width600height900.jpeg', 'null', 0, 'Mặc gì cũng như bà già, học ngay Triệu Vy cách', 'Nếu như cách đây một vài năm, Triệu Vy trong mắt công chúng như một minh tinh đã hết thời với thân hình phì nhiêu mất kiểm soát cùng gu thời trang già chát chúa thì hiện tại, Triệu Vy đang dần lấy lại phong độ và khẳng định một lần nữa danh xưng mỹ nhân không tuổi của showbiz xứ Trung', '1546448543.photo-1-1545908755824628452524--copy--1546403197-843-width600height900.jpeg', 'null', 1, 1, 0, '2019-04-28 18:27:44', '2019-04-28 18:27:44'),
(11, 1, 'Gạo Nếp Gạo Tẻ: Thúy Diễm xuất hiện xinh đẹp, tự tin để phá cặp Hương - Tường', 'gao-nep-gao-te-thuy-diem-xuat-hien-xinh-dep-tu-tin-de-pha-cap-huong-tuong', 'Ngoài ra, Hương cũng bất ngờ gặp lại mẹ Tường trong không khí căng thẳng. Thật ra trước đây mẹ Tường vốn cảm thấy Hương không xứng đáng với con trai mình, chỉ là vì Tường quá thích cô mà bà đành phải chấp nhận.', '<h2>Hương b&agrave;ng ho&agrave;ng khi tho&aacute;ng nghe được giọng n&oacute;i của Tường trong tập 105 Gạo Nếp Gạo Tẻ.</h2>\r\n\r\n<p>Tạm dừng</p>\r\n\r\n<p>Thời gian hiện tại0:26</p>\r\n\r\n<p>/</p>\r\n\r\n<p>Độ d&agrave;i2:12</p>\r\n\r\n<p>Đ&atilde; tải: 0%</p>\r\n\r\n<p>Tiến tr&igrave;nh: 0%</p>\r\n\r\n<p>To&agrave;n m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Bật &acirc;m thanh</p>\r\n\r\n<p>Gạo Nếp Gạo Tẻ tập 105 - Hương vẫn kh&ocirc;ng ngừng tự dằn vặt bản th&acirc;n khi nhớ về Tường (Nguồn: HTV2)</p>\r\n\r\n<p><em>Tập 105 Gạo Nếp Gạo Tẻ</em>&nbsp;kể với kh&aacute;n giả cuộc sống mới của c&aacute;c con g&aacute;i, con rể cũ nh&agrave; b&agrave; Mai (NSND Hồng V&acirc;n).&nbsp;</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 1\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10504-1546484087-843-width650height366.jpg\" style=\"height:282px; width:500px\" /></p>\r\n\r\n<p>Thời gian tr&ocirc;i qua, giờ đ&acirc;y&nbsp;Hương&nbsp;(L&ecirc; Phương) kh&ocirc;ng chỉ c&oacute; th&ecirc;m b&eacute; M&iacute;t - con của Tường&nbsp;(Thanh Thức)&nbsp;m&agrave; c&ograve;n trở th&agrave;nh người đứng đầu 1 c&ocirc;ng ty. Trong khi&nbsp;đ&oacute;, H&acirc;n&nbsp;(Th&uacute;y Ng&acirc;n) giữ chức&nbsp;gi&aacute;m đốc b&aacute;n h&agrave;ng cho c&ocirc;ng ty chị g&aacute;i, c&ograve;n Minh&nbsp;(Phương Hằng)&nbsp;hạnh ph&uacute;c đề huề khi trở th&agrave;nh mẹ của 2 cặp sinh đ&ocirc;i.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 2\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10503-1546484087-562-width650height404.jpg\" style=\"height:311px; width:500px\" /></p>\r\n\r\n<p>Gia đ&igrave;nh nhỏ của ch&uacute; Quang (Ngọc Thuận)&nbsp;c&oacute; th&ecirc;m 1 c&ocirc; con g&aacute;i đ&aacute;ng y&ecirc;u, xinh xắn. Về ph&iacute;a 2 ch&agrave;ng rể cũ của b&agrave; Mai, Kiệt v&agrave; C&ocirc;ng cũng th&agrave;nh c&ocirc;ng kh&ocirc;ng k&eacute;m. C&ocirc;ng (Ho&agrave;ng Anh)&nbsp;trở th&agrave;nh &ocirc;ng chủ của một n&ocirc;ng trại trồng rau hữu cơ, c&ograve;n Kiệt (Trung Dũng) đ&atilde; ổn định sự nghiệp.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 3\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10501-1546484087-438-width650height366.jpg\" style=\"height:282px; width:500px\" /></p>\r\n\r\n<p>Sự thay đổi v&agrave; trưởng th&agrave;nh của C&ocirc;ng đ&atilde; để lại thiện cảm với b&agrave; Mai, v&igrave; lẽ đ&oacute; m&agrave; b&agrave; lu&ocirc;n t&igrave;m cơ hội để thuyết phục Hương &ldquo;nối lại t&igrave;nh xưa&rdquo;. Về phần C&ocirc;ng, d&ugrave; vẫn c&ograve;n t&igrave;nh cảm với Hương nhưng anh vẫn kh&ocirc;ng d&aacute;m bước qua giới hạn bạn b&egrave;&hellip;</p>\r\n\r\n<p>Điều chưa trọn vẹn duy nhất trong&nbsp;nh&agrave; b&agrave; Mai l&uacute;c n&agrave;y l&agrave;&nbsp;b&agrave; Đ&agrave;o ng&agrave;y c&agrave;ng l&agrave;m căng với vợ chồng ch&uacute; Quang để &eacute;p Trinh (Puka) sinh th&ecirc;m ch&aacute;u trai nối d&otilde;i.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 4\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10507-1546484087-772-width650height434.jpg\" style=\"height:334px; width:500px\" /></p>\r\n\r\n<p>D&ugrave; th&agrave;nh đạt nhưng cả 2 chị em Hương v&agrave; H&acirc;n đều mang trong l&ograve;ng nỗi buồn về chuyện t&igrave;nh cảm khi mất đi hạnh ph&uacute;c với người đ&agrave;n &ocirc;ng m&agrave; m&igrave;nh y&ecirc;u thương. B&eacute; M&iacute;t - con g&aacute;i của Hương - Tường lớn l&ecirc;n v&agrave; tin theo lời kể của mẹ rằng ba đ&atilde; h&oacute;a th&agrave;nh 1 v&igrave; sao tr&ecirc;n bầu trời.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 5\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10514-1546484087-478-width650height366.jpg\" /></p>\r\n\r\n<p>Mẹ con Hương thường c&ugrave;ng nhau ngắm sao v&agrave; nhớ về Tường.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&oacute; 1 b&iacute; mật Hương vẫn lu&ocirc;n giấu người nh&agrave;, đ&oacute; l&agrave; c&ocirc; bị chứng mất ngủ kể từ sau khi Tường đột ngột mất đi. Trong giấc&nbsp;mơ, c&ocirc; vẫn thường&nbsp;thấy h&igrave;nh b&oacute;ng anh hiện l&ecirc;n&nbsp;tr&aacute;ch c&ocirc; ng&agrave;y ấy&nbsp;đ&atilde; kh&ocirc;ng đến buổi hẹn.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 6\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10515-1546484087-678-width650height366.jpg\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, Hương cũng bất ngờ gặp lại mẹ Tường trong kh&ocirc;ng kh&iacute; căng thẳng. Thật ra trước đ&acirc;y mẹ Tường vốn cảm thấy Hương kh&ocirc;ng xứng đ&aacute;ng với con trai m&igrave;nh, chỉ l&agrave;&nbsp;v&igrave; Tường qu&aacute; th&iacute;ch c&ocirc; m&agrave; b&agrave; đ&agrave;nh phải chấp nhận.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 7\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10511-1546484087-85-width650height366.jpg\" /></p>\r\n\r\n<p>Kể từ sau sự ra đi của Tường, mẹ Tường lu&ocirc;n tr&aacute;nh mặt Hương. Kể cả khi Hương quỳ gối cầu xin được đến viếng mộ Tường th&igrave; mẹ của anh cũng từ chối.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 8\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10512-1546484087-288-width650height366.jpg\" /></p>\r\n\r\n<p>Th&ecirc;m một điều kh&ocirc;ng may xảy ra với Hương l&agrave; l&ocirc; h&agrave;ng xuất khẩu của c&ocirc;ng ty c&ocirc; bị ph&aacute;t hiện c&oacute; h&agrave;ng cấm. V&agrave; vị luật sư trẻ đang gi&uacute;p Hương giải quyết vấn đề của c&ocirc;ng ty lại l&agrave; người quen th&acirc;n thiết với mẹ Tường - nh&acirc;n vật do Th&uacute;y Diễm thủ vai.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 9\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10509-1546484087-987-width650height366.jpg\" /></p>\r\n\r\n<p>Ơn trời vậy l&agrave; sau h&agrave;ng th&aacute;ng chờ đợi r&ograve;ng r&atilde;, th&igrave; c&ocirc; g&aacute;i bị nghi l&agrave;&nbsp;&quot;tiểu tam&quot; chen ngang Hương - Tường cũng chịu xuất hiện. Chắc chắn với biến cố mới n&agrave;y, mạch phim&nbsp;<em>Gạo Nếp Gạo Tẻ</em>&nbsp;sẽ c&oacute; rất nhiều kịch t&iacute;nh hấp dẫn.</p>\r\n\r\n<p><img alt=\"gao nep gao te: thuy diem xuat hien xinh dep, tu tin de pha cap huong - tuong - 10\" src=\"https://cdn.eva.vn/upload/1-2019/images/2019-01-03/gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10528-1546484363-435-width650height424.jpg\" /></p>\r\n\r\n<p>Lại quay về ph&iacute;a chuyện của&nbsp;H&acirc;n Hoa hậu, c&ocirc; n&agrave;ng &iacute;ch kỷ ng&agrave;y n&agrave;o&nbsp;cũng đ&atilde; thay đổi, kh&ocirc;ng chỉ biết quan t&acirc;m gia đ&igrave;nh m&agrave; c&ograve;n cải thiện mối quan hệ với em g&aacute;i Kiệt. Trong 1 lần đến gi&uacute;p đỡ anh em chồng cũ c&uacute;ng giỗ ba, H&acirc;n bất ngờ chạm mặt Ph&uacute;c. Để tr&aacute;nh hiểu lầm g&acirc;y kh&oacute; xử cho cả ba, c&ocirc; ngay lập tức t&igrave;m c&aacute;ch&nbsp;rời đi.</p>', '1546494557.gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10503-1546484087-562-width650height404.jpg', 'null', 0, 'Gạo Nếp Gạo Tẻ: Thúy Diễm xuất hiện xinh đẹp, tự tin để phá cặp Hương - Tường', NULL, '1546494557.gao-nep-gao-te-on-troi-cuoi-cung-thuy-diem-cung-chiu-xuat-hien-de-pha-huong---tuong-gngt-10503-1546484087-562-width650height404.jpg', 'null', 1, 1, 0, '2019-04-28 18:27:52', '2019-04-28 18:27:52'),
(12, 1, 'Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang?', 'mac-vay-xe-co-chu-v-day-dan-nhu-ky-duyen-lieu-co-pho-phang', 'Váy xẻ cổ chữ V được rất nhiều người đẹp Việt ưa chuộng, gần như ai cũng có vài chiếc trong tủ đồ. Lý do đơn giản là vì chúng đem lại độ gợi cảm cao cho chủ nhân, phù hợp xuất hiện tại nhiều loại sự kiện.', '<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 1\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-741-ky-duyen10-1546581060-width660height584.jpg\" /></p>\r\n\r\n<p>Hoa hậu&nbsp;<a href=\"https://www.24h.com.vn/hoa-hau-nguyen-cao-ky-duyen-c78e3626.html\" title=\"Kỳ Duyên\">Kỳ Duy&ecirc;n</a>&nbsp;xuất hiện gợi cảm trong những thiết kế xẻ cổ chữ V</p>\r\n\r\n<p>V&aacute;y xẻ cổ chữ V được rất nhiều người đẹp Việt ưa chuộng, gần như ai cũng c&oacute; v&agrave;i chiếc trong tủ đồ. L&yacute; do đơn giản l&agrave; v&igrave; ch&uacute;ng đem lại độ gợi cảm cao cho chủ nh&acirc;n, ph&ugrave; hợp xuất hiện tại nhiều loại sự kiện. Tuy nhi&ecirc;n,&nbsp;ch&uacute;ng cũng rất dễ &quot;phản chủ&quot;, nếu kh&ocirc;ng ph&ugrave; hợp d&aacute;ng v&oacute;c sẽ g&acirc;y ra khoảnh khắc k&eacute;m duy&ecirc;n như phải lấy tay che chắn hoặc hớ h&ecirc;nh trước ống k&iacute;nh m&aacute;y quay.&nbsp;</p>\r\n\r\n<p>Vậy d&aacute;ng v&oacute;c như thế n&agrave;o sẽ mặc đẹp nhất loại v&aacute;y xẻ cổ s&acirc;u chữ V? Từ &aacute;nh nh&igrave;n của chuy&ecirc;n gia, stylist Thiều Ngọc cho rằng:&nbsp;<em>&quot;Theo quan điểm của c&aacute; nh&acirc;n t&ocirc;i, người c&oacute; v&ograve;ng 1 nhỏ hoặc vừa mặc v&aacute;y cổ chữ V đẹp v&agrave; tinh tế&nbsp;nhất. C&ograve;n người ngực qu&aacute; khổ th&igrave; kh&ocirc;ng n&ecirc;n mặc xẻ cổ s&acirc;u, dễ bị lộ hoặc g&acirc;y phản cảm. V&iacute; dụ như Kỳ Duy&ecirc;n,&nbsp;<a href=\"https://www.24h.com.vn/mai-phuong-thuy-hoa-hau-viet-nam-2006-c78e1161.html\" title=\"Mai Phương Thúy\">Mai Phương Th&uacute;y</a>&nbsp;đầy đặn mặc vẫn đẹp&nbsp;nhưng kh&ocirc;ng thanh tho&aacute;t&nbsp;bằng Chi Pu, H&agrave; Anh.&quot;</em></p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 2\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-232-mai-p-thuy10-1546582712-width660height688.jpg\" /></p>\r\n\r\n<p>Mai Phương Th&uacute;y c&oacute; lẽ&nbsp;l&agrave; Hoa hậu Việt Nam chăm mặc v&aacute;y xẻ cổ V nhất</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"300\" id=\"google_ads_iframe_/124557882/24h/vn/desktop/fashion/in_readvideo_article_0\" name=\"google_ads_iframe_/124557882/24h/vn/desktop/fashion/in_readvideo_article_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"535\"></iframe></p>\r\n\r\n<p>T&ugrave;y thuộc v&agrave;o từng d&aacute;ng người, stylist Thiều Ngọc&nbsp;gợi &yacute; c&aacute;ch mặc ho&agrave;n hảo cho loại v&aacute;y cổ V như sau:&nbsp;<em>&quot;Với người ngực&nbsp;nhỏ chỉ cần d&ugrave;ng &aacute;o l&oacute;t d&aacute;n hoặc miếng d&aacute;n nhỏ. C&ograve;n người c&oacute; v&ograve;ng 1 đầy đặn n&ecirc;n chọn thiết kế cổ V tiết chế, kho&eacute;t vừa phải.</em></p>\r\n\r\n<p><em>Ngo&agrave;i ra, người mặc c&oacute; thể mua th&ecirc;m miếng d&aacute;n viền cổ V, như một dạng băng d&iacute;nh hai mặt chuy&ecirc;n dụng cho thiết kế kho&eacute;t ngực. Nếu phải di chuyển nhiều th&igrave; n&ecirc;n d&ugrave;ng th&ecirc;m phương &aacute;n hỗ trợ như c&agrave;i phụ kiện l&agrave;m điểm kết nối giữ cũng như trang tr&iacute; cho trang phục.&quot;</em></p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 3\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-69-kh--nh-ph----ng-1546566807-width640height960.jpg\" /></p>\r\n\r\n<p>L&agrave; người thường xuy&ecirc;n mặc thiết kế xẻ cổ, &Aacute; hậu Kh&aacute;nh Phương cho biết: &quot;Với loại v&aacute;y n&agrave;y, t&ocirc;i đa phần sử dụng miếng d&aacute;n ngực,&nbsp;tuỳ v&agrave;o từng bộ đồ c&oacute; miếng l&oacute;t sẵn&nbsp;hay kh&ocirc;ng. Nếu v&aacute;y&nbsp;xẻ s&acirc;u hoặc rộng&nbsp;th&igrave; phải lưu &yacute; chọn những bộ đồ vừa người,&nbsp;đ&uacute;ng phom của m&igrave;nh để c&oacute; đường kho&eacute;t xẻ vừa vặn, kh&ocirc;ng bị ph&ocirc;.&quot;</p>\r\n\r\n<p><em><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 4\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-862-h---anh-1546583244-width500height750.jpg\" /></em></p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 5\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-295-huy---n-my-1546583435-width660height921.jpg\" /></p>\r\n\r\n<p>Thiết kế của H&agrave; Anh, Huyền My c&oacute; điểm nối giữa ở phần xẻ n&ecirc;n rất an to&agrave;n khi mặc</p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 6\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-221-chipu-1546583515-width660height991.jpg\" /></p>\r\n\r\n<p>V&aacute;y của Chi Pu được may th&ecirc;m lớp voan mỏng ở giữa d&ugrave; thiết kế đ&atilde; hợp d&aacute;ng người</p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 7\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-490-k----duyen-1546583541-width660height990.jpg\" /></p>\r\n\r\n<p>Chiếc v&aacute;y n&agrave;y của Kỳ Duy&ecirc;n may th&ecirc;m lớp lưới để tiết chế độ xẻ chữ V</p>', '1546667785.1546662301-490-k----duyen-1546583541-width660height990.jpg', 'null', 0, 'Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang?', 'Váy xẻ cổ chữ V được rất nhiều người đẹp Việt ưa chuộng, gần như ai cũng có vài chiếc trong tủ đồ. Lý do đơn giản là vì chúng đem lại độ gợi cảm cao cho chủ nhân, phù hợp xuất hiện tại nhiều loại sự kiện.', '1546667784.1546662301-490-k----duyen-1546583541-width660height990.jpg', 'null', 1, 1, 0, '2019-04-29 08:43:14', '2019-04-29 08:43:14'),
(13, 1, 'Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang?', 'mac-vay-xe-co-chu-v-day-dan-nhu-ky-duyen-lieu-co-pho-phang', 'Váy xẻ cổ chữ V được rất nhiều người đẹp Việt ưa chuộng, gần như ai cũng có vài chiếc trong tủ đồ. Lý do đơn giản là vì chúng đem lại độ gợi cảm cao cho chủ nhân, phù hợp xuất hiện tại nhiều loại sự kiện.', '<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 1\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-741-ky-duyen10-1546581060-width660height584.jpg\" /></p>\r\n\r\n<p>Hoa hậu&nbsp;<a href=\"https://www.24h.com.vn/hoa-hau-nguyen-cao-ky-duyen-c78e3626.html\" title=\"Kỳ Duyên\">Kỳ Duy&ecirc;n</a>&nbsp;xuất hiện gợi cảm trong những thiết kế xẻ cổ chữ V</p>\r\n\r\n<p>V&aacute;y xẻ cổ chữ V được rất nhiều người đẹp Việt ưa chuộng, gần như ai cũng c&oacute; v&agrave;i chiếc trong tủ đồ. L&yacute; do đơn giản l&agrave; v&igrave; ch&uacute;ng đem lại độ gợi cảm cao cho chủ nh&acirc;n, ph&ugrave; hợp xuất hiện tại nhiều loại sự kiện. Tuy nhi&ecirc;n,&nbsp;ch&uacute;ng cũng rất dễ &quot;phản chủ&quot;, nếu kh&ocirc;ng ph&ugrave; hợp d&aacute;ng v&oacute;c sẽ g&acirc;y ra khoảnh khắc k&eacute;m duy&ecirc;n như phải lấy tay che chắn hoặc hớ h&ecirc;nh trước ống k&iacute;nh m&aacute;y quay.&nbsp;</p>\r\n\r\n<p>Vậy d&aacute;ng v&oacute;c như thế n&agrave;o sẽ mặc đẹp nhất loại v&aacute;y xẻ cổ s&acirc;u chữ V? Từ &aacute;nh nh&igrave;n của chuy&ecirc;n gia, stylist Thiều Ngọc cho rằng:&nbsp;<em>&quot;Theo quan điểm của c&aacute; nh&acirc;n t&ocirc;i, người c&oacute; v&ograve;ng 1 nhỏ hoặc vừa mặc v&aacute;y cổ chữ V đẹp v&agrave; tinh tế&nbsp;nhất. C&ograve;n người ngực qu&aacute; khổ th&igrave; kh&ocirc;ng n&ecirc;n mặc xẻ cổ s&acirc;u, dễ bị lộ hoặc g&acirc;y phản cảm. V&iacute; dụ như Kỳ Duy&ecirc;n,&nbsp;<a href=\"https://www.24h.com.vn/mai-phuong-thuy-hoa-hau-viet-nam-2006-c78e1161.html\" title=\"Mai Phương Thúy\">Mai Phương Th&uacute;y</a>&nbsp;đầy đặn mặc vẫn đẹp&nbsp;nhưng kh&ocirc;ng thanh tho&aacute;t&nbsp;bằng Chi Pu, H&agrave; Anh.&quot;</em></p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 2\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-232-mai-p-thuy10-1546582712-width660height688.jpg\" /></p>\r\n\r\n<p>Mai Phương Th&uacute;y c&oacute; lẽ&nbsp;l&agrave; Hoa hậu Việt Nam chăm mặc v&aacute;y xẻ cổ V nhất</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"300\" id=\"google_ads_iframe_/124557882/24h/vn/desktop/fashion/in_readvideo_article_0\" name=\"google_ads_iframe_/124557882/24h/vn/desktop/fashion/in_readvideo_article_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"535\"></iframe></p>\r\n\r\n<p>T&ugrave;y thuộc v&agrave;o từng d&aacute;ng người, stylist Thiều Ngọc&nbsp;gợi &yacute; c&aacute;ch mặc ho&agrave;n hảo cho loại v&aacute;y cổ V như sau:&nbsp;<em>&quot;Với người ngực&nbsp;nhỏ chỉ cần d&ugrave;ng &aacute;o l&oacute;t d&aacute;n hoặc miếng d&aacute;n nhỏ. C&ograve;n người c&oacute; v&ograve;ng 1 đầy đặn n&ecirc;n chọn thiết kế cổ V tiết chế, kho&eacute;t vừa phải.</em></p>\r\n\r\n<p><em>Ngo&agrave;i ra, người mặc c&oacute; thể mua th&ecirc;m miếng d&aacute;n viền cổ V, như một dạng băng d&iacute;nh hai mặt chuy&ecirc;n dụng cho thiết kế kho&eacute;t ngực. Nếu phải di chuyển nhiều th&igrave; n&ecirc;n d&ugrave;ng th&ecirc;m phương &aacute;n hỗ trợ như c&agrave;i phụ kiện l&agrave;m điểm kết nối giữ cũng như trang tr&iacute; cho trang phục.&quot;</em></p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 3\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-69-kh--nh-ph----ng-1546566807-width640height960.jpg\" /></p>\r\n\r\n<p>L&agrave; người thường xuy&ecirc;n mặc thiết kế xẻ cổ, &Aacute; hậu Kh&aacute;nh Phương cho biết: &quot;Với loại v&aacute;y n&agrave;y, t&ocirc;i đa phần sử dụng miếng d&aacute;n ngực,&nbsp;tuỳ v&agrave;o từng bộ đồ c&oacute; miếng l&oacute;t sẵn&nbsp;hay kh&ocirc;ng. Nếu v&aacute;y&nbsp;xẻ s&acirc;u hoặc rộng&nbsp;th&igrave; phải lưu &yacute; chọn những bộ đồ vừa người,&nbsp;đ&uacute;ng phom của m&igrave;nh để c&oacute; đường kho&eacute;t xẻ vừa vặn, kh&ocirc;ng bị ph&ocirc;.&quot;</p>\r\n\r\n<p><em><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 4\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-862-h---anh-1546583244-width500height750.jpg\" /></em></p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 5\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-295-huy---n-my-1546583435-width660height921.jpg\" /></p>\r\n\r\n<p>Thiết kế của H&agrave; Anh, Huyền My c&oacute; điểm nối giữa ở phần xẻ n&ecirc;n rất an to&agrave;n khi mặc</p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 6\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-221-chipu-1546583515-width660height991.jpg\" /></p>\r\n\r\n<p>V&aacute;y của Chi Pu được may th&ecirc;m lớp voan mỏng ở giữa d&ugrave; thiết kế đ&atilde; hợp d&aacute;ng người</p>\r\n\r\n<p><img alt=\"Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang? - 7\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546662301-490-k----duyen-1546583541-width660height990.jpg\" /></p>\r\n\r\n<p>Chiếc v&aacute;y n&agrave;y của Kỳ Duy&ecirc;n may th&ecirc;m lớp lưới để tiết chế độ xẻ chữ V</p>', '1546667811.1546662301-490-k----duyen-1546583541-width660height990.jpg', '[\"V\\u00e1y x\\u1ebb c\\u1ed5 ch\\u1eef V \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi \\u0111\\u1eb9p Vi\\u1ec7t \\u01b0a chu\\u1ed9ng,g\\u1ea7n nh\\u01b0 ai c\\u0169ng c\\u00f3 v\\u00e0i chi\\u1ebfc trong t\\u1ee7 \\u0111\\u1ed3. L\\u00fd do \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u00ec ch\\u00fang \\u0111em l\\u1ea1i \\u0111\\u1ed9 g\\u1ee3i c\\u1ea3m cao cho ch\\u1ee7 nh\\u00e2n,ph\\u00f9 h\\u1ee3p xu\\u1ea5t hi\\u1ec7n t\\u1ea1i nhi\\u1ec1u lo\\u1ea1i s\\u1ef1 ki\\u1ec7n.\"]', 0, 'Mặc váy xẻ cổ chữ V, đầy đặn như Kỳ Duyên liệu có phô phang?', 'Váy xẻ cổ chữ V được rất nhiều người đẹp Việt ưa chuộng, gần như ai cũng có vài chiếc trong tủ đồ. Lý do đơn giản là vì chúng đem lại độ gợi cảm cao cho chủ nhân, phù hợp xuất hiện tại nhiều loại sự kiện.', '1546667811.1546662301-490-k----duyen-1546583541-width660height990.jpg', '\"null\"', 0, 1, 0, '2019-01-05 05:59:48', '2019-04-29 08:42:50'),
(14, 1, 'Kỳ Duyên đọ sắc435435', 'ky-duyen-do-sac435435', 'Chiều tối cùng ngày, Kỳ Duyên tiếp tục sánh bước cùng Mai Davika đến dự show diễn của NTK Isabel Marent. Cả hai cùng diện trang phục đồng điệu. Trong khi Kỳ Duyên sang chảnh với bộ suit màu tím, phối cùng giầy của Balenciaga và áo sơ mi của Saint Laurent', '<p>&nbsp;</p>\r\n\r\n<p>Kỳ Duy&ecirc;n rạng rỡ đọ sắc người đẹp Th&aacute;i Lan - Mai Davika</p>\r\n\r\n<p>Ng&agrave;y h&ocirc;m qua (27.9) theo giờ địa phương, Hoa hậu Việt Nam&nbsp;<a href=\"https://www.24h.com.vn/hoa-hau-nguyen-cao-ky-duyen-c78e3626.html\" title=\"Kỳ Duyên\">Kỳ Duy&ecirc;n</a>&nbsp;đ&atilde; c&oacute; mặt tại Paris để tham dự c&aacute;c hoạt động tại Tuần lễ thời trang c&ugrave;ng c&aacute;c ng&ocirc;i sao quốc tế. Tại đ&acirc;y, Hoa hậu Việt Nam&nbsp;đ&atilde; c&oacute; buổi gặp gỡ với NTK Isabel Marent để chia sẻ về phong c&aacute;ch l&agrave;m đẹp c&ugrave;ng c&aacute;c ng&ocirc;i sao, bi&ecirc;n tập vi&ecirc;n, blogger beauty...</p>\r\n\r\n<p>Mỹ nh&acirc;n sinh năm 1996 c&oacute; dịp gặp gỡ với c&aacute;c ng&ocirc;i sao nổi tiếng khu vực Ch&acirc;u &Aacute; như nữ diễn vi&ecirc;n Th&aacute;i Lan Mai Davika Hoorne, nữ diễn vi&ecirc;n Heart Evangelista...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kỳ Duy&ecirc;n diện trang phục đến từ nh&agrave; mốt Dolce &amp; Gabbana</p>\r\n\r\n<p>Xuất hiện tại sự kiện, Kỳ Duy&ecirc;n diện trang phục đến từ nh&agrave; mốt Dolce &amp; Gabbana. Đi k&egrave;m với clutch của thương hiệu LV v&agrave; mắt k&iacute;nh Miu Miu. Đại diện đến từ Th&aacute;i Lan Mai Davika d&agrave;nh nhiều lời khen ngợi cho&nbsp;<a href=\"https://www.24h.com.vn/hoa-hau-nguyen-cao-ky-duyen-c78e3626.html\" title=\"Hoa hậu Kỳ Duyên\">Hoa hậu Kỳ Duy&ecirc;n</a>. Cả hai vui vẻ chụp h&igrave;nh lưu niệm c&ugrave;ng nhau v&agrave; kh&ocirc;ng ngừng chia sẻ về phong c&aacute;ch l&agrave;m đẹp, thời trang.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Kỳ Duy&ecirc;n gặp Mai Davika ở ngo&agrave;i.&nbsp;N&agrave;ng hậu vốn đ&atilde; rất ấn tượng với thần th&aacute;i, ngoại h&igrave;nh c&ugrave;ng lối diễn xuất của Mai n&ecirc;n việc gặp gỡ lần n&agrave;y v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"300\" id=\"google_ads_iframe_/124557882/24h/vn/desktop/fashion/in_readvideo_article_0\" name=\"google_ads_iframe_/124557882/24h/vn/desktop/fashion/in_readvideo_article_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"535\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kỳ Duy&ecirc;n v&agrave; diễn vi&ecirc;n&nbsp;Heart Evangelista</p>\r\n\r\n<p>B&ecirc;n cạnh Mai Davika, Kỳ Duy&ecirc;n d&agrave;nh nhiều sự ấn tượng cho nữ diễn vi&ecirc;n Heart đến từ Phillipines, vốn l&agrave; đệ nhất richkid (con nh&agrave; gi&agrave;u)&nbsp;của Ch&acirc;u &Aacute;.&nbsp;Heart l&agrave; kh&aacute;ch mời của c&aacute;c thương hiệu h&agrave;ng đầu thế giới. Diễn vi&ecirc;n khen ngợi Kỳ Duy&ecirc;n xinh đẹp, th&ocirc;ng minh v&agrave; kh&ocirc;ng ngại ngần theo d&otilde;i&nbsp;Kỳ Duy&ecirc;n tr&ecirc;n mạng x&atilde; hội. Trước đ&oacute; Heart được biết đến l&agrave; bạn th&acirc;n của diễn vi&ecirc;n Tăng Thanh H&agrave; v&agrave; l&agrave; người sở hữu BST t&uacute;i Hermes &quot;khủng&quot; nhất Philippines.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hoa hậu Kỳ Duy&ecirc;n hội ngộ ng&ocirc;i sao h&agrave;ng đầu Th&aacute;i Lan Mai Davika tại Paris Fashion Week</p>\r\n\r\n<p>Chiều tối c&ugrave;ng ng&agrave;y, Kỳ Duy&ecirc;n tiếp tục s&aacute;nh bước c&ugrave;ng Mai Davika đến dự show diễn của NTK Isabel Marent. Cả hai c&ugrave;ng diện trang phục đồng điệu. Trong khi Kỳ Duy&ecirc;n sang chảnh với bộ suit m&agrave;u t&iacute;m, phối c&ugrave;ng giầy của Balenciaga v&agrave; &aacute;o sơ mi của Saint Laurent. Mai Davika diện trang phục m&agrave;u sắc tương đồng với Kỳ Duy&ecirc;n, h&igrave;nh ảnh 2&nbsp;ng&ocirc;i sao 9X đến từ Ch&acirc;u &Aacute; d&agrave;nh được sự ch&uacute; &yacute;&nbsp;đến từ truyền th&ocirc;ng quốc tế. Sở hữu khả năng tiếng Anh tốt, Kỳ Duy&ecirc;n tự tin tr&ograve; chuyện với truyền th&ocirc;ng quốc tế.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kỳ Duy&ecirc;n v&agrave; Mai Davika vui vẻ chụp ảnh c&ugrave;ng nhau</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kỳ Duy&ecirc;n đ&atilde; c&oacute; một ng&agrave;y bận rộn khi ch&iacute;nh thức bước v&agrave;o những hoạt động đầu ti&ecirc;n tại Paris</p>', '1546668256.1538103718-556-ky-duyen--16--1538092696-width640height595.jpeg', 'null', NULL, 'Kỳ Duyên đọ sắc', 'Chiều tối cùng ngày, Kỳ Duyên tiếp tục sánh bước cùng Mai Davika đến dự show diễn của NTK Isabel Marent. Cả hai cùng diện trang phục đồng điệu. Trong khi Kỳ Duyên sang chảnh với bộ suit màu tím, phối cùng giầy của Balenciaga và áo sơ mi của Saint Laurent', '1546668256.1538103718-556-ky-duyen--16--1538092696-width640height595.jpeg', 'null', 2, 1, 0, '2019-05-27 22:39:58', '2019-05-27 22:39:58'),
(16, 1, 'Sau chuỗi ngày trầm cảm, Nam Em giảm cân thành công đẹp bất ngờ', 'sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo', 'Dù người hâm mộ còn hoài nghi vì hình ảnh Nam Em đăng tải có sự can thiệp của photoshop, thực chất cô đã giảm 8kg. Đồng thời', '<p><img alt=\"Sau chuỗi ngày trầm cảm, Nam Em giảm cân thành công đẹp bất ngờ - 1\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546666502-270-sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo-sau-chuoi-ngay-tang-can-chong-mat-nam-em-da-giam-8-1546660032-width650height974.jpg\" /></p>\r\n\r\n<p>Lấy lại v&oacute;c d&aacute;ng chuẩn mẫu,&nbsp;<a href=\"https://www.24h.com.vn/hoa-khoi-nam-em-c78e3940.html\" title=\"Nam Em\">Nam Em</a>&nbsp;t&iacute;ch cực quay lại hoạt động nghệ thuật.</p>\r\n\r\n<p>Sau thời gian d&agrave;i tăng c&acirc;n kh&ocirc;ng kiểm so&aacute;t v&agrave; nỗ lực luyện tập, ăn ki&ecirc;ng lấy lại v&oacute;c d&aacute;ng... lần n&agrave;y, Nam Em mới th&agrave;nh c&ocirc;ng thực sự. C&ocirc; từng chia sẻ, cơ thể c&ocirc; như một tr&aacute;i b&oacute;ng, nhịn ăn sẽ giảm c&acirc;n nhưng ăn 1 ch&uacute;t rất &iacute;t sẽ lập tức ph&igrave;nh ra căng tr&ograve;n. Nam Em đau đầu, mệt mỏi v&igrave; mỗi chuyện giảm c&acirc;n cũng kh&ocirc;ng xong.</p>\r\n\r\n<p>C&aacute;ch đ&acirc;y 1 th&aacute;ng, khi tr&igrave;nh diễn thời trang tại Đ&agrave; Lạt, mỹ nh&acirc;n sinh năm 1996 c&ograve;n khiến người h&acirc;m mộ bất ngờ v&igrave; gương mặt tr&ograve;n xoe, th&acirc;n h&igrave;nh mũm mĩm. Thế nhưng, sau 1 th&aacute;ng, c&ocirc; đ&atilde; giảm th&agrave;nh c&ocirc;ng 8kg. Chia sẻ th&ecirc;m về điều n&agrave;y, Nam Em n&oacute;i: &quot;<em>Nam Em vẫn biết m&igrave;nh l&agrave; người của c&ocirc;ng ch&uacute;ng, vẫn cần phải giữ h&igrave;nh ảnh đẹp nhất c&oacute; thể trước kh&aacute;n giả. V&igrave; vậy thời gian qua b&ecirc;n cạnh việc sống vui, sống khỏe, Nam Em cũng đ&atilde; c&oacute; sự điều chỉnh ở chế độ ăn uống v&agrave; r&egrave;n luyện thể thao nhiều hơn, nhanh ch&oacute;ng lấy lại v&oacute;c d&aacute;ng ng&agrave;y trước.&quot;</em></p>\r\n\r\n<p><img alt=\"Sau chuỗi ngày trầm cảm, Nam Em giảm cân thành công đẹp bất ngờ - 2\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546666503-90-sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo-sau-chuoi-ngay-tang-can-chong-mat-nam-em-da-giam-8-1546660164-width650height974.jpg\" /></p>\r\n\r\n<p>Giữ đ&uacute;ng lời hứa, trong sự kiện mới nhất mỹ nh&acirc;n sinh năm 1996 t&aacute;i xuất với vẻ ngo&agrave;i thanh mảnh v&agrave; xinh đẹp hơn.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"300\" id=\"google_ads_iframe_/124557882/24h/vn/desktop/beauty/in_readvideo_article_0\" name=\"google_ads_iframe_/124557882/24h/vn/desktop/beauty/in_readvideo_article_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"535\"></iframe></p>\r\n\r\n<p>D&ugrave; người h&acirc;m mộ c&ograve;n ho&agrave;i nghi v&igrave; h&igrave;nh ảnh Nam Em đăng tải c&oacute; sự can thiệp của photoshop, thực chất c&ocirc; đ&atilde; giảm 8kg. Đồng thời, người đẹp diện cả c&acirc;y đen n&ecirc;n tạo hiệu ứng thon gọn hơn nữa. Dường như lời tuy&ecirc;n bố&nbsp;&#39;phải đẹp&#39; lại để kh&ocirc;ng bị &#39;chị mập ho&agrave;nh h&agrave;nh&#39; nữa đ&atilde; hiệu nghiệm với c&ocirc; g&aacute;i. Khởi đầu một năm 2019 với sự trở lại mạnh mẽ của Nam Em sau năm 2018 đầy s&oacute;ng gi&oacute;, thị phi.&nbsp;</p>\r\n\r\n<p><img alt=\"Sau chuỗi ngày trầm cảm, Nam Em giảm cân thành công đẹp bất ngờ - 3\" src=\"https://cdn.24h.com.vn/upload/1-2019/images/2019-01-05/1546666503-763-sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo-28276690_756878167840960_5524718313351355689_n-1546660032-width650height879.jpg\" /></p>\r\n\r\n<p>Thời gian Nam Em chưa giảm c&acirc;n, xinh đẹp tuyệt trần.</p>', '1546668552.1546666503-763-sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo-28276690_756878167840960_5524718313351355689_n-1546660032-width650height879.jpg', 'null', 0, 'Sau chuỗi ngày trầm cảm, Nam Em giảm cân thành công đẹp bất ngờ', 'Dù người hâm mộ còn hoài nghi vì hình ảnh Nam Em đăng tải có sự can thiệp của photoshop, thực chất cô đã giảm 8kg. Đồng thời', '1546668552.1546666503-763-sau-chuoi-ngay-tram-cam-nam-em-giam-can-thanh-cong-dep-bat-ngo-28276690_756878167840960_5524718313351355689_n-1546660032-width650height879.jpg', 'null', 0, 1, 0, '2019-04-06 23:42:36', '2019-04-29 08:20:47'),
(37, 1, 'Anh Đức tự ngã ra sân khiến Thái Lan mất bàn thắng hợp lệ\'', 'anh-duc-tu-nga-ra-san-khien-thai-lan-mat-ban-thang-hop-le', 'Anh Đức tự ngã ra sân khiến Thái Lan mất bàn thắng hợp lệ\'', '<p>CĐV Th&aacute;i Lan cho rằng đội tuyển Th&aacute;i Lan xứng đ&aacute;ng được c&ocirc;ng nhận b&agrave;n thắng nếu như kh&ocirc;ng v&igrave; cầu thủ Việt Nam tự ng&atilde; ra s&acirc;n trong trận đối đầu ở King&#39;s Cup 2019.</p>', '1559893891.61884037_2090961544345615_8054624432460660736_n.jpg', 'null', NULL, NULL, NULL, NULL, 'null', 1, 2, 0, '2019-06-07 14:51:31', '2019-06-07 14:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `posts_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `posts_id`, `category_id`, `created_at`, `updated_at`) VALUES
(61, 13, 5, '2019-01-05 05:59:48', '2019-01-05 05:59:48'),
(62, 13, 4, '2019-01-05 05:59:48', '2019-01-05 05:59:48'),
(63, 13, 14, '2019-01-05 05:59:48', '2019-01-05 05:59:48'),
(81, 35, 5, '2019-01-06 15:58:06', '2019-01-06 15:58:06'),
(82, 35, 4, '2019-01-06 15:58:06', '2019-01-06 15:58:06'),
(94, 4, 1, '2019-01-07 14:42:37', '2019-01-07 14:42:37'),
(95, 4, 18, '2019-01-07 14:42:37', '2019-01-07 14:42:37'),
(114, 38, 1, '2019-01-09 17:24:44', '2019-01-09 17:24:44'),
(115, 2, 1, '2019-01-22 00:19:06', '2019-01-22 00:19:06'),
(116, 2, 2, '2019-01-22 00:19:06', '2019-01-22 00:19:06'),
(117, 2, 18, '2019-01-22 00:19:07', '2019-01-22 00:19:07'),
(118, 37, 1, '2019-01-22 01:50:00', '2019-01-22 01:50:00'),
(119, 37, 2, '2019-01-22 01:50:00', '2019-01-22 01:50:00'),
(120, 3, 1, '2019-04-06 23:42:18', '2019-04-06 23:42:18'),
(121, 3, 18, '2019-04-06 23:42:18', '2019-04-06 23:42:18'),
(122, 3, 4, '2019-04-06 23:42:18', '2019-04-06 23:42:18'),
(123, 3, 6, '2019-04-06 23:42:18', '2019-04-06 23:42:18'),
(124, 16, 5, '2019-04-06 23:42:37', '2019-04-06 23:42:37'),
(125, 16, 4, '2019-04-06 23:42:37', '2019-04-06 23:42:37'),
(127, 8, 1, '2019-04-28 18:27:27', '2019-04-28 18:27:27'),
(128, 9, 1, '2019-04-28 18:27:37', '2019-04-28 18:27:37'),
(129, 10, 1, '2019-04-28 18:27:44', '2019-04-28 18:27:44'),
(130, 11, 1, '2019-04-28 18:27:52', '2019-04-28 18:27:52'),
(131, 6, 1, '2019-04-29 08:18:33', '2019-04-29 08:18:33'),
(132, 12, 1, '2019-04-29 08:43:14', '2019-04-29 08:43:14'),
(133, 5, 1, '2019-04-29 08:44:45', '2019-04-29 08:44:45'),
(135, 7, 1, '2019-04-29 13:10:18', '2019-04-29 13:10:18'),
(136, 15, 5, '2019-05-27 21:48:33', '2019-05-27 21:48:33'),
(137, 15, 4, '2019-05-27 21:48:33', '2019-05-27 21:48:33'),
(138, 37, 3, '2019-06-07 14:51:31', '2019-06-07 14:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pricemarket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `highlights` int(11) DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT 0,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `content`, `image`, `images`, `tags`, `amount`, `pricemarket`, `price`, `status`, `highlights`, `user_id`, `supplier_id`, `unit_id`, `deleted_at`, `seo_title`, `seo_description`, `seo_image`, `seo_tags`, `created_at`, `updated_at`) VALUES
(72, 'Đầm suông nơ ruy băng', 'dam-suong-no-ruy-bang', '<p>Giảm trực tiếp v&agrave;o h&oacute;a đơn mua ghế thư gi&atilde;n: 600.000đ</p>\r\n\r\n<p>Tặng th&ecirc;m 1 gối trang tr&iacute;: 300.000đ</p>\r\n\r\n<p>Cửa h&agrave;ng 1 - 86 Phạm Văn Đồng, Từ Li&ecirc;m, H&agrave; Nội</p>\r\n\r\n<p>Cửa h&agrave;ng 2 - 150 Kim M&atilde;, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p>Cửa h&agrave;ng 3 - 260 Minh Khai, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất.</p>\r\n\r\n<p style=\"text-align:right\"><img alt=\"\" src=\"/uploads/images/product3%20(1).jpg\" style=\"float:left; height:600px; width:500px\" /></p>', '1556293893.product3 (1).jpg', '[\"1556293893.product3 (1).jpg\",\"1556293893.product3a.jpg\",\"1556293893.product3c.jpg\"]', '[null]', 10, NULL, '340,000', 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, '[\"Tags\"]', '2019-04-26 22:51:33', '2019-04-29 21:13:55'),
(73, 'Váy Midi Caro Vạt Lệch', 'vay-midi-caro-vat-lech', '<p>Mi&ecirc;u tả: Đầm sơ mi sọc , tay d&agrave;i, c&oacute; t&uacute;i, k&egrave;m d&acirc;y thắt lưng.</p>\r\n\r\n<p>Size: S/M.</p>\r\n\r\n<p>M&agrave;u sắc: Sọc ba m&agrave;u v&agrave;ng/ r&ecirc;u/ đỏ.</p>\r\n\r\n<p>Đặc t&iacute;nh SP: Hiện đại, nữ t&iacute;nh.</p>\r\n\r\n<p>Chất liệu: Lụa sọc.</p>\r\n\r\n<p>Mix &amp; Match: Kh&ocirc;ng.</p>', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/product1.jpg\" style=\"height:600px; width:500px\" /></p>\r\n\r\n<p>Mi&ecirc;u tả: Đầm sơ mi sọc , tay d&agrave;i, c&oacute; t&uacute;i, k&egrave;m d&acirc;y thắt lưng.</p>\r\n\r\n<p>Size: S/M.</p>\r\n\r\n<p>M&agrave;u sắc: Sọc ba m&agrave;u v&agrave;ng/ r&ecirc;u/ đỏ.</p>\r\n\r\n<p>Đặc t&iacute;nh SP: Hiện đại, nữ t&iacute;nh.</p>\r\n\r\n<p>Chất liệu: Lụa sọc.</p>\r\n\r\n<p>Mix &amp; Match: Kh&ocirc;ng.</p>', '1556294355.product1.jpg', '[\"1556294355.product1.jpg\"]', '[null]', 20, '500000', '230000', 1, 1, 1, 6, 1, 0, NULL, NULL, NULL, '[\"Tags\"]', '2019-04-26 22:59:15', '2019-04-27 10:07:07'),
(74, 'Đầm công sở cao cấp', 'dam-cong-so-cao-cap', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất.</p>\r\n\r\n<p>Giảm trực tiếp v&agrave;o h&oacute;a đơn mua ghế thư gi&atilde;n: 600.000đ</p>\r\n\r\n<p>Tặng th&ecirc;m 1 gối trang tr&iacute;: 300.000đ</p>', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất.</p>', '1556294598.product2a.jpg', '[\"1556294598.product2a.jpg\",\"1556294598.product2b.jpg\"]', '[null]', 12, NULL, '120,000', 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, '[\"Tags\"]', '2019-04-26 23:03:18', '2019-04-27 10:02:04'),
(75, 'Đầm thời trang cao cấp', 'dam-thoi-trang-cao-cap', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất</p>', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất</p>\r\n\r\n<h2>&nbsp;</h2>', '1556294752.product4-1dad054c-7c31-41fc-8015-4b993a1a7f48.jpg', '[\"1556294752.product4-1dad054c-7c31-41fc-8015-4b993a1a7f48.jpg\"]', '[null]', 12, NULL, '150,000', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, '[\"Tags\"]', '2019-04-26 23:05:52', '2019-04-27 10:05:04'),
(76, 'Áo nữ cao cấp', 'ao-nu-cao-cap', '<p>Với v&aacute;y su&ocirc;ng kh&ocirc;ng thể gi&uacute;p bạn g&aacute;i khoe ngực đầy, eo thon hay v&ograve;ng 3 quyến rũ. Nhưng b&ugrave; lại với những c&ocirc; n&agrave;ng c&oacute; v&ograve;ng 2 kh&ocirc;ng thon gọn, v&ograve;ng 1 khi&ecirc;m tốn v&agrave; v&ograve;ng 3 thiếu gợi cảm th&igrave; sẽ biến mất trong chiếc đầm su&ocirc;ng v&agrave; n&oacute; dồn tất cả sự ch&uacute; &yacute; v&agrave;o khu&ocirc;n mặt v&agrave; đ&ocirc;i ch&acirc;n thon của người mặc.&nbsp;</p>', '<p>Với v&aacute;y su&ocirc;ng kh&ocirc;ng thể gi&uacute;p bạn g&aacute;i khoe ngực đầy, eo thon hay v&ograve;ng 3 quyến rũ. Nhưng b&ugrave; lại với những c&ocirc; n&agrave;ng c&oacute; v&ograve;ng 2 kh&ocirc;ng thon gọn, v&ograve;ng 1 khi&ecirc;m tốn v&agrave; v&ograve;ng 3 thiếu gợi cảm th&igrave; sẽ biến mất trong chiếc đầm su&ocirc;ng v&agrave; n&oacute; dồn tất cả sự ch&uacute; &yacute; v&agrave;o khu&ocirc;n mặt v&agrave; đ&ocirc;i ch&acirc;n thon của người mặc. Sự k&iacute;n đ&aacute;o, mềm mại, nữ t&iacute;nh v&agrave; ph&ugrave; hợp với mọi d&aacute;ng người l&agrave; lợi &iacute;ch của v&aacute;y su&ocirc;ng đem lại cho bạn.<br />\r\nVới chất liệu bố H&agrave;n Quốc cực đẹp c&agrave;ng gi&uacute;p cho form d&aacute;ng sản phẩm c&agrave;ng chuẩn, với tay &aacute;o ph&aacute; c&aacute;ch hiện đại trẻ trung tạo cho người mặc cảm gi&aacute;c thoải m&aacute;i, tươi mới v&agrave; dịu d&agrave;ng hơn với nơ xinh đ&iacute;nh cổ.<br />\r\nVới v&aacute;y su&ocirc;ng kh&ocirc;ng thể gi&uacute;p bạn g&aacute;i khoe ngực đầy, eo thon hay v&ograve;ng 3 quyến rũ. Nhưng b&ugrave; lại với những c&ocirc; n&agrave;ng c&oacute; v&ograve;ng 2 kh&ocirc;ng thon gọn, v&ograve;ng 1 khi&ecirc;m tốn v&agrave; v&ograve;ng 3 thiếu gợi cảm th&igrave; sẽ biến mất trong chiếc đầm su&ocirc;ng v&agrave; n&oacute; dồn tất cả sự ch&uacute; &yacute; v&agrave;o khu&ocirc;n mặt v&agrave; đ&ocirc;i ch&acirc;n thon của người mặc. Sự k&iacute;n đ&aacute;o, mềm mại, nữ t&iacute;nh v&agrave; ph&ugrave; hợp với mọi d&aacute;ng người l&agrave; lợi &iacute;ch của v&aacute;y su&ocirc;ng đem lại cho bạn.<br />\r\nVới chất liệu bố H&agrave;n Quốc cực đẹp c&agrave;ng gi&uacute;p cho form d&aacute;ng sản phẩm c&agrave;ng chuẩn, với tay &aacute;o ph&aacute; c&aacute;ch hiện đại trẻ trung tạo cho người mặc cảm gi&aacute;c thoải m&aacute;i, tươi mới v&agrave; dịu d&agrave;ng hơn với nơ xinh đ&iacute;nh cổ.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/product5.jpg\" style=\"height:600px; width:500px\" /></p>', '1556294966.product5.jpg', '[\"1556294966.product5.jpg\"]', '[null]', 13, NULL, '230,000', 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, '[\"Tags\"]', '2019-04-26 23:09:26', '2019-04-27 10:01:59'),
(77, 'Đầm công sở cao cấp màu xanh', 'dam-cong-so-cao-cap-mau-xanh', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất.</p>', '<p>Duy&ecirc;n d&aacute;ng, thanh lịch, điệu đ&agrave; v&agrave; trẻ trung l&agrave; những g&igrave; m&agrave; đầm họa tiết mang đến cho n&agrave;ng trong những ng&agrave;y h&egrave; n&oacute;ng oi ả n&agrave;y. Kh&ocirc;ng chỉ ph&ocirc; ra những vẻ đẹp vốn dĩ của ph&aacute;i đẹp, gi&uacute;p n&agrave;ng tự tin hơn mỗi khi xuống phố, mẫu đầm n&agrave;y c&ograve;n mang đến cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ trong c&aacute;i nắng, n&oacute;ng đến &ldquo;ch&aacute;y da thịt&rdquo; n&agrave;y. Bởi vậy, lựa chọn đầm họa tiết l&agrave; v&ocirc; c&ugrave;ng ph&ugrave; hợp khi n&agrave;ng muốn dạo bước xuống phố c&ugrave;ng ch&agrave;ng trong ng&agrave;y h&egrave; n&agrave;y. H&atilde;y để thoitrang.biz lựa chọn cho bạn một kiểu d&aacute;ng ph&ugrave; hợp v&agrave; đẹp mắt nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/product4a.jpg\" style=\"height:480px; width:400px\" /></p>', '1556295136.product4b.jpg', '[\"1556295136.product4b.jpg\"]', '[null]', 19, '120,000', '90,000', 1, 1, 1, 6, 1, 0, NULL, NULL, NULL, '[\"Tags\"]', '2019-04-26 23:12:16', '2019-04-29 21:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryproduct_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `categoryproduct_id`, `product_id`, `created_at`, `updated_at`) VALUES
(51, NULL, 65, '2019-02-23 10:27:39', '2019-02-23 10:27:39'),
(52, NULL, 66, '2019-02-23 10:31:12', '2019-02-23 10:31:12'),
(53, NULL, 67, '2019-02-23 10:31:20', '2019-02-23 10:31:20'),
(54, NULL, 68, '2019-02-23 10:32:09', '2019-02-23 10:32:09'),
(55, 7, 69, '2019-02-23 10:32:29', '2019-02-23 10:32:29'),
(56, NULL, 70, '2019-02-23 10:35:09', '2019-02-23 10:35:09'),
(57, 0, 72, '2019-02-23 16:58:03', '2019-02-23 16:58:03'),
(58, 7, 30, '2019-02-24 00:15:25', '2019-02-24 00:15:25'),
(59, 3, 30, '2019-02-24 00:15:25', '2019-02-24 00:15:25'),
(60, 5, 38, '2019-02-24 00:15:53', '2019-02-24 00:15:53'),
(61, 6, 38, '2019-02-24 00:15:53', '2019-02-24 00:15:53'),
(62, 3, 40, '2019-02-26 20:52:03', '2019-02-26 20:52:03'),
(63, 4, 40, '2019-02-26 20:52:03', '2019-02-26 20:52:03'),
(64, 4, 47, '2019-02-28 21:12:16', '2019-02-28 21:12:16'),
(65, 6, 47, '2019-02-28 21:12:16', '2019-02-28 21:12:16'),
(66, 13, 54, '2019-04-03 00:44:24', '2019-04-03 00:44:24'),
(67, 14, 54, '2019-04-03 00:44:24', '2019-04-03 00:44:24'),
(68, 13, 55, '2019-04-03 00:46:18', '2019-04-03 00:46:18'),
(69, 12, 56, '2019-04-03 00:47:41', '2019-04-03 00:47:41'),
(70, 13, 56, '2019-04-03 00:47:41', '2019-04-03 00:47:41'),
(71, 12, 57, '2019-04-03 00:49:14', '2019-04-03 00:49:14'),
(72, 13, 57, '2019-04-03 00:49:15', '2019-04-03 00:49:15'),
(80, 13, 58, '2019-04-03 20:55:28', '2019-04-03 20:55:28'),
(81, 21, 59, '2019-04-03 22:18:33', '2019-04-03 22:18:33'),
(82, 20, 59, '2019-04-03 22:18:33', '2019-04-03 22:18:33'),
(83, 12, 60, '2019-04-03 22:28:20', '2019-04-03 22:28:20'),
(84, 13, 60, '2019-04-03 22:28:20', '2019-04-03 22:28:20'),
(85, 22, 60, '2019-04-03 22:28:20', '2019-04-03 22:28:20'),
(86, 12, 61, '2019-04-03 22:42:05', '2019-04-03 22:42:05'),
(87, 20, 61, '2019-04-03 22:42:05', '2019-04-03 22:42:05'),
(88, 13, 62, '2019-04-03 23:09:01', '2019-04-03 23:09:01'),
(89, 14, 62, '2019-04-03 23:09:01', '2019-04-03 23:09:01'),
(90, 21, 62, '2019-04-03 23:09:01', '2019-04-03 23:09:01'),
(91, 19, 62, '2019-04-03 23:09:02', '2019-04-03 23:09:02'),
(92, 13, 63, '2019-04-03 23:11:06', '2019-04-03 23:11:06'),
(93, 21, 63, '2019-04-03 23:11:06', '2019-04-03 23:11:06'),
(94, 19, 63, '2019-04-03 23:11:06', '2019-04-03 23:11:06'),
(96, 12, 64, '2019-04-03 23:13:22', '2019-04-03 23:13:22'),
(97, 13, 64, '2019-04-03 23:13:22', '2019-04-03 23:13:22'),
(98, 17, 64, '2019-04-03 23:13:22', '2019-04-03 23:13:22'),
(99, 21, 64, '2019-04-03 23:13:22', '2019-04-03 23:13:22'),
(100, 22, 64, '2019-04-03 23:13:22', '2019-04-03 23:13:22'),
(101, 13, 65, '2019-04-03 23:15:48', '2019-04-03 23:15:48'),
(102, 21, 65, '2019-04-03 23:15:48', '2019-04-03 23:15:48'),
(103, 22, 65, '2019-04-03 23:15:48', '2019-04-03 23:15:48'),
(104, 13, 66, '2019-04-03 23:17:59', '2019-04-03 23:17:59'),
(105, 14, 66, '2019-04-03 23:17:59', '2019-04-03 23:17:59'),
(106, 21, 66, '2019-04-03 23:17:59', '2019-04-03 23:17:59'),
(107, 22, 66, '2019-04-03 23:17:59', '2019-04-03 23:17:59'),
(108, 13, 67, '2019-04-03 23:20:41', '2019-04-03 23:20:41'),
(109, 14, 67, '2019-04-03 23:20:41', '2019-04-03 23:20:41'),
(110, 17, 67, '2019-04-03 23:20:42', '2019-04-03 23:20:42'),
(111, 21, 67, '2019-04-03 23:20:42', '2019-04-03 23:20:42'),
(112, 19, 67, '2019-04-03 23:20:42', '2019-04-03 23:20:42'),
(113, 20, 67, '2019-04-03 23:20:42', '2019-04-03 23:20:42'),
(114, 22, 67, '2019-04-03 23:20:42', '2019-04-03 23:20:42'),
(115, 13, 68, '2019-04-03 23:23:45', '2019-04-03 23:23:45'),
(116, 17, 68, '2019-04-03 23:23:45', '2019-04-03 23:23:45'),
(117, 21, 68, '2019-04-03 23:23:45', '2019-04-03 23:23:45'),
(118, 22, 68, '2019-04-03 23:23:45', '2019-04-03 23:23:45'),
(119, 13, 69, '2019-04-03 23:28:46', '2019-04-03 23:28:46'),
(120, 21, 69, '2019-04-03 23:28:46', '2019-04-03 23:28:46'),
(121, 20, 69, '2019-04-03 23:28:46', '2019-04-03 23:28:46'),
(122, 13, 70, '2019-04-03 23:30:10', '2019-04-03 23:30:10'),
(123, 21, 70, '2019-04-03 23:30:10', '2019-04-03 23:30:10'),
(124, 20, 70, '2019-04-03 23:30:11', '2019-04-03 23:30:11'),
(131, 18, 71, '2019-04-18 22:45:43', '2019-04-18 22:45:43'),
(132, 23, 72, '2019-04-26 22:51:34', '2019-04-26 22:51:34'),
(133, 24, 72, '2019-04-26 22:51:34', '2019-04-26 22:51:34'),
(140, 23, 74, '2019-04-26 23:03:18', '2019-04-26 23:03:18'),
(141, 28, 74, '2019-04-26 23:03:18', '2019-04-26 23:03:18'),
(142, 23, 75, '2019-04-26 23:05:52', '2019-04-26 23:05:52'),
(143, 24, 75, '2019-04-26 23:05:53', '2019-04-26 23:05:53'),
(144, 26, 75, '2019-04-26 23:05:53', '2019-04-26 23:05:53'),
(145, 28, 75, '2019-04-26 23:05:53', '2019-04-26 23:05:53'),
(146, 23, 76, '2019-04-26 23:09:27', '2019-04-26 23:09:27'),
(147, 24, 76, '2019-04-26 23:09:27', '2019-04-26 23:09:27'),
(148, 28, 76, '2019-04-26 23:09:27', '2019-04-26 23:09:27'),
(152, 23, 73, '2019-04-26 23:29:40', '2019-04-26 23:29:40'),
(153, 24, 73, '2019-04-26 23:29:40', '2019-04-26 23:29:40'),
(154, 28, 73, '2019-04-26 23:29:40', '2019-04-26 23:29:40'),
(158, 23, 77, '2019-04-29 18:34:45', '2019-04-29 18:34:45'),
(159, 24, 77, '2019-04-29 18:34:45', '2019-04-29 18:34:45'),
(160, 28, 77, '2019-04-29 18:34:45', '2019-04-29 18:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm bán chạy', 'san-pham-ban-chay', 'demo', '1551715641.29570404_151966535632260_914808417678645084_n.jpg', 1, NULL, '2019-03-04 23:07:21'),
(2, 'Sản phẩm khuyến mại', 'san-pham-khuyen-mai', 'demo km', '1551711922.thiet-ke-web-responsive.png', 1, NULL, '2019-03-04 22:05:22'),
(3, 'Sản phẩm mới', 'san-pham-moi', 'demo 23', '1551619462.thiet-ke-web-responsive.png', 1, NULL, '2019-03-03 20:24:33'),
(4, 'Sản phẩm nổi bật', 'san-pham-noi-bat', NULL, '1551715623.thiet-ke-web-responsive.png', 1, '2019-02-13 00:26:06', '2019-03-04 23:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_type_ids`
--

CREATE TABLE `product_type_ids` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_type_ids`
--

INSERT INTO `product_type_ids` (`id`, `product_id`, `product_type_id`, `created_at`, `updated_at`) VALUES
(45, 62, NULL, '2019-02-23 10:19:52', '2019-02-23 10:19:52'),
(46, 63, NULL, '2019-02-23 10:25:45', '2019-02-23 10:25:45'),
(47, 64, NULL, '2019-02-23 10:26:01', '2019-02-23 10:26:01'),
(48, 65, NULL, '2019-02-23 10:27:38', '2019-02-23 10:27:38'),
(49, 66, NULL, '2019-02-23 10:31:11', '2019-02-23 10:31:11'),
(50, 67, NULL, '2019-02-23 10:31:20', '2019-02-23 10:31:20'),
(51, 68, NULL, '2019-02-23 10:32:09', '2019-02-23 10:32:09'),
(52, 69, NULL, '2019-02-23 10:32:29', '2019-02-23 10:32:29'),
(53, 70, NULL, '2019-02-23 10:35:08', '2019-02-23 10:35:08'),
(54, 71, NULL, '2019-02-23 10:36:08', '2019-02-23 10:36:08'),
(55, 72, NULL, '2019-02-23 16:58:03', '2019-02-23 16:58:03'),
(56, 73, NULL, '2019-02-25 22:22:24', '2019-02-25 22:22:24'),
(57, 74, NULL, '2019-02-28 13:25:56', '2019-02-28 13:25:56'),
(58, 75, NULL, '2019-02-28 21:49:45', '2019-02-28 21:49:45'),
(59, 52, 2, '2019-03-21 07:09:32', '2019-03-21 07:09:32'),
(60, 53, NULL, '2019-04-03 00:15:51', '2019-04-03 00:15:51'),
(61, 54, NULL, '2019-04-03 00:44:24', '2019-04-03 00:44:24'),
(62, 55, NULL, '2019-04-03 00:46:17', '2019-04-03 00:46:17'),
(63, 56, NULL, '2019-04-03 00:47:41', '2019-04-03 00:47:41'),
(64, 57, NULL, '2019-04-03 00:49:14', '2019-04-03 00:49:14'),
(65, 58, NULL, '2019-04-03 20:37:21', '2019-04-03 20:37:21'),
(66, 59, 3, '2019-04-03 22:18:32', '2019-04-03 22:18:32'),
(67, 60, 3, '2019-04-03 22:28:20', '2019-04-03 22:28:20'),
(68, 61, 3, '2019-04-03 22:42:05', '2019-04-03 22:42:05'),
(69, 62, NULL, '2019-04-03 23:09:01', '2019-04-03 23:09:01'),
(70, 63, NULL, '2019-04-03 23:11:06', '2019-04-03 23:11:06'),
(71, 64, 1, '2019-04-03 23:12:57', '2019-04-03 23:12:57'),
(72, 65, 3, '2019-04-03 23:15:47', '2019-04-03 23:15:47'),
(73, 66, 3, '2019-04-03 23:17:59', '2019-04-03 23:17:59'),
(74, 67, 3, '2019-04-03 23:20:41', '2019-04-03 23:20:41'),
(75, 68, NULL, '2019-04-03 23:23:44', '2019-04-03 23:23:44'),
(76, 69, NULL, '2019-04-03 23:28:46', '2019-04-03 23:28:46'),
(77, 70, 1, '2019-04-03 23:30:10', '2019-04-03 23:30:10'),
(78, 71, 3, '2019-04-03 23:34:29', '2019-04-03 23:34:29'),
(79, 72, 3, '2019-04-26 22:51:34', '2019-04-26 22:51:34'),
(80, 73, 3, '2019-04-26 22:59:16', '2019-04-26 22:59:16'),
(81, 74, NULL, '2019-04-26 23:03:18', '2019-04-26 23:03:18'),
(82, 75, NULL, '2019-04-26 23:05:52', '2019-04-26 23:05:52'),
(83, 76, NULL, '2019-04-26 23:09:26', '2019-04-26 23:09:26'),
(84, 77, NULL, '2019-04-26 23:12:16', '2019-04-26 23:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Đắk Lắk'),
(15, 'Đắk Nông'),
(16, 'Điện Biên'),
(17, 'Đồng Nai'),
(18, 'Đồng Tháp'),
(19, 'Gia Lai'),
(20, 'Hà Giang'),
(21, 'Hà Nam'),
(22, 'Hà Tĩnh'),
(23, 'Hải Dương'),
(24, 'Hậu Giang'),
(25, 'Hòa Bình'),
(26, 'Hưng Yên'),
(27, 'Khánh Hòa'),
(28, 'Kiên Giang'),
(29, 'Kon Tum'),
(30, 'Lai Châu'),
(31, 'Lâm Đồng'),
(32, 'Lạng Sơn'),
(33, 'Lào Cai'),
(34, 'Long An'),
(35, 'Nam Định'),
(36, 'Nghệ An'),
(37, 'Ninh Bình'),
(38, 'Ninh Thuận'),
(39, 'Phú Thọ'),
(40, 'Quảng Bình'),
(41, 'Quảng Nam'),
(42, 'Quảng Ngãi'),
(43, 'Quảng Ninh'),
(44, 'Quảng Trị'),
(45, 'Sóc Trăng'),
(46, 'Sơn La'),
(47, 'Tây Ninh'),
(48, 'Thái Bình'),
(49, 'Thái Nguyên'),
(50, 'Thanh Hóa'),
(51, 'Thừa Thiên Huế'),
(52, 'Tiền Giang'),
(53, 'Trà Vinh'),
(54, 'Tuyên Quang'),
(55, 'Vĩnh Long'),
(56, 'Vĩnh Phúc'),
(57, 'Yên Bái'),
(58, 'Phú Yên'),
(59, 'Cần Thơ'),
(60, 'Đà Nẵng'),
(61, 'Hải Phòng'),
(62, 'Hà Nội'),
(63, 'TP HCM');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `username_id` int(10) UNSIGNED DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `fullname` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `username_id`, `hotel_id`, `fullname`, `phone`, `address`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 28, NULL, NULL, NULL, NULL, 1, '2019-05-26 23:35:24', '2019-05-26 23:35:24'),
(2, 6, 29, NULL, NULL, NULL, NULL, 1, '2019-05-26 23:53:02', '2019-05-26 23:53:02'),
(3, 7, 29, NULL, NULL, NULL, NULL, 1, '2019-05-28 00:24:50', '2019-05-28 00:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `orderBy` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `links`, `image`, `status`, `orderBy`, `home`, `created_at`, `updated_at`) VALUES
(8, 'Thời trang nữ', 'Slider ảnh', NULL, '1552923716.pic1.jpg', 1, NULL, 1, '2019-03-17 14:44:17', '2019-03-18 22:41:56'),
(9, 'Thời trang nam', 'Slider ảnh', NULL, '1552922771.su-kien.jpg', 1, NULL, 1, '2019-03-17 14:47:02', '2019-03-18 22:26:11'),
(10, 'Tin tức', 'Demo  abc', NULL, '1552808863.19399101_1371891462898221_9131674129903276433_n.jpg', 1, NULL, 1, '2019-03-17 14:47:43', '2019-03-17 14:47:43'),
(11, 'demo1 34', 'demo 1 mô tả', NULL, '1552924224.19399101_1371891462898221_9131674129903276433_n.jpg', 1, NULL, 1, '2019-03-18 22:50:24', '2019-03-19 21:02:40'),
(12, 'dmeo 10011', NULL, NULL, '1553004364.su-kien.jpg', 1, NULL, 1, '2019-03-19 21:06:04', '2019-03-19 21:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `slider_categories`
--

CREATE TABLE `slider_categories` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `category_post_id` int(11) DEFAULT 0,
  `category_product_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `slider_categories`
--

INSERT INTO `slider_categories` (`id`, `slider_id`, `category_post_id`, `category_product_id`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 0, '2019-03-17 14:47:02', '2019-03-17 14:47:02'),
(2, 9, 0, 3, '2019-03-17 14:47:02', '2019-03-17 14:47:02'),
(3, 10, 2, 0, '2019-03-17 14:47:43', '2019-03-17 14:47:43'),
(4, 10, 3, 0, '2019-03-17 14:47:43', '2019-03-17 14:47:43'),
(5, 10, 0, 7, '2019-03-17 14:47:44', '2019-03-17 14:47:44'),
(6, 10, 0, 5, '2019-03-17 14:47:44', '2019-03-17 14:47:44'),
(10, 8, 2, 0, '2019-03-18 22:49:31', '2019-03-18 22:49:31'),
(11, 8, 3, 0, '2019-03-18 22:49:31', '2019-03-18 22:49:31'),
(12, 8, 4, 0, '2019-03-18 22:49:31', '2019-03-18 22:49:31'),
(13, 8, 14, 0, '2019-03-18 22:49:31', '2019-03-18 22:49:31'),
(23, 11, 2, 0, '2019-03-19 21:02:40', '2019-03-19 21:02:40'),
(24, 11, 3, 0, '2019-03-19 21:02:41', '2019-03-19 21:02:41'),
(25, 11, 6, 0, '2019-03-19 21:02:41', '2019-03-19 21:02:41'),
(26, 11, 14, 0, '2019-03-19 21:02:41', '2019-03-19 21:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `user_id`, `name`, `slug`, `address`, `phone`, `gmail`, `info`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 1, 'Công ty cổ phần tuyền thông SVM', '', 'Tháp đông , Hoàng Quốc Việt , HN', '0982039380', 'quangvhv@gmail.com', 'Cty truyền thông và quảng cáo SVM Việt Nam', 1, 0, NULL, '2019-03-10 13:38:57'),
(10, 1, 'Cty Cổ Phần Bytesoft Việt Nam', '', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', 'quangnd1410@gmail.com', 'PHP , NET , Blockchain, Javascript ...', 1, 0, NULL, '2019-03-10 14:38:52'),
(11, 1, 'CTy Cổ Phần Việt Tiến Mạnh', '', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', 'quangnd1410@gmail.com', 'VTM Group', 0, 0, NULL, '2019-03-10 14:35:22'),
(12, 1, 'Cty Cổ Phần VHV Group', '', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', '0982039380', 'quangnd1410@gmail.com', 'VHV Group Việt Nam', 1, 0, NULL, '2019-03-10 14:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `user_id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bộ', 'bo', 1, 0, NULL, NULL),
(2, 1, 'Chiếc', 'chiec', 1, 0, NULL, NULL),
(3, 1, 'Cái', 'cai', 1, 0, NULL, '2019-03-11 00:18:57'),
(4, 1, 'Hộp', 'hop', 1, 0, NULL, '2019-03-18 22:57:37'),
(5, 1, 'Lọ', 'lọ', 1, 0, NULL, NULL),
(6, 1, 'Bình', 'binh', 1, NULL, '2019-03-10 22:17:24', '2019-03-10 23:57:40'),
(14, 1, 'Chai', 'chai', 1, NULL, '2019-03-10 23:59:09', '2019-03-10 23:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT 1,
  `imgAvatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `day`, `month`, `year`, `email`, `phonenumber`, `address`, `gender`, `imgAvatar`, `contact`, `username`, `password`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thanh Hương', 14, 10, 1995, 'ndquang1410@gmail.com', '0982039380', 'Lê Đức Thọ , Hà Nội', 1, '1554822544.43877738_700901463608151_7177897633116061696_n.jpg', '<p>123</p>', 'admin', '$2y$10$LRnUz9H9sxtenTQEbugldeAGVwmd5ESMrxKVkrkydyCjOhAayKYfi', NULL, NULL, 'Xqb5jN4d2LOIurZd9zBijnWWIv1dmCyXpY1JhjUceSieeENNpGL0ihnLXili', '2018-12-18 03:10:51', '2019-04-29 22:46:32'),
(6, 'Nguyễn Văn Huy', NULL, NULL, NULL, 'ndquang1410@gmail.com', '0982039380', 'Số 1 Hoàng Đạo Thúy HN', 1, NULL, NULL, NULL, '$2y$10$cY9HD.EZoMkE7tLV6iYvyeyGvFKKdP0o4Ad4qbQhDOS/p82XT1iJ6', 2, 1, NULL, '2018-12-19 08:58:53', '2018-12-20 09:04:04'),
(8, 'Nguyễn Trần Bảo Anh', NULL, NULL, NULL, 'ndquang1410@gmail.com', '0982039380', 'Số 56 Đường Láng , HN', 1, NULL, NULL, NULL, '$2y$10$gyQ4cUi8cfQZel6fRbZLYuO1h15jwNiidyJXiD83Wfm/GCOW2RxNK', 1, 1, NULL, '2018-12-19 09:01:19', '2018-12-19 15:35:53'),
(19, 'Nguyễn Thế Anh', 14, 10, 1995, 'quangnd@vhv.vn', '0982039380', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', 1, NULL, '<p>123</p>', 'admin', '$2y$10$sHDxDF/D8UUJbWcD/DWSSeGshAxp9qbWnjsCqDOElq1tPAJr5rAta', NULL, NULL, NULL, '2019-04-08 23:28:16', '2019-04-08 23:28:16'),
(22, 'Nguyễn Văn Em', 14, 10, 1995, 'ndquang1410@gmail.com', '0982039380', 'Số 12 Lê Đức Thọ , Tổ Hợp SUN Quere  Hà Nội', 1, '1554741292.49717428_533048953866167_6079791795380682752_n.jpg', '<p>123</p>', 'admin', '$2y$10$.Kh7WJ/D7U8BPT/i626pD.Dc.kIo//SPRjWzySy0cgIQiGf08t3EW', NULL, NULL, NULL, '2019-04-08 23:34:52', '2019-04-09 00:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Bồn tắm & vòi hoa sen', '1558534333.bontam.png', '2019-05-22 21:12:13', '2019-05-22 21:12:13'),
(2, 'Bữa sáng miễn phí', '1558534380.freeBreakfast.svg', '2019-05-22 21:13:00', '2019-05-22 21:13:00'),
(3, 'Có chỗ đỗ xe', '1558534407.chodauxehoi.png', '2019-05-22 21:13:27', '2019-05-22 21:13:27'),
(4, 'Chỗ giữ xe miễn phí', '1558534876.giuxemienphi.png', '2019-05-22 21:21:16', '2019-05-22 21:21:16'),
(5, 'Có bàn ngoài trời', '1558534910.banngoaitroi.png', '2019-05-22 21:21:50', '2019-05-22 21:21:50'),
(6, 'Có hỗ trợ hội thảo', '1558535157.hotrohoithao.png', '2019-05-22 21:25:57', '2019-05-22 21:25:57'),
(10, 'Có hồ bơi', '1558542646.hoboi.png', '2019-05-22 23:30:46', '2019-05-22 23:30:46'),
(11, 'Có khu vực hút thuốc', '1558542672.hutthuoc.png', '2019-05-22 23:31:12', '2019-05-22 23:31:12'),
(12, 'Có chỗ chơi cho trẻ em2', '1558542723.vuichoitreem.png', '2019-05-22 23:32:03', '2019-05-27 21:45:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `bill_customer_id_foreign` (`customer_id`) USING BTREE;

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `bill_detail_bill_id_foreign` (`bill_id`) USING BTREE;

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `category_products_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `customerreviews`
--
ALTER TABLE `customerreviews`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `customer_users`
--
ALTER TABLE `customer_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `hotel_utilities`
--
ALTER TABLE `hotel_utilities`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_users`
--
ALTER TABLE `customer_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `hotel_utilities`
--
ALTER TABLE `hotel_utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
