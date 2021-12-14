-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 05:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_of_rock`
--

-- --------------------------------------------------------

--
-- Table structure for table `studends`
--

CREATE TABLE `studends` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studends`
--

INSERT INTO `studends` (`id`, `name`, `birthday`) VALUES
(1, 'Matan', '1999-07-06'),
(2, 'Yarin', '2002-07-06'),
(3, 'Snir', '1982-07-06'),
(4, 'Idan', '1982-02-04'),
(5, 'nimrod', '1979-11-06'),
(6, 'dor', '1969-07-06'),
(7, 'shira', '1970-12-06'),
(8, 'doha', '1999-12-10'),
(9, 'moni', '1999-02-02'),
(13, 'dana', '1989-12-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studends`
--
ALTER TABLE `studends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studends`
--
ALTER TABLE `studends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
SELECT * FROM `studends` WHERE studends.name;
SELECT * FROM `lessons` WHERE lessons.name;
SELECT * FROM `grades` WHERE grades.grade;
SELECT MAX(grade)FROM `grades` WHERE grade;
SELECT MIN(grade)FROM `grades` WHERE grade;
SELECT * FROM `studends` WHERE studends.ID ORDER BY studends.birthday LIMIT 1;
SELECT * FROM `studends` ORDER by studends.ID DESC LIMIT 1
SELECT name FROM studends WHERE id  in (SELECT `studend.id` FROM grades WHERE grade =(SELECT max(grade) FROM `grades`))