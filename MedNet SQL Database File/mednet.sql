-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 11:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mednet`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `sr_no` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dates` date NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `details` varchar(50) NOT NULL,
  `medication` varchar(10) NOT NULL,
  `mdetails` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`sr_no`, `patient_id`, `p_name`, `email`, `phone`, `dates`, `specialization`, `hospital`, `gender`, `details`, `medication`, `mdetails`) VALUES
(1, 1, 'ayan', 'ayan@gmail.com', '8454903390', '2020-12-11', 'Heart Surgery', 'Hospital 2', 'Male', 'as', 'yes', 'dvtg5bh'),
(2, 2, 'umair', 'us@gmail.com', '8454903390', '2020-12-16', 'Heart Surgery', 'Hospital 2', 'Male', 'swfe', 'yes', 'fw44y'),
(28, 4, 'Harsh', 'harsh@gmail.com', '9876543210', '2021-11-30', 'Body Check-up', 'Hospital 1', 'Male', 'ABCD', 'no', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `sr_no` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_emailid` varchar(50) NOT NULL,
  `patient_age` int(5) NOT NULL,
  `patient_gender` varchar(10) NOT NULL,
  `illness_name` text NOT NULL,
  `b_sugar` varchar(20) NOT NULL,
  `b_temp` double(10,2) NOT NULL,
  `b_press` varchar(20) NOT NULL,
  `oxy_lev` int(10) NOT NULL,
  `pulse_rate` int(20) NOT NULL,
  `fi` varchar(200) NOT NULL,
  `additional` text NOT NULL,
  `phone_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`sr_no`, `patient_id`, `patient_name`, `patient_emailid`, `patient_age`, `patient_gender`, `illness_name`, `b_sugar`, `b_temp`, `b_press`, `oxy_lev`, `pulse_rate`, `fi`, `additional`, `phone_no`) VALUES
(1, 2, 'Harsh', 'harsh54452340@gmail.com', 21, 'male', ' [\"cough\",\"stomach ache\",\"acidity\"]', ' [\"100\",\"140\"]', 98.60, '[\"100\",\"10', 100, 100, '', 'efwf', '2147483647'),
(13, 1, 'Ayan', 'ayan@gmail.com', 22, 'male', ' [\"allergies\",\"stomach ache\",\"head ache\",\"cough,accidity\"]', ' [\"100\",\"140\"]', 98.60, '[\"100\",\"100\"]', 100, 100, '', 'auidgshhf', '9864578888');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_password`) VALUES
(1, 'Alex Morgan', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_password` varchar(50) NOT NULL,
  `patient_emailid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_password`, `patient_emailid`) VALUES
(1, 'ayan', '1234', 'ayan@gmail.com'),
(2, 'umair', '2345', 'umair@gmail.com'),
(4, 'harsh', '12345', 'harsh@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
