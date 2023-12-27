-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2023 a las 02:30:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbpaolo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `ID` int(11) NOT NULL,
  `numDivision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`ID`, `numDivision`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `division` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `partidosJugados` int(11) DEFAULT NULL,
  `partidosGanados` int(11) DEFAULT NULL,
  `partidosEmpatados` int(11) DEFAULT NULL,
  `partidosPerdidos` int(11) DEFAULT NULL,
  `golesFavor` int(11) DEFAULT NULL,
  `golesEnContra` int(11) DEFAULT NULL,
  `diferencia` int(11) DEFAULT NULL,
  `ID_temporadaDeJuego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID`, `nombre`, `division`, `puntos`, `partidosJugados`, `partidosGanados`, `partidosEmpatados`, `partidosPerdidos`, `golesFavor`, `golesEnContra`, `diferencia`, `ID_temporadaDeJuego`) VALUES
(1, 'Aldosivi', 2, 25, 9, 8, 1, 0, 39, 10, 29, 8),
(2, 'Inglaterra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'España', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Islandia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'Polonia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'Croacia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'Francia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 'Portugal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'Alemania', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(72, 'Quilmes', 2, 21, 9, 6, 1, 2, 26, 14, 12, 8),
(73, 'Alvarado', 2, 18, 9, 6, 0, 3, 16, 17, -1, 8),
(74, 'River Plate', 2, 14, 9, 4, 2, 4, 21, 11, 10, 8),
(75, 'Chacarita', 2, 12, 9, 4, 0, 5, 24, 18, 6, 8),
(76, 'Estudiantes', 2, 11, 9, 3, 2, 4, 14, 16, -2, 8),
(77, 'All Boys', 2, 11, 9, 3, 2, 4, 14, 16, -2, 8),
(78, 'Atlanta', 2, 10, 9, 3, 1, 5, 14, 16, -2, 8),
(79, 'Nueva Chicago', 2, 6, 9, 2, 0, 7, 8, 22, -14, 8),
(80, 'Almagro', 2, 0, 9, 0, 0, 9, 2, 33, -31, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `ID` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `goles` int(11) DEFAULT NULL,
  `asistencias` int(11) DEFAULT NULL,
  `vallas` int(11) DEFAULT NULL,
  `ID_EquipoActual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`ID`, `tag`, `goles`, `asistencias`, `vallas`, `ID_EquipoActual`) VALUES
