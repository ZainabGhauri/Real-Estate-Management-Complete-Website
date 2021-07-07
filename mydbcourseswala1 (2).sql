-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 08:39 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydbcourseswala1`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_agent`
--

CREATE TABLE `add_agent` (
  `P_id` int(11) NOT NULL,
  `A_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_property`
--

CREATE TABLE `agent_property` (
  `A_Id` int(11) NOT NULL,
  `U_id` int(11) DEFAULT NULL,
  `P_id` int(11) DEFAULT NULL,
  `Is_ban` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_property`
--

INSERT INTO `agent_property` (`A_Id`, `U_id`, `P_id`, `Is_ban`) VALUES
(1, 2, 1, 0),
(2, 5, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_property`
--

CREATE TABLE `book_property` (
  `B_Id` int(11) NOT NULL,
  `U_id` int(11) DEFAULT NULL,
  `P_id` int(11) DEFAULT NULL,
  `A_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_property`
--

INSERT INTO `book_property` (`B_Id`, `U_id`, `P_id`, `A_id`) VALUES
(3, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_tour`
--

CREATE TABLE `book_tour` (
  `B_Id` int(11) NOT NULL,
  `A_id` int(11) NOT NULL,
  `P_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_tour`
--

INSERT INTO `book_tour` (`B_Id`, `A_id`, `P_id`) VALUES
(3, 2, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `P_Id` int(11) NOT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Is_sold` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`P_Id`, `Title`, `Address`, `Price`, `Is_sold`) VALUES
(1, 'Johars House', 'DHA Phase 2', 2500000, 0),
(2, 'PHA Flats', 'I 11 ', 5500000, 0),
(3, 'Yousafzai Manzil', 'DHA LAhore', 2000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seller_property`
--

CREATE TABLE `seller_property` (
  `S_id` int(11) NOT NULL,
  `U_id` int(11) DEFAULT NULL,
  `P_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_property`
--

INSERT INTO `seller_property` (`S_id`, `U_id`, `P_id`) VALUES
(1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tour_cost`
--

CREATE TABLE `tour_cost` (
  `B_Id` int(11) NOT NULL,
  `A_id` int(11) NOT NULL,
  `P_id` int(11) NOT NULL,
  `BidCost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_cost`
--

INSERT INTO `tour_cost` (`B_Id`, `A_id`, `P_id`, `BidCost`) VALUES
(3, 2, 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `U_id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Job` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`U_id`, `Name`, `Username`, `Password`, `Phone`, `Job`) VALUES
(4, 'John', 'Jkeller', '1234', 92343423, 'seller'),
(1, 'kaynat', 'ksajid', 'a4a4', 90078605, 'Admin'),
(3, 'urooj', 'uraza', 'a7a7', 90078605, 'buyer'),
(2, 'zainab', 'zghauri', 'a0a0', 900323444, 'Agent'),
(5, 'zaynab Asif', 'zasif', '4321', 232222222, 'Agent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_agent`
--
ALTER TABLE `add_agent`
  ADD PRIMARY KEY (`P_id`);

--
-- Indexes for table `agent_property`
--
ALTER TABLE `agent_property`
  ADD PRIMARY KEY (`A_Id`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `U_id` (`U_id`),
  ADD KEY `Key` (`Is_ban`);

--
-- Indexes for table `book_property`
--
ALTER TABLE `book_property`
  ADD PRIMARY KEY (`B_Id`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `U_id` (`U_id`),
  ADD KEY `Key` (`A_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`P_Id`),
  ADD KEY `Key` (`Title`,`Address`,`Price`,`Is_sold`);

--
-- Indexes for table `seller_property`
--
ALTER TABLE `seller_property`
  ADD PRIMARY KEY (`S_id`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `U_id` (`U_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`U_id`),
  ADD KEY `Key` (`Name`,`Username`,`Password`,`Phone`,`Job`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_property`
--
ALTER TABLE `agent_property`
  MODIFY `A_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_property`
--
ALTER TABLE `book_property`
  MODIFY `B_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `P_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_property`
--
ALTER TABLE `seller_property`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `U_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_property`
--
ALTER TABLE `agent_property`
  ADD CONSTRAINT `agent_property_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `property` (`P_Id`),
  ADD CONSTRAINT `agent_property_ibfk_2` FOREIGN KEY (`U_id`) REFERENCES `users` (`U_id`);

--
-- Constraints for table `book_property`
--
ALTER TABLE `book_property`
  ADD CONSTRAINT `book_property_ibfk_1` FOREIGN KEY (`A_id`) REFERENCES `agent_property` (`A_Id`),
  ADD CONSTRAINT `book_property_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `property` (`P_Id`),
  ADD CONSTRAINT `book_property_ibfk_3` FOREIGN KEY (`U_id`) REFERENCES `users` (`U_id`);

--
-- Constraints for table `seller_property`
--
ALTER TABLE `seller_property`
  ADD CONSTRAINT `seller_property_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `property` (`P_Id`),
  ADD CONSTRAINT `seller_property_ibfk_2` FOREIGN KEY (`U_id`) REFERENCES `users` (`U_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
