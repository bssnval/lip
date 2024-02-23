-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 24 2024 г., 02:35
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Lip`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kategoria`
--

CREATE TABLE `kategoria` (
  `id_kategoria` int NOT NULL,
  `kategoria_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `kategoria`
--

INSERT INTO `kategoria` (`id_kategoria`, `kategoria_name`) VALUES
(1, 'блеск для губ'),
(2, 'помада для губ'),
(3, 'бальзам для губ'),
(4, 'карандаш для губ');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id_tovar` int NOT NULL,
  `tovar_img` text NOT NULL,
  `tovar_name` varchar(100) NOT NULL,
  `tovar_cena` int NOT NULL,
  `id_kategoria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id_tovar`, `tovar_img`, `tovar_name`, `tovar_cena`, `id_kategoria`) VALUES
(12, 'img/blesk.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 1),
(13, 'img/blesk.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 1),
(14, 'img/blesk.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 1),
(15, 'img/blesk.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 1),
(16, 'img/pomada.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 2),
(17, 'img/pomada.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 2),
(18, 'img/pomada.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 2),
(19, 'img/pomada.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 2),
(20, 'img/balzam.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 3),
(21, 'img/balzam.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 3),
(22, 'img/balzam.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 3),
(23, 'img/balzam.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 3),
(24, 'img/karandash.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 4),
(25, 'img/karandash.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 4),
(26, 'img/karandash.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 4),
(27, 'img/karandash.png', 'Увлажняющее масло для губ, тон 04 розовый', 1799, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `telephon` int NOT NULL,
  `email` varchar(650) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `telephon`, `email`, `password`) VALUES
(1, '1', '333', 1, 'Starshovaal@mail.ru', '1'),
(2, '1', '1', 1, 'Starshovaal@mail.ru', '2'),
(3, 'ADMIN', 'ADMIN', 1, 'isip_a.a.starshova@mpt.ru', 'ADMIN');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategoria`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id_tovar`),
  ADD KEY `tovar_kategoria` (`id_kategoria`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id_tovar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD CONSTRAINT `tovar_kategoria` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`id_kategoria`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
