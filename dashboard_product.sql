-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Set-2017 às 03:00
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dashboard_product`
--

CREATE TABLE `dashboard_product` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `DISCOUNT_PRICE` double(10,0) NOT NULL,
  `LOGIN` varchar(20) COLLATE utf8_bin NOT NULL,
  `UPDATE_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dashboard_product`
--

INSERT INTO `dashboard_product` (`ID`, `NAME`, `PRICE`, `DISCOUNT_PRICE`, `LOGIN`, `UPDATE_DATE`) VALUES
(19, 'Horizon Zero Dawn', '689', 620, 'User1', '2017-08-26'),
(20, 'PS4', '1000', 750, 'User1', '2017-08-28'),
(22, 'Mega Drive', '254', 254, 'User1', '2017-08-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
