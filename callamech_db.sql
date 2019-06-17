-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2019 at 08:52 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `callamech_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `typeAccount` enum('admin','employee') NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `name`, `typeAccount`) VALUES
('admin', 'admin', 'Cyrell Madayag', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `name`, `address`, `phone_number`) VALUES
(1, 'maybelle', 'bakakeng baguio city', '+63-932-555-8211'),
(2, 'jadel', 'bakakeng baguio city', '+63-932-555-8216'),
(3, 'ate letecia', 'bakakeng baguio city', '+63-928-555-9480'),
(4, 'andrei', 'bakakeng baguio city', '+63-929-555-9073'),
(5, 'jhen', 'bakakeng baguio city', '+63-932-555-8213'),
(6, 'samantha', 'bakakeng baguio city', '+63-932-555-7217'),
(7, 'cheene', 'bakakeng baguio city', '+63-910-555-1458'),
(8, 'andrei', 'bakakeng baguio city', '+63-923-555-9193'),
(9, 'ate dotz', 'bakakeng baguio city', '+63-929-555-2085'),
(10, 'aaron', 'bakakeng baguio city', '09123456789'),
(11, 'mhya', 'bakakeng baguio city', '+63-932-555-8210'),
(12, 'benjamin', 'bakakeng baguio city', '+63-283-555-0622'),
(13, 'engel', 'bakakeng baguio city', '+63-932-555-8200'),
(14, 'troy', 'bakakeng baguio city', '+63-932-555-7216'),
(15, 'sam cabesto', 'bakakeng baguio city', '+63-932-555-7218'),
(16, 'venus1', 'bakakeng baguio city', '+63-932-555-7215'),
(17, 'aletis', 'bakakeng baguio city', '+63-283-555-5070'),
(18, 'ronie', 'bakakeng baguio city', '+63-932-555-7211'),
(19, 'alex', 'bakakeng baguio city', '+63-933-555-4694'),
(20, 'dondi', 'bakakeng baguio city', '+63-932-555-9001'),
(21, 'ezrha', 'bakakeng baguio city', '+63-932-555-8218'),
(22, 'angel', 'bakakeng baguio city', '+63-933-555-7775'),
(23, 'erna', 'bakakeng baguio city', '+63-932-555-8219'),
(24, 'Gemo', 'bakakeng baguio city', '+63-932-555-8217'),
(25, 'reymart', 'bakakeng baguio city', '+63-932-555-7210'),
(26, 'jeco', 'bakakeng baguio city', '+63-932-555-8215'),
(27, 'prins', 'bakakeng baguio city', '+63-932-555-7212'),
(28, 'mari', 'bakakeng baguio city', '+63-932-555-8212'),
(29, 'jennie', 'bakakeng baguio city', '+63-932-555-8214'),
(30, 'rose', 'bakakeng baguio city', '+63-932-555-7219'),
(31, 'jennie', 'Bakakeng', '+63-283-555-5072'),
(34, 'yemaa', 'bakakeng baguio city', '+63-932-555-7214'),
(35, 'Jennie', 'bakakeng sur baguio city', '09123456789'),
(36, 'Nayeon', '2 Bakakeng Road Baguio CIty', '0928897654'),
(37, 'Lamber', '28 Bakakeng Baguio CIty', '092700000009');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `expenseID` int(20) NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL,
  `total` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  PRIMARY KEY (`expenseID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`expenseID`, `details`, `total`, `expense_date`) VALUES
