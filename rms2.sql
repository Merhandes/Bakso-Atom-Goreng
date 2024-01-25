-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2023 at 05:57 PM
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
-- Database: `rms3`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `vd_image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `image1`, `image2`, `image3`, `youtube_link`, `vd_image`, `created_at`, `updated_at`) VALUES
(1, 'Satu-satunya makanan yang berkualitas dan nikmat', 'UMKM Baso Goreng Atom ini berdiri pada tahun 2023. Dengan penuh keberanian untuk memulai sebuah usaha kecil dan menengah secara online melalui platform media sosial. Di usia yang masih muda, kami terus belajar untuk mengembangkan bisnis ini lebih luas dan sesuai dengan target pasar yang kami harapkan. Ikuti terus perjalanan dan update terkait usaha kami melalui akun media sosial Instagram @atom.basogoreng untuk informasi lebih lanjut. Terima kasih dan selaat menikmati.', 'about-thumb-01.jpg', 'about-thumb-02.jpg', 'about-thumb-03.jpg', 'https://www.youtube.com/embed/eMF9tfxigGw', 'about-video-bg.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'slide-01.jpg', NULL, NULL),
(2, 'slide-02.jpg', NULL, NULL),
(3, 'slide-03.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `product_id` decimal(6,0) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `quantity` decimal(6,0) NOT NULL,
  `subtotal` decimal(6,2) NOT NULL,
  `product_order` varchar(100) DEFAULT NULL,
  `coupon_id` varchar(100) DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `pay_method` varchar(100) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `delivery_time` varchar(100) DEFAULT NULL,
  `purchase_date` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `name`, `price`, `quantity`, `subtotal`, `product_order`, `coupon_id`, `shipping_address`, `pay_method`, `invoice_no`, `delivery_time`, `purchase_date`, `created_at`, `updated_at`) VALUES
(8, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'nxeio2qb', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(9, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'nxeio2qb', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(10, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'delivery', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', '5fi3xq0a', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(11, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'x9hdnqzf', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(12, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'yes', NULL, NULL, 'Online Payment', 'of9h0n4e', 'July 28, 2022, 15:55:00pm', '2022-07-21', NULL, NULL),
(14, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'yes', NULL, NULL, 'Online Payment', 'p5tk1wv6', 'July 28, 2022, 15:55:00pm', '2022-07-21', NULL, NULL),
(16, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(17, '3', 3, 'Blueberry Cake', 650.00, 2, 1300.00, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(18, '3', 2, 'Klassy Pancake', 450.00, 7, 3150.00, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(19, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(20, '3', 3, 'Blueberry Cake', 650.00, 3, 1950.00, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(21, '3', 4, 'Klassy Cup Cake', 80.00, 4, 320.00, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(22, '3', 7, 'Orange Juice', 90.00, 3, 270.00, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(23, '3', 8, 'Dollma Pire', 190.00, 2, 380.00, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(24, '3', 5, 'Fresh Chicken Salad', 320.00, 2, 640.00, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(25, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'yes', NULL, NULL, 'Online Payment', 'nogi0754', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(26, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'cancel', NULL, NULL, 'Online Payment', 'jxab5khm', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(27, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'm7ib0dw6', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(28, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'yes', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'q0d6h42w', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(29, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'delivery', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '483pkznj', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(30, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'delivery', NULL, NULL, 'Online Payment', '58fsclp4', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(31, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'cancel', NULL, NULL, 'Online Payment', 'mqnd8t0b', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(32, '3', 3, 'Blueberry Cake', 650.00, 1, 650.00, 'approve', NULL, NULL, 'Online Payment', 'kxosm7rh', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(33, '5', 1, 'Chocolate Cake', 220.00, 5, 1100.00, 'no', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '3', 1, 'Chocolate Cake', 220.00, 9, 1980.00, 'cancel', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '4h1a2fij', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(38, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'x97q6lrf', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(39, '3', 2, 'Klassy Pancake', 450.00, 2, 900.00, 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'x97q6lrf', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(40, '3', 2, 'Klassy Pancake', 450.00, 1, 450.00, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '4enzdl9h', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(41, '3', 2, 'Klassy Pancake', 450.00, 2, 900.00, 'yes', 'ED25', NULL, 'Online Payment', 'pdyeo6b5', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(42, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'yes', 'ED25', NULL, 'Online Payment', 'pdyeo6b5', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(43, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'cancel', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'l7pfcejb', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(45, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'b9kic20v', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(46, '3', 2, 'Klassy Pancake', 450.00, 1, 450.00, 'cancel', 'ED25', NULL, 'Online Payment', '3amy2pik', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(47, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'cancel', 'ED25', NULL, 'Online Payment', '3amy2pik', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(48, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'delivery', 'ED25', NULL, 'Online Payment', 'cimkhv5t', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(49, '3', 4, 'Klassy Cup Cake', 80.00, 2, 160.00, 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'efmyq64p', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(51, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '81wjgos5', 'July 28, 2022, 4:30:00pm', '2022-07-27', NULL, NULL),
(52, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '81wjgos5', 'July 28, 2022, 4:30:00pm', '2022-07-27', NULL, NULL),
(53, '3', 1, 'Chocolate Cake', 220.00, 2, 440.00, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'e0dyhr29', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(54, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'e0dyhr29', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(55, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'yes', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'exp9bi03', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(56, '3', 1, 'Chocolate Cake', 220.00, 2, 440.00, 'yes', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'exp9bi03', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(57, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'approve', 'ED25', 'Bangladesh', 'Online Payment', 'joz1g237', 'July 31, 2022, 23:50:00pm', '2022-07-31', NULL, NULL),
(59, '11', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'yes', 'ED25', NULL, 'Online Payment', 'emw2jfl4', '3 hours', '2022-07-30', NULL, NULL),
(60, '11', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'yes', NULL, 'Bangladesh', 'Online Payment', 'q09vef8k', '3 hours', '2022-07-30', NULL, NULL),
(61, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'approve', 'ED25', 'Bangladesh', 'Online Payment', 'joz1g237', 'July 31, 2022, 23:50:00pm', '2022-07-31', NULL, NULL),
(62, '3', 1, 'Chocolate Cake', 220.00, 1, 220.00, 'yes', 'ED60', NULL, 'Online Payment', 'xi5ptgl7', '3 hours', '2022-08-27', NULL, NULL),
(63, '3', 11, 'Pastry Cake', 120.00, 4, 480.00, 'delivery', 'ED60', 'Bogura', 'Cash On Delivery', 'x3w8ibaq', 'August 27, 2022, 16:50:00pm', '2022-08-27', NULL, NULL),
(64, '3', 4, 'Klassy Cup Cake', 80.00, 1, 80.00, 'approve', 'ED26', NULL, 'Online Payment', 'horwqpen', 'September 23, 2022, 13:50:00pm', '2022-09-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Shipping Charge', '30', NULL, NULL),
(5, 'VAT', '20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chefs`
--

