-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:33067
-- Время создания: Май 10 2021 г., 23:57
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
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pont_a` varchar(100) DEFAULT NULL,
  `pont_b` varchar(100) DEFAULT NULL,
  `dataTime` datetime(6) DEFAULT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`id`, `name`, `password`, `pont_a`, `pont_b`, `dataTime`, `phone`) VALUES
(1, 'timur', '123', 'ломженская', 'пр победы', '2021-05-10 16:35:00.000000', '89083323409'),
(2, 'anton', '123', NULL, NULL, NULL, '89083323409'),
(3, 'maksim', '123', NULL, NULL, NULL, '89053762089'),
(4, 'timur1', '123', NULL, NULL, NULL, '89586261394'),
(5, 'marsy', '123', NULL, NULL, NULL, '89053762089');

-- --------------------------------------------------------

--
-- Структура таблицы `reis`
--

CREATE TABLE `reis` (
  `id` int(100) NOT NULL,
  `point_a` varchar(100) NOT NULL,
  `point_b` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `tarif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reis`
--

INSERT INTO `reis` (`id`, `point_a`, `point_b`, `phone`, `date`, `time`, `tarif`) VALUES
(1, 'Ноксинский спуск 14а', 'Проспект победы 32а', '89083323409', '2021-05-10', '21:41:00.000000', ''),
(2, 'Ноксинский спуск 14а', 'Ноксинский спуск 14b', '89083323409', '0000-00-00', '00:00:00.000000', ''),
(3, 'Ноксинский спуск 14а3', 'Ноксинский v', '89083323407', '0000-00-00', '00:00:00.000000', ''),
(4, 'ул. ноксинский спуск дом 14А кв 106', 'аметьевская магистраль 16к3 кв 78', '89053762089', '2021-05-10', '23:38:23.000000', 'тариф эконом'),
(5, 'ул. ноксинский спуск дом 14А кв 106', 'аметьевская магистраль 16к3 кв 78', '89053762089', '2021-05-10', '23:41:23.000000', 'тариф эконом'),
(6, 'rufuss851', 'rufuss851', '89053762089', '2021-05-10', '23:46:22.000000', 'тариф эконом'),
(7, 'ул. ноксинский спуск дом 14А кв 106', 'г.Казань ул ноксинский спуск 14 а кв 106', '89586261394', '2021-05-10', '23:50:09.000000', 'тариф эконом'),
(8, 'ул. ноксинский спуск дом 14А кв 106', 'ул. ноксинский спуск дом 14А кв 106', '89053762089', '2021-05-10', '23:51:30.000000', 'Детский');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reis`
--
ALTER TABLE `reis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account`
--
ALTER TABLE `account`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `reis`
--
ALTER TABLE `reis`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
