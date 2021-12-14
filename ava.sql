-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2021 a las 22:08:44
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ava`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda_digital`
--

CREATE TABLE `agenda_digital` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `agenda_digital`
--

INSERT INTO `agenda_digital` (`id`, `titulo`, `descripcion`, `creado_en`) VALUES
(40, 'Proyecto', '30 de noviembre presentacion.', '2021-11-30 19:43:15'),
(43, 'cumpleaños', 'b', '2021-12-09 18:30:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `clave`) VALUES
(12, 'alexis', 'alexis@gmail.com', '$2y$10$Pp5dREhxCeD7OEqMLeOq1.xXbFEj/wJi8PrKldkdcjq.BE5Ptpk/C'),
(22, 'ava', 'ava@gmail.com', '$2y$10$Kh.Tmq3j7ymhGnG2fcBkvuZuhA5YvrgCoFErJ4V0ZQuOujvN6I8Ny'),
(23, 'carlos', 'carlos@gmail.com', '$2y$10$H9h08M4bu1tTfCKz4vroSujk6DW5NEZosjrt38rvKFdeSWWQGuSW.'),
(24, 'rosa', 'rosa@gmail.com', '$2y$10$VRMkrGczq0eohy2EEozmAeECZkIPo7OECePB4KqoJZmPag.E/ms3u');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda_digital`
--
ALTER TABLE `agenda_digital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda_digital`
--
ALTER TABLE `agenda_digital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
