-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 10:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webhook_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(100) NOT NULL COMMENT 'Name',
  `email` varchar(255) NOT NULL COMMENT 'Email Address'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`) VALUES
(1, 'John Doe', 'john@gmail.com'),
(2, 'Vanya Hargreeves', 'vanya@gmail.com'),
(3, 'Luther Hargreeves', 'luther@gmail.com'),
(4, 'Diego Hargreeves', 'diego@gmail.com'),
(5, 'Klaus Hargreeves', 'klaus@gmail.com'),
(6, 'Ben Hargreeves', 'ben@gmail.com'),
(7, 'The Handler', 'handler@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `lux_merchant_transactions`
--

CREATE TABLE `lux_merchant_transactions` (
  `ID` bigint(20) NOT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `RRN` varchar(50) DEFAULT NULL,
  `STAN` varchar(50) DEFAULT NULL,
  `AMOUNT` varchar(50) NOT NULL,
  `SETTLED_AMOUNT` varchar(100) DEFAULT NULL,
  `REFERENCE` varchar(100) NOT NULL DEFAULT '',
  `CARD_EXPIRY` varchar(300) DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(100) DEFAULT NULL,
  `PROCESSOR` varchar(100) DEFAULT NULL,
  `CARD_TYPE` varchar(100) DEFAULT NULL,
  `CARD_BANK` varchar(100) DEFAULT NULL,
  `MERCHANT_ID` varchar(300) NOT NULL,
  `TERMINAL_ID` varchar(50) DEFAULT NULL,
  `STATUS_CODE` varchar(50) NOT NULL,
  `TRANSACTION_TYPE` varchar(50) NOT NULL,
  `SERIAL_NUMBER` varchar(50) DEFAULT NULL,
  `STATUS_DESCRIPTION` varchar(300) NOT NULL DEFAULT '',
  `TRANSACTION_DATE` varchar(300) NOT NULL,
  `HASH_VALUE` varchar(500) NOT NULL,
  `NOTIFICATION_STATUS` varchar(100) DEFAULT NULL,
  `TRANSACTION_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TRANSACTION_ID` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lux_merchant_transactions`
--

INSERT INTO `lux_merchant_transactions` (`ID`, `PAN`, `RRN`, `STAN`, `AMOUNT`, `SETTLED_AMOUNT`, `REFERENCE`, `CARD_EXPIRY`, `ACCOUNT_NUMBER`, `PROCESSOR`, `CARD_TYPE`, `CARD_BANK`, `MERCHANT_ID`, `TERMINAL_ID`, `STATUS_CODE`, `TRANSACTION_TYPE`, `SERIAL_NUMBER`, `STATUS_DESCRIPTION`, `TRANSACTION_DATE`, `HASH_VALUE`, `NOTIFICATION_STATUS`, `TRANSACTION_TIME`, `TRANSACTION_ID`) VALUES
(61, 'XXXXXX*********XXXX', 'XXXXXXXXXXXXX', '000172', '800', NULL, 'XXXXXX-XXXXXXXXXXXXXXXX-XXXXXXXX-XXXXXXXXXX', '****', NULL, NULL, 'MasterCard', NULL, 'XXXXXX', '2033XXXX', '00', 'card', 'XXXXXXXXXXXXXXXX', 'Approved', '2022-05-11T20:15:58.034+0100', '', NULL, '2022-11-10 21:22:34', NULL),
(62, 'XXXXXX*********XXXX', 'XXXXXXXXXXXXX', '000172', '800', NULL, 'XXXXXX-XXXXXXXXXXXXXXXX-XXXXXXXX-XXXXXXXXXX', '****', NULL, NULL, 'MasterCard', NULL, 'XXXXXX', '2033XXXX', '00', 'card', 'XXXXXXXXXXXXXXXX', 'Approved', '2022-05-11T20:15:58.034+0100', '', NULL, '2022-11-10 21:24:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_webhook`
--

CREATE TABLE `wallet_webhook` (
  `id` bigint(20) NOT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `originator_account_name` varchar(255) DEFAULT NULL,
  `originator_account_no` varchar(255) DEFAULT NULL,
  `originator_bank` varchar(255) DEFAULT NULL,
  `originator_narration` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lux_merchant_transactions`
--
ALTER TABLE `lux_merchant_transactions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wallet_webhook`
--
ALTER TABLE `wallet_webhook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lux_merchant_transactions`
--
ALTER TABLE `lux_merchant_transactions`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wallet_webhook`
--
ALTER TABLE `wallet_webhook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
