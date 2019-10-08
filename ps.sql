-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 06:13 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_site_config`
--

CREATE TABLE `ps_site_config` (
  `config_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `detail` text NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ps_site_config`
--

INSERT INTO `ps_site_config` (`config_name`, `detail`, `lastUpdate`) VALUES
('siteName', 'Print Station', '2019-09-26 04:12:33'),
('siteURL', 'http://localhost/printStation', '2019-09-26 04:11:31'),
('subName', 'ps', '2019-09-26 04:11:02'),
('theme', 'taurus', '2019-08-27 13:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `ps_userdata`
--

CREATE TABLE `ps_userdata` (
  `id` int(11) NOT NULL COMMENT 'รหัสผู้ใช้',
  `username` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้ใช้',
  `password` varchar(32) DEFAULT NULL COMMENT 'รหัสผ่าน',
  `personal_id` int(11) DEFAULT NULL COMMENT 'รหัสบุคลากร',
  `active` enum('Y','N','B') NOT NULL DEFAULT 'Y' COMMENT 'เปิดใช้งาน',
  `user_type` enum('admin','advisor',' lawyer','staff','user') NOT NULL DEFAULT 'user' COMMENT 'ประเภทผู้ใช้',
  `last_login` datetime DEFAULT NULL COMMENT 'ลงชื่อเข้าใช้ครั้งสุดท้าย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ps_userdata`
--

INSERT INTO `ps_userdata` (`id`, `username`, `password`, `personal_id`, `active`, `user_type`, `last_login`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', 1, 'Y', 'admin', '2019-08-23 17:39:55'),
(2, 'staff', '25d55ad283aa400af464c76d713c07ad', 2, 'Y', 'staff', '2019-08-25 08:59:25'),
(3, 'pds01', '25d55ad283aa400af464c76d713c07ad', 3, 'Y', ' lawyer', '2019-08-24 14:43:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ps_site_config`
--
ALTER TABLE `ps_site_config`
  ADD PRIMARY KEY (`config_name`),
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `ps_userdata`
--
ALTER TABLE `ps_userdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ps_userdata`
--
ALTER TABLE `ps_userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ใช้', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
