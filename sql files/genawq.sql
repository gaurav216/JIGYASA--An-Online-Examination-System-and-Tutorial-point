-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 05:52 AM
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
-- Table structure for table `genawq`
--

CREATE TABLE IF NOT EXISTS `genawq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `genawq`
--

INSERT INTO `genawq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(15, 'In which city was 102nd Indian Science Congress held in 2015?', 'Mumbai', 'Kolkata', 'Gandhinagar', 'New Delhi', 'd', 'ayushaditya101@gmail.com'),
(16, 'In which city was 18th SAARC summit held in 2014?', 'Islamabad', 'Kathmandu', ' New Delhi', 'Dhaka', 'a', 'ayushaditya101@gmail.com'),
(17, 'In which country was 6th BRICS Summit held in 2014?', 'Russia', 'South Africa', 'India', ' Brazil', 'c', 'ayushaditya101@gmail.com'),
(18, 'In which city was UN Climate Change Summit held in 2014?', 'Paris', 'Brisbane', 'New York', 'Sydney', 'a', 'ayushaditya101@gmail.com'),
(19, 'In which city was 9th G-20 Summit held in 2014?', 'Seoul', ' London', ' Saint Petersburg', 'Brisbane', 'd', 'ayushaditya101@gmail.com'),
(20, 'In which city was 25th ASEAN Summit held in 2014?', 'Nay Pyi Daw', 'Singapore', 'Bail', 'Kulala Lumpur', 'd', 'ayushaditya101@gmail.com'),
(21, 'The 6th IBSA Summit was held in 2013 at __.', 'Brasilia', 'New Delhi', 'Pretoria', 'Cape Town', 'd', 'ayushaditya101@gmail.com'),
(22, 'The member countries of IBSA Dialogue Forum are___', ' India, Brazil and South Africa', 'India, Britain and Spain', 'Israel, Brazil and Sweden', 'India, Bangladesh and South Africa', 'a', 'ayushaditya101@gmail.com'),
(23, 'The member countries of BRICS are __', 'Britain, Russia, Ireland, Canada and Sweden', ' Brazil, Russia, Indonesia, China and England', ' Brazil, Russia, India, China and South Africa', 'Britain, Russia, India, Canada and Spain', 'c', 'ayushaditya101@gmail.com'),
(24, 'Following 2014 Crimean crisis, the G-8 Group became G-7 Group by expelling ___.\r\n', ' Russia', 'Germany', 'France', ' Canada', 'b', 'ayushaditya101@gmail.com'),
(25, 'Which among the following river originated in India?', 'Ganga', 'Sutlej', 'Chenab', 'Brahmaputra', 'c', 'ayushaditya101@gmail.com'),
(26, 'Sentinelese tribe is found in which of the following States/ territories?\r\n', 'Dadra and Nagar Haveli', 'Goa', 'West Bengal', 'Andaman and Nicobar Islands', 'd', 'ayushaditya101@gmail.com'),
(27, 'How many times a person can attempt for re-election as the President of India?\r\n', 'Only thrice', ' Only once', 'Only twice', 'Any number of times', 'd', 'ayushaditya101@gmail.com'),
(28, 'In which generation, the development of GUIs, mouse and handheld devices were took place?\r\n', 'Second Generation', ' First Generation', ' Third Generation', 'Fourth  Generation', 'd', 'ayushaditya101@gmail.com'),
(29, 'The governor of a state is appointed by the President on the advice of ___.\r\n', 'Prime Minister', 'Chief Minister of the state', ' Speaker of the state', 'Chief Justice of High Court of the state', 'a', 'ayushaditya101@gmail.com'),
(30, 'Which among the following is NOT a factor of Production?', ' Bank credit', 'Labour', ' Land', 'Capital', 'a', 'ayushaditya101@gmail.com'),
(31, 'Which of the following does not involve in the study of microeconomics?', ' Households', 'Industries', 'Individual consumers', 'Economic aggregates', 'd', 'ayushaditya101@gmail.com');
