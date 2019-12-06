-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Grd 05 d. 07:12
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
-- Database: `nuolaidos`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pastai`
--

CREATE TABLE `pastai` (
  `Vardas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Pastas` text COLLATE utf8_lithuanian_ci NOT NULL,
  `Kodas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `pastai`
--

INSERT INTO `pastai` (`Vardas`, `Pastas`, `Kodas`) VALUES
('Linas', 'linas.se7227@go.kauko.lt', 16546),
('Orestas', 'orestas.da7302@go.kauko.lt', 54599),
('Pepe', 'pepe.does.test@gmail.com', 48966),
('Loxas', 'loxas@erroras.ru', 63882),
('Randis', 'randis@randomas.rr', 16077),
('Alfonsas', 'sucks@at.life', 48688);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
