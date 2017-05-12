--
-- БД: `vasilij_phptest`
--

-- --------------------------------------------------------

--
-- Структура таблиці `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(5) NOT NULL auto_increment,
  `user_id` int(5) NOT NULL,
  `date` date default NULL,
  `date_end` date NOT NULL,
  `time` varchar(4) collate utf8_unicode_ci NOT NULL,
  `time_end` varchar(4) collate utf8_unicode_ci NOT NULL,
  `color` varchar(7) collate utf8_unicode_ci default NULL,
  `name` varchar(32) collate utf8_unicode_ci default NULL,
  `text` text collate utf8_unicode_ci,
  `status` varchar(16) collate utf8_unicode_ci default NULL,
  `show` int(1) NOT NULL default '1',
  `deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `event`
--

INSERT INTO `event` (`id`, `user_id`, `date`, `date_end`, `time`, `time_end`, `color`, `name`, `text`, `status`, `show`, `deleted`) VALUES
(1, 1, '2017-05-12', '2017-05-16', '1000', '1600', '#0099FF', 'test 1', '<i><b>test html</b></i><br>', 'new', 1, 0),
(2, 1, '2017-05-11', '2017-05-11', '0800', '0800', '#aaa', 'test', 'test', 'new', 1, 0),
(3, 1, '2017-05-11', '2017-05-31', '0800', '1500', '#0066FF', 'test', 'test', 'new', 1, 0),
(4, 1, '2017-05-11', '2017-05-16', '1000', '1200', '#99CC99', 'test', 'test', 'new', 1, 0),
(5, 1, '2017-05-16', '2017-05-23', '0800', '0900', '#009933', 'test 5', '<i><b><font face="Comic Sans MS" size="4">test 5 html</font></b></i><br>', 'done', 1, 0),
(6, 2, '2017-05-12', '2017-05-18', '1000', '1400', '#CCFF99', 'test 6', '<font face="Calibri"><i><b><font size="6">test html 6</font></b></i></font><br>', 'progress', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `user_site`
--

CREATE TABLE IF NOT EXISTS `user_site` (
  `id` int(9) NOT NULL auto_increment,
  `user` varchar(64) collate utf8_unicode_ci default NULL,
  `status` varchar(16) collate utf8_unicode_ci NOT NULL default 'user',
  `mail` varchar(64) collate utf8_unicode_ci NOT NULL,
  `time` varchar(64) collate utf8_unicode_ci NOT NULL,
  `password` varchar(64) collate utf8_unicode_ci default NULL,
  `pwd` varchar(32) collate utf8_unicode_ci default NULL,
  `blocked` int(1) default '0',
  `deleted` int(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `user_site`
--

INSERT INTO `user_site` (`id`, `user`, `status`, `mail`, `time`, `password`, `pwd`, `blocked`, `deleted`) VALUES
(1, 'Vasilij', 'admin', 'test@test.ua', '2015-03-20', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 0, 0),
(2, 'Dominik', 'user', 'b_dominik@meta.ua', '2017-05-8', 'ce3b7c8af680f217c2f72428cc2a9a9b', '9d9787d6', 0, 0);
