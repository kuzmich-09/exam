-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: sql211.infinityfree.com
-- Время создания: Ноя 05 2024 г., 04:51
-- Версия сервера: 10.6.19-MariaDB
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `if0_37441938_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`) VALUES
(1, 1, 'Ð”ÑƒÐ¶Ðµ Ñ…Ð¾Ñ€Ð¾ÑˆÐ°'),
(2, 1, 'Ð—Ð°Ð´Ð¾Ð²Ñ–Ð»ÑŒÐ½Ð°'),
(3, 1, 'ÐŸÐ¾ÑÐµÑ€ÐµÐ´Ð½Ñ'),
(4, 1, 'ÐŸÐ¾Ð³Ð°Ð½Ð°'),
(5, 1, 'Ð”ÑƒÐ¶Ðµ Ð¿Ð¾Ð³Ð°Ð½Ð°'),
(6, 2, 'Ð¢Ð°Ðº, Ð¿Ð¾ÑÑ‚Ñ–Ð¹Ð½Ð¾'),
(7, 2, 'Ð§Ð°Ñ Ð²Ñ–Ð´ Ñ‡Ð°ÑÑƒ'),
(8, 2, 'Ð Ñ–Ð´ÐºÐ¾'),
(9, 2, 'ÐÑ–ÐºÐ¾Ð»Ð¸'),
(10, 3, 'Ð¢Ð°Ðº, Ñ‡Ð°ÑÑ‚Ð¾'),
(11, 3, 'Ð†Ð½ÐºÐ¾Ð»Ð¸'),
(12, 3, 'Ð”ÑƒÐ¶Ðµ Ñ€Ñ–Ð´ÐºÐ¾'),
(13, 3, 'ÐÑ–ÐºÐ¾Ð»Ð¸');

-- --------------------------------------------------------

