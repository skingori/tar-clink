-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2017 at 12:32 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_table`
--

CREATE TABLE `attendance_table` (
  `employee_attendance_id` int(11) NOT NULL,
  `employee_attendance_number` varchar(50) NOT NULL,
  `employee_attendance_fingerprint` varchar(100) NOT NULL,
  `employee_attendance_date` date NOT NULL,
  `employee_attendance_timein` datetime NOT NULL,
  `employee_attendance_timeout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `department_faculty` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `employee_id` int(11) NOT NULL,
  `employee_firstname` varchar(20) NOT NULL,
  `employee_lastname` varchar(20) NOT NULL,
  `employee_dateemployed` datetime NOT NULL,
  `employee_department` varchar(50) NOT NULL,
  `employee_title` varchar(20) NOT NULL,
  `employee_address` varchar(20) NOT NULL,
  `employee_contact` varchar(20) NOT NULL,
  `employee_username` varchar(20) NOT NULL,
  `employee_password` varchar(100) NOT NULL,
  `employee_regdate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`employee_id`, `employee_firstname`, `employee_lastname`, `employee_dateemployed`, `employee_department`, `employee_title`, `employee_address`, `employee_contact`, `employee_username`, `employee_password`, `employee_regdate`) VALUES
(10, 'james', 'wagura', '0000-00-00 00:00:00', '', 'Supervisor', '454', '675655', 'accounts', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '2016-11-26 08:46:54'),
(13, 'sdsd', 'sdsd', '0000-00-00 00:00:00', '', 'dsds', 'sdsd@dfd.com', '343434', 'admin1', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '2017-03-13 18:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(20) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_category` int(20) NOT NULL,
  `login_status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`login_id`, `login_username`, `login_password`, `login_category`, `login_status`) VALUES
(13, 'admin1', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 4, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_table`
--
ALTER TABLE `attendance_table`
  ADD PRIMARY KEY (`employee_attendance_id`);

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`employee_username`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_table`
--
ALTER TABLE `attendance_table`
  MODIFY `employee_attendance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department_table`
--
ALTER TABLE `department_table`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
