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
-- Table structure for table `gatecseq`
--

CREATE TABLE IF NOT EXISTS `gatecseq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `opa` varchar(4000) NOT NULL,
  `opb` varchar(4000) NOT NULL,
  `opc` varchar(4000) NOT NULL,
  `opd` varchar(4000) NOT NULL,
  `correct` varchar(4000) NOT NULL,
  `admin_emailid` varchar(80) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `gatecseq`
--

INSERT INTO `gatecseq` (`qid`, `question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES
(20, 'Assume that a merge sort algorithm in the worst case takes 30 seconds for an input of size 64.\r\nWhich of the following most closely approximates the maximum input size of a problem that can\r\nbe solved in 6 minutes?', '256', '512', '1024', '2048', 'b', 'ayushaditya101@gmail.com'),
(21, 'Which one of the following is the recurrence equation for the worst case time complexity of\r\nthe Quick sort algorithm for sorting n(&#8805; 2) numbers? In the recurrence equations given in the\r\noptions below, c is a constant.', 'T(n) = 2T (n/2) + cn', 'T(n) = T(n -1) + T(0) + cn', 'T(n) = 2T (n - 2) + cn', 'T(n) = T(n/2) + cn', 'b', 'ayushaditya101@gmail.com'),
(22, 'Randomized quicksort is an extension of quicksort where the pivot is chosen randomly. What\r\nis the worst case complexity of sorting n numbers using randomized quicksort?', 'O(n)', 'O(n^2)', 'O(nlogn)', 'O(n!)', 'c', 'ayushaditya101@gmail.com'),
(23, 'You have an array of n elements. Suppose you implement quicksort by always choosing the\r\ncentral element of the array as the pivot. Then the tightest upper bound for the worst case\r\nperformance is ?', 'O(n2)', 'O(nLogn)', 'Theta(nLogn)', 'O(n3)', 'a', 'ayushaditya101@gmail.com'),
(24, 'Given an array where numbers are in range from 1 to n6, which sorting algorithm can be used\r\nto sort these number in linear time?', 'Not possible to sort in linear time', 'Radix sort', 'Counting sort', 'Quick sort', 'b', 'ayushaditya101@gmail.com'),
(25, 'Which of the following is true about merge sort?', 'Merge sort works better than quick sort if data is accessed from slow sequential memory', 'Merge Sort is stable sort by nature', 'Merge sort outperforms heap sort in most of the practical situations', 'All of the above', 'd', 'ayushaditya101@gmail.com'),
(26, 'If the number of records to be sorted is small, then ...... sorting can be efficient.', 'Merge sort', 'Heap sort', 'Insertion sort', 'Bubble sort', 'c', 'ayushaditya101@gmail.com'),
(27, '.......... is putting an element in the appropriate place in a sorted list yields a larger sorted\r\norder list.', 'Insertion', 'Extraction', 'Selection', 'Distribution', 'a', 'ayushaditya101@gmail.com'),
(28, 'Which of the following sorting algorithm is of priority queue sorting type?', 'Bubble sort', 'Insertion sort', 'Merge sort', 'Selection sort', 'd', 'ayushaditya101@gmail.com'),
(29, 'Which of the following is an external sorting?', 'Insertion sort', 'Bubble sort', 'Merge sort', 'Selection sort', 'c', 'ayushaditya101@gmail.com'),
(30, 'Very slow way of sorting is?', 'Insertion sort', 'Heap sort', 'Bubble sort', 'Quick sort', 'c', 'ayushaditya101@gmail.com'),
(31, 'The concept of order (Big O) is important because?', 'it can be used to decide the best algorithm that solves a given problem', 'it determines the maximum size of a problem that can be solved in a given system, in a given amount of time q', 'it is the lower bound of the growth rate of the algorithm', 'Both a and b', 'd', 'ayushaditya101@gmail.com'),
(32, 'Full form of IP ?', 'Important person', 'Internet Protocol', 'Intellectual property', 'none of the above', 'b', 'ayushaditya101@gmail.com');
