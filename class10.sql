-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 11:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `class10`
--

CREATE TABLE `class10` (
  `RollNo` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class10`
--

INSERT INTO `class10` (`RollNo`, `Name`, `Address`, `Email`) VALUES
(22001, 'Sunidhi', 'sjgdjasdkjhaskd,dskadgjas', 'Sunidhi.232@abc.com'),
(22002, 'Ankita', 'kjsbdkjbasd,sgdslakd', 'ankita.2322@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class10`
--
ALTER TABLE `class10`
  ADD PRIMARY KEY (`RollNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class10`
--
ALTER TABLE `class10`
  MODIFY `RollNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
