-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-12-2023 a las 01:45:51
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
  `division` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  `partidosJugados` int(11) NOT NULL,
  `partidosGanados` int(11) NOT NULL,
  `partidosEmpatados` int(11) NOT NULL,
  `partidosPerdidos` int(11) NOT NULL,
  `golesFavor` int(11) NOT NULL,
  `golesEnContra` int(11) NOT NULL,
  `diferencia` int(11) NOT NULL,
  `ID_temporadaDeJuego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID`, `nombre`, `division`, `puntos`, `partidosJugados`, `partidosGanados`, `partidosEmpatados`, `partidosPerdidos`, `golesFavor`, `golesEnContra`, `diferencia`, `ID_temporadaDeJuego`) VALUES
(1, 'Aldosivi', 2, 25, 9, 8, 1, 0, 39, 10, 29, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `ID` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `goles` int(11) NOT NULL,
  `asistencias` int(11) NOT NULL,
  `vallas` int(11) NOT NULL,
  `ID_EquipoActual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`ID`, `tag`, `goles`, `asistencias`, `vallas`, `ID_EquipoActual`) VALUES
(1, 'rp', 12, 4, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadorxtemporada`
--

CREATE TABLE `jugadorxtemporada` (
  `ID` int(11) NOT NULL,
  `ID_Jugador` int(11) NOT NULL,
  `golesTemporada` int(11) NOT NULL,
  `asistenciasTemporada` int(11) NOT NULL,
  `vallasTemporada` int(11) NOT NULL,
  `ID_Temporada` int(11) NOT NULL,
  `ID_equipoTemporada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL);

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
  ADD UNIQUE KEY `division` (`division`),
  ADD KEY `temporadaDeJuego` (`ID_temporadaDeJuego`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jugadorxtemporada`
--
ALTER TABLE `jugadorxtemporada`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `temporadas_ibfk_1` FOREIGN KEY (`ID_division`) REFERENCES `divisiones` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `temporadas_ibfk_2` FOREIGN KEY (`ID_equipoCampeon`) REFERENCES `equipos` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
