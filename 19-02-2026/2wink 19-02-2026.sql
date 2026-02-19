-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2026 a las 16:23:31
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
-- Base de datos: `2wink`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `ID_atencion` int(11) NOT NULL,
  `ID_reserva` int(11) NOT NULL,
  `ID_empleado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Nota` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`ID_atencion`, `ID_reserva`, `ID_empleado`, `Fecha`, `Nota`) VALUES
(1, 1, 1, '2026-02-28', 'No me dejo terminar de comer en el buffet, si es buffet debería ser todo lo que pueda comer, pero no me dejo acabarme mi 186vo plato. 3/10'),
(2, 2, 4, '2026-03-17', 'Excelente servicio, 10/10. Volvería solo para ver a este empleado.'),
(3, 9, 3, '0000-00-00', 'Buen servicio, podria mejorar si me dejaran ser la cara de alguno de sus anuncios, a cambio de un descuento claro, pues soy muy guapo. 7/10'),
(4, 8, 1, '2026-03-16', 'Me atendió bien, pero ojalá hubiera sido el 4to en nuestra habitación individual. 8/10'),
(5, 6, 5, '2026-02-05', 'No me dejo pasar con mi katana, pero el guardia tenía bonita cara, así que lo dejare pasar. 7/10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `Telefono` int(12) NOT NULL,
  `Fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_cliente`, `nombre`, `email`, `Telefono`, `Fecha_registro`) VALUES
(1, 'Beelzebub', 'Gluttony_avatar333@gmail.com', 57568678, '2026-01-14'),
(2, 'Eiden', 'Eiden.nu34@gmail.com', 32659436, '2025-10-16'),
(3, 'Gackupo', 'Uta_gackpoid999@gmail.com', 45687347, '2023-11-24'),
(4, 'Yuri Ayato', 'Yarichin_clubYato69@gmail.com', 387329873, '2025-06-28'),
(5, 'Mana Sama', 'manasamaofficialg@gmail.com', 435667832, '2025-02-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_empleado` int(11) NOT NULL,
  `ID_hotel` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Puesto` varchar(50) NOT NULL,
  `Email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_empleado`, `ID_hotel`, `Nombre`, `Puesto`, `Email`) VALUES
(1, 2, 'Ibara Saegusa', 'Gerente administrativo', 'Saegusa.bara36@cetis107.edu.mx'),
(2, 0, 'Mayoi Ayase', 'Gerente de alimentos', 'Mamayoi_yase57@cetis107.edu.mx'),
(3, 1, 'Yuta Aoi', 'Director de ventas y marketing', 'Yuta.2winkaoi@2wink.com'),
(4, 0, 'Olivine', 'Recepcionista', 'Olivine.carnival24@cetis107.edu.mx'),
(5, 2, 'Edmond', 'Personal de seguridad', 'Captain_edmond94@cetis107.edu.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `ID_habitacion` int(11) NOT NULL,
  `ID_hotel` int(11) NOT NULL,
  `Numero` int(150) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Precio_noche` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`ID_habitacion`, `ID_hotel`, `Numero`, `Tipo`, `Precio_noche`, `estado`) VALUES
(0, 1, 333, 'Individual', 1789.24, 'Libre'),
(1, 1, 987, 'Habitacion quintuple', 6991.56, 'Ocupada}'),
(2, 0, 22222222, 'Suite presidencial', 707209.8, 'Ocupada'),
(3, 0, 342, 'Habitación Resort', 987457.11, 'Ocupada'),
(4, 2, 879, 'Suite', 45932, 'Ocupada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `ID_hotel` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Telefono` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`ID_hotel`, `nombre`, `Ciudad`, `Telefono`) VALUES
(0, 'Alkaloid', 'El Ocotito', 687468734),
(1, '2wink', 'Tecate', 346876987),
(2, 'Eden', 'Culiacayork', 987346873);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_pago` int(11) NOT NULL,
  `ID_reserva` int(11) NOT NULL,
  `Fecha_pago` date NOT NULL,
  `Monto` double NOT NULL,
  `Metodo` varchar(30) NOT NULL,
  `referencia` int(30) NOT NULL,
  `estado_pago` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`ID_pago`, `ID_reserva`, `Fecha_pago`, `Monto`, `Metodo`, `referencia`, `estado_pago`) VALUES
(1, 4, '2026-02-12', 3246758.09, 'Tarjeta', 32456789, 'Pagado'),
(2, 5, '2026-02-24', 87634587342, 'Tarjeta', 8876534, 'Pendiente'),
(3, 1, '2026-03-12', 65764534.92, 'Efectivo', 273487398, 'pendiente'),
(4, 6, '2028-04-05', 3267459874987.05, 'Tarjeta', 87423487, 'Pendiente'),
(5, 8, '2026-02-20', 666, 'Efectivo', 67984667, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `ID_reserva` int(11) NOT NULL,
  `ID_cliente` int(11) NOT NULL,
  `ID_habitacion` int(11) NOT NULL,
  `Fecha_entrada` date NOT NULL,
  `Fecha_salida` date NOT NULL,
  `num_huespedes` int(11) NOT NULL,
  `estado_reserva` varchar(30) NOT NULL,
  `Fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`ID_reserva`, `ID_cliente`, `ID_habitacion`, `Fecha_entrada`, `Fecha_salida`, `num_huespedes`, `estado_reserva`, `Fecha_creacion`) VALUES
