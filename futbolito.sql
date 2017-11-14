-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-11-2017 a las 15:42:03
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `futbolito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancha`
--

CREATE TABLE IF NOT EXISTS `cancha` (
  `idCancha` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` int(11) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `idRecinto` int(11) NOT NULL,
  PRIMARY KEY (`idCancha`,`idRecinto`),
  KEY `fk_Cancha_Recinto1_idx` (`idRecinto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competir`
--

CREATE TABLE IF NOT EXISTS `competir` (
  `idTorneo` int(11) NOT NULL,
  `idEquipo` int(11) NOT NULL,
  PRIMARY KEY (`idTorneo`,`idEquipo`),
  KEY `fk_Torneo_has_Equipo_Equipo1_idx` (`idEquipo`),
  KEY `fk_Torneo_has_Equipo_Torneo1_idx` (`idTorneo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `idEquipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `numeroPartidos` int(11) DEFAULT NULL,
  `numeroJugadores` varchar(45) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idEquipo`,`idUsuario`),
  KEY `fk_Equipo_Usuario1_idx` (`idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idEquipo`, `Nombre`, `numeroPartidos`, `numeroJugadores`, `idUsuario`) VALUES
(38, 't43gre', 4, '98', 3),
(40, 'hgsfi', 84, '93', 3),
(41, 'jgfdks', 4, '4', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `Precio` int(11) DEFAULT NULL,
  `Dia` varchar(45) DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL,
  `idRecinto` int(11) NOT NULL,
  PRIMARY KEY (`idHorario`,`idRecinto`),
  KEY `fk_Horario_Recinto1_idx` (`idRecinto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE IF NOT EXISTS `jugador` (
  `idJugador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `idEquipo` int(11) NOT NULL,
  PRIMARY KEY (`idJugador`),
  KEY `fk_Jugador_Equipo1_idx` (`idEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE IF NOT EXISTS `partido` (
  `idPartido` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `golesEquipo1` int(11) DEFAULT NULL,
  `golesEquipo2` int(11) DEFAULT NULL,
  `idEquipo1` int(11) NOT NULL,
  `idEquipo2` int(11) NOT NULL,
  `idCancha` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPartido`),
  KEY `fk_Partido_Equipo1_idx` (`idEquipo1`),
  KEY `fk_Partido_Equipo2_idx` (`idEquipo2`),
  KEY `fk_Partido_Cancha1_idx` (`idCancha`),
  KEY `fk_Partido_Usuario1_idx` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recinto`
--

CREATE TABLE IF NOT EXISTS `recinto` (
  `idRecinto` int(11) NOT NULL AUTO_INCREMENT,
  `Direccion` varchar(45) DEFAULT NULL,
  `Horario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRecinto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE IF NOT EXISTS `reserva` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Cancha_idCancha` int(11) NOT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Cancha_idCancha`),
  KEY `fk_Usuario_has_Cancha_Cancha1_idx` (`Cancha_idCancha`),
  KEY `fk_Usuario_has_Cancha_Usuario_idx` (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `Tipo`) VALUES
(1, 'admin'),
(2, 'normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE IF NOT EXISTS `solicitud` (
  `id_solicitud` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_equipo` varchar(30) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneo`
--

CREATE TABLE IF NOT EXISTS `torneo` (
  `idTorneo` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInicio` date DEFAULT NULL,
  `numeroParticipantes` int(11) DEFAULT NULL,
  `idCampeon` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idTorneo`),
  KEY `fk_Torneo_Usuario1_idx` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Contrasena` varchar(45) DEFAULT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_Usuario_Rol1_idx` (`idRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `Apellido`, `Email`, `Telefono`, `Contrasena`, `idRol`) VALUES
(2, 'daniel', 'salinas', 'dsa@gmail.com', '857478439', 'daniel123*', 1),
(3, 'd', 's', 'a@g.com', '332', '123456789', 2),
(4, 'Daniela', 'jraeae', 'd@g.com', '64674743', '13579', 2),
(5, 'Camilo', 'Saotme', 'c@g.com', '7457474', '24680', 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancha`
--
ALTER TABLE `cancha`
  ADD CONSTRAINT `fk_Cancha_Recinto1` FOREIGN KEY (`idRecinto`) REFERENCES `recinto` (`idRecinto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `competir`
--
ALTER TABLE `competir`
  ADD CONSTRAINT `fk_Torneo_has_Equipo_Equipo1` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Torneo_has_Equipo_Torneo1` FOREIGN KEY (`idTorneo`) REFERENCES `torneo` (`idTorneo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk_Equipo_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `fk_Horario_Recinto1` FOREIGN KEY (`idRecinto`) REFERENCES `recinto` (`idRecinto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk_Jugador_Equipo1` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `fk_Partido_Cancha1` FOREIGN KEY (`idCancha`) REFERENCES `cancha` (`idCancha`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Partido_Equipo1` FOREIGN KEY (`idEquipo1`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Partido_Equipo2` FOREIGN KEY (`idEquipo2`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Partido_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_Usuario_has_Cancha_Cancha1` FOREIGN KEY (`Cancha_idCancha`) REFERENCES `cancha` (`idCancha`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Usuario_has_Cancha_Usuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `fk_Torneo_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Rol1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
