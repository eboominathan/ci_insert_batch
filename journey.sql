-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2015 at 10:05 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `journey`
--

CREATE TABLE IF NOT EXISTS `journey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `passenger` tinyint(4) NOT NULL,
  `from_` varchar(255) NOT NULL,
  `to_` varchar(255) NOT NULL,
  `ticket` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `journey`
--

INSERT INTO `journey` (`id`, `date`, `type`, `passenger`, `from_`, `to_`, `ticket`, `amount`) VALUES
(1, '2015-07-22', 'train', 22, 'mumabi', 'as', '45SDE', 1200),
(2, '2015-07-22', 'train', 22, 'mumbai', 'jwb', '45SDE', 1200),
(3, '2015-07-21', 'air', 5, 'mumabi', 'JWB', '4585', 8000),
(4, '2015-07-07', 'train', 22, 'mumabi', 'GOA', '4585', 1500);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
