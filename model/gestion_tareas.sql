-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2019 a las 00:20:36
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_tareas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `abrev` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`, `abrev`) VALUES
(1, 'Masculino', 'M'),
(2, 'Femenino', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_publicacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` int(11) NOT NULL,
  `responsable` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_tarea` int(11) NOT NULL,
  `fecha_recordatorio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `descripcion`, `fecha_publicacion`, `usuario`, `responsable`, `tipo_tarea`, `fecha_recordatorio`) VALUES
(1, 'Preparar clases', '2018-11-06 16:09:24', 1, 'ie catagul', 1, '2018-11-06'),
(2, 'proyecto universidad', '2018-11-06 16:09:24', 2, 'lllll', 2, '2018-11-08'),
(3, 'proyecto web oasis', '2018-11-06 16:11:22', 1, 'Gabriel', 1, '2018-11-06'),
(4, 'examen parcial', '2018-11-06 16:11:22', 2, 'dfdfd', 3, '2018-11-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_documento`
--

CREATE TABLE `tipos_documento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `abrev` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_documento`
--

INSERT INTO `tipos_documento` (`id`, `nombre`, `abrev`) VALUES
(1, 'Cédula de ciudadanía', 'CC'),
(2, 'Tarjeta de identidad', 'TI'),
(3, 'Pasaporta', 'PAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tareas`
--

CREATE TABLE `tipo_tareas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_tareas`
--

INSERT INTO `tipo_tareas` (`id`, `nombre`) VALUES
(1, 'informe'),
(2, 'capacitacion'),
(3, 'reunion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `genero` int(11) DEFAULT '1',
  `tipo_documento` int(11) NOT NULL DEFAULT '1',
  `num_documento` bigint(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `nom_usuario` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varbinary(32) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `genero`, `tipo_documento`, `num_documento`, `fecha_nac`, `nom_usuario`, `contrasena`, `email`) VALUES
(1, 'Andres', 'COronado', 1, 1, 10364565, '2018-10-16', 'andrescb', 0x6233393537323333646435323934636266343764393566623366353834323339, 'gabrielcb_007@gmail.com'),
(2, 'Rodolfo', 'Angulo', 1, 1, 15545454, '2018-10-30', 'rodolfo.an', 0x6531306164633339343962613539616262653536653035376632306638383365, 'gabrielcb_007@gmail.com'),
(3, 'rodolfo', 'angulo a', NULL, 1, 1067950601, '0000-00-00', 'rodo.a', 0x6438353738656466383435386365303666626335626237366135386335636134, 'raab19969@gmail.com'),
(4, 'alvaresalvaresalvaresalvaresalvaresalvar', 'alvaresalvaresalvaresalvaresalvaresalvar', 1, 1, 1076154231, '2013-12-12', '#$%&/()', 0x3230326362393632616335393037356239363462303731353264323334623730, 'aaaa@aaaa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_documento`
--
ALTER TABLE `tipos_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_tareas`
--
ALTER TABLE `tipo_tareas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num_documento` (`num_documento`),
  ADD UNIQUE KEY `nom_usuario` (`nom_usuario`),
  ADD KEY `genero` (`genero`),
  ADD KEY `tipo_documento` (`tipo_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_tareas`
--
ALTER TABLE `tipo_tareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`tipo_documento`) REFERENCES `tipos_documento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
