-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- โฮสต์: 127.0.0.1
-- เวลาในการสร้าง: 
-- เวอร์ชั่นของเซิร์ฟเวอร์: 5.5.32
-- รุ่นของ PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- ฐานข้อมูล: `mamadb`
--
CREATE DATABASE IF NOT EXISTS `mamadb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mamadb`;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `ingid` int(11) NOT NULL AUTO_INCREMENT,
  `ingname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ingid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `market`
--

CREATE TABLE IF NOT EXISTS `market` (
  `marid` int(11) NOT NULL AUTO_INCREMENT,
  `marname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maraddr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`marid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `quantity`
--

CREATE TABLE IF NOT EXISTS `quantity` (
  `rid` int(11) NOT NULL,
  `ingid` int(11) NOT NULL,
  `unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
  `rid` int(11) NOT NULL,
  `rname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtype` int(11) NOT NULL,
  `rhow` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `sell`
--

CREATE TABLE IF NOT EXISTS `sell` (
  `ingid` int(11) NOT NULL,
  `marid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `udisplay` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uavatar` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