(1, 'waterbill', 1050, '2019-04-18'),
(4, 'gas_fuel', 450, '2019-04-19'),
(8, 'gas_fuel', 500, '2019-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `stock` double(10,2) NOT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `name`, `stock`) VALUES
(1, 'Tires', 100.00),
(2, 'Batteries', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `total` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `status` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `customerID`, `due_date`, `total`, `discount`, `status`, `balance`) VALUES
(1, 4, '2019-04-18', 190.00, 0.00, 'unpaid', '190.00'),
(2, 1, '2019-04-18', 190.00, 0.00, 'paid', '0.00'),
(3, 1, '2019-04-25', 645.00, 0.00, 'paid', '0.00'),
(4, 1, '2019-04-25', 645.00, 150.00, 'paid', '0.00'),
(5, 1, '2019-04-18', 645.00, 0.00, 'paid', '0.00'),
(6, 15, '2019-04-19', 690.00, 0.00, 'paid', '0.00'),
(7, 15, '2019-04-19', 690.00, 0.00, 'paid', '0.00'),
(8, 4, '2019-04-20', 220.00, 0.00, 'paid', '0.00'),
(9, 1, '2019-04-30', 110.00, 0.00, 'paid', '0.00'),
(10, 4, '2019-04-30', 330.00, 0.00, 'unpaid', '10.00'),
(11, 23, '2019-04-30', 1650.00, 250.00, 'paid', '0.00'),
(12, 2, '2019-04-30', 330.00, 0.00, 'paid', '0.00'),
(13, 4, '2019-04-30', 2400.00, 0.00, 'paid', '0.00'),
(14, 5, '2019-04-30', 5900.00, 1900.00, 'paid', '0.00'),
(15, 3, '2019-04-30', 1620.00, 220.00, 'paid', '0.00'),
(16, 22, '2019-04-30', 220.00, 0.00, 'paid', '0.00'),
(17, 37, '2019-04-30', 190.00, 0.00, 'paid', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

DROP TABLE IF EXISTS `payment_records`;
CREATE TABLE IF NOT EXISTS `payment_records` (
  `payment_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`payment_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_records`
--

INSERT INTO `payment_records` (`payment_record_id`, `payment_id`, `payment_date`, `amount_paid`) VALUES
(1, 8, '2019-04-29 14:35:34', '150.00'),
(2, 14, '2019-04-30 02:32:44', '2000.00'),
(3, 15, '2019-04-30 03:16:36', '1400.00'),
(4, 14, '2019-04-30 03:17:36', '2000.00'),
(5, 13, '2019-04-30 03:17:43', '2400.00'),
(6, 12, '2019-04-30 03:17:53', '330.00'),
(7, 11, '2019-04-30 03:18:03', '1650.00'),
(8, 10, '2019-04-30 03:18:11', '320.00'),
(9, 9, '2019-04-30 03:18:54', '0.00'),
(10, 8, '2019-04-30 03:19:09', '60.00'),
(11, 8, '2019-04-30 03:19:15', '10.00'),
(12, 6, '2019-04-30 03:19:24', '690.00'),
(13, 16, '2019-04-30 05:36:18', '220.00'),
(14, 17, '2019-04-30 06:59:58', '190.00'),
(15, 5, '2019-04-30 07:08:29', '645.00');

-- --------------------------------------------------------

--
-- Table structure for table `profit_report`
--

DROP TABLE IF EXISTS `profit_report`;
CREATE TABLE IF NOT EXISTS `profit_report` (
  `profit_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  PRIMARY KEY (`profit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profit_report`
--

INSERT INTO `profit_report` (`profit_id`, `expense_id`, `transaction_id`, `total`, `grand_total`) VALUES
(101, 1, 30, -876, 0),
(102, 2, 15, 50, 0),
(103, 3, 16, 44, 0),
(104, 4, 17, -301, 0),
(105, 5, 18, -56, 0),
(106, 6, 19, 24, 0),
(107, 7, 20, -26, 0),
(108, 8, 21, -55, 0),
(109, 9, 22, -86, 0),
(110, 10, 23, -1931, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `serviceID` int(20) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `customerID` int(20) NOT NULL,
  PRIMARY KEY (`serviceID`),
  KEY `blackpink` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1 => On going; 2 => Pending; 3 => Finished; 4 => Cancelled',
  `payment_id` int(11) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_claimed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `status`, `payment_id`, `transaction_date`, `date_claimed`) VALUES
(1, 1, 2, '2019-04-18 11:08:17', '2019-04-19 03:51:55'),
(2, 1, 3, '2019-04-18 12:45:43', '2019-04-19 03:04:29'),
(3, 1, 4, '2019-04-18 12:45:51', '2019-04-19 03:04:05'),
(4, 1, 5, '2019-04-18 12:57:36', NULL),
(5, 4, 6, '2019-04-19 04:14:36', NULL),
(6, 1, 7, '2019-04-19 14:16:19', '2019-04-19 14:17:49'),
(7, 1, 8, '2019-04-20 03:09:50', NULL),
(8, 1, 9, '2019-04-30 01:27:56', NULL),
(9, 1, 10, '2019-04-30 02:21:25', NULL),
(10, 4, 11, '2019-04-30 02:23:01', NULL),
(11, 1, 12, '2019-04-30 02:29:53', NULL),
(12, 1, 13, '2019-04-30 02:30:19', NULL),
(13, 1, 14, '2019-04-30 02:30:52', NULL),
(14, 1, 15, '2019-04-30 02:32:23', NULL),
(15, 1, 16, '2019-04-30 05:35:58', NULL),
(16, 1, 17, '2019-04-30 06:58:34', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
