-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2018 at 01:34 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rbb`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Languages'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Computers'),
(5, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` int(10) NOT NULL,
  `sname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `sname`) VALUES
(51401, 'Subrahmanyam'),
(51402, 'Venkateswarlu'),
(51403, 'Krishna Praveen'),
(51404, 'B N Kumar'),
(51405, 'Purushotham'),
(51406, 'Pullarao'),
(51407, 'Kishore'),
(51408, 'Nagarjuna'),
(51409, 'Subhani'),
(51410, 'Santosh'),
(51411, 'Satyanarayana'),
(51412, 'Raghavendra'),
(51415, 'Kondala Rao'),
(51416, 'Madhukar'),
(51418, 'Ganesh'),
(51420, 'Rohini Kumar'),
(51422, 'Prashant'),
(51423, 'Ravi Kiran'),
(51425, 'Chandra Sekhar'),
(51453, 'Naseer'),
(51454, 'Yesdhani'),
(51455, 'Krishna Rao');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `dept_id`) VALUES
(1, 'Telugu', 1),
(2, 'English', 1),
(3, 'Hindi', 1),
(4, 'M1', 2),
(5, 'M2', 2),
(6, 'C', 4),
(7, 'C++', 4),
(8, 'Circuit Theory', 5),
(9, 'Microprocessors', 5),
(10, 'Thermo Dynamics', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
