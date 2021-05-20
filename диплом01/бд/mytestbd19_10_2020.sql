-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:33067
-- Время создания: Май 20 2021 г., 17:57
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mytestbd19_10_2020`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_log_out`
--

CREATE TABLE `admin_log_out` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_log_out` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_log_out`
--

INSERT INTO `admin_log_out` (`id`, `admin_log_out`) VALUES
(2, '89083323409');

-- --------------------------------------------------------

--
-- Структура таблицы `log_client`
--

CREATE TABLE `log_client` (
  `id` int(100) NOT NULL,
  `Номер телефона` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `log_client`
--

INSERT INTO `log_client` (`id`, `Номер телефона`) VALUES
(19, 83323409),
(18, 83323409);

-- --------------------------------------------------------

--
-- Структура таблицы `log_driver`
--

CREATE TABLE `log_driver` (
  `id` int(100) NOT NULL,
  `Фамилия` varchar(20) NOT NULL,
  `Имя` varchar(20) NOT NULL,
  `Отчество` varchar(20) NOT NULL,
  `Номер телефона` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `log_driver`
--

INSERT INTO `log_driver` (`id`, `Фамилия`, `Имя`, `Отчество`, `Номер телефона`) VALUES
(10, 'Загидуллин', 'Тимур', 'Алмазович', 83323409),
(11, 'Сулейманова', 'Ралина', 'Рустемовна', 83323409);

-- --------------------------------------------------------

--
-- Структура таблицы `num_avt`
--

CREATE TABLE `num_avt` (
  `id` int(100) NOT NULL,
  `number` varchar(9) CHARACTER SET utf8 NOT NULL,
  `color` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `num_avt`
--

INSERT INTO `num_avt` (`id`, `number`, `color`) VALUES
(9, 'A222AA', 'красный'),
(8, 'A123AS', 'red');

-- --------------------------------------------------------

--
-- Структура таблицы `reis`
--

CREATE TABLE `reis` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_client` int(100) NOT NULL,
  `id_driver` int(100) NOT NULL,
  `id_avt` varchar(100) NOT NULL,
  `adres_A` varchar(100) NOT NULL,
  `adres_B` varchar(100) NOT NULL,
  `rate` int(3) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reis`
--

INSERT INTO `reis` (`id`, `id_user`, `id_client`, `id_driver`, `id_avt`, `adres_A`, `adres_B`, `rate`, `time`, `price`) VALUES
(40, 1, 1, 1, '1', '1', '1', 20, 10, 200),
(41, 1, 1, 1, '1', '1', '1', 20, 5, 100);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `Password`) VALUES
(37, 'admin', '123'),
(38, 'timur', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_log_out`
--
ALTER TABLE `admin_log_out`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_client`
--
ALTER TABLE `log_client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_driver`
--
ALTER TABLE `log_driver`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `num_avt`
--
ALTER TABLE `num_avt`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reis`
--
ALTER TABLE `reis`
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
-- AUTO_INCREMENT для таблицы `admin_log_out`
--
ALTER TABLE `admin_log_out`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_client`
--
ALTER TABLE `log_client`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `log_driver`
--
ALTER TABLE `log_driver`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `num_avt`
--
ALTER TABLE `num_avt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `reis`
--
ALTER TABLE `reis`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
