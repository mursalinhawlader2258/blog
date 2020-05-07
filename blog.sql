-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2020 at 04:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog-info`
--

CREATE TABLE `blog-info` (
  `id` int(3) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `blog_title` text NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `images` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog-info`
--

INSERT INTO `blog-info` (`id`, `category_name`, `blog_title`, `short_description`, `long_description`, `images`, `status`) VALUES
(1, 'afafa', 'afafa', 'afafa', 'afafa', 'afafa', 'faafaf'),
(2, 'faafa', 'afaf', 'afafa', 'afa', 'afafafafaf', 'afafa'),
(3, 'afafafa', 'fafafa', 'afafaf', 'faafa', 'afafafafafa', 'afafa'),
(4, 'fafafafasfaa', 'fafafafafadfa', 'dhdhdd', 'hdhdh', 'hsfgrg', 'hfggsfd'),
(5, 'afafafa', 'fafafa', 'afafaf', 'faafa', 'afafafafafa', 'afafa'),
(6, 'fafafafasfaa', 'fafafafafadfa', 'dhdhdd', 'hdhdh', 'hsfgrg', 'hfggsfd'),
(7, '1', 'mursalin', '', '', '', ''),
(8, '2', 'musfiqur', '', '', '', ''),
(9, '2', 'hjdhgdh', '', '', '', ''),
(10, '--Select Category Name--', 'munne', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(3) NOT NULL,
  `category_name` text NOT NULL,
  `category_description` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_description`, `status`) VALUES
(8, 'abafafafja', 'ajfajpfajfa[', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Super Admin', 'admin@blogs.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog-info`
--
ALTER TABLE `blog-info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog-info`
--
ALTER TABLE `blog-info`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
