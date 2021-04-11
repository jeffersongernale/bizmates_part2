-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 02:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bizmates`
--

-- --------------------------------------------------------

--
-- Table structure for table `trn_evaluation`
--

CREATE TABLE `trn_evaluation` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `lesson_datetime` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_evaluation`
--

INSERT INTO `trn_evaluation` (`id`, `teacher_id`, `result`, `lesson_datetime`, `created_at`) VALUES
(1, 1, 1, '2020-01-11 17:00:00', '2020-01-11 17:00:00'),
(2, 1, 1, '2020-01-06 16:30:00', '2020-01-11 17:00:00'),
(3, 1, 1, '2020-01-08 16:00:00', '2020-01-11 17:00:00'),
(4, 4, 1, '2020-01-10 17:00:00', '2020-01-11 17:00:00'),
(5, 4, 2, '2020-01-10 21:00:00', '2020-01-11 17:00:00'),
(6, 4, 1, '2020-01-10 23:00:00', '2020-01-11 17:00:00'),
(7, 6, 1, '2020-01-11 21:30:00', '2020-01-11 17:00:00'),
(8, 6, 1, '2020-01-06 20:00:00', '2020-01-11 17:00:00'),
(9, 6, 1, '2020-01-08 19:30:00', '2020-01-11 17:00:00'),
(10, 3, 1, '2020-01-07 17:00:00', '2020-01-11 17:00:00'),
(11, 3, 1, '2020-01-06 17:00:00', '2020-01-11 17:00:00'),
(12, 3, 2, '2020-01-08 16:30:00', '2020-01-11 17:00:00'),
(13, 5, 1, '2020-01-07 15:30:00', '2020-01-11 17:00:00'),
(14, 5, 1, '2020-01-06 16:00:00', '2020-01-11 17:00:00'),
(15, 5, 1, '2020-01-07 10:30:00', '2020-01-11 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `trn_teacher`
--

CREATE TABLE `trn_teacher` (
  `id` int(11) NOT NULL,
  `nickname` varchar(259) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_teacher`
--

INSERT INTO `trn_teacher` (`id`, `nickname`, `status`, `created_at`) VALUES
(1, 'John D', 1, '2021-04-11 17:49:27'),
(3, 'Mike', 0, '2021-01-16 17:50:28'),
(4, 'Luca', 1, '2021-01-16 17:50:56'),
(5, 'Scottie', 2, '2021-01-16 17:50:56'),
(6, 'Steph C', 1, '2021-01-16 17:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `trn_teacher_role`
--

CREATE TABLE `trn_teacher_role` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_teacher_role`
--

INSERT INTO `trn_teacher_role` (`id`, `teacher_id`, `role`, `created_at`) VALUES
(1, 1, 1, '2021-04-11 17:54:36'),
(2, 1, 2, '2021-04-11 17:55:02'),
(3, 1, 3, '2021-04-11 17:55:12'),
(4, 4, 1, '2021-04-11 17:55:28'),
(5, 6, 1, '2021-04-11 17:56:00'),
(6, 6, 2, '2021-04-11 17:56:13'),
(7, 3, 1, '2021-04-11 17:56:36'),
(8, 5, 3, '2021-04-11 17:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `trn_time_table`
--

CREATE TABLE `trn_time_table` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `lesson_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_time_table`
--

INSERT INTO `trn_time_table` (`id`, `teacher_id`, `lesson_datetime`, `status`) VALUES
(1, 1, '2020-01-11 17:00:00', 1),
(2, 1, '2020-01-11 16:30:00', 1),
(3, 1, '2020-01-10 16:00:00', 1),
(4, 4, '2020-01-10 17:00:00', 1),
(5, 4, '2020-01-10 21:00:00', 2),
(6, 4, '2020-01-10 23:00:00', 3),
(7, 6, '2020-01-10 21:30:00', 1),
(8, 6, '2020-01-10 20:00:00', 1),
(9, 6, '2020-01-10 19:30:00', 1),
(10, 3, '2020-01-07 17:00:00', 1),
(11, 3, '2020-01-06 17:00:00', 1),
(12, 3, '2020-01-08 16:30:00', 2),
(13, 5, '2020-01-07 15:30:00', 1),
(14, 5, '2020-01-06 16:30:00', 2),
(15, 5, '2020-01-07 10:30:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trn_evaluation`
--
ALTER TABLE `trn_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_teacher`
--
ALTER TABLE `trn_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_teacher_role`
--
ALTER TABLE `trn_teacher_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_time_table`
--
ALTER TABLE `trn_time_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trn_evaluation`
--
ALTER TABLE `trn_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `trn_teacher`
--
ALTER TABLE `trn_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trn_teacher_role`
--
ALTER TABLE `trn_teacher_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trn_time_table`
--
ALTER TABLE `trn_time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
