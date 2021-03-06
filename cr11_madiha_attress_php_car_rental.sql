-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2018 at 03:38 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_madiha_attress_php_car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `fk_cartype_id` int(11) DEFAULT NULL,
  `fk_status_id` int(11) DEFAULT NULL,
  `fk_location_id` int(11) DEFAULT NULL,
  `fk_office_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `fk_cartype_id`, `fk_status_id`, `fk_location_id`, `fk_office_id`) VALUES
(1, 4, 2, 5, 3),
(2, 6, 1, 3, 2),
(3, 6, 2, 4, 2),
(4, 1, 1, 6, 4),
(6, 3, 1, 1, 4),
(7, 6, 1, 2, 1),
(8, 6, 1, 3, 6),
(9, 5, 1, 1, 4),
(10, 2, 2, 4, 2),
(11, 1, 1, 6, 3),
(12, 3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cartype`
--

CREATE TABLE `cartype` (
  `cartype_id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartype`
--

INSERT INTO `cartype` (`cartype_id`, `type`) VALUES
(1, 'Nissan'),
(2, 'Mercedes '),
(3, 'Skoda'),
(4, 'AUDI'),
(5, 'Fiat'),
(6, 'Passat');

-- --------------------------------------------------------

--
-- Table structure for table `car_location`
--

CREATE TABLE `car_location` (
  `location_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_location`
--

INSERT INTO `car_location` (`location_id`, `location`) VALUES
(1, 'Mariahilfer strasse'),
(2, 'Diehl gasse23'),
(3, 'Eichen strasse 34'),
(4, 'Favoriten strasse 5'),
(5, 'Pilgram gasse24'),
(6, 'Fendi gasse 22');

-- --------------------------------------------------------

--
-- Table structure for table `car_status`
--

CREATE TABLE `car_status` (
  `status_id` int(11) NOT NULL,
  `car_status` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_status`
--

INSERT INTO `car_status` (`status_id`, `car_status`) VALUES
(1, 'rented'),
(2, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `customer_email` varchar(55) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `fk_car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `fk_car_id`) VALUES
(1, 'madiha', 'madiha@gmail.com', '7bf974bf459e1832a4fe27cfde6afefc93db06b12680e3358464715461a2ed41', NULL),
(2, 'madiha', 'madija@gmail.com', '1718c24b10aeb8099e3fc44960ab6949ab76a267352459f203ea1036bec382c2', NULL),
(3, 'emad', 'emad@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL),
(4, 'Amir', 'amir@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL),
(5, 'Nour Fawzy', 'nour@yahoo.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `office_id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`office_id`, `address`) VALUES
(1, ' Landstrasse 48'),
(2, 'Favoriten strasse 50'),
(3, 'Eichen strasse 34'),
(4, 'Westbahnhof'),
(5, 'Hauptbahnhof'),
(6, 'Fendi gasse 22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_cartype_id` (`fk_cartype_id`),
  ADD KEY `fk_status_id` (`fk_status_id`),
  ADD KEY `fk_office_id` (`fk_office_id`),
  ADD KEY `car_ibfk_3` (`fk_location_id`);

--
-- Indexes for table `cartype`
--
ALTER TABLE `cartype`
  ADD PRIMARY KEY (`cartype_id`);

--
-- Indexes for table `car_location`
--
ALTER TABLE `car_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `car_status`
--
ALTER TABLE `car_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customerEmail` (`customer_email`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`office_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_cartype_id`) REFERENCES `cartype` (`cartype_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`fk_status_id`) REFERENCES `car_status` (`status_id`),
  ADD CONSTRAINT `car_ibfk_3` FOREIGN KEY (`fk_location_id`) REFERENCES `car_location` (`location_id`),
  ADD CONSTRAINT `car_ibfk_4` FOREIGN KEY (`fk_office_id`) REFERENCES `office` (`office_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
