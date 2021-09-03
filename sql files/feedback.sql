-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 05:51 AM
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
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `email` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `subject` varchar(80) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `name`, `subject`, `message`) VALUES
('kjbh@gmail.com', 'gvsdfsadfd', 'sfsfsfasfaf', 'hgvghvgvsdfsvzvvsdfsdf'),
('dfgdfh@gmail.com', 'grthrhrthr', 'dfcsdfdsfa', 'dsafsdfsdfaf'),
('ayush@gmail.com', 'ayush', 'asdacaa', 'dsafsdfsdfaf;kck;lcj'),
('ayush@gmail.com', 'ayush', 'asdacaa', 'dsafsdfsdfaf;kck;lcj'),
('aecfqedfqe@gmail.com', 'adxqwd', 'hhjhjvhjhmb', 'hbhjbkjjjvh'),
('ayushaditya101@gmail.com', 'Ayush Aditya', 'DSFDSDF', 'JHKJBLBLIBIL'),
('gdfgg@gmail.com', 'asfasfafs', 'vhvhvjhvh', 'hmvhvhvhv'),
('sasa@gmail.com', 'auyiuaysiu', 'hvhmvhvh', 'jkbljbljbhl'),
('ayush@gmail.com', 'ryrtirtiiyju', 'dfsdgsdgsg', 'ascasfvasfasf'),
('ayush@gmail.com', 'ryrtirtiiyju', 'dfsdgsdgsg', 'ascasfvasfasf'),
('ayush@gmail.com', 'ryrtirtiiyju', 'dfsdgsdgsg', 'ascasfvasfasf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('alok@gmail.com', 'alok mishra', 'asdsdfdf', 'dsvsdfsdfdf'),
('rtetrt@gmail.com', 'yuiyuoyuoiup', '34324r23', 'wegsegsgsgsg'),
('auyiuy@gmail.com', 'Ayush', 'afdefwegf', 'efwwergergherh'),
('auyiuy@gmail.com', 'sdad', 'afdefwegf', 'efwwergergherh'),
('a@gmail.com', 'amit', 'ch', 'lu');
