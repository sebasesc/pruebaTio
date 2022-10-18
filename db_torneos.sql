-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 02:21:06
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
  `foto` longblob NOT NULL,
  `arbitro` varchar(100) NOT NULL,
  `asociacion` varchar(80) NOT NULL,
  `region` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arbitros`
--

INSERT INTO `arbitros` (`id`, `foto`, `arbitro`, `asociacion`, `region`) VALUES
(23, '', 'caetano', 'nuevo', 'tandil'),
(24, '', 'Antonela Morales', 'Asociacion Marplatense', 'Bonaerense'),
(25, '', 'Catalina Zaninovich', 'Asociacion Bahiense', 'Bonaerense'),
(26, '', 'Moira Cuenca', 'Asociacion Pampeana', 'Pampeana'),
(27, '', 'Mariana Soto', 'Rio Negro', 'Patagonica'),
(28, '', 'Estefania Gonzalez Mons', 'Austral', 'Patagonica'),
(29, '', 'Dolores Sanchez', 'Asociacion Hockey de Buenos Aires', 'Metropolitana'),
(30, '', 'Florencia Gomez', 'Asociacion Hockey de Buenos Aires', 'Metropolitana'),
(33, '', 'Claudio Alcaza', 'Federacion Tandilense', 'Bonaerense'),
(34, '', 'Juan Pablo Dabrowski', 'Neuquen', 'Patagonica'),
(35, '', 'Cristian Baigorria', 'Asociacion Marplatense', 'Bonaerense'),
(36, '', 'Ezequiel Valusek', 'Asociacion del Centro', 'Bonaerense'),
(37, '', 'Cecilia Gomez', 'Federacion de Santiago del Estero', 'NOA'),
(38, '', 'Gisele Gonzalez', 'Asociacion de Litoral', 'NEA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `logo` tinyblob NOT NULL,
  `equipo` varchar(100) NOT NULL,
  `asociacion` varchar(80) NOT NULL,
  `region` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `logo`, `equipo`, `asociacion`, `region`) VALUES
(8, '', 'Bahia Blanca', 'Asociacion Bahiense', 'Bonaerense'),
(9, '', 'Tandil', 'Federacion Tandilense', 'Bonaerense'),
(10, '', 'Mar del Plata', 'Asociacion Marplatense', 'Bonaerense'),
(11, '', 'Austral', 'Austral', 'Patagonica'),
(16, '', 'Uruguay', 'Federacion Uruguaya de Hockey', 'Otra'),
(17, '', 'Sudoeste', 'Asociacion Sudoeste', 'Bonaerense'),
(19, '', 'AHO', 'Asociación del Oeste de Bs.As.', 'Bonaerense'),
(20, '', 'Noroeste', 'Asociación Noroeste', 'Pampeana'),
(24, '', 'Catamarca', 'Federacion Catamarqueña de Hockey', 'Otra'),
(25, '', 'Tres Arroyos', 'Asociación Regional Tresarroyense de Hockey Sobre Cesped', 'Bonaerense'),
(27, '', 'Santa Fe', 'Asociacion Santafesina', 'NEA'),
(28, '', 'Entre Rios', 'Federacion Entrerriana', 'NEA'),
(29, '', 'Rio Uruguay', 'Asociacion del Hockey de Rio Uruguay', 'NEA'),
(30, '', 'Federacion de hockey del Oeste', 'Federacion de Hockey del Oeste', 'NEA'),
(31, '', 'Santiago del Estero', 'Federacion de Santiago del Estero', 'NOA'),
(32, '', 'La Rioja', 'Asociación Riojana', 'NOA'),
(33, '', 'Corrientes', 'Asociacion Correntina', 'NEA'),
(34, '', 'San Luis', 'Federación Sanluiseña', 'Centro y Cuyo'),
(35, '', 'Chaco', 'Federacion Chaqueña', 'NEA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '$2a$12$P5nSystZwOAietrgsVrCF.sEbPCHG/EyFUujmoxGDyxjJPgy8DNnO'),
(2, 'martinescribabab@gmail.com', '$2a$12$8V95Q/p.cx8i8k8coS877.vHzDMa2YnGw.Fnm/ANsRkMFgYFF9WZm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asociacion` (`asociacion`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
