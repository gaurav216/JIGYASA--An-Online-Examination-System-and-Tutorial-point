-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 05:50 AM
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
-- Table structure for table `doubts`
--

CREATE TABLE IF NOT EXISTS `doubts` (
  `doubt_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `doubt` varchar(4000) NOT NULL,
  PRIMARY KEY (`doubt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `doubts`
--

INSERT INTO `doubts` (`doubt_id`, `name`, `doubt`) VALUES
(130, 'Alok mishra', ';jsdnjosdnjosnojsdgn'),
(131, 'Rishabh Mishra', 'sdndfmdgmkcgk'),
(132, 'DKT', 'avsadnhsnjfxmjj'),
(133, 'Negi', 'jengsengiosnes'),
(134, 'Arun', 'kmfoskdmgkosm'),
(135, 'Joker', 'mawfkamfamfoafm'),
(136, 'Batman', 'i am batman'),
(137, 'Thanos', 'I will do it myself!!'),
(138, 'Nupa', 'lkasfmdskofmio'),
(139, 'Suraj', ';ksamc;ams'),
(140, 'Saja', 'ljnlknklnk'),
(142, 'null', 'null'),
(143, 'fgdsgfdsff', 'dddddddddddddddddddd'),
(144, 'retetete', 'tetetetetetete'),
(145, 'asdfgh', 'asdfghjkl'),
(146, 'asdasbgdfhj', 'sasd'),
(147, 'asfasfas', 'ss'),
(148, 'Jon', 'jnfjknfanfanf'),
(149, 'Ayush', 'This is my doubt....');
