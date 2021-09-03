-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 05:53 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jigyasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `reply_id` int(20) NOT NULL AUTO_INCREMENT,
  `doubt_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `reply` varchar(4000) NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`reply_id`, `doubt_id`, `name`, `reply`) VALUES
(1, 139, 'gmkjfkfk', 'gkfykfykfy'),
(2, 139, 'gmkjfkfk', 'gkfykfykfy'),
(3, 134, 'Ayush Aditya', 'avgsgsgsdgasg'),
(4, 134, 'Ayush Aditya', 'avgsgsgsdgasg'),
(5, 140, 'lj;j;j;ji;pjiophu', 'gyoigigyogo'),
(6, 144, 'Ayush', 'eptetretet'),
(7, 144, 'Ayush', 'petetetete'),
(8, 143, 'Ayush Aditya', 'eeeeeeeee'),
(9, 144, 'fdfdfdcss', 'sdsdsd'),
(10, 144, 'asdf', 'aass'),
(11, 140, 'dd', 'ssss'),
(12, 144, 'Ayush Aditya', 'bnhjgkl'),
(13, 143, 'fghj', 'xgjkl'),
(14, 145, 'asdfg', 'asdfg'),
(15, 146, 'null', 'null'),
(16, 147, 'null', 'null'),
(17, 147, 'null', 'null'),
(18, 144, 'null', 'null'),
(19, 143, 'kljlkjlkjl', 'mnbmnbmn'),
(20, 147, 'bvcbvcbvc', 'mnbmnbmnbmn'),
(21, 149, 'Gaurav Kumar', 'What is you doubt???');
