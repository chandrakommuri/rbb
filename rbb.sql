-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 12:37 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
