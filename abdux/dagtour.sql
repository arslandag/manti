-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 23 2024 г., 00:45
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dagtour`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `size` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `image`, `time`, `name`, `price`, `size`) VALUES
(1, 'assets/media/17320352831732019887_photocard1.png', '8', 'Самурский лес', '20000', '6'),
(2, 'assets/media/1732157303saricum.png', '5', 'Сарыкум', '15000', '5'),
(4, 'assets/media/1732157756gamsutl.png', '7', 'Гамсутль', '12500', '4'),
(5, 'assets/media/1732157952sulak.png', '6', 'сулакский каньон', '16000', '4'),
(6, 'assets/media/1732158128_derbent.png', '8', 'ДЕРБЕНТ', '20000', '5'),
(7, 'assets/media/1732158316_kubachi.png', '10', 'кубачи', '25000', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`) VALUES
(2, 'магомед', 'qqqq@mail.ru', '$2y$10$EdvQlOFmQ1w2YZOfYQIR.uMijBI8BrjwY2RUWVWi.OcI3KtxnFEYe', '89045553534', 1),
(3, 'admin', 'aa@mail.ru', '$2y$10$/8eFCFnmlgxJMlg3B9SPT.XyTv97FxyiKIK9G/ChtlkPqs5wHV1W2', '+79046654749', 2),
(4, 'dalgat', 'dd@mail.ru', '$2y$10$aWXZQtqovs.sCaWqqbO94Ogly2XR5.AA5In1.jccU/XykFnTmc.3a', '1111111111', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
