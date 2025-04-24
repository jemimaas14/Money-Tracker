-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2024 at 01:03 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moneytracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `limit` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `visible`, `limit`) VALUES
(1, 'Food', 1, 100000),
(2, 'Transport', 1, 100000),
(3, 'Entertainment', 1, 100000),
(4, 'Utilities', 1, 100000),
(5, 'Groceries', 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `date`, `amount`, `description`, `category_id`) VALUES
(11, '2024-12-10', 123, 'indomaret', 5),
(5, '2024-12-13', 1000, 'Makan nasi', 1),
(7, '2024-12-06', 8786, 'test', 4),
(8, '2024-12-14', 456, 'Beli buat terima tamu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'nathan', 'scrypt:32768:8:1$BTXV2V1zqNMEQPGI$c13f5a7e9ffc572261c4a38ef4383909623b751aa61abcd07621699a73fb519c07ad8729a4b3265b25dd565d843555fe0d5af266dc8e1589db4235f7f2863416'),
(8, 'Leo', 'scrypt:32768:8:1$lptgmMRsNyVzydIC$7f417260459b0b322ac3a088317e2f85556c1f548df35192558774989371f640567b7a16b7d58950a7e3956689ddff0b55f8db6a90b838b098e6bde009ab5a90'),
(9, 'Alithia', 'scrypt:32768:8:1$EeWRfelXa0kQClaY$e4b57e706eedef6bcb60cdd8f1fe304cdc76007cc57d936a38dff52b8bf8b48eed1067f8417ef26ae416cdbb4535f6fff997d53a101f715a0787f2c219dc3990');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
