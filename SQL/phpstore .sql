-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 12:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'ferhat.elemin@outlook.com', 'phpstore');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pantolon', '2021-12-19 14:37:20', '2021-12-19 14:37:20'),
(7, 'Gömlek', '2022-01-09 11:27:49', '2022-01-09 11:27:49'),
(8, 'Tişört', '2021-12-19 19:41:15', '2021-12-19 19:41:15'),
(9, 'Elbise', '2021-12-21 10:43:53', '2021-12-21 10:43:53'),
(10, 'Ayakkabı', '2022-01-09 11:32:20', '2022-01-09 11:32:20'),
(11, 'Sweatshirt', '2022-01-09 11:32:31', '2022-01-09 11:32:31'),
(12, 'Kazak', '2022-01-09 11:32:41', '2022-01-09 11:32:41'),
(14, 'Mont', '2022-01-09 11:46:08', '2022-01-09 11:46:08'),
(15, 'Eşofman Alt', '2022-01-09 11:49:43', '2022-01-09 11:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(2, 'wacihid793@forfity.com', 'test mail from contact form', '2021-12-18 16:47:09', '2021-12-18 16:47:09'),
(3, 'wacihid793@forfity.com', 'gdogodgıofdı', '2021-12-20 13:40:33', '2021-12-20 13:40:33'),
(4, 'ferhat.uzunferhat@outlook.com', 'hello', '2021-12-21 10:35:07', '2021-12-21 10:35:07'),
(5, 'ferhat-uzun@outlook.com', 'gjsfkjskjkfsjlk', '2021-12-21 10:47:08', '2021-12-21 10:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ferhat.elemin@outlook.com', '123456', '2021-12-27 16:40:06', '2021-12-27 16:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `costumer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `costumer_id`, `address`, `phone`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 'kırsehir', '55533322211', 500, '2021-12-27 20:28:55', '2021-12-27 20:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 2, 5, 2, '2021-12-27 20:28:55', '2021-12-27 20:28:55'),
(8, 3, 5, 2, '2021-12-27 20:31:52', '2021-12-27 20:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(29, 'Lotto File Detaylı Bağcıklı Erkek Aktif Spor Ayakkabı', 250, 'uploads/sporayakkabı2.jpg', 'Ürün Açıklaması\r\nPhlyon+Termo Taban\r\nAnorak Suni Deri Saya\r\nÜrün İçeriği ve Özellikleri\r\nÜrün Özellikleri:\r\n\r\nCinsiyet: Erkek\r\n\r\nAyakkabı Kapanma Şekli: Bağcık\r\n\r\nÜrün Tip: Aktif Spor Ayakkabı\r\n\r\nBurun Şekli: Yuvarlak Burun\r\n\r\nMarka: LOTTO', 10, '2022-01-09 11:36:14', '2022-01-09 11:36:14'),
(30, 'Deri Görünümlü Bağcıklı Erkek ', 180, 'uploads/sporayakkabı.jpg', 'Ürün Açıklaması\r\nAşınmaya dayanıklı\r\nÜrün İçeriği ve Özellikleri\r\nÜrün Özellikleri:\r\n\r\nDesen: Düz\r\n\r\nAyakkabı Kapanma Şekli: Çekmeli\r\n\r\nÜrün Tip: Sneaker\r\n\r\nCinsiyet: Erkek\r\n\r\nAstar Detay: Penye Astar\r\n\r\nBurun Şekli: Yuvarlak', 10, '2022-01-09 11:37:27', '2022-01-09 11:37:27'),
(31, 'Renk Bloklu Bağcıklı Kalın Taban Erkek Trekking Bot', 300, 'uploads/bot.jpg', 'Aşınmaya dayanıklı\r\nÜrün İçeriği ve Özellikleri\r\nÜrün Özellikleri:\r\n\r\nAyakkabı Kapanma Şekli: Bağcık\r\n\r\nDesen: Renk Bloğu\r\n\r\nÜrün Tip: Trekking Bot\r\n\r\nCinsiyet: Erkek\r\n\r\nAstar Detay: Penye Astar\r\n\r\nBurun Şekli: Yuvarlak', 10, '2022-01-09 11:41:15', '2022-01-09 11:41:15'),
(32, 'Kapüşonlu Uzun Kollu Fermuarlı Erkek Sweatshirt', 150, 'uploads/sweatshirt.jpg', 'İki yandan cepli\r\nPamuk karışımlı kumaştan\r\nBilekleri ve alt kısmı ribanalı', 11, '2022-01-09 11:42:46', '2022-01-09 11:42:46'),
(33, 'Uzun Kollu Oxford Erkek Gömlek', 80, 'uploads/gömlek.jpg', 'Düğmeli yaka\r\nPamuklu kumaştan', 7, '2022-01-09 11:43:44', '2022-01-09 11:43:44'),
(34, 'Yarım Balıkçı Yaka İnce Triko Kazak', 65, 'uploads/kazak.jpg', 'Akrilik triko kumaştan', 12, '2022-01-09 11:44:38', '2022-01-09 11:44:38'),
(35, 'Uzun Kollu İnce Kadın Şişme Mont', 250, 'uploads/mont.jpg', 'Fermuar ve çıt çıt kapama\r\nİki yandan cepli\r\nTafetta astarlı', 14, '2022-01-09 11:47:08', '2022-01-09 11:47:08'),
(36, 'Dik Yaka Kapitoneli Erkek Mont', 250, 'uploads/Erkek Mont.jpg', 'İki yandan cepli\r\nFermuar kapamalı\r\nBilekleri ve alt kısmı ribanalı', 14, '2022-01-09 11:49:02', '2022-01-09 11:49:02'),
(37, 'Jogger Eşofman Altı', 100, 'uploads/Eşofman Alt.jpg', 'Yanları fermuarlı cepli\r\nBeli lastikli ayarlanabilir ipli', 15, '2022-01-09 11:50:35', '2022-01-09 11:50:35'),
(38, 'Slim Fit Erkek Jogger Eşofman Altı', 120, 'uploads/esofman.jpg', 'Lastikli paça\r\nBeli lastikli ayarlanabilir ipli\r\nCep detaylı\r\nİçi yumuşak tüylü sweatshirt kumaşından', 15, '2022-01-09 11:52:14', '2022-01-09 11:52:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
