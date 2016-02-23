-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2016 at 04:53 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_vcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_member`
--

CREATE TABLE IF NOT EXISTS `tabel_member` (
  `ID_MEMBER` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_MEMBER` varchar(100) DEFAULT NULL,
  `ALAMAT_MEMBER` varchar(200) DEFAULT NULL,
  `EMAIL_MEMBER` varchar(100) DEFAULT NULL,
  `TELEPON_MEMBER` varchar(20) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_MEMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_merchant`
--

CREATE TABLE IF NOT EXISTS `tabel_merchant` (
  `ID_MERCHANT` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA__MERCHANT` varchar(50) DEFAULT NULL,
  `ALAMAT_MERCHANT` varchar(200) DEFAULT NULL,
  `TELEPON_MERCHANT` varchar(20) DEFAULT NULL,
  `DESKRIPSI_MERCHANT` varchar(500) DEFAULT NULL,
  `LATITUDE` double NOT NULL,
  `LONGITUDE` double NOT NULL,
  PRIMARY KEY (`ID_MERCHANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_news`
--

CREATE TABLE IF NOT EXISTS `tabel_news` (
  `ID_NEWS` int(11) NOT NULL AUTO_INCREMENT,
  `JUDUL` varchar(50) DEFAULT NULL,
  `ISI` varchar(200) DEFAULT NULL,
  `FOTO` varchar(20) DEFAULT NULL,
  `ID_MERCHANT` int(11) NOT NULL,
  PRIMARY KEY (`ID_NEWS`),
  KEY `fk_news_m` (`ID_MERCHANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk_diskon`
--

CREATE TABLE IF NOT EXISTS `tabel_produk_diskon` (
  `ID_PRODUK` int(11) NOT NULL AUTO_INCREMENT,
  `JENIS` varchar(100) DEFAULT NULL,
  `HARGA_DISKON` int(30) DEFAULT NULL,
  `HARGA_DELIVERY` int(30) DEFAULT NULL,
  `STATUS` varchar(75) DEFAULT NULL,
  `FOTO_PRODUK` varchar(100) DEFAULT NULL,
  `ID_MERCHANT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUK`),
  KEY `fk_diskon_m` (`ID_MERCHANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_news`
--
ALTER TABLE `tabel_news`
  ADD CONSTRAINT `fk_news_m` FOREIGN KEY (`ID_MERCHANT`) REFERENCES `tabel_merchant` (`ID_MERCHANT`);

--
-- Constraints for table `tabel_produk_diskon`
--
ALTER TABLE `tabel_produk_diskon`
  ADD CONSTRAINT `fk_diskon_m` FOREIGN KEY (`ID_MERCHANT`) REFERENCES `tabel_merchant` (`ID_MERCHANT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
