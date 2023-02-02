-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 05:33 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `category` text NOT NULL,
  `subcategory` text NOT NULL,
  `nature` text NOT NULL,
  `comp` text NOT NULL,
  `file` text NOT NULL,
  `pending` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `completedcomp`
--

CREATE TABLE `completedcomp` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `remark` text NOT NULL,
  `compnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inprogressomp`
--

CREATE TABLE `inprogressomp` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `remarks` text NOT NULL,
  `compnum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlogininfo`
--

CREATE TABLE `userlogininfo` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `user` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogininfo`
--

INSERT INTO `userlogininfo` (`id`, `fname`, `lname`, `user`, `date`) VALUES
(2, 'pratibha', 'soni', 'prati', 'October 4, 2022, 8:48 am'),
(16, 'pratibha', 'soni', 'prati', 'November 5, 2022, 7:27 am'),
(27, 'Deepika', 'soni', 'prati', 'December 17, 2022, 5:05 pm'),
(28, 'Deepika', 'soni', 'prati', 'January 29, 2023, 7:52 am'),
(29, 'Deepika', 'soni', 'prati', 'January 29, 2023, 2:04 pm'),
(30, 'ram', 'rathi', 'rams', 'January 31, 2023, 5:27 am');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `gender` text NOT NULL,
  `pass` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `username`, `fname`, `lname`, `email`, `phone`, `gender`, `pass`, `date`) VALUES
(1, 'prati', 'Deepika', 'soni', 'pratibha12@gmail.com', '09784668078', 'Male', 'prati', 'November 24, 2022, 8:30 am'),
(2, 'yogu', 'yogesh', 'soni', 'iamyogu2001@gmail.com', '09784668078', 'Male', 'yogu', 'October 4, 2022, 10:06 am'),
(3, 'ram', 'Ram', 'Soni', 'ramsoni192001@gmail.com', '08107516569', 'Male', '12345678', 'October 4, 2022, 1:55 pm'),
(4, 'SOURABH_SHARMA', 'SOURABH', 'SHARMA', 'sourabh13joshi@gmail.com', '09462945544', 'Male', 'SOURABH1234', 'November 4, 2022, 6:07 am'),
(10, 'baba', 'shree', 'shyam', 'shyam12@gmail.com', '8987676856', 'Male', 'shyambaba', 'November 5, 2022, 9:09 am'),
(11, 'user', 'xyz', 'abc', 'em12@gm.com', '7878787878', 'Female', 'pwd', 'November 22, 2022, 7:32 am'),
(12, 'rams', 'ram', 'rathi', 'ram12@gmail.com', '08107516569', 'Male', '123456', 'January 31, 2023, 5:21 am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completedcomp`
--
ALTER TABLE `completedcomp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inprogressomp`
--
ALTER TABLE `inprogressomp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogininfo`
--
ALTER TABLE `userlogininfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `completedcomp`
--
ALTER TABLE `completedcomp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inprogressomp`
--
ALTER TABLE `inprogressomp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userlogininfo`
--
ALTER TABLE `userlogininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
