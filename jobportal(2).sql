-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2022 at 11:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`) VALUES
(1, 1, 1, 1, 2),
(2, 3, 1, 1, 2),
(3, 2, 1, 1, 2),
(4, 4, 3, 1, 2),
(5, 4, 3, 2, 2),
(6, 8, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Westlands', 1),
(2, 'Dagoretti North', 1),
(3, 'Dagoretti South', 1),
(4, 'Langata', 1),
(5, 'Kibra', 1),
(6, 'Roysambu', 1),
(7, 'Eldoret North', 2),
(8, 'Eldoret South', 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(3, 'Rodgers', 'Butasi Corp', 'KENYA', 'Nairobi', 'Dagoretti North', '0111791797', 'github.com/butasi', 'wanyonyirodgers11@gmail.com', 'ZjNjODA5YmRhYTE3ZGZkMWFmNDNkOTcyZDllZWFiMGI=', 'Brief Info', '6304cb2818689.png', '2022-08-23 12:42:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'KE', 'KENYA', 254),
(2, 'UG', 'UGANDA', 256);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(1, 1, 'Arduino Programmer', '<p>Some random description Job</p>', '10000', '15000', '1', 'Diploma', '2022-08-19 10:25:00'),
(2, 1, 'Arduino Programmer 2', '<p>jbejwdejwbe</p>', '1000', '100000', '0', 'none', '2022-08-19 10:30:03'),
(3, 1, 'Arduino Programmer 3', '<p>Another</p>', '1000', '1000', '0', 'Bsc', '2022-08-19 10:31:24'),
(4, 3, 'Arduino Programmer', '<p>Arduino Programmer</p>', '1000', '10000', '1', 'Bsc', '2022-08-23 12:43:34'),
(5, 3, 'Software Engineer', '<p>A Software Engineer is needed</p>', '1000', '1500', '2', 'Bsc', '2022-08-23 14:29:53'),
(6, 3, 'Software Engineer', '<p>A Software Engineer is needed</p>', '10000', '15000', '1', 'Bsc', '2022-08-29 11:04:17'),
(7, 3, 'Web Developer', '<p>A Web Developer is required</p>', '10000', '15000', '1', 'Bsc', '2022-08-29 11:05:03'),
(8, 3, 'Project Presentation', '', '10000', '15000', '2', 'Bsc', '2022-09-02 08:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `id_mailbox` int(11) NOT NULL,
  `id_fromuser` int(11) NOT NULL,
  `fromuser` varchar(255) NOT NULL,
  `id_touser` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`id_mailbox`, `id_fromuser`, `fromuser`, `id_touser`, `subject`, `message`, `createdAt`) VALUES
(1, 3, 'company', 1, 'About your Application', '', '2022-09-02 07:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `reply_mailbox`
--

CREATE TABLE `reply_mailbox` (
  `id_reply` int(11) NOT NULL,
  `id_mailbox` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Nairobi', 1),
(2, 'Eldoret', 1),
(3, 'Nakuru', 1),
(4, 'Mombasa', 1),
(5, 'Kisumu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `aboutme` text DEFAULT NULL,
  `skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`) VALUES
(1, 'Rodgers', 'Butasi', 'butasi.rodgers@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2595', 'Nairobi', 'Nairobi', '0111791797', 'Bsc', 'BBIT', '2022-08-15', '1998-03-30', '24', 'IT Technician', '6304ce1826d3d.pdf', '7cd51cad8bfe475b595edc12671df2cf', 1, 'Brief Info', 'ICT'),
(2, 'test1', 'test', 'test@gmail.com', 'ZjNjODA5YmRhYTE3ZGZkMWFmNDNkOTcyZDllZWFiMGI=', '2595', 'Nairobi', 'Langata', '0111791797', 'Bsc', 'BBIT', '2022-08-15', '1998-03-30', '24', 'mr', '6304d502f126d.pdf', 'cf552b91d76c3e76236eab4e04c82759', 1, 'Brief Info', 'IT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id_mailbox`);

--
-- Indexes for table `reply_mailbox`
--
ALTER TABLE `reply_mailbox`
  ADD PRIMARY KEY (`id_reply`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id_mailbox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply_mailbox`
--
ALTER TABLE `reply_mailbox`
  MODIFY `id_reply` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
