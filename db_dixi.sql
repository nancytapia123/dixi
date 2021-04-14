-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-04-2021 a las 17:55:54
-- Versión del servidor: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_dixi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL COMMENT '{"name":"Id"}',
  `alumno` varchar(255) DEFAULT NULL COMMENT '{"name":"Mocoso"}',
  `telefono` varchar(255) DEFAULT NULL COMMENT '{"name":"Teléfono"}',
  `grupo_id` int(11) DEFAULT NULL COMMENT '{"name":"Grupo"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='{"structure":{"name":"Alumno","img":true,"pdf":false,"files":{"nf":0},"return":["alumno"],"views":{"ADD":[],"EDIT":[],"DETAIL":[],"FAST":[],"REPORT":[]}}}';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conf_field`
--

CREATE TABLE `conf_field` (
  `id` int(11) NOT NULL,
  `conf_field` varchar(255) DEFAULT NULL,
  `conf_field_new` varchar(255) DEFAULT NULL,
  `conf_table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conf_field`
--

INSERT INTO `conf_field` (`id`, `conf_field`, `conf_field_new`, `conf_table_id`) VALUES
(1, 'id', 'Id', 3),
(2, 'rol', 'Rol', 3),
(3, 'id', 'Id', 4),
(4, 'status', 'Status', 4),
(5, 'id', 'Id', 5),
(6, 'name', 'Nombre', 5),
(7, 'email', 'Email', 5),
(8, 'user', 'User', 5),
(9, 'password', 'Password', 5),
(10, 'rol_id', 'Rol', 5),
(11, 'status_id', 'Status', 5),
(12, 'id', 'Id', 6),
(13, 'alumno', 'Mocoso', 6),
(14, 'telefono', 'Teléfono', 6),
(15, 'id', 'Id', 7),
(16, 'grupo', 'Grupo', 7),
(17, 'grupo_id', 'Grupo', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conf_table`
--

CREATE TABLE `conf_table` (
  `id` int(11) NOT NULL,
  `conf_table` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `files` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conf_table`
--

INSERT INTO `conf_table` (`id`, `conf_table`, `name`, `img`, `pdf`, `files`) VALUES
(3, 'rol', 'Rol', NULL, NULL, NULL),
(4, 'status', 'Status', NULL, NULL, NULL),
(5, 'user', 'Usuarios', 1, NULL, NULL),
(6, 'alumno', 'Alumno', 1, NULL, NULL),
(7, 'grupo', 'Grupo', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conf_type_view`
--

CREATE TABLE `conf_type_view` (
  `id` int(11) NOT NULL,
  `conf_type_view` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conf_type_view`
--

INSERT INTO `conf_type_view` (`id`, `conf_type_view`) VALUES
(1, 'ADD'),
(2, 'EDIT'),
(3, 'DETAIL'),
(4, 'FAST'),
(5, 'REPORT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conf_view`
--

CREATE TABLE `conf_view` (
  `id` int(11) NOT NULL,
  `conf_table_id` int(11) NOT NULL,
  `conf_type_view_id` int(11) NOT NULL,
  `conf_field_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conf_view`
--

INSERT INTO `conf_view` (`id`, `conf_table_id`, `conf_type_view_id`, `conf_field_id`, `order`) VALUES
(18, 5, 5, 6, 0),
(19, 5, 5, 7, 0),
(20, 5, 5, 8, 0),
(22, 5, 5, 10, 0),
(23, 5, 5, 11, 0),
(26, 5, 1, 6, 0),
(27, 5, 1, 7, 0),
(28, 5, 1, 8, 0),
(29, 5, 1, 9, 0),
(30, 5, 1, 10, 0),
(31, 7, 1, 16, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL,
  `grupo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `grupo`) VALUES
(1, 'Grupo A.'),
(2, 'Grupo B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol` varchar(255) DEFAULT NULL COMMENT '{"name":"Rol"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `rol`) VALUES
(10, 'Administrador'),
(11, 'Supervisor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '{"name":"Estatus"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '{"name":"Nombre"}',
  `email` varchar(45) DEFAULT NULL COMMENT '{"name":"Correo"}',
  `user` varchar(45) DEFAULT NULL COMMENT '{"name":"Usuario"}',
  `password` varchar(45) DEFAULT NULL COMMENT '{"name":"Clave"}',
  `rol_id` int(11) NOT NULL COMMENT '{"name":"Rol"}',
  `status_id` int(11) NOT NULL COMMENT '{"name":"Estatus"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='{"structure": {"img": "true"}}';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_alumno_grupo1_idx` (`grupo_id`);

--
-- Indices de la tabla `conf_field`
--
ALTER TABLE `conf_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conf_field_conf_table1_idx` (`conf_table_id`);

--
-- Indices de la tabla `conf_table`
--
ALTER TABLE `conf_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conf_type_view`
--
ALTER TABLE `conf_type_view`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conf_view`
--
ALTER TABLE `conf_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conf_view_conf_table1_idx` (`conf_table_id`),
  ADD KEY `fk_conf_view_conf_type_view1_idx` (`conf_type_view_id`),
  ADD KEY `fk_conf_view_conf_field1_idx` (`conf_field_id`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_rol_idx` (`rol_id`),
  ADD KEY `fk_user_status1_idx` (`status_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conf_field`
--
ALTER TABLE `conf_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `conf_table`
--
ALTER TABLE `conf_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `conf_type_view`
--
ALTER TABLE `conf_type_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `conf_view`
--
ALTER TABLE `conf_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_alumno_grupo1` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `conf_field`
--
ALTER TABLE `conf_field`
  ADD CONSTRAINT `fk_conf_field_conf_table1` FOREIGN KEY (`conf_table_id`) REFERENCES `conf_table` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `conf_view`
--
ALTER TABLE `conf_view`
  ADD CONSTRAINT `fk_conf_view_conf_field1` FOREIGN KEY (`conf_field_id`) REFERENCES `conf_field` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_conf_view_conf_table1` FOREIGN KEY (`conf_table_id`) REFERENCES `conf_table` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_conf_view_conf_type_view1` FOREIGN KEY (`conf_type_view_id`) REFERENCES `conf_type_view` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
