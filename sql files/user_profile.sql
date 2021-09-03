-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 05:54 AM
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
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`username`, `name`, `email`, `password`) VALUES
('', '', '', ''),
('aaa', 'abc', 'a@gmail.com', '123'),
('asdaioip', 'hkghjgj', 'fxd@gmail.com', 'fhfhfhf'),
('atio', 'daassass', 'dad@gmail.com', 'asdafaf'),
('ayush', 'ayush', 'ayushaditya101@gmail.com', 'ayush'),
('ayushadity', 'fs', 'afrefae@gmail.com', 'yty'),
('ayushaditya', 'asdasbgdfhj', 'fe@gmail.com', '123'),
('dfgdhfd', 'dfbfgmfm', 'sadas@gmail.com', 'sdgsdfh'),
('eqwe', 'gdfgdf', 'afafas@gmail.com', '4354'),
('EWFRWERW', 'WEEWE', 'asdf@gmail.com', 'GFGSGSG'),
('gaurav', 'Gaurav Kumar', 'gaurav@gmail.com', '12345'),
('gdgnjfj', 'ghbfjfh', 'kjhfskjh@gmail.com', 'trhyrthr'),
('hmgjmg', 'yutjuiti', 'xvvfdsfgvdf@gmail.com', 'jntytmttu'),
('lab1', 'safsmkjgh', 'cadsvv@gmail.com', 'asdasasfs'),
('QWERTY', 'dsfasfadf', 'asdas@gmail.com', 'ssdggsdg'),
('teyuuyt', 'vyjgyuguyg', 'dsdsad@gmail.com', 'utgjjg');
