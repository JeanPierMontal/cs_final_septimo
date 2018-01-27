-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2018 a las 14:20:38
-- Versión del servidor: 10.1.24-MariaDB
-- Versión de PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cs_final_septimo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(11) NOT NULL,
  `nombre_cat` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_cat`, `nombre_cat`) VALUES
(1, 'Lacteos'),
(2, 'Genial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cli` int(11) NOT NULL,
  `identificacion_cli` varchar(50) COLLATE utf8_bin NOT NULL,
  `nom_cli` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellido_cli` varchar(50) COLLATE utf8_bin NOT NULL,
  `direc_cli` varchar(50) COLLATE utf8_bin NOT NULL,
  `tele_cli` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cli`, `identificacion_cli`, `nom_cli`, `apellido_cli`, `direc_cli`, `tele_cli`) VALUES
(1, '0928344423', 'EDDY', 'MONTALVAN', 'COOP. LAS PALMAS', '0985362765'),
(2, '1724909880', 'DAVID', 'TIGUA', 'SANTO DOMINGO', '0999564392');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `total_dedalle` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `ruc_fac` varchar(13) COLLATE utf8_bin DEFAULT NULL,
  `sub12_fac` double DEFAULT NULL,
  `fecha_fac` date NOT NULL,
  `sub0_fac` double DEFAULT NULL,
  `descuento_fac` double DEFAULT NULL,
  `subt_fac` double NOT NULL,
  `iva_fac` double NOT NULL,
  `total_fac` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `id_linea` int(11) NOT NULL,
  `nombre_linea` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`id_linea`, `nombre_linea`) VALUES
(1, 'Linea de aseo'),
(2, 'Linea blanca'),
(3, 'Linea de alimentos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_pro` int(11) NOT NULL,
  `nombre_pro` varchar(50) COLLATE utf8_bin NOT NULL,
  `cantidad_pro` varchar(50) COLLATE utf8_bin NOT NULL,
  `precio_pro` double NOT NULL,
  `id_linea` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_pro`, `nombre_pro`, `cantidad_pro`, `precio_pro`, `id_linea`, `id_cat`) VALUES
(1, 'Queso', '2', 2.25, 3, 1),
(2, 'Leche', '4', 0.8, 3, 1),
(3, 'Definfectante', '20', 0.75, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `nombre_usu` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `contrasena_usu` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `nombre_usu`, `contrasena_usu`) VALUES
(1, 'eddy.montalvan', 'Admin**+19'),
(2, 'david.tigua', 'Admin**+19'),
(3, 'brian.huertas', 'Admin**+19'),
(4, 'geo.torres', 'Admin**+19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id_ven` int(11) NOT NULL,
  `identificacion_ven` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre_ven` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellido_ven` varchar(50) COLLATE utf8_bin NOT NULL,
  `tipo_ven` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id_ven`, `identificacion_ven`, `nombre_ven`, `apellido_ven`, `tipo_ven`) VALUES
(1, '9898989898', 'IPOLITO', 'ZAMBRANO', 'PUNTO DE VENTA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`),
  ADD UNIQUE KEY `id_cat` (`id_cat`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cli`),
  ADD UNIQUE KEY `id_cli` (`id_cli`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD KEY `FK_det_fac-fac` (`id_factura`),
  ADD KEY `FK_det_fac-pro` (`id_producto`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `id_factura` (`id_factura`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`id_linea`),
  ADD UNIQUE KEY `id_linea` (`id_linea`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_pro`),
  ADD UNIQUE KEY `id_pro` (`id_pro`),
  ADD KEY `FK_cat` (`id_cat`),
  ADD KEY `id_linea` (`id_linea`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`),
  ADD UNIQUE KEY `id_usu` (`id_usu`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id_ven`),
  ADD UNIQUE KEY `id_ven` (`id_ven`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `lineas`
--
ALTER TABLE `lineas`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id_ven` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `FK_det_fac-fac` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  ADD CONSTRAINT `FK_det_fac-pro` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_pro`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_cat` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`),
  ADD CONSTRAINT `FK_lin` FOREIGN KEY (`id_linea`) REFERENCES `lineas` (`id_linea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
