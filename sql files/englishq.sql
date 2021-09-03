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
-- Table structure for table `englishq`
--

CREATE TABLE IF NOT EXISTS `englishq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `englishq`
--

INSERT INTO `englishq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(17, 'Bolt from the blue ', 'Thundering ', 'A complete surprise ', 'Inform something bad ', 'No idea ', 'b', 'ayushaditya101@gmail.com'),
(18, 'Blue blood ', 'Belonging to low class society ', 'Give complain in written', 'Member of high class society ', 'Complain given verbally', 'c', 'ayushaditya101@gmail.com'),
(19, ' At Loggerheads ', 'To differ strongly ', 'To divide a job ', 'To try hard', 'To get going ', 'a', 'ayushaditya101@gmail.com'),
(20, ' Keep your eyes peeled', 'To watch carefully ', 'Searching someone', 'Looking forward ', 'Running away ', 'a', 'ayushaditya101@gmail.com'),
(21, ' Head Over Heels ', 'Study hard ', 'Living in luxury ', 'Very excited ', 'Conflict ', 'c', 'ayushaditya101@gmail.com'),
(22, 'When the Principal entered the class, a student.... on the blackboard.', 'wrote', 'was writing ', 'writes ', 'is writing ', 'b', 'ayushaditya101@gmail.com'),
(23, 'She...TV when her husband came.\r\n', 'watch', ' was watching', ' is watching', 'watched', 'b', 'ayushaditya101@gmail.com'),
(24, ' He always...to prove that the earth revolves round the sun.', ' tried ', 'tries ', 'was trying', ' is trying', 'a', 'ayushaditya101@gmail.com'),
(25, ' He saw me by chance and....the car.', 'stop', 'stopped', 'stops', ' was stopping', 'b', 'ayushaditya101@gmail.com'),
(26, 'How many pegs of wine??yesterday?', 'you have drank ', 'were you drinking ', 'did you drink ', ' do you drink', 'c', 'ayushaditya101@gmail.com'),
(27, 'Select the appropriate synonym: Voracious', ' tenacious', 'truthful', 'spacious', 'ravenous', 'd', 'ayushaditya101@gmail.com'),
(28, 'Select the appropriate synonym: Abortive', ' fruitful', ' familiar', 'unsuccessful', 'consuming', 'c', 'ayushaditya101@gmail.com'),
(29, 'Select the appropriate synonym: Tenacious', 'holding fast', 'collecting', 'fast running', 'intentional', 'a', 'ayushaditya101@gmail.com'),
(30, 'Select the appropriate synonym: Terse', 'brief in speech', 'beyond fear', 'without honor', ' under strain', 'a', 'ayushaditya101@gmail.com'),
(31, 'Select the appropriate synonym: Tentative', 'mocking', 'wry', 'experimental', 'prevalent', 'c', 'ayushaditya101@gmail.com'),
(32, 'Select Correct Word', 'Aceleration ', 'Aceeleration ', 'Accelaration ', 'Acceleration ', 'd', 'ayushaditya101@gmail.com'),
(33, 'Select Correct Word', 'Agressive ', 'Agrressive ', 'Aggressive ', 'Aggresive ', 'c', 'ayushaditya101@gmail.com'),
(34, 'Select Correct Word', 'Iminent ', 'Imminent ', 'Iminnent ', 'Imineent ', 'b', 'ayushaditya101@gmail.com'),
(35, 'Select Correct Word', 'Cheqe ', 'Ceque ', 'Cheque ', 'Chequee ', 'c', 'ayushaditya101@gmail.com'),
(36, 'Select Correct Word', 'Callibration ', 'Calibration ', 'Celibration ', 'Calibrration ', 'b', 'ayushaditya101@gmail.com');