(27, 'XDNeitor', NULL, NULL, NULL, NULL),
(28, 'Juan Roman', NULL, NULL, NULL, NULL),
(29, 'mazzita', NULL, NULL, NULL, NULL),
(30, 'mudryk', NULL, NULL, NULL, NULL),
(31, 'adolfina', NULL, NULL, NULL, NULL),
(32, 'cartu', NULL, NULL, NULL, NULL),
(33, 'asusi', NULL, NULL, NULL, NULL),
(34, 'Coutinho', NULL, NULL, NULL, NULL),
(35, 'KKK MADRILEÑO', NULL, NULL, NULL, NULL),
(36, 'pulpo', NULL, NULL, NULL, NULL),
(37, 'Memphis', NULL, NULL, NULL, NULL),
(38, 'sbz', NULL, NULL, NULL, NULL),
(39, 'fipa', NULL, NULL, NULL, NULL),
(40, 'glamour', NULL, NULL, NULL, NULL),
(41, 'hough', NULL, NULL, NULL, NULL),
(42, 'elultimo10', NULL, NULL, NULL, NULL),
(43, 'fede/arg', NULL, NULL, NULL, NULL),
(44, 'dyba', NULL, NULL, NULL, NULL),
(45, 'adv', NULL, NULL, NULL, NULL),
(46, 'Ansu Paty', NULL, NULL, NULL, NULL),
(47, 'Paolo Guerrero', NULL, NULL, NULL, NULL),
(48, 'nezyo', NULL, NULL, NULL, NULL),
(49, 'chizzo', NULL, NULL, NULL, NULL),
(50, 'axel', NULL, NULL, NULL, NULL),
(51, 'canada', NULL, NULL, NULL, NULL),
(52, 'kise', NULL, NULL, NULL, NULL),
(53, 'botella', NULL, NULL, NULL, NULL),
(54, 'manfika', NULL, NULL, NULL, NULL),
(55, 'Mate Amargo', NULL, NULL, NULL, NULL),
(56, 'sofovich', NULL, NULL, NULL, NULL),
(57, 'MauroRg', NULL, NULL, NULL, NULL),
(58, 'jm', NULL, NULL, NULL, NULL),
(59, 'mendy', NULL, NULL, NULL, NULL),
(60, 'overtime!', NULL, NULL, NULL, NULL),
(61, 'dlv', NULL, NULL, NULL, NULL),
(62, 'zac', NULL, NULL, NULL, NULL),
(63, 'erikk', NULL, NULL, NULL, NULL),
(64, 'naza', NULL, NULL, NULL, NULL),
(65, 'premium', NULL, NULL, NULL, NULL),
(66, 'dark', NULL, NULL, NULL, NULL),
(67, 'skullie', NULL, NULL, NULL, NULL),
(68, 'Julian Alvarez', NULL, NULL, NULL, NULL),
(69, 'wavve', NULL, NULL, NULL, NULL),
(70, 'pipo', NULL, NULL, NULL, NULL),
(71, 'lokita', NULL, NULL, NULL, NULL),
(72, 'Gio lo sexo', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadorxtemporada`
--

CREATE TABLE `jugadorxtemporada` (
  `ID` int(11) NOT NULL,
  `ID_Jugador` int(11) NOT NULL,
  `golesTemporada` int(11) NOT NULL DEFAULT 0,
  `asistenciasTemporada` int(11) NOT NULL DEFAULT 0,
  `vallasTemporada` int(11) NOT NULL DEFAULT 0,
  `ID_Temporada` int(11) NOT NULL,
  `ID_equipoTemporada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadorxtemporada`
--

INSERT INTO `jugadorxtemporada` (`ID`, `ID_Jugador`, `golesTemporada`, `asistenciasTemporada`, `vallasTemporada`, `ID_Temporada`, `ID_equipoTemporada`) VALUES
(2, 27, 0, 0, 10, 1, 2),
(3, 28, 0, 0, 0, 1, 2),
(4, 29, 1, 0, 0, 1, 2),
(5, 30, 0, 0, 0, 1, 2),
(6, 31, 1, 0, 0, 1, 2),
(7, 32, 0, 2, 0, 1, 2),
(8, 33, 0, 0, 0, 1, 2),
(9, 34, 0, 0, 0, 1, 3),
(10, 35, 2, 0, 0, 1, 3),
(11, 36, 0, 1, 0, 1, 3),
(12, 38, 0, 0, 1, 1, 3),
(13, 39, 0, 0, 6, 1, 4),
(14, 40, 0, 0, 0, 1, 4),
(15, 41, 0, 0, 0, 1, 4),
(16, 42, 0, 2, 0, 1, 4),
(17, 43, 0, 0, 0, 1, 4),
(18, 44, 2, 0, 0, 1, 4),
(19, 45, 3, 0, 0, 1, 5),
(20, 45, 3, 0, 0, 1, 5),
(21, 47, 0, 3, 0, 1, 5),
(22, 48, 0, 0, 4, 1, 5),
(23, 49, 4, 0, 0, 1, 5),
(24, 50, 0, 0, 0, 1, 5),
(25, 51, 0, 2, 0, 1, 5),
(26, 52, 2, 4, 0, 1, 6),
(27, 53, 0, 3, 0, 1, 6),
(28, 54, 0, 0, 3, 1, 6),
(29, 55, 4, 0, 0, 1, 6),
(30, 56, 0, 0, 0, 1, 6),
(31, 57, 0, 0, 0, 1, 7),
(32, 58, 0, 0, 0, 1, 7),
(33, 58, 0, 0, 8, 1, 7),
(34, 60, 1, 0, 0, 1, 7),
(35, 61, 0, 0, 5, 1, 8),
(36, 62, 4, 0, 0, 1, 8),
(37, 63, 0, 2, 0, 1, 8),
(38, 64, 0, 0, 0, 1, 8),
(39, 65, 2, 0, 0, 1, 8),
(40, 65, 2, 0, 0, 1, 8),
(41, 66, 0, 3, 0, 1, 8),
(42, 67, 0, 0, 2, 1, 9),
(43, 68, 10, 3, 0, 1, 9),
(44, 69, 0, 6, 0, 1, 9),
(45, 70, 5, 0, 0, 1, 9),
(46, 71, 0, 3, 0, 1, 9),
(47, 72, 0, 0, 0, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporadas`
--

CREATE TABLE `temporadas` (
  `ID` int(11) NOT NULL,
  `numeroTemporada` int(11) NOT NULL,
  `ID_division` int(11) DEFAULT NULL,
  `ID_equipoCampeon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temporadas`
--

INSERT INTO `temporadas` (`ID`, `numeroTemporada`, `ID_division`, `ID_equipoCampeon`) VALUES
(1, 1, NULL, 9),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `temporadaDeJuego` (`ID_temporadaDeJuego`),
  ADD KEY `division` (`division`) USING BTREE;

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_EquipoActual` (`ID_EquipoActual`);

--
-- Indices de la tabla `jugadorxtemporada`
--
ALTER TABLE `jugadorxtemporada`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Jugador` (`ID_Jugador`,`ID_Temporada`),
  ADD KEY `equipoTemporada` (`ID_equipoTemporada`),
  ADD KEY `ID_Temporada` (`ID_Temporada`);

--
-- Indices de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `equipoCampeon` (`ID_equipoCampeon`),
  ADD KEY `ID_division` (`ID_division`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `jugadorxtemporada`
--
ALTER TABLE `jugadorxtemporada`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`division`) REFERENCES `divisiones` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_ibfk_3` FOREIGN KEY (`ID_temporadaDeJuego`) REFERENCES `temporadas` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`ID_EquipoActual`) REFERENCES `equipos` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugadorxtemporada`
--
ALTER TABLE `jugadorxtemporada`
  ADD CONSTRAINT `jugadorxtemporada_ibfk_1` FOREIGN KEY (`ID_Jugador`) REFERENCES `jugadores` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jugadorxtemporada_ibfk_2` FOREIGN KEY (`ID_equipoTemporada`) REFERENCES `equipos` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jugadorxtemporada_ibfk_3` FOREIGN KEY (`ID_Temporada`) REFERENCES `temporadas` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD CONSTRAINT `temporadas_ibfk_1` FOREIGN KEY (`ID_division`) REFERENCES `divisiones` (`ID`),
  ADD CONSTRAINT `temporadas_ibfk_2` FOREIGN KEY (`ID_equipoCampeon`) REFERENCES `equipos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
