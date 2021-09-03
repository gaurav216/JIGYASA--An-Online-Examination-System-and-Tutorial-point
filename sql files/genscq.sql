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
-- Table structure for table `genscq`
--

CREATE TABLE IF NOT EXISTS `genscq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `genscq`
--

INSERT INTO `genscq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(19, 'Brass gets discoloured in air because of the presence of which of the following gases in air?', 'Oxygen', 'Hydrogen sulphide', 'Carbon dioxide', 'Nitrogen', 'b', 'ayushaditya101@gmail.com'),
(20, 'Which of the following is a non metal that remains liquid at room temperature?', 'Phosphorous', 'Bromine', 'Chlorine', 'Helium', 'b', 'ayushaditya101@gmail.com'),
(21, 'Chlorophyll is a naturally occurring chelate compound in which central metal is', 'copper', 'magnesium', 'iron', 'calcium', 'b', 'ayushaditya101@gmail.com'),
(22, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', 'a', 'ayushaditya101@gmail.com'),
(23, 'Which of the following metals forms an amalgam with other metals?', 'Tin', 'Mercury', 'Lead', 'Zinc', 'b', 'ayushaditya101@gmail.com'),
(24, 'Chemical formula for water is', 'NaAlO2', 'H2O', 'Al2O3', 'CaSiO3', 'b', 'ayushaditya101@gmail.com'),
(25, 'The gas usually filled in the electric bulb is', 'nitrogen', 'hydrogen', 'carbon dioxide', 'oxygen', 'a', 'ayushaditya101@gmail.com'),
(26, 'Washing soda is the common name for', 'Sodium carbonate', 'Calcium bicarbonate', 'Sodium bicarbonate', 'Calcium carbonate', 'a', 'ayushaditya101@gmail.com'),
(27, 'Quartz crystals normally used in quartz clocks etc. is chemically', 'silicon dioxide', 'germanium oxide', 'a mixture of germanium oxide and silicon dioxide', 'sodium silicate', 'a', 'ayushaditya101@gmail.com'),
(28, 'Which of the gas is not known as green house gas?', 'Methane', 'Nitrous oxide', 'Carbon dioxide', 'Hydrogen', 'd', 'ayushaditya101@gmail.com'),
(29, 'Bromine is a', 'black solid', 'red liquid', 'colourless gas', 'highly inflammable gas', 'b', 'ayushaditya101@gmail.com'),
(30, 'The hardest substance available on earth is', 'Gold', 'Iron', 'Diamond', 'Platinum', 'c', 'ayushaditya101@gmail.com'),
(31, 'The variety of coal in which the deposit contains recognisable traces of the original plant material is', 'bitumen', 'anthracite', 'lignite', 'peat', 'd', 'ayushaditya101@gmail.com'),
(32, 'Tetraethyl lead is used as', 'pain killer', 'fire extinguisher', 'mosquito repellent', 'petrol additive', 'd', 'ayushaditya101@gmail.com'),
(33, 'Which of the following is used as a lubricant?', 'Graphite', 'Silica', 'Iron Oxide', 'Diamond', 'a', 'ayushaditya101@gmail.com');
