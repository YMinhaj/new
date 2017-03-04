-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2017 at 12:48 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `image`) VALUES
(5, 'PEPSI', '007-interface.png'),
(6, 'Net flex', '17103250_1413548975343169_3899402901133424374_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Junkfood'),
(2, 'Hardware');

-- --------------------------------------------------------

--
-- Table structure for table `category_brand`
--

CREATE TABLE `category_brand` (
  `id` int(11) NOT NULL,
  `brand_id` int(100) NOT NULL,
  `cat_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_brand`
--

INSERT INTO `category_brand` (`id`, `brand_id`, `cat_id`) VALUES
(1, 5, 1),
(2, 5, 1),
(3, 5, 1),
(4, 6, 2),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `pix` varchar(64) DEFAULT NULL,
  `address` varchar(1100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `pix`, `address`, `password`, `date`) VALUES
(1, 'Yousuf Minhaj', 'ym@gmail.com', NULL, '0', '', '0000-00-00 00:00:00'),
(2, 'Yousuf Minhaj', 'y@gmail.com', NULL, 'sadada', '123', '2017-03-05 00:49:13'),
(3, 'Yousuf Minhaj', 'hackerupset@gmail.com', 'WP_20170304_001.jpg', 'aba', '12345', '2017-03-05 03:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `ordercust`
--

CREATE TABLE `ordercust` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `shipped` int(11) DEFAULT NULL,
  `delivered` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordercust`
--

INSERT INTO `ordercust` (`id`, `cust_id`, `product_id`, `quantity`, `time`, `shipped`, `delivered`) VALUES
(1, NULL, ' 7', '1', '0000-00-00 00:00:00', 1, 0),
(2, NULL, ' 8', '15', '2017-03-05 01:17:45', 1, NULL),
(3, NULL, ' 7', '2', '2017-03-05 01:20:33', NULL, 1),
(4, NULL, ' 7', '2', '2017-03-05 01:22:03', NULL, NULL),
(5, NULL, ' 8', '2', '2017-03-05 01:22:09', NULL, NULL),
(6, NULL, ' 7', '1', '2017-03-05 01:22:46', NULL, NULL),
(7, NULL, ' 7', '1', '2017-03-05 01:24:42', NULL, NULL),
(8, NULL, ' 7', '1', '2017-03-05 01:25:34', NULL, NULL),
(9, NULL, ' 8', '8', '2017-03-05 01:25:40', NULL, NULL),
(10, ' 2', ' 8', '2', '2017-03-05 02:16:33', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordersupp`
--

CREATE TABLE `ordersupp` (
  `id` int(11) NOT NULL,
  `supp_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordersupp`
--

INSERT INTO `ordersupp` (`id`, `supp_id`, `product_id`, `quantity`) VALUES
(1, '1', '5', '1'),
(2, '1', '5', '2'),
(3, '1', '5', '3'),
(4, '1', '5', '2'),
(5, '1', '5', '3'),
(6, '1', '5', '5'),
(8, '1', '5', '10'),
(9, '1', '5', '11'),
(10, '1', '5', '200'),
(11, '1', '5', '201'),
(12, '1', '5', '9'),
(13, '1', '6', '10');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` varchar(64) NOT NULL,
  `quantity` varchar(64) NOT NULL,
  `category` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `category`, `brand`, `image`) VALUES
(7, 'PEPSI', '200', '0', 'Junkfood', 'PEPSI', NULL),
(8, 'Ram Samsung 4GB DDR3', '1200', '0', 'Hardware', 'Net', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roleadmin`
--

CREATE TABLE `roleadmin` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `pix` varchar(64) DEFAULT NULL,
  `address` varchar(1100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `inventory` int(10) NOT NULL,
  `customer` int(10) NOT NULL,
  `addadmins` int(10) NOT NULL,
  `orders` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roleadmin`
--

INSERT INTO `roleadmin` (`id`, `name`, `email`, `pix`, `address`, `password`, `date`, `inventory`, `customer`, `addadmins`, `orders`) VALUES
(1, 'Yousuf Minhaj', 'ym@gmail.com', NULL, '0', '', '0000-00-00 00:00:00', 0, 0, 0, 0),
(2, 'Yousuf Minhaj', 'y@gmail.com', NULL, 'sadada', '123', '2017-03-05 00:49:13', 0, 0, 0, 0),
(3, 'Yousuf Minhaj', 'hackerupset@gmail.com', 'WP_20170304_001.jpg', 'aba', '12345', '2017-03-05 03:43:33', 0, 0, 0, 0),
(4, 'Yousuf Minhaj', 'y@gmail.com', '17098466_375909326121680_8190020040958853355_n.jpg', 'asda', '123', '2017-03-05 04:25:13', 1, 0, 0, 0),
(5, 'Yousuf Minhaj', 'y@gmail.com', '15749829_1749070855420525_91300726_n.png', 'saa', 'asa', '2017-03-05 04:38:53', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `pix` varchar(64) DEFAULT NULL,
  `address` varchar(1100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `name`, `email`, `pix`, `address`, `password`, `date`) VALUES
(1, 'Yousuf Minhaj', 'ym@gmail.com', NULL, '0', '', '0000-00-00 00:00:00'),
(2, 'Yousuf Minhaj', 'y@gmail.com', NULL, 'sadada', '123', '2017-03-05 00:49:13'),
(3, 'Yousuf Minhaj', 'hackerupset@gmail.com', 'WP_20170304_001.jpg', 'aba', '12345', '2017-03-05 03:43:33'),
(4, 'Yousuf Minhaj', 'hackerupset@gmail.com', '16938780_1884461775100860_2035364671320166493_n.jpg', 'assasa', 'asasa', '2017-03-05 03:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_brand`
--
ALTER TABLE `category_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordercust`
--
ALTER TABLE `ordercust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersupp`
--
ALTER TABLE `ordersupp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleadmin`
--
ALTER TABLE `roleadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category_brand`
--
ALTER TABLE `category_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ordercust`
--
ALTER TABLE `ordercust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ordersupp`
--
ALTER TABLE `ordersupp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `roleadmin`
--
ALTER TABLE `roleadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
