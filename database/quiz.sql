-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2020 a las 18:06:39
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `quiz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'muki', '1111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(4, '5b85857d00f34', '5b85857d0ab77'),
(5, '5b85857d333f0', '5b85857d391b2'),
(6, '5b85857d59559', '5b85857d69efd'),
(7, '5b85857d917d6', '5b85857d97980'),
(8, '5b85857db810f', '5b85857dbd701');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5b86784504039', 'pravin', 'fyvgh@vgyvy.in', 'ytiu', 'yty', '2018-08-29', '03:41:09pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(1, 'pravin', '5b85847bbe794', 3, 5, 2, 3, '2018-08-29 10:37:59', 1535538968, 'finished', 'true'),
(2, 'mugunth', '5b85847bbe794', 11, 5, 4, 1, '2018-08-29 10:39:42', 1535539122, 'finished', 'true'),
(3, 'Juli', '5b85847bbe794', 0, 0, 0, 0, '2020-11-11 04:05:53', 1605067431, 'finished', 'true'),
(4, '', '5b85847bbe794', 0, 0, 0, 0, '2020-11-11 04:03:53', 1605067433, 'ongoing', 'false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(13, '5b85857d00f34', ' Hello World!Hello World!', '5b85857d0ab77'),
(14, '5b85857d00f34', ' Hello World! * 2', '5b85857d0af5f'),
(15, '5b85857d00f34', 'Hello World!', '5b85857d0b347'),
(16, '5b85857d00f34', 'None of the above.', '5b85857d0b72f'),
(18, '5b85857d333f0', 'abcd', '5b85857d38dca'),
(21, '5b85857d59559', 'int(x [,base])', '5b85857d69b15'),
(22, '5b85857d59559', 'long(x [,base] )', '5b85857d69efd'),
(23, '5b85857d59559', 'float(x)', '5b85857d6a2e5'),
(24, '5b85857d59559', 'str(x)', '5b85857d6a6cd'),
(27, '5b85857d917d6', 'hex(x)', '5b85857d98150');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(4, '5b85847bbe794', '5b85857d00f34', 'What is the output of print str * 2 if str = \'Hello World!\'?', 4, 1),
(5, '5b85847bbe794', '5b85857d333f0', 'What is the output of print tuple[1:3] if tuple = ( \'abcd\', 786 , 2.23, \'john\', 70.2 )?', 4, 2),
(6, '5b85847bbe794', '5b85857d59559', 'Which of the following function convert a string to a long in python?', 4, 3),
(7, '5b85847bbe794', '5b85857d917d6', 'Which of the following function convert an integer to an unicode character in python?', 4, 4),
(8, '5b85847bbe794', '5b85857db810f', 'Which of the following function returns a random item from a list, tuple, or string?', 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(2, '5b85847bbe794', 'Python', 3, 1, 5, 2, '2018-08-29 10:40:38', 'enabled');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(3, 'Juli', 0, '2020-11-11 04:05:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(7, 'Daniel', '113', 'ECE', 'M', 'daniel', 2356, '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'Juli', '182', 'CSE', 'M', 'Juli', 312566, '9d495f91834f74ab8c169a346159a9f6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(9, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'mugunth'),
(10, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'mugunth'),
(11, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'mugunth'),
(12, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'mugunth'),
(13, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'mugunth');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
