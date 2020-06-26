-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2020 at 09:25 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_tutor` varchar(30) NOT NULL,
  `course_title` varchar(160) NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_category` varchar(50) NOT NULL,
  `course_overview` varchar(400) NOT NULL,
  `no_of_lectures` int(10) NOT NULL,
  `course_duration` varchar(50) NOT NULL,
  `course_test` int(10) NOT NULL,
  `course_level` varchar(50) NOT NULL,
  `course_language` varchar(60) NOT NULL,
  `image_link` varchar(30) NOT NULL,
  `date_course_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_tutor`, `course_title`, `course_price`, `course_category`, `course_overview`, `no_of_lectures`, `course_duration`, `course_test`, `course_level`, `course_language`, `image_link`, `date_course_created`) VALUES
(11, 'Doveway', 'bee', 1, 'Programming', 'jjjk', 1, '9 Weeks', 3, 'Beginner', 'English', '7684979373713.jpg', '2020-06-25 02:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `user_sex` varchar(10) NOT NULL DEFAULT 'male',
  `user_address` text NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_type` enum('master','admin','user_basic','user_premium') NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL,
  `user_occupation` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_email`, `user_password`, `user_name`, `user_phone`, `user_sex`, `user_address`, `user_state`, `user_type`, `user_status`, `user_occupation`, `date_created`) VALUES
(141, 'doveway@yahoo.com', '$2y$10$7Pcyk4wHr1MSPyXNbStCeeUg5H6.7jmuuF3v3E.NAMgOSfW4Hm7cG', 'Doveway Onwuka', '08065178535', 'Male', 'Okota', 'Abia', 'user_basic', 'Active', 'Full Stack Developer', '2020-04-09 11:41:04'),
(142, 'isaac@yahoo.com', '$2y$10$7Pcyk4wHr1MSPyXNbStCeeUg5H6.7jmuuF3v3E.NAMgOSfW4Hm7cG', 'Isaac', '08065178535', 'Male', 'Okota', 'Abia', 'user_basic', 'Active', 'Full Stack', '2020-04-09 11:41:04'),
(155, 'dovewauyhy@yahoo.com', '$2y$10$kh/5GrviczWoLTQX5b0PTOzHPclAzPgaRMbkiInD6rhe2iyVs7V8.', 'looo', 'Fill you Phone no.', '', 'Fill your Address', '', 'user_basic', 'Active', 'Fill Occupation', '2020-06-20 05:27:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
