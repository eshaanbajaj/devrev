-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2022 at 06:28 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `ID` int(10) NOT NULL,
  `task` varchar(11300) NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

-- INSERT INTO `activity_log` (`ID`, `task`, `branch`) VALUES
-- (810, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
-- (809, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
-- (808, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
-- (807, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
-- (805, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
-- (806, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(3) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `fullname`, `status`) VALUES
(1, 'root', 'root', 'eshaan bajaj', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_no` int(10) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='States in india';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_no`, `category`) VALUES
(1, 'Private'),
(2, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id_no` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `vaccination_center` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='Local governments in india.';

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id_no`, `category_id`, `vaccination_center`) VALUES
(1, 1, 'Medanta The Medicity,GURGAON'),
(2, 1, 'SDH Gohana,SONIPAT'),
(3, 1, 'Poly Clinic Immunization Room,AMBALA'),
(4, 1, 'Paras hospital,GURGAON'),
(5, 2, 'AIIMS,DELHI'),
(6, 2, 'Ambala Cantonment civil hospita,AMBALA'),
(7, 2, 'Civil Hospital,GURGAON'),
(8, 2, 'Shri Krishna Govt. Ayurvedic Medical College,KURUKSHETRA'),
(9, 2, 'BK Civil Hospital,FARIDABAD'),
(10, 2, 'Civil Hospital ,SONIPAT'),
(11, 1, 'The Amrita hospital,FARIDABAD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(3) NOT NULL,
  `vaccinationID` varchar(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `email` varchar(35) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(3) NOT NULL,
  `ID_type` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `work` varchar(10) NOT NULL,
  `health_facility` varchar(15) NOT NULL,
  `vaccination_center` varchar(40) NOT NULL,
  `vaccinationDate` varchar(20) NOT NULL,
  `timeslot` varchar(15) NOT NULL,
  `status` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

-- INSERT INTO `users` (`ID`, `vaccinationID`, `fullname`, `email`, `sex`, `phone`, `age`, `ID_type`, `address`, `work`, `health_facility`, `vaccination_center`, `vaccinationDate`, `timeslot`, `status`) VALUES
-- (2, 'V99513523', 'Ndueso walter', 'newleastpaysolution@gmail.com', 'male', '080', 32, 'National ID(NIN)', '90 Uyo rd,Ikot Ekpene', 'No', 'Private', 'Abiakpo Health Centre,Abak', '2022-03-25', 'Morning', 'Positive');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `ID` int(3) NOT NULL,
  `vaccinationID` varchar(15) NOT NULL,
  `vaccination_type` varchar(50) NOT NULL,
  `center` varchar(200) NOT NULL,
  `dose` int(6) NOT NULL,
  `vaccination_date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccination`
--

-- INSERT INTO `vaccination` (`ID`, `vaccinationID`, `vaccination_type`, `center`, `dose`, `vaccination_date`) VALUES
-- (2, 'V43949768', 'Spikevax', 'Abiakpo Health Centre,Abak', 1, '2022-03-22 19:40:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id_no`),
  ADD KEY `state_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