--
-- Структура таблицы `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `polls`
--

INSERT INTO `polls` (`id`, `title`, `description`, `created_at`) VALUES
(1, 'Ð¯ÐºÑ–ÑÑ‚ÑŒ Ð¿Ð¾Ð²Ñ–Ñ‚Ñ€Ñ', 'Ð¦Ðµ Ð¾Ð¿Ð¸Ñ‚ÑƒÐ²Ð°Ð½Ð½Ñ ÑÑ‚Ð¾ÑÐ¾Ð²Ð½Ð¾ Ð¾Ñ†Ñ–Ð½ÐºÐ¸ ÑÐºÐ¾ÑÑ‚Ñ– Ð¿Ð¾Ð²Ñ–Ñ‚Ñ€Ñ Ð² ÐšÐ¸Ñ”Ð²Ñ–', '2024-11-05 08:38:21');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `question_text` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `poll_id`, `question_text`) VALUES
(1, 1, 'Ð¯Ðº Ð²Ð¸ Ð¾Ñ†Ñ–Ð½ÑŽÑ”Ñ‚Ðµ ÑÐºÑ–ÑÑ‚ÑŒ Ð¿Ð¾Ð²Ñ–Ñ‚Ñ€Ñ Ð² Ð¼Ñ–ÑÑ†Ñ–, Ð´Ðµ Ð²Ð¸ Ð·Ð°Ñ€Ð°Ð· Ð¿ÐµÑ€ÐµÐ±ÑƒÐ²Ð°Ñ”Ñ‚Ðµ?'),
(2, 1, 'Ð§Ð¸ Ð²Ñ–Ð´Ñ‡ÑƒÐ²Ð°Ñ”Ñ‚Ðµ Ð²Ð¸ Ð·Ð°Ð¿Ð°Ñ…Ð¸ Ð°Ð±Ð¾ Ð´Ð¾Ð¼Ñ–ÑˆÐºÐ¸ Ð² Ð¿Ð¾Ð²Ñ–Ñ‚Ñ€Ñ–?'),
(3, 1, 'Ð§Ð¸ Ð²Ñ–Ð´Ñ‡ÑƒÐ²Ð°Ñ”Ñ‚Ðµ Ð²Ð¸ Ð±ÑƒÐ´ÑŒ-ÑÐºÑ– ÑÐ¸Ð¼Ð¿Ñ‚Ð¾Ð¼Ð¸, Ð¿Ð¾Ð²\'ÑÐ·Ð°Ð½Ñ– Ð· ÑÐºÑ–ÑÑ‚ÑŽ Ð¿Ð¾Ð²Ñ–Ñ‚Ñ€Ñ (ÐºÐ°ÑˆÐµÐ»ÑŒ, Ð¿Ð¾Ð´Ñ€Ð°Ð·Ð½ÐµÐ½Ð½Ñ Ð¾Ñ‡ÐµÐ¹, Ð²Ð°Ð¶ÐºÑ–ÑÑ‚ÑŒ Ð´Ð¸Ñ…Ð°Ð½Ð½Ñ)?');

-- --------------------------------------------------------

--
-- Структура таблицы `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id`, `question_id`, `answer`) VALUES
(1, 1, 'Ð´Ð¾Ð±Ñ€Ðµ'),
(2, 2, 'Ð½Ñ–'),
(3, 3, 'Ð½Ñ–'),
(4, 1, 'Ð”ÑƒÐ¶Ðµ Ñ…Ð¾Ñ€Ð¾ÑˆÐ°'),
(5, 2, 'Ð¢Ð°Ðº, Ð¿Ð¾ÑÑ‚Ñ–Ð¹Ð½Ð¾'),
(6, 3, 'Ð”ÑƒÐ¶Ðµ Ñ€Ñ–Ð´ÐºÐ¾'),
(7, 1, 'Ð—Ð°Ð´Ð¾Ð²Ñ–Ð»ÑŒÐ½Ð°'),
(8, 2, 'Ð Ñ–Ð´ÐºÐ¾'),
(9, 3, 'Ð¢Ð°Ðº, Ñ‡Ð°ÑÑ‚Ð¾'),
(10, 1, 'Ð—Ð°Ð´Ð¾Ð²Ñ–Ð»ÑŒÐ½Ð°'),
(11, 2, 'Ð Ñ–Ð´ÐºÐ¾'),
(12, 3, 'Ð¢Ð°Ðº, Ñ‡Ð°ÑÑ‚Ð¾'),
(13, 1, 'Ð”ÑƒÐ¶Ðµ Ñ…Ð¾Ñ€Ð¾ÑˆÐ°'),
(14, 2, 'Ð§Ð°Ñ Ð²Ñ–Ð´ Ñ‡Ð°ÑÑƒ'),
(15, 3, 'Ð”ÑƒÐ¶Ðµ Ñ€Ñ–Ð´ÐºÐ¾'),
(16, 1, 'Ð—Ð°Ð´Ð¾Ð²Ñ–Ð»ÑŒÐ½Ð°'),
(17, 2, 'Ð§Ð°Ñ Ð²Ñ–Ð´ Ñ‡Ð°ÑÑƒ'),
(18, 3, 'Ð†Ð½ÐºÐ¾Ð»Ð¸'),
(19, 1, 'Ð”ÑƒÐ¶Ðµ Ð¿Ð¾Ð³Ð°Ð½Ð°'),
(20, 2, 'ÐÑ–ÐºÐ¾Ð»Ð¸'),
(21, 3, 'ÐÑ–ÐºÐ¾Ð»Ð¸'),
(22, 1, 'ÐŸÐ¾ÑÐµÑ€ÐµÐ´Ð½Ñ'),
(23, 2, 'Ð§Ð°Ñ Ð²Ñ–Ð´ Ñ‡Ð°ÑÑƒ'),
(24, 3, 'Ð”ÑƒÐ¶Ðµ Ñ€Ñ–Ð´ÐºÐ¾'),
(25, 1, 'ÐŸÐ¾ÑÐµÑ€ÐµÐ´Ð½Ñ'),
(26, 2, 'Ð§Ð°Ñ Ð²Ñ–Ð´ Ñ‡Ð°ÑÑƒ'),
(27, 3, 'Ð”ÑƒÐ¶Ðµ Ñ€Ñ–Ð´ÐºÐ¾'),
(28, 1, 'Ð”ÑƒÐ¶Ðµ Ð¿Ð¾Ð³Ð°Ð½Ð°'),
(29, 2, 'Ð Ñ–Ð´ÐºÐ¾'),
(30, 3, 'Ð¢Ð°Ðº, Ñ‡Ð°ÑÑ‚Ð¾'),
(31, 1, 'Ð”ÑƒÐ¶Ðµ Ð¿Ð¾Ð³Ð°Ð½Ð°'),
(32, 2, 'Ð¢Ð°Ðº, Ð¿Ð¾ÑÑ‚Ñ–Ð¹Ð½Ð¾'),
(33, 3, 'Ð†Ð½ÐºÐ¾Ð»Ð¸'),
(34, 1, 'Ð”ÑƒÐ¶Ðµ Ñ…Ð¾Ñ€Ð¾ÑˆÐ°'),
(35, 2, 'Ð§Ð°Ñ Ð²Ñ–Ð´ Ñ‡Ð°ÑÑƒ'),
(36, 3, 'Ð†Ð½ÐºÐ¾Ð»Ð¸');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Индексы таблицы `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Индексы таблицы `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
