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
-- Table structure for table `reasoningq`
--

CREATE TABLE IF NOT EXISTS `reasoningq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `reasoningq`
--

INSERT INTO `reasoningq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(1, 'fjdkfjdkfjkd', 'j', 'k', 'kj', 'h', 'a', ''),
(2, 'fsadljfdlsj', 'jjlk', 'jkiji', 'hghy', 'klkl', 'b', ''),
(3, 'njcic', 'sd', 'er', 'dcv', 'erth', 'd', ''),
(4, 'lkjsvdvknkldfsj', 'fji', 'vygyhjhb', 'm,nbhjcgf', 'hjvhcj', 'c', ''),
(5, 'cxvxnlkvlxkj', 'hi', 'lv', 'ulb', 'lbv', 'd', ''),
(6, 'dnvlkd', 'cd', 'erf', 'df', 'sdf', 'c', ''),
(7, 'asdf', 'h', 'v', 'dshfklds', 'cghj', 'd', ''),
(8, 'nbvklcxnskd', 'dsfds', 'hkhk', 'joijfoef', 'erter', 'd', ''),
(9, 'sdfdkjdsafh', 'jdiosahk', 'hdfiuewire', 'nflkdsnlf', 'hiudgk', 'd', ''),
(10, 'dfs.nmfkl', 'hfhsifhh', 'fdsfnsh', 'fnslksj', 'fnsjfnsnskld', 'c', ''),
(11, 'dfghjkl', 'oiuyt', 'dfgh', 'lkjh', 'erty', 'd', ''),
(12, 'fhdsflka', 'jaishfk', 'rfakjhfka', 'nfoewiw', 'gfngoeril', 'c', ''),
(13, 'nfoidlasjleJIJ', 'HOITHGOH', 'HOIGghoiese', 'ifnskn', 'klwskfk', 'd', ''),
(14, 'dfghjklsdfkjhgf', 'hkhkbk', 'vbvb', 'ljo', 'cf', 'a', ''),
(15, 'xvsdjsljfff', 'jdfsadlj', 'j', 'lj', 'j', 'c', ''),
(16, 'danslfjdlask;', 'huiruewhj', 'nkjnlk', 'giuhjk', 'bhbnk', 'd', ''),
(17, ';kfjlskdghopiuy', 'j', 'gvhbjhkl', 'cvbn', 'mjkhgf', 'd', '');
