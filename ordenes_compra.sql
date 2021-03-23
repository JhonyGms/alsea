-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2021 a las 17:11:01
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ordenes_compra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `id` int(11) NOT NULL,
  `NombreComprador` varchar(400) DEFAULT NULL,
  `DocumentoComprador` varchar(400) DEFAULT NULL,
  `TelefonoComprador` varchar(400) DEFAULT NULL,
  `CorreoComprador` varchar(400) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_de_compra`
--

CREATE TABLE `orden_de_compra` (
  `id` int(11) NOT NULL,
  `Vendedor` varchar(200) DEFAULT NULL,
  `NombreComprador` varchar(200) DEFAULT NULL,
  `DocumentoComprador` varchar(200) DEFAULT NULL,
  `TelefonoComprador` varchar(200) DEFAULT NULL,
  `CorreoComprador` varchar(200) DEFAULT NULL,
  `Direccionuno` varchar(200) DEFAULT NULL,
  `Direcciondos` varchar(200) DEFAULT NULL,
  `Direccionadicional` varchar(200) DEFAULT NULL,
  `Pais` varchar(200) DEFAULT NULL,
  `Autorizado` varchar(200) DEFAULT NULL,
  `Observaciones` varchar(2000) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orden_de_compra`
--

INSERT INTO `orden_de_compra` (`id`, `Vendedor`, `NombreComprador`, `DocumentoComprador`, `TelefonoComprador`, `CorreoComprador`, `Direccionuno`, `Direcciondos`, `Direccionadicional`, `Pais`, `Autorizado`, `Observaciones`, `fecha`) VALUES
(1, 'Juan Perez', 'Carlos lordan', '1022337200', '3222224234', 'jhonatan@dfggdfg.co', 'carrera 32 #17-215', 'asd', 'Conj malva Torre 5 Apto 4018', 'Colombia', 'David Orduña', 'Ninguna', '2021-03-23 15:46:56'),
(2, 'Ricardo', 'Pera', '12323123', '123123123', 'jhonatan@gmail.com', 'asdasdasd', 'adsdad', 'dads', 'colom', 'jhon', '123123', '2021-03-23 15:53:57'),
(3, 'giraldo', 'jorge', '12312313', '123123123', 'correo@hotma.co', 'asdasdasd', 'asddad', 'asdad', 'peru', 'carlos', 'asdasdasdasd', '2021-03-23 16:09:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(400) DEFAULT NULL,
  `correo` varchar(400) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprador`
--
ALTER TABLE `comprador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
