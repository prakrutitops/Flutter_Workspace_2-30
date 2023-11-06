-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2023 at 10:44 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2372099_perfectwebservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category_Images`
--

CREATE TABLE `Category_Images` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category_Images`
--

INSERT INTO `Category_Images` (`id`, `c_id`, `c_images`) VALUES
(1, 2, 'https://vyasprakruti.000webhostapp.com/FlutterProject/images/h1.jpg'),
(2, 2, 'https://vyasprakruti.000webhostapp.com/FlutterProject/images/h2.jpg'),
(4, 7, 'https://vyasprakruti.000webhostapp.com/FlutterProject/Upload_category/Images/image_6260.jpg'),
(5, 5, 'https://vyasprakruti.000webhostapp.com/FlutterProject/Upload_category/Images/image_5050.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category_Images`
--
ALTER TABLE `Category_Images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category_Images`
--
ALTER TABLE `Category_Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
