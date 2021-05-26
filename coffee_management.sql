-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 07:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee management`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_buy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_buy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `phone`, `product_buy`, `date_buy`) VALUES
('Dương', '02589631147', 'Fanta', '4/8/2019'),
('Long', '02548795512', 'Fanta', '2/4/2020'),
('Long An', '02585656696', 'Lavie', '5/6/2019'),
('Nam', '03233233323', 'Hots Coffe', '2/2/2021'),
('Thái', '02369874456', 'Cold Milk', '4/8/2020'),
('Tùng', '02587459963', 'Cold Tea', '2/7/2019'),
('Vân', '01259874456', 'Latte', '9/5/2019');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `quantity`, `price`) VALUES
(1, 'Sugar', 20, 200000),
(2, 'Milk', 20, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `content`) VALUES
(2, 'Cold Coffee', 100000, 'Good for health'),
(5, 'Cold Tea', 100000, 'Good for health'),
(7, 'Hot Milk', 10000, 'Good for health'),
(8, 'Cold Milk', 10000, 'Good for health'),
(11, 'Lipton', 10000, 'Good for health'),
(12, 'Lavie', 10000, 'Good for health'),
(13, 'Aquafina', 20000, 'Good for health'),
(14, 'Latte', 30000, 'Good for health'),
(15, 'Sevenup', 30000, 'Good for health'),
(17, 'fanta', 20000, 'Good for health');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `phone`, `address`) VALUES
(1, 'Minh Chen', '0123456678', 'Quảng Bình'),
(2, 'Nam', '0123456788', 'Hà Nội'),
(3, 'Huy', '0936255821', 'Thanh Hóa'),
(4, 'Hải', '0325968459', 'Lạng Sơn'),
(5, 'Đạt', '0589632559', 'Hải Phòng'),
(6, 'Hùng', '0598785441', 'Đồng Tháp'),
(7, 'Đức', '0458785448', 'Hồ Chí Minh'),
(8, 'Tuấn', '0986589663', 'Kiên Giang'),
(10, 'Tuấn Anh', '0325978552', 'Huế');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
