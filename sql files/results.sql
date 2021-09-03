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
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `username` varchar(80) NOT NULL,
  `subject` varchar(80) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`username`, `subject`, `marks`) VALUES
('ayush', 'maths', 2),
('ayush', 'maths', 3),
('ayush', 'maths', 6),
('ayush', 'maths', 2),
('ayush', 'maths', 3),
('ayush', 'maths', 3),
('ayush', 'maths', 3),
('ayush', 'maths', 0),
('ayush', 'maths', 2),
('ayush', 'maths', 3),
('null', 'maths', 3),
('ayush', 'reasoning', 3),
('ayush', 'maths', 5),
('ayush', 'maths', 4),
('ayush', 'maths', 4),
('ayush', 'maths', 2),
('ayush', 'maths', 2),
('ayush', 'maths', 1),
('ayush', 'gatecse', 1),
('ayush', 'english', 1),
('ayush', 'gensc', 2),
('ayush', 'reasoning', 1),
('ayush', 'english', 1),
('ayush', 'gatecse', 0),
('ayush', 'english', 7),
('ayush', 'english', 5),
('ayush', 'english', 7),
('ayush', 'gatecse', 4),
('ayush', 'gatecse', 7),
('ayush', 'jee', 2),
('ayush', 'genaw', 3),
('ayush', 'gensc', 8),
('ayush', 'english', 6),
('ayush', 'english', 7),
('ayush', 'english', 4),
('ayush', 'english', 3),
('ayush', 'english', 2);
