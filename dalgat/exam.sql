-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Дек 22 2024 г., 15:30
-- Версия сервера: 8.0.35
-- Версия PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `footluck`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descr` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `age`, `img`, `descr`, `price`) VALUES
(4, 'ДЕТСКАЯ', '6-10', 'assets/media/kid_promo.jpeg', 'детская программа направлена на развитие базовых футбольных навыков в увлекательной и игровой форме. Мы фокусируемся на развитии ловкости и командной работе, прививая любовь к спорту. ', '5000'),
(8, 'МУЖСКая', '18+', 'assets/media/man_promo.jpg', 'МУЖСКАЯ программа направлена на развитие базовых футбольных навыков в увлекательной и игровой форме. Мы фокусируемся на развитии ловкости и командной работе, прививая любовь к спорту.', '5000');

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE `players` (
  `id` int NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `players`
--

INSERT INTO `players` (`id`, `img`, `name`, `surname`, `position`) VALUES
(6, 'assets/media/team_soslan.jpg', 'Далгат', 'Шамсуев', 'GK'),
(7, 'assets/media/team_soslan.jpg', 'dgfdg', 'gdfg', 'df'),
(8, 'assets/media/team_coach.jpg', 'НАдырхан', 'старший', 'CH'),
(9, 'assets/media/team_idarshumahov.jpg', 'dfsf', 'sdfsdf', 'cb');

-- --------------------------------------------------------

--
-- Структура таблицы `questt`
--

CREATE TABLE `questt` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quest` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `role`) VALUES
(6, 'admin', 'adminov', 'admin@mail.ru', '$2y$10$QxeN2iBd3KR67dd2R8q6x.IiTZjCJJ8ovEuaX3cDg2.YbXYZz00Du', 2),
(8, 'USER', '123', '1234@mail.ru', '$2y$10$1JNJ85uXf3t1f0tsVBTxu.CUm5tpXuS367YV.nySQ2GfGpEbPgqUy', 1),
(9, 'user', 'userov', 'user@mail.ru', '$2y$10$0tziamGzZM12EqC0rqAAWuhvq30KJXUmdNHIrOufJE2giskkwOyIO', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questt`
--
ALTER TABLE `questt`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `players`
--
ALTER TABLE `players`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `questt`
--
ALTER TABLE `questt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
