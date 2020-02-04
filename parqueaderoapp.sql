-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2020 a las 00:54:47
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueaderoapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(6) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `latitud` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `longitud` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `num_espacios` int(50) NOT NULL,
  `fraccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(50) NOT NULL,
  `descuento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `direccion`, `latitud`, `longitud`, `num_espacios`, `fraccion`, `precio`, `descuento`) VALUES
(1, 'Parque empresa', 'loja parque bolivar ', '50.26', '40.36', 10, '0.50', 1, 10),
(2, 'parking loja', 'loja parque bolivar ', '50', '40.36', 10, '0.50', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacioparkin`
--

CREATE TABLE `espacioparkin` (
  `idEspacio` int(10) NOT NULL,
  `idEmpresa` int(10) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `cubierto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `IdPago` int(10) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `idEmpresa` int(10) NOT NULL,
  `idTarjeta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(10) NOT NULL,
  `idEmpresa` int(10) NOT NULL,
  `idTarjeta` int(10) NOT NULL,
  `horaInicio` date NOT NULL,
  `tiempo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciosadicionales`
--

CREATE TABLE `serviciosadicionales` (
  `idServicioA` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(10) NOT NULL,
  `descuento` int(10) NOT NULL,
  `idEmpresa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `IdTarjeta` int(10) NOT NULL,
  `Saldo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(10) NOT NULL,
  `Ip` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `IdTarjeta` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espacioparkin`
--
ALTER TABLE `espacioparkin`
  ADD PRIMARY KEY (`idEspacio`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`IdPago`),
  ADD KEY `idEmpresa` (`idEmpresa`),
  ADD KEY `idTarjeta` (`idTarjeta`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idEmpresa` (`idEmpresa`),
  ADD KEY `idTarjeta` (`idTarjeta`),
  ADD KEY `idEmpresa_2` (`idEmpresa`),
  ADD KEY `idTarjeta_2` (`idTarjeta`);

--
-- Indices de la tabla `serviciosadicionales`
--
ALTER TABLE `serviciosadicionales`
  ADD PRIMARY KEY (`idServicioA`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`IdTarjeta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `IdTarjeta` (`IdTarjeta`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `espacioparkin`
--
ALTER TABLE `espacioparkin`
  ADD CONSTRAINT `espacioparkin_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pago_ibfk_2` FOREIGN KEY (`idTarjeta`) REFERENCES `tarjeta` (`IdTarjeta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idTarjeta`) REFERENCES `tarjeta` (`IdTarjeta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `serviciosadicionales`
--
ALTER TABLE `serviciosadicionales`
  ADD CONSTRAINT `serviciosadicionales_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IdTarjeta`) REFERENCES `tarjeta` (`IdTarjeta`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
