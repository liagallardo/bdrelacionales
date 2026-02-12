-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:17:33
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `producto` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Muñeco de Peluche', 239, 'yanlin', 'Yanlin Juguetes de Peluche Divertidos, 30cm Muñeco de Peluche, Compañero de Juegos y Siesta, Regalos de Cumpleaños para Niños y Niñas ', 1),
(2, 'Flor de Ciruelo lego', 568, 'LEGO', 'LEGO Botanicals Flor de Ciruelo Plantas de Interior y Plantas Decorativas para adornar Cualquier Espacio en el hogar u Oficina con Unas Hermosas y detalladas Plantas Artificiales 10369', 1),
(3, ' Bálsamo labial ', 57, 'Labello', 'LABELLO Bálsamo labial con color Mora (4.8g) protector labial con Vitamina E libre de aceites minerales 24 horas de humectación', 1),
(4, 'carteles de anime', 328, 'TYZZHOA', 'TYZZHOA - 25 carteles de anime de 30 x 21 cm, nueva edición Bounty, sombrero de paja piratas tripulación Nika Luffy 3 mil millones, Zoro, Sanji,regalos de anime (Retro)', 25),
(5, 'Llavero de one piece', 336, 'Weeb Keychains', 'Llavero de one piece con sombrero de paja y etiqueta de metal para perro, duradero, ligero regalo de anime y mercancía de una pieza', 1),
(6, 'Brillo labial', 89, 'NYX', 'NYX Professional Makeup Butter Gloss Bling Tono Dripped Out (coral), 8ml - Brillo labial con un toque ligero de color y mucho brillo, labios hidratados, acabado suave y cremoso, fórmula vegana', 1),
(7, 'Littlest Pet Shop Día de Nieve ', 499, 'Littlest pet shop', 'Littlest Pet Shop Día de Nieve Play Pack 3 Mascotas Paquete Temático Snow Day Play Pack Set de Figuras Coleccionables para Niñas Original de Bandai', 1),
(8, 'Figuras SKULLPANDA de Caja Sorpresa', 499, 'POP MART SKULLPANDA', 'POP MART SKULLPANDA – Colección “El Sonido” Figuras SKULLPANDA de Caja Sorpresa, Figuras de Acción con Diseño al Azar, Juguetes de Colección para Decoración del Hogar, Regalo para Cumpleaños y Fiestas', 1),
(9, 'My Little Pony Figura de Acción', 715, 'My Little Pony', 'My Little Pony Figura de Acción Equestria Girls Sunset Shimmer Sushi', 1),
(10, 'Tamagotchi', 1030, 'TAMAGOTCHI', 'TAMAGOTCHI Paradise Tierra Mascota Electrónica Virtual a Color + 50,000 Personajes para Niños Juguete Interactivo Original', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
