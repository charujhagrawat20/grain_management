-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 09:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dball`
--

-- --------------------------------------------------------

--
-- Table structure for table `grainid`
--

CREATE TABLE `grainid` (
  `grain_id` int(11) NOT NULL,
  `grain_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grainid`
--

INSERT INTO `grainid` (`grain_id`, `grain_name`) VALUES
(1, 'Quinoa'),
(2, 'Rice'),
(3, 'Barley'),
(4, 'Sorghum'),
(5, 'Oats'),
(6, 'Millet'),
(7, 'Rye'),
(8, 'Wheat'),
(9, 'Buckwheat'),
(10, 'Corn');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_order`
--

CREATE TABLE `inventory_order` (
  `inventory_order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `inventory_order_total` double(10,2) NOT NULL,
  `inventory_order_date` date NOT NULL,
  `inventory_order_name` varchar(255) NOT NULL,
  `inventory_order_address` text NOT NULL,
  `payment_status` enum('cash','credit') NOT NULL,
  `inventory_order_status` varchar(100) NOT NULL,
  `inventory_order_created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory_order`
--

INSERT INTO `inventory_order` (`inventory_order_id`, `user_id`, `inventory_order_total`, `inventory_order_date`, `inventory_order_name`, `inventory_order_address`, `payment_status`, `inventory_order_status`, `inventory_order_created_date`) VALUES
(1, 7, 4939.20, '2017-11-08', 'David Harper', '3188 Straford Park\r\nHarold, KY 41635', 'credit', 'active', '2017-11-08'),
(2, 7, 1310.40, '2017-11-08', 'Trevor Webster', '4275 Indiana Avenue\r\nHonolulu, HI 96816', 'cash', 'active', '2017-11-08'),
(3, 6, 265.65, '2017-11-08', 'Russell Barrett', '4687 Powder House Road\r\nJupiter, FL 33478', 'cash', 'active', '2017-11-08'),
(4, 6, 1546.80, '2017-11-08', 'Doloris Turner', '3057 Collins Avenue\r\nWesterville, OH 43081', 'credit', 'active', '2017-11-08'),
(5, 5, 1409.00, '2017-11-08', 'Georgette Blevins', '863 Simpson Avenue\r\nSteelton, PA 17113', 'cash', 'active', '2017-11-08'),
(6, 5, 558.90, '2017-11-08', 'Nancy Brook', '3460 Viking Drive\r\nBarnesville, OH 43713', 'credit', 'active', '2017-11-08'),
(7, 4, 1286.25, '2017-11-08', 'Joseph Smith', '190 Metz Lane\r\nCharlestown, MA 02129', 'cash', 'active', '2017-11-08'),
(8, 4, 1520.00, '2017-11-08', 'Maria Lafleur', '3878 Elkview Drive\r\nPort St Lucie, FL 33452', 'credit', 'active', '2017-11-08'),
(9, 4, 1604.00, '2017-11-08', 'David Smith', '4757 Little Acres Lane\r\nLoraine, IL 62349', 'cash', 'active', '2017-11-08'),
(10, 3, 1724.80, '2017-11-08', 'Michelle Hayes', '1140 C Street\r\nWorcester, MA 01609', 'cash', 'active', '2017-11-08'),
(11, 3, 1859.40, '2017-11-08', 'Brenna Hamilton', '2845 Davis Avenue\r\nPetaluma, CA 94952', 'cash', 'active', '2017-11-08'),
(12, 3, 2038.40, '2017-11-08', 'Robbie McKenzie', '3016 Horizon Circle\r\nEatonville, WA 98328', 'credit', 'active', '2017-11-08'),
(13, 2, 573.00, '2017-11-08', 'Jonathan Allen', '2426 Evergreen Lane\r\nAlhambra, CA 91801', 'cash', 'active', '2017-11-08'),
(14, 2, 1196.35, '2017-11-08', 'Mildred Paige', '3167 Oakway Lane\r\nReseda, CA 91335', 'cash', 'active', '2017-11-08'),
(15, 2, 1960.00, '2017-11-08', 'Elva Lott', '4032 Aaron Smith Drive\r\nHarrisburg, PA 17111', 'credit', 'active', '2017-11-08'),
(16, 2, 2700.00, '2017-11-08', 'Eric Johnson', '616 Devils Hill Road\r\nJackson, MS 39213', 'cash', 'active', '2017-11-08'),
(17, 1, 5615.20, '2017-11-09', 'Doris Oliver', '2992 Sycamore Fork Road Hopkins, MN 55343', 'cash', 'active', '2017-11-09'),
(26, 1, 2278.50, '2017-11-27', 'Janet Richardsons', '4799 Ryder Avenue Everett, WA 98210', 'credit', 'inactive', '2017-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_order_product`
--

CREATE TABLE `inventory_order_product` (
  `inventory_order_product_id` int(11) NOT NULL,
  `inventory_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory_order_product`
--

INSERT INTO `inventory_order_product` (`inventory_order_product_id`, `inventory_order_id`, `product_id`, `quantity`, `price`, `tax`) VALUES
(3, 1, 1, 10, 141.00, 12.00),
(4, 1, 3, 4, 800.00, 5.00),
(5, 2, 2, 3, 350.00, 12.00),
(6, 2, 17, 2, 60.00, 12.00),
(7, 3, 15, 1, 125.00, 5.00),
(8, 3, 17, 2, 60.00, 12.00),
(12, 4, 18, 4, 90.00, 12.00),
(13, 4, 20, 3, 100.00, 18.00),
(14, 4, 1, 5, 141.00, 12.00),
(15, 5, 4, 2, 550.00, 12.00),
(16, 5, 10, 1, 150.00, 18.00),
(17, 6, 8, 5, 15.00, 18.00),
(18, 6, 7, 2, 210.00, 12.00),
(19, 7, 16, 7, 175.00, 5.00),
(23, 8, 19, 5, 120.00, 18.00),
(24, 8, 11, 5, 85.00, 12.00),
(25, 8, 12, 5, 60.00, 12.00),
(26, 9, 13, 3, 200.00, 18.00),
(27, 9, 9, 2, 400.00, 12.00),
(28, 10, 9, 3, 400.00, 12.00),
(29, 10, 11, 4, 85.00, 12.00),
(30, 11, 6, 6, 250.00, 15.00),
(31, 11, 12, 2, 60.00, 12.00),
(32, 12, 2, 4, 350.00, 12.00),
(33, 12, 7, 2, 210.00, 12.00),
(34, 13, 18, 3, 90.00, 12.00),
(35, 13, 7, 1, 210.00, 12.00),
(36, 13, 8, 2, 15.00, 18.00),
(37, 14, 6, 2, 250.00, 15.00),
(38, 14, 13, 1, 200.00, 18.00),
(39, 14, 16, 1, 175.00, 5.00),
(40, 14, 17, 3, 60.00, 12.00),
(41, 15, 2, 5, 350.00, 12.00),
(42, 16, 4, 4, 550.00, 12.00),
(43, 16, 13, 1, 200.00, 18.00),
(46, 17, 21, 2, 500.00, 18.00),
(47, 17, 3, 5, 800.00, 5.00),
(48, 17, 7, 1, 210.00, 12.00),
(49, 0, 23, 5, 30.00, 12.00),
(50, 0, 12, 5, 60.00, 12.00),
(51, 0, 16, 5, 175.00, 5.00),
(52, 0, 6, 5, 250.00, 15.00),
(53, 0, 16, 5, 175.00, 5.00),
(54, 0, 7, 5, 210.00, 12.00),
(55, 0, 7, 5, 210.00, 12.00),
(56, 0, 7, 5, 210.00, 12.00),
(57, 25, 14, 5, 250.00, 18.00),
(58, 25, 11, 5, 85.00, 12.00),
(79, 26, 16, 6, 175.00, 5.00),
(80, 26, 7, 5, 210.00, 12.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `grain_id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_unit` varchar(150) NOT NULL,
  `product_base_price` double(10,2) NOT NULL,
  `product_tax` decimal(4,2) NOT NULL,
  `product_minimum_order` double(10,2) NOT NULL,
  `product_enter_by` int(11) NOT NULL,
  `product_status` enum('active','inactive') NOT NULL,
  `product_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `grain_id`, `product_name`, `product_quantity`, `product_unit`, `product_base_price`, `product_tax`, `product_minimum_order`, `product_enter_by`, `product_status`, `product_date`) VALUES
(1, 1, 'Quinoa', 100, 'Quintal', 141.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(2, 1, 'Quinoa(Black)', 150, 'Quintal', 350.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(3, 8, 'Wheat', 75, 'Quintal', 800.00, 5.00, 0.00, 1, 'active', '2017-11-08'),
(4, 8, 'Wheat(Kamut)', 50, 'Quintal', 550.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(5, 6, 'Millet', 85, 'Quintal', 240.00, 15.00, 0.00, 1, 'active', '2017-11-08'),
(6, 6, 'Millet(Ragi)', 65, 'Quintal', 250.00, 15.00, 0.00, 1, 'active', '2017-11-08'),
(7, 10, 'Corn', 120, 'Quintal', 210.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(8, 10, 'Corn(Flint)', 200, 'Quintal', 15.00, 18.00, 0.00, 1, 'active', '2017-11-08'),
(9, 3, 'Barley', 50, 'Quintal', 400.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(10, 3, 'Barley(Six Row)', 40, 'Quintal', 150.00, 18.00, 0.00, 1, 'active', '2017-11-08'),
(11, 5, 'Oats', 100, 'Quintal', 85.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(12, 5, 'Oats(Flakes)', 75, 'Quintal', 60.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(13, 2, 'Rice', 60, 'Quintal', 200.00, 18.00, 0.00, 1, 'active', '2017-11-08'),
(14, 2, 'Rice(Basmati)', 55, 'Quintal', 250.00, 18.00, 0.00, 1, 'active', '2017-11-08'),
(15, 4, 'Sorghum', 85, 'Quintal', 125.00, 5.00, 0.00, 1, 'active', '2017-11-08'),
(16, 4, 'Sorghum(Red)', 40, 'Quintal', 175.00, 5.00, 0.00, 1, 'active', '2017-11-08'),
(17, 7, 'Rye', 100, 'Quintal', 60.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(18, 7, 'Rye(White)', 85, 'Quintal', 90.00, 12.00, 0.00, 1, 'active', '2017-11-08'),
(19, 9, 'Buckwheat', 180, 'Quintal', 120.00, 18.00, 0.00, 1, 'active', '2017-11-08'),
(20, 9, 'Buckwheat(Dark)', 200, 'Quintal', 100.00, 18.00, 0.00, 1, 'active', '2017-11-08'),
(23, 1, 'Quinoa(Royal)', 150, 'Quintal', 30.00, 12.00, 0.00, 1, 'active', '2017-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_type` enum('master','user') NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_email`, `user_password`, `user_name`, `user_type`, `user_status`) VALUES
(1, 'john_smith@gmail.com', '$2y$10$0Yo2F.EetL3yhB8l6MNvcOH8AYNS0SuXLOoAQr1qXJa3uPASWV0NC', 'John Smith', 'master', 'Active'),
(2, 'donahuber@gmail.com', '$2y$10$Ex.JTn6Cu7lCHgaJoCBVeu0qer0cFp2X1qTIpPg2qfIkkuj3LjjMK', 'Dona L. Huber', 'user', 'Active'),
(3, 'roy_hise@gmail.com', '$2y$10$XlyVI9an5B6rHW3SS9vQpesJssKJxzMQYPbSaR7dnpWjDI5fpxJSS', 'Roy Hise', 'user', 'Active'),
(4, 'peter_goad@gmail.com', '$2y$10$n1B.FdHNwufTkmzp/pNqc.EiwjB8quQ1tBCEC7nkaldI5pS.et04e', 'Peter Goad', 'user', 'Active'),
(5, 'sarah_thomas@gmail.com', '$2y$10$s57SErOPlgkIZf1lxzlX3.hMt8LSSKaYig5rusxghDm7LW8RtQc/W', 'Sarah Thomas', 'user', 'Active'),
(6, 'edna_william@gmail.com', '$2y$10$mfMXnH.TCmg5tlYRhqjxu.ILly8s9.qsLKOpyxgUl6h1fZt6x/B5C', 'Edna William', 'user', 'Active'),
(8, 'john_parks@gmail.com', '$2y$10$WtsZUxIIz/N4NoIW0Db.pu0VfLWcPs6TyQ8SkpVHLDLGhdNOfALC.', 'John Park', 'user', 'Active'),
(10, 'peter_parker@gmail.com', '$2y$10$GoQvEZNTWEibo0FPK7h57eA5UsNkXfIdex1deGsW/CFIY8zqxyu2S', 'Mark Parker', 'user', 'Active'),
(11, 'charu@gmail.com', 'Charu@1234', 'charu', 'user', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grainid`
--
ALTER TABLE `grainid`
  ADD PRIMARY KEY (`grain_id`);

--
-- Indexes for table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD PRIMARY KEY (`inventory_order_id`);

--
-- Indexes for table `inventory_order_product`
--
ALTER TABLE `inventory_order_product`
  ADD PRIMARY KEY (`inventory_order_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grainid`
--
ALTER TABLE `grainid`
  MODIFY `grain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inventory_order`
--
ALTER TABLE `inventory_order`
  MODIFY `inventory_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `inventory_order_product`
--
ALTER TABLE `inventory_order_product`
  MODIFY `inventory_order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