(0, 1, 0, '2026-03-01', '2026-03-15', 1, 'Vigente', '2026-02-04'),
(1, 2, 2, '2026-02-19', '2026-02-20', 3, 'Vigente', '2025-10-08'),
(2, 2, 3, '2026-02-21', '2026-02-22', 3, 'Vigente', '2025-12-11'),
(3, 5, 1, '2026-03-07', '2026-03-10', 4, 'Vigente', '2026-01-19'),
(4, 4, 1, '2026-03-03', '2026-02-05', 9, 'Vigente', '2025-09-02'),
(5, 5, 3, '2026-07-10', '2026-07-15', 1, 'Vigente', '2026-02-18'),
(6, 3, 2, '2026-02-20', '2026-02-24', 2, 'Vigente', '2025-07-01'),
(7, 1, 2, '2026-06-01', '2026-06-05', 8, 'Vigente', '2025-07-24'),
(8, 4, 0, '2026-03-04', '2026-02-06', 3, 'Vigente', '2026-01-26'),
(9, 3, 3, '2026-09-09', '2026-09-14', 2, 'Vigente', '2026-02-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `ID_reserva` int(11) NOT NULL,
  `ID_servicio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `Precio_unitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reserva_servicio`
--

INSERT INTO `reserva_servicio` (`ID_reserva`, `ID_servicio`, `cantidad`, `Precio_unitario`) VALUES
(0, 2, 1, 5000),
(1, 5, 1, 86774565),
(2, 3, 1, 5000),
(3, 4, 2, 348734687558),
(4, 5, 9, 6.736734873468734e16),
(5, 1, 2, 6874567),
(6, 5, 2, 4564634534),
(7, 1, 32, 34567809876543),
(8, 3, 3, 3445745),
(9, 4, 1, 344566876556);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `ID_servicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_base` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`ID_servicio`, `nombre`, `precio_base`) VALUES
(1, 'Servicio a la habitación', 30000),
(2, 'Buffet', 400),
(3, 'Masaje ayurvédico', 5000),
(4, 'Entrada casino', 100),
(5, 'Espectáculo de femboys', 7000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`ID_atencion`),
  ADD KEY `ID_reserva` (`ID_reserva`),
  ADD KEY `ID_empleado` (`ID_empleado`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_empleado`),
  ADD KEY `ID_hotel` (`ID_hotel`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`ID_habitacion`),
  ADD KEY `ID_hotel` (`ID_hotel`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID_hotel`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_pago`),
  ADD KEY `ID_reserva` (`ID_reserva`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_reserva`),
  ADD KEY `ID_cliente` (`ID_cliente`),
  ADD KEY `ID_habitacion` (`ID_habitacion`);

--
-- Indices de la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD KEY `ID_reserva` (`ID_reserva`),
  ADD KEY `ID_servicio` (`ID_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `ID_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `ID_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `ID_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reserva` (`ID_reserva`),
  ADD CONSTRAINT `atencion_ibfk_2` FOREIGN KEY (`ID_empleado`) REFERENCES `empleado` (`ID_empleado`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_hotel`) REFERENCES `hotel` (`ID_hotel`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`ID_hotel`) REFERENCES `hotel` (`ID_hotel`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reserva` (`ID_reserva`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`ID_habitacion`) REFERENCES `habitacion` (`ID_habitacion`);

--
-- Filtros para la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reserva` (`ID_reserva`),
  ADD CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`ID_servicio`) REFERENCES `servicio` (`ID_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
