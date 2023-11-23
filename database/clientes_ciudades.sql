-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2023 a las 05:24:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clientes_ciudades`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `pa_cantidad_clientes_provincias` (IN `ciudad` VARCHAR(20))   BEGIN
select cli.nombre, cli.ciudad, ciu.ciudad from clientes as cli join ciudades as ciu on ciu.id = cli.ciudad
	where ciu.ciudad = ciudad;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` int(11) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `ciudad`) VALUES
(1, 'Casal de Cambra'),
(2, 'Sangesi'),
(3, 'Kafr Thulth'),
(4, 'Jiangluo'),
(5, 'Forssa'),
(6, 'Żyraków'),
(7, 'Zambrów'),
(8, 'Tyshkivka'),
(9, 'Sobo'),
(10, 'Albacete'),
(11, 'Bang Yai'),
(12, 'Melaka'),
(13, 'Heka'),
(14, 'Matiao'),
(15, 'Sai’erlong Xiang'),
(16, 'Saint-Maixent-l\'École'),
(17, 'Rato'),
(18, 'Tushi'),
(19, 'Norman Wells'),
(20, 'Xiaojin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `ciudad` int(11) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `ciudad`, `genero`) VALUES
(1, 'Elvira', 'Brister', 1, 'Female'),
(2, 'Reynold', 'Greatbanks', 1, 'Male'),
(3, 'Sadye', 'Plait', 2, 'Female'),
(4, 'Ailina', 'Reinert', 2, 'Female'),
(5, 'Evanne', 'Henrion', 3, 'Female'),
(6, 'Lyn', 'Rodenburgh', 1, 'Male'),
(7, 'Rosina', 'Trevers', 5, 'Female'),
(8, 'Normie', 'McCambridge', 10, 'Male'),
(9, 'Corette', 'Yakov', 3, 'Genderfluid'),
(10, 'Frederico', 'Beckett', 11, 'Male'),
(11, 'Maritsa', 'Joris', 11, 'Female'),
(12, 'Dione', 'Dunstan', 4, 'Female'),
(13, 'Pietra', 'Cavil', 3, 'Female'),
(14, 'Angelique', 'Hambelton', 4, 'Female'),
(15, 'Romeo', 'Maidens', 12, 'Male'),
(16, 'Gill', 'Stubbe', 6, 'Female'),
(17, 'Lorrin', 'Stanier', 7, 'Female'),
(18, 'Callean', 'Castagne', 8, 'Male'),
(19, 'Katinka', 'Meachem', 10, 'Female'),
(20, 'Haydon', 'Rosas', 10, 'Agender');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