CREATE TABLE `chefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instragram_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chefs`
--

INSERT INTO `chefs` (`id`, `name`, `job_title`, `image`, `facebook_link`, `twitter_link`, `instragram_link`, `created_at`, `updated_at`) VALUES
(1, 'Randy Walker', 'Pastry Chef', 'chefs-01.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL),
(2, 'David Martin', 'Cookie Chef', 'chefs-02.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL),
(3, 'Peter Perkson', 'Pancake Chef', 'chefs-03.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `validate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `details`, `code`, `percentage`, `validate`, `created_at`, `updated_at`) VALUES
(1, 'Eid Offer', 'For Eid 20% Discount', 'ED25', '20', '2022-08-30', NULL, NULL),
(7, 'Eid offer 2', '25% offer', 'ED26', '25', '2022-09-31', NULL, NULL),
(9, 'Tresna offer', 'NSDFKJNAJFNAKJF', 'ED60', '60', '2022-08-31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2021_09_04_214714_create_sessions_table', 1),
(15, '2022_03_30_074545_create_carts_table', 1),
(16, '2022_03_31_094116_create_products_table', 1),
(17, '2022_07_19_161104_create_chefs_table', 2),
(18, '2022_07_19_161656_create_reservations_table', 3),
(19, '2022_07_19_182521_create_about_us_table', 4),
(20, '2022_07_19_182815_create_banners_table', 4),
(21, '2022_07_21_053941_create_rate_table', 5),
(23, '2022_07_24_050449_create_coupon_table', 6),
(24, '2022_07_24_092615_create_charge_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `catagory` varchar(100) DEFAULT NULL,
  `session` int(11) NOT NULL,
  `available` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `catagory`, `session`, `available`, `created_at`, `updated_at`) VALUES
(1, 'Paket 6 Atom', 'Cocok untuk puas makan sendiri!', '807775106.JPG', '50000', 'regular', 0, 'Stock', NULL, NULL),
(2, 'Dua Bowl Berdua', 'Cocok untuk makan siang bareng gebetan!', '1377491399.jpg', '80000', 'regular', 0, 'Stock', NULL, NULL),
(3, 'Paket Family', 'Kapan lagi bisa quality time sambil makan baso goreng atom!', '1290443239.jpg', '180000', 'regular', 0, 'Stock', NULL, NULL),
(4, 'Paket Sharing', 'Paket untuk makan sepuasnya sambil berbagi dengan teman!', '173967020.jpg', '200000', 'regular', 0, 'Stock', NULL, NULL),
(5, 'All You Can Eat', 'Makan bebas dan sepuasnya sampai kenyang!', '983346663.jpg', '200000', 'special', 0, 'Stock', NULL, NULL),
(6, 'Eggs Omelette', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-04.png', '25', 'special', 0, 'Out Of Stock', NULL, NULL),
(7, 'Orange Juice', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-02.png', '90', 'special', 1, 'Out Of Stock', NULL, NULL),
(8, 'Dollma Pire', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-05.png', '190', 'special', 2, 'Out Of Stock', NULL, NULL),
(11, 'All You Can Eat', 'Makan bebas dan sepuasnya sampai kenyang!', '308206382.jpg', '200000', 'regular', 0, 'Stock', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `star_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `user_id`, `product_id`, `star_value`, `created_at`, `updated_at`) VALUES
(11, '3', '2', '3', NULL, NULL),
(15, '5', '2', '2', NULL, NULL),
(16, '3', '6', '5', NULL, NULL),
(17, '3', '4', '3', NULL, NULL),
(18, '3', '5', '3', NULL, NULL),
(19, '3', '1', '4', NULL, NULL),
(20, '3', '3', '3', NULL, NULL),
(21, '3', '11', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `no_guest` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `no_guest`, `date`, `time`, `message`, `created_at`, `updated_at`) VALUES
(35, 'marcel', 'marcel@gmail.com', '12324342342', '2', '03.01.2024', 'Pagi', 'qqq', NULL, NULL),
(36, 'marcel', 'marcel@gmail.com', '12324342342', '2', '03.01.2024', 'Pagi', 'qqqas', NULL, NULL),
(37, 'marcel', 'marcel@gmail.com', '12324342342', '2', '03.01.2024', 'Pagi', 'cuyy', NULL, NULL),
(38, 'marcel', 'marcel@gmail.com', '12324342342', '2', '03.01.2024', 'Pagi', 'cuyy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7G1rXVX0oorWxt48fdAF4WMaN97yxEcDUV8MHtcY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1NOS0taeFBQVXpObWlINVp3N01Vc1R4a3JwY1lwMUJST2lDSUE4SSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1662399583),
('GXyK8hlrwC5b9J6gdxeKBXjl0NsyyZXaGGCJm4IR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2pOMWhiNHNBa3ViQTNrRFlUcXpiU3pZS0JZWlU4eEZkOUpoa1g3ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1664097515),
('m4uCOcwBmmLcNto3Zk4a95HDe2kd9MRClNRtwQl4', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicmJHb2R4UDk0V3VCY3VmMjFmTDNzNWFLTEs5Um1nNnRDNUpyUmZCTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yYXRlL3NjcmlwdC5qcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRNM21zRDdUZUFXcjZ0L1pmODQ5cU91Qk9XWWR2NUlpaXZiRG9uamN3WmkuQlY4WkJac05NYSI7czo1OiJ0b3RhbCI7ZDoxMTA7czoxMDoicHJvZHVjdF9pZCI7aToyO30=', 1663916059);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `salary`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(20, 'tes', 'tes@gmail.com', '12345678', NULL, '1', NULL, '$2y$10$c0U2JTqPrGE.ynmeO/NVZOyx0jxXJddi1.z69dbiVMSqu6DPsXsX6', NULL, NULL, NULL, NULL, '1250259143.jpg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
