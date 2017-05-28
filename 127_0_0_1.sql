-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 28 2017 г., 20:02
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `data_b`
--
CREATE DATABASE IF NOT EXISTS `data_b` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `data_b`;

-- --------------------------------------------------------

--
-- Структура таблицы `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(10) UNSIGNED NOT NULL,
  `advert_title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `text` text NOT NULL,
  `name_category_id` int(10) UNSIGNED NOT NULL,
  `name_user_id` int(10) UNSIGNED NOT NULL,
  `img_id` int(10) UNSIGNED DEFAULT NULL,
  `data_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `advertisement`
--

INSERT INTO `advertisement` (`id`, `advert_title`, `price`, `text`, `name_category_id`, `name_user_id`, `img_id`, `data_time`) VALUES
(1, 'test', 20, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 3, 1, NULL, '2017-05-30 00:00:00'),
(2, 'test', 20, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 3, 1, NULL, '2017-05-30 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name_category`) VALUES
(1, 'Недвижимость'),
(2, 'Электроника'),
(3, 'Дом и сад'),
(4, 'Животные'),
(5, 'Мода и стиль'),
(6, 'Транспорт');

-- --------------------------------------------------------

--
-- Структура таблицы `img_advertisement`
--

CREATE TABLE `img_advertisement` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE `region` (
  `id` int(10) UNSIGNED NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `region`) VALUES
(1, 'Киевская область'),
(2, 'Днепропетровская область'),
(3, 'Закарпатская область'),
(4, 'Луганская область'),
(5, 'Одесская область'),
(6, 'Сумская область\r\n'),
(7, 'Херсонская область'),
(8, 'Черниговская область'),
(9, 'Винницкая область'),
(10, 'Донецкая область'),
(11, 'Запорожская область'),
(12, 'Кировоградская область'),
(13, 'Львовская область'),
(14, 'Полтавская область'),
(15, 'Тернопольская область'),
(16, 'Хмельницкая область'),
(17, 'Черновицкая область'),
(18, 'Волынская область'),
(19, 'Житомирская область'),
(20, 'Ивано-Франковская область'),
(21, 'Николаевская область'),
(22, 'Ровенская область'),
(23, 'Харьковская область'),
(24, 'Черкасская область');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_avatar_img` int(10) UNSIGNED DEFAULT NULL,
  `user_region_id` int(10) UNSIGNED NOT NULL,
  `user_telephone` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_avatar_img`, `user_region_id`, `user_telephone`, `user_email`, `user_pass`) VALUES
(1, 'testuser', NULL, 8, 879452486, 'email@email', '123456');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_category_id` (`name_category_id`,`name_user_id`,`img_id`),
  ADD KEY `name_user_id` (`name_user_id`),
  ADD KEY `img_id` (`img_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `img_advertisement`
--
ALTER TABLE `img_advertisement`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `region`
--
ALTER TABLE `region`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_region_id` (`user_region_id`),
  ADD KEY `user_region_id_2` (`user_region_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `img_advertisement`
--
ALTER TABLE `img_advertisement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `region`
--
ALTER TABLE `region`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`name_category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `advertisement_ibfk_2` FOREIGN KEY (`name_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `advertisement_ibfk_3` FOREIGN KEY (`img_id`) REFERENCES `img_advertisement` (`id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_region_id`) REFERENCES `region` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
