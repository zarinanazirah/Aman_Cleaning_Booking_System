-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 12:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ac_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin'),
(5, 'Zarina Nazirah', 'Zarina', 'zar');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `time` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `middlename`, `lastname`, `address`, `contactno`, `time`) VALUES
(17, 'farah', 'kamilia', 'osman kamal', 'jalan bunga melati', '0182937356', '00:00:'),
(18, 'ZARINA', 'zz', 'waaa', 'taman jalan', '0182937350', '00:00:'),
(19, 'ZARINA', 'za', 'zaaa', 'jalan bunga melati', '0182937356', '00:00:'),
(20, 'farhana', 'sa', 'aqilah', 'puchong', '0182937350', '00:00:'),
(21, 'farah', '-', 'kamilia', 'Puchong', '0182027237', '00:00:'),
(22, 'cuba', '-', 'eee', 'Puchong', '0182937356', '00:00:'),
(23, 'zar', 'zarina', 'zaaa', '123123', '0182937350', '00:00:'),
(24, 'ZARINA', '-', 'NAZIRAH', 'jalan bunga melati', '0182937356', '00:00:'),
(25, 'farah', '-', 'kamilia', 'Puchong', '0182937356', '00:00:'),
(26, 'Afzal', '-', 'Rahman', 'Setapak', '0187765430', '00:00:'),
(27, 'ZARINA ', '-', 'NAZIRAH', 'taman jalan', '0187765430', '00:00:'),
(28, 'aaa', 'aaaa', 'aaaa', 'aaaaa', '1111111111111', '00:00:'),
(29, 'bbb', 'bbb', 'bbb', 'bbb', '0182027237', ''),
(30, 'sss', 'sss', 'sss', 'sss', '8787', '16:49'),
(31, 'ddd', 'ddd', 'dddd', 'Puchong', '0187765430', '16:49'),
(32, 'Farah', '-', 'Kamilia', 'Puchong Perdana', '0198802314', '12:00'),
(33, 'Marina', '-', 'Ibrahim', 'Jalan Maluri', '0185667821', '23:29'),
(34, 'A', 'a', 'a', 'a', '122', '18:06'),
(35, 'farah', '1', '2', '22', '0187765430', '05:30'),
(36, 'siti', '-', 'nazurah', 'Puchong', '0187765430', '14:25'),
(37, 'Afzal', '-', 'Rahman', 'Jalan Bunga Melati', '0182937356', '10:00'),
(38, 'a', 'a', 'a', 'a', 'a', '09:24'),
(39, 'a', 'a', 'a', 'aaaa', 'aaaa', '22:34'),
(40, 'ZARINA', '-', 'NAZIRAH', 'jalan bunga melati', '0182937356', '19:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int(11) NOT NULL,
  `services_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `price` varchar(11) CHARACTER SET latin1 NOT NULL,
  `photo` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `services_type`, `price`, `photo`) VALUES
(9, 'Spring Cleaning', '200', 'springcleaning.png'),
(10, 'Move In/Out Cleaning', '300', 'Beige Blue Modern Dreaming Quote Square Pillow.png'),
(11, 'Basic Cleaning', '500', '5.png'),
(12, 'Office Cleaning', '400', '5.png'),
(13, 'Commercial Cleaning', '600', '6.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `services_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `days` int(2) NOT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout` date NOT NULL,
  `checkout_time` time NOT NULL,
  `bill` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `services_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(5, 19, 7, 0, 0, 0, 'Pending', 0, '2023-11-11', '00:00:00', '0000-00-00', '00:00:00', ''),
(18, 32, 8, 0, 0, 0, 'Pending', 0, '2023-12-08', '00:00:00', '0000-00-00', '00:00:00', ''),
(22, 36, 8, 0, 0, 0, 'Pending', 0, '2023-11-25', '00:00:00', '0000-00-00', '00:00:00', ''),
(23, 37, 12, 0, 0, 0, 'Pending', 0, '2023-12-15', '00:00:00', '0000-00-00', '00:00:00', ''),
(26, 40, 9, 0, 0, 0, 'Pending', 0, '2023-11-23', '00:00:00', '0000-00-00', '00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
