-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2019 at 09:32 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biometric`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123'),
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` bigint(20) NOT NULL,
  `candidate_name` varchar(50) NOT NULL,
  `candidate_lastname` varchar(30) NOT NULL,
  `candidate_dob` varchar(30) NOT NULL,
  `candidate_gender` varchar(10) NOT NULL,
  `candidate_aadhaar` bigint(20) NOT NULL,
  `candidate_number` bigint(14) NOT NULL,
  `candidate_symbol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` bigint(10) NOT NULL,
  `voter_name` varchar(50) NOT NULL,
  `voter_lastname` varchar(50) NOT NULL,
  `voter_gender` varchar(5) NOT NULL,
  `voter_dob` varchar(20) NOT NULL,
  `voter_id` bigint(50) NOT NULL,
  `voter_aadhar` bigint(15) NOT NULL,
  `voter_phone` bigint(15) NOT NULL,
  `voter_vote` varchar(5) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voter_name`, `voter_lastname`, `voter_gender`, `voter_dob`, `voter_id`, `voter_aadhar`, `voter_phone`, `voter_vote`) VALUES
(4, 'raishaf', 'ok', 'male', '01/05/2019', 56363, 532763, 5326784, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `vote_result`
--

CREATE TABLE `vote_result` (
  `candidate_id` bigint(15) DEFAULT NULL,
  `no_of_votes` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
