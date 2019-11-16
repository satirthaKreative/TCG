-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2019 at 08:37 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcgtester`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise_image`
--

CREATE TABLE `advertise_image` (
  `id` int(11) NOT NULL,
  `adv_images` varchar(255) NOT NULL,
  `type_iv` varchar(150) NOT NULL,
  `image_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertise_image`
--

INSERT INTO `advertise_image` (`id`, `adv_images`, `type_iv`, `image_status`) VALUES
(1, 'uploads/img_uploads/test.jpg', 'i', 1),
(2, 'uploads/img_uploads/download (1).jpg', 'i', 0),
(3, 'uploads/img_uploads/test.jpg', 'i', 1),
(10, 'uploads/video_uploads/test - Copy.mp4', 'v', 1),
(11, 'uploads/video_uploads/test.mp4', 'v', 0);

-- --------------------------------------------------------

--
-- Table structure for table `communication_tbl`
--

CREATE TABLE `communication_tbl` (
  `id` int(11) NOT NULL,
  `communication_name` varchar(255) NOT NULL,
  `p_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `communication_tbl`
--

INSERT INTO `communication_tbl` (`id`, `communication_name`, `p_status`, `status`) VALUES
(1, 'Text Chat', 1, 1),
(2, 'Audio Chat', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `format_tbl`
--

CREATE TABLE `format_tbl` (
  `id` int(11) NOT NULL,
  `format_name` varchar(255) NOT NULL,
  `p_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `format_tbl`
--

INSERT INTO `format_tbl` (`id`, `format_name`, `p_status`, `status`) VALUES
(1, 'Standard', 1, 1),
(2, 'Modern', 1, 1),
(3, 'Legacy', 1, 1),
(4, 'Vintage', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `platform_tbl`
--

CREATE TABLE `platform_tbl` (
  `id` int(11) NOT NULL,
  `platform_name` varchar(255) NOT NULL,
  `p_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `platform_tbl`
--

INSERT INTO `platform_tbl` (`id`, `platform_name`, `p_status`, `status`) VALUES
(1, 'MTGA', 1, 1),
(2, 'MTGO', 1, 1),
(3, 'Cockatrice', 1, 1),
(4, 'Xmage', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reg_font`
--

CREATE TABLE `reg_font` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `enc_pass` text NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT 0,
  `approve_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `about_des` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_font`
--

INSERT INTO `reg_font` (`id`, `user_name`, `user_email`, `user_pass`, `enc_pass`, `admin_status`, `approve_status`, `status`, `about_des`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 1, ''),
(2, 'Satirtha', 'satirtha.kreative@gmail.com', '123456', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 1, NULL),
(3, 'Satirtha', 'satirtha63@gmail.com', '123456', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voult`
--

CREATE TABLE `voult` (
  `id` int(11) NOT NULL,
  `voult_total_time` varchar(255) NOT NULL,
  `time_in_second` varchar(255) NOT NULL,
  `time_in_minute` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voult`
--

INSERT INTO `voult` (`id`, `voult_total_time`, `time_in_second`, `time_in_minute`, `status`) VALUES
(1, '700', '2520000', '42000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voult_time_slot`
--

CREATE TABLE `voult_time_slot` (
  `id` int(11) NOT NULL,
  `time_slot` varchar(255) NOT NULL,
  `time_type` varchar(255) NOT NULL,
  `time_slot_price` varchar(255) NOT NULL,
  `convert_seconds` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voult_time_slot`
--

INSERT INTO `voult_time_slot` (`id`, `time_slot`, `time_type`, `time_slot_price`, `convert_seconds`, `status`) VALUES
(1, '1', 'hours', '100', '3600', 1),
(2, '30', 'min', '50', '1800', 1),
(3, '15', 'min', '25', '900', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise_image`
--
ALTER TABLE `advertise_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_tbl`
--
ALTER TABLE `communication_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `format_tbl`
--
ALTER TABLE `format_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_tbl`
--
ALTER TABLE `platform_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_font`
--
ALTER TABLE `reg_font`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voult`
--
ALTER TABLE `voult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voult_time_slot`
--
ALTER TABLE `voult_time_slot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise_image`
--
ALTER TABLE `advertise_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `communication_tbl`
--
ALTER TABLE `communication_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `format_tbl`
--
ALTER TABLE `format_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `platform_tbl`
--
ALTER TABLE `platform_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reg_font`
--
ALTER TABLE `reg_font`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voult`
--
ALTER TABLE `voult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voult_time_slot`
--
ALTER TABLE `voult_time_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
