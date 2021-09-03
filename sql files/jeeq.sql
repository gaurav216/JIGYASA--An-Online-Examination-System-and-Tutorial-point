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
-- Table structure for table `jeeq`
--

CREATE TABLE IF NOT EXISTS `jeeq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `jeeq`
--

INSERT INTO `jeeq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(1, 'qwe', 'rty', 'ui', 'yui', 'yui', 'a', ''),
(2, 'NMH\r\n', 'yui', 'hj', 'sdrtGHJKL', 'HJK', 'C', ''),
(3, 'as', 'qwe', 'rtyu', 'yui', 'yui', 'd', ''),
(4, 'qwer', 'tyui', 'tyu', 'tyui', 'tyui', 'c', ''),
(5, 'werty', 'rtyu', 'rftgyh', 'tyui', 'fghj', 'd', ''),
(6, 'qwer', 'tyui', 'hjk', 'tyui', 'fghjk', 'd', ''),
(7, 'tyiuoi', 'gfhgjhkjlk', 'dzxfcgvhbj', 'fxcghvjhbkjn', 'fcgvjhbkjnkm', 'd', ''),
(8, 'errtfgh', 'hhdfxfchgvhgj', 'gfdxgfchjj', 'hjghfgghjkjl', 'hghfgdfcgghvhbjk', 'b', ''),
(9, 'wee', 'hg', 'dfgyhul', 'grstdfugyuhi', 'uytfdghj', 'c', ''),
(10, 'wuiop', 'itdtrser', 'stdrfgyhuij', 'hdrjtf', 'gyhuijo;johugy', 'd', ''),
(11, 'DXFGCHJH', 'XFGFH', 'JKHGF', 'DFGUHI', 'JHDGFH', 'a', ''),
(12, 'bkhgdhf', 'ghghmggdf', 'fghfgjvhfg', 'ekhkjhfgdf', 'fgkjggh', 'd', ''),
(13, 'kjkfdsfd', 'qrtytuytq', 'qrthyjtrqe', 'qertyjukiuyjtrq', 'qweyjrukuyjtqr', 'c', ''),
(14, ',jhg', 'qwergjhgfgefwq', 'qwejkljhr', 'ewqwejkjhgew', 'qwerukiuytyrte', 'd', ''),
(15, 'knkjhghf', 'qhjk,jhgref', 'qwjkhgf', 'qwejkhgfqweyjkjjhwgqfwerjhgefw', 'dqwejhgf', 'd', ''),
(16, 'knhgfdDFJHGFDS', 'QRGHGRQE', 'QRGHNNRGE', 'QWRTHGFQREGTHYJKUJKQ', 'QJH', 'a', '');
