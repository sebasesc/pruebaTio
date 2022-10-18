-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2022 a las 02:31:03
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_torneos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitros`
--

CREATE TABLE `arbitros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `asociacion` varchar(80) NOT NULL,
  `region` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arbitros`
--

INSERT INTO `arbitros` (`id`, `nombre`, `asociacion`, `region`) VALUES
(1, 'Martin Escriba', 'Federacion Tandilense', 'Bonaerense'),
(2, 'Diego Barbas', 'Federacion Tandilense', 'Bonaerense'),
(3, 'Nicolas Da Silva', 'Asociacion Marplatense', 'Bonaerense'),
(4, 'Ezequiel Valusek', 'Asociacion del Centro', 'Bonaerense'),
(5, 'Fernando Grill', 'Asociacion Marplatense', 'Bonaerense'),
(6, 'Marcos Ulloa', 'Asociacion Neuquina', 'Patagonica'),
(7, 'Basilio Canale', 'Asociacion Bahiense', 'Bonaerense'),
(8, 'Hernan Del Ruiz', 'Asociacion Bahiense', 'Bonaerense'),
(9, 'Hernan Mendiola', 'Asociacion Marplatense', 'Bonaerense'),
(10, 'Gabriel Labate', 'Asociacion de Hockey de Buenos Aires', 'Metropolitana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `asociacion` varchar(80) NOT NULL,
  `region` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `asociacion`, `region`) VALUES
(1, 'Independiente de Tandil', 'Federacion Tandilense', 'Bonaerense'),
(2, 'Uncas', 'Federacion Tandilense', 'Bonaerense'),
(3, 'Universitario de Bahia Blanca', 'Asociacion Bahiense', 'Bonaerense'),
(4, 'San Martin de 9 de Julio', 'Asociacion del Centro', 'Bonaerense'),
(5, 'Estudiantes de Olavarria', 'Federacion Tandilense', 'Bonaerense'),
(6, 'Nautico', 'Asociacion Marplatense', 'Bonaerense');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
