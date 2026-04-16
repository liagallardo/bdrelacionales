-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 17:21:03
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
-- Base de datos: `tempo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 1, 3, 'los mas pros woooow', '2026-04-16 17:19:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#tilltivan', '2026-04-02'),
(2, '#locura', '2026-03-10'),
(3, '#hijos', '2026-01-05'),
(4, '#franyaoi', '2026-01-15'),
(5, '#wooow', '2026-02-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 1, 'con los papuspros', 'https://i.pinimg.com/736x/bd/29/5b/bd295b766f25b218aa89aea40699935f.jpg', '2026-04-16 16:52:18', 838666689),
(2, 2, 'holihliholiii', 'https://i.pinimg.com/736x/86/57/52/86575237339f78ca7960313081962622.jpg', '2026-04-16 16:56:56', 976555),
(3, 3, 'where is till?', 'https://i.pinimg.com/736x/30/06/8e/30068e44173b69d353ca8d4caa27e2cf.jpg', '2026-04-16 17:01:01', 874398),
(4, 4, 'el concepto de', 'https://i.pinimg.com/736x/88/65/f7/8865f71cc0ea9cfcdc67137a1afccbb2.jpg', '2026-04-16 17:02:44', 46378),
(5, 5, 'canon', 'https://i.pinimg.com/736x/fe/a0/f8/fea0f8574ac9b70135a9459db25939ef.jpg', '2026-04-16 17:04:28', 45467774);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(1, 1),
(2, 5),
(3, 2),
(4, 4),
(5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_like`) VALUES
(1, 3, '2026-02-13 07:09:13'),
(2, 5, '2026-04-10 05:10:36'),
(3, 1, '2026-03-26 13:11:08'),
(4, 2, '2026-06-18 16:11:27'),
(5, 2, '2026-07-16 04:11:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidores_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidores_id`, `seguido_id`, `fecha_follow`) VALUES
(1, 5, '2025-04-11'),
(3, 1, '2017-08-11'),
(2, 5, '2019-05-20'),
(4, 2, '2026-07-09'),
(5, 1, '2023-01-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarios_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarios_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'ivansupercutebottom1', 'ivanbottom11@gmail.com', 'viva el tillivan los demas son tontos', '2004-02-14'),
(2, 'sugussy23', 'amoelsugussy1@gmail.com', 'satosugu', '2002-02-03'),
(3, 'TillTheGoat54', 'tillproyt44@gmail.com', 'ivan mi twink canon muy canon', '2003-12-18'),
(4, 'franyaoi', 'franyaoiii23@gmail.com', 'el concepto de ser franyaoi', '2003-08-21'),
(5, 'itafushi23', 'fandehinataaoi2@gmail.com', 'terminen los au itafushi', '1992-09-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `hashtag_id` (`hashtag_id`),
  ADD KEY `hashtag_id_2` (`hashtag_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidores_id` (`seguidores_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarios_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarios_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuarios_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuarios_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuarios_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidores_id`) REFERENCES `usuarios` (`usuarios_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuarios_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
