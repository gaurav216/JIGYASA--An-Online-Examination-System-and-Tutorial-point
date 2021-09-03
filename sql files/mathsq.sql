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
-- Table structure for table `mathsq`
--

CREATE TABLE IF NOT EXISTS `mathsq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `mathsq`
--

INSERT INTO `mathsq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(68, 'dntjrtmrmkrykmrymk dg tnjetjetj', 'aad', 'dffs', 'fdsf', 'fds', 'c', ''),
(69, 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 'aad', 'dffs', 'fdsf', 'fds', 'c', ''),
(70, 'fndgjmfdj', 'aad', 'dffs', 'fdsf', 'fds', 'c', ''),
(71, 'fndgjmfdj', 'aad', 'dffs', 'fdsf', 'fds', 'c', ''),
(72, 'fdhdrsjdrj', 'dvsd', 'sdgvsbsb', 'sdgvsg', 'fdbd', 'c', ''),
(73, 'qwrweyteruut', 'zdvdvsd', 'dsgsdgvsgs', 'sdgsdgsdgsg', 'sdfafafaf', 'a', ''),
(74, 'gjk,fykytjjuetuet', 'dhdsfhsfhsh', 'dhdshdsfh', 'sfhsfhsh', 'shsrhsrhsrhh', 'd', ''),
(75, 'hlhlhlhjlhjlhjlhj', 'fhfjfj', 'dfhdhdh', 'dhdhdtj', 'dhdthdty', 'b', ''),
(76, 'dfgdfgdfgdfg', 'fdfgdfg', 'dsgsgs', 'sgsdgsdg', 'sgsdgs', 'b', ''),
(77, 'vnvnvbnvnvb', 'vnvnvn', 'vbnvbnvgn', 'vnvnvbnv', 'vnvnvnvb', 'd', ''),
(78, 'tyutiyiyuioyu', 'ghjfgjfgj', 'gjfgjfgjf', 'hbdfbhdfh', 'dfhdfhdfh', 'a', ''),
(79, 'werwetewtwt', 'wtewtewrtw', 'twtwtwt', 'wtwtwegtwt', 'wtwtewt', 'a', ''),
(80, 'sklmgesnmgiowengqeiog', 'sefm', 'efefmeiofm', 'efifjmeiofjm', 'eiofjsioefjeiofe', 'a', ''),
(81, 'jewknglwekngewogn', 'iegnwegnwi', 'iwinjfwinfwionio', 'qinfqiwnqio', 'qiwiowio', 'b', ''),
(82, 'rgwrgmwipogjwiogjio', 'ijgwioejgqiogjiow', 'iwjeiowejio', 'iwjfiowjwqeio', 'qiojwiogj', 'b', ''),
(83, 'cb dnmbsmnb', 'gn sk ksj kjebjqe', 'JGWKJGWEKJBGKJ', 'JWWGKJSKJGSN', 'sejfsejsekjnkj', 'a', ''),
(84, 'roiyurtiyouroyueio', 'jdfkbkdj', 'jkrgkjrgekjr', 'jhkjwkjwe', 'wghwhgiwuh', 'd', ''),
(85, 'qwrwtw', 'wwer', 'gewgw', 'ergw', 'rgweg', 'd', ''),
(86, 'uoiuupuio', 'jgojgowie', 'oijqoijqio', 'jqiojqioj', 'o', 'c', ''),
(87, 'wetgwt', 'wegwbhw', 'wegwegqq', 'efwsgw', 'sgfw', 'c', ''),
(88, 'sdjkgnskjn', 'jkgnkjgewkjgn', 'fnhq', 'qfnhqfnhqiu', 'qfhniquh', 'd', '');
