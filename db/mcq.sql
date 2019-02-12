-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 06:49 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('abcd@gmail.com', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5c5f2907c2adc', '5c5f2907e2567'),
('5c5f29082e004', '5c5f290834021'),
('5c5f290878a44', '5c5f290892403'),
('5c5f34e47a2ba', '5c5f34e4998ad'),
('5c5f34e54334f', '5c5f34e56af66'),
('5c5f34e621d85', '5c5f34e63ad9f'),
('5c5f365add79d', '5c5f365b13392'),
('5c5f365b5cae6', '5c5f365b68216'),
('5c5f365c4c743', '5c5f365c6ecea'),
('5c5f9e0fe76d1', '5c5f9e10094a7'),
('5c5f9e109e028', '5c5f9e10a971c'),
('5c5f9e10de5d2', '5c5f9e10e8acf'),
('5c5f9e8198cb0', '5c5f9e81b434d'),
('5c5f9e8234968', '5c5f9e8240096'),
('5c5f9e82adee5', '5c5f9e82b965d');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('test@gmail.com', '5c5f9d86f08c5', 12, 3, 3, 0, '2019-02-10 03:58:10'),
('test@gmail.com', '5c5f9e331b982', 7, 3, 2, 1, '2019-02-10 03:58:26'),
('ap@gmail.com', '5c5f9e331b982', 7, 3, 2, 1, '2019-02-10 06:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5c5f9e0fe76d1', 'w', '5c5f9e100949a'),
('5c5f9e0fe76d1', 'w', '5c5f9e10094a3'),
('5c5f9e0fe76d1', 'c', '5c5f9e10094a7'),
('5c5f9e0fe76d1', 'w', '5c5f9e10094ab'),
('5c5f9e109e028', 'w', '5c5f9e10a970e'),
('5c5f9e109e028', 'w', '5c5f9e10a9717'),
('5c5f9e109e028', 'w', '5c5f9e10a9719'),
('5c5f9e109e028', 'c', '5c5f9e10a971c'),
('5c5f9e10de5d2', 'c', '5c5f9e10e8acf'),
('5c5f9e10de5d2', 'w', '5c5f9e10e8ad7'),
('5c5f9e10de5d2', 'w', '5c5f9e10e8ad9'),
('5c5f9e10de5d2', 'w', '5c5f9e10e8adb'),
('5c5f9e8198cb0', 'c', '5c5f9e81b434d'),
('5c5f9e8198cb0', 'w', '5c5f9e81b4353'),
('5c5f9e8198cb0', 'w', '5c5f9e81b4355'),
('5c5f9e8198cb0', 'w', '5c5f9e81b4357'),
('5c5f9e8234968', 'w', '5c5f9e8240085'),
('5c5f9e8234968', 'w', '5c5f9e8240093'),
('5c5f9e8234968', 'c', '5c5f9e8240096'),
('5c5f9e8234968', 'w', '5c5f9e8240098'),
('5c5f9e82adee5', 'w', '5c5f9e82b9657'),
('5c5f9e82adee5', 'c', '5c5f9e82b965d'),
('5c5f9e82adee5', 'w', '5c5f9e82b965f'),
('5c5f9e82adee5', 'w', '5c5f9e82b9661');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5c5f9d86f08c5', '5c5f9e0fe76d1', 'question 1 question 1 question 1 question 1 question 1', 4, 1),
('5c5f9d86f08c5', '5c5f9e109e028', 'question 2 question 2 question 2 question 2 question 2', 4, 2),
('5c5f9d86f08c5', '5c5f9e10de5d2', 'question 3 question 3 question 3 question 3', 4, 3),
('5c5f9e331b982', '5c5f9e8198cb0', 'question question question question  question ', 4, 1),
('5c5f9e331b982', '5c5f9e8234968', 'question question question  question ', 4, 2),
('5c5f9e331b982', '5c5f9e82adee5', 'question  question  question  question question ', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5c5f9d86f08c5', 'Test_quiz', 4, 1, 3, 5, '', '', '2019-02-10 03:41:58'),
('5c5f9e331b982', 'Test_quiz 2', 4, 1, 3, 5, '', '', '2019-02-10 03:44:51'),
('5c62f8130f13d', '565', 5, 5, 3, 5, '', '', '2019-02-12 16:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('test@gmail.com', 19, '2019-02-10 03:58:27'),
('ap@gmail.com', 7, '2019-02-10 06:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Ap', '', '', 'ap@gmail.com', 0, '74b87337454200d4d33f80c4663dc5e5'),
('Test', 'M', 'thapar', 'test@gmail.com', 9898989898, 'fcea920f7412b5da7be0cf42b8c93759'),
('Mayank', 'M', 'thapar', 'xyz@gmail.com', 22222222, '594f803b380a41396ed63dca39503542');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
