-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 08 2017 г., 16:15
-- Версия сервера: 5.5.53-0+deb8u1
-- Версия PHP: 5.6.29-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `infoparts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `date` date NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `car_cat` tinyint(1) NOT NULL,
  `truck_cat` tinyint(1) NOT NULL,
  `oil_cat` tinyint(1) NOT NULL,
  `tire_cat` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `slug`, `content`, `image`, `status`, `date`, `featured`, `created_at`, `updated_at`, `deleted_at`, `car_cat`, `truck_cat`, `oil_cat`, `tire_cat`) VALUES
(1, 1, 'Visteon’s next-generation vehicle infotainment platform', 'visteon-s-next-generation-vehicle-infotainment-platform', '<p>Visteon Corporation &ndash; a technology leader&nbsp;in the fast-growing automotive cockpit electronics and infotainment segment &ndash; will showcase its latest innovations for the connected car at CES&reg; 2017 Jan. 5-8 in Las Vegas. This will be Visteon&rsquo;s 18th year at CES.</p>\r\n\r\n<hr />\r\n<p>Headlining Visteon&rsquo;s exhibit will be the debut of its next-generation infotainment platform,&nbsp;Phoenix&trade;, which is designed to unlock innovation by enabling third-party developers to create apps easily, while delivering built-in cybersecurity and over-the-air updates. Based on HTML5 and offering a JavaScript-based application program interface (API), Phoenix is the first automotive infotainment system to offer SDK and software simulation to enable easy development of apps.</p>\r\n\r\n<p>Other highlights of Visteon&rsquo;s exhibit include an&nbsp;<strong>in-vehicle augmented reality windshield head-up display (HUD)</strong>&nbsp;that overlays virtual information directly in the driver&rsquo;s sight; a full range of all-digital instrument clusters; and an array of information displays that will become the primary interface with consumers as new mobility models and autonomous driving continue to evolve.</p>\r\n\r\n<p>&ldquo;CES is the ideal event to showcase how Visteon is transforming the future of mobility and accelerating improvements in vehicle security, safety and the driving experience,&rdquo; said Visteon President and CEO Sachin Lawande. &ldquo;No other technology segment is influencing the future of mobility more rapidly than cockpit electronics. With<strong>&nbsp;the shift toward the all-digital cockpit &ndash; or e-cockpit &ndash; gaining further traction</strong>, we will demonstrate at CES how Visteon is ideally positioned to capitalize on new opportunities, as the only Tier 1 supplier focused exclusively on cockpit electronics.&rdquo;</p>\r\n\r\n<p><a href="http://info-parts.com/images/stories/NEWS/2016/Dec/visteon_future_connection.jpg" target="_blank"><img alt="Visteon infotainment platform CES 2017 " src="http://info-parts.com/images/stories/NEWS/2016/Dec/visteon_future_connection.jpg" style="width:100%" /></a></p>\r\n\r\n<p>Interactive exhibits and a specially equipped vehicle will showcase Visteon&rsquo;s expertise in instrument clusters, head-up displays, information displays, infotainment and connectivity. Highlights of Visteon technology at CES will include:</p>\r\n\r\n<ul>\r\n	<li><strong>Instrument clusters</strong>&nbsp;&ndash; The latest in large, high-resolution displays, including 3D, all-digital, hybrid digital/analog and cluster-with-camera.</li>\r\n	<li><strong>Head-up displays</strong>&nbsp;&ndash; In addition to augmented reality technology, Visteon will feature multiple HUD applications, including windshield HUD and four levels of combiner HUD that bring head-up technology to mass market vehicles.</li>\r\n	<li><strong>Information displays</strong>&nbsp;&ndash; Featured will be dual OLED (organic light-emitting diode), compound curve, and dual-view displays that show different content based on viewing angle &ndash; such as navigation for the driver and video for the passenger.</li>\r\n	<li><strong>SmartCore&trade;</strong>&nbsp;&ndash; Addressing electronic module consolidation, this controller integrates infotainment, instrument clusters, information displays, head-up displays, advanced driver assistance systems (ADAS) and connectivity &ndash; providing a foundation for the evolution to autonomous driving.</li>\r\n</ul>\r\n\r\n<p>Visteon experts in artificial intelligence and ADAS also will share an autonomous vehicle program that is in development. Visteon&rsquo;s approach applies machine-learning technology to detect and classify objects in a vehicle&rsquo;s path and plan vehicle movements, leading to fully trained driving control systems.</p>\r\n\r\n<p>Visteon also will participate in an SAE International&reg; 2017 Connect2Car interactive panel from 1-3:15 p.m. PST on Jan. 5 in North Hall (N258). Timothy Yerdon, who leads global marketing for Visteon, will participate on the &ldquo;Connecting with Confidence&rdquo; panel, focused on enhancing the driver experience and accelerating the deployment of mobile technologies.</p>\r\n\r\n<p>Just prior to CES, Visteon will preview cockpit electronics technology at the official pre-CES media event, CES Unveiled Las Vegas, from 5-8:30 p.m. PST on Tuesday, Jan. 3, in the South Pacific Ballroom of the Mandalay Bay Hotel.</p>\r\n', 'uploads/404.gif', 'PUBLISHED', '2016-12-27', 0, '2016-12-27 09:35:22', '2016-12-27 16:07:04', NULL, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
`id` int(10) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'Технический портал', 'tehnicheskiy-portal', '2016-12-27 09:31:25', '2016-12-27 09:31:25', NULL),
(2, 1, NULL, NULL, NULL, 'Кузов', 'kuzov', '2016-12-27 09:31:41', '2016-12-27 09:31:41', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_08_04_130507_create_article_tag_table', 1),
(4, '2015_08_04_130520_create_articles_table', 1),
(5, '2015_08_04_130551_create_categories_table', 1),
(6, '2015_08_04_131614_create_settings_table', 1),
(7, '2015_08_04_131626_create_tags_table', 1),
(8, '2016_05_05_115641_create_menu_items_table', 1),
(9, '2016_05_25_121918_create_pages_table', 1),
(10, '2016_07_24_060017_add_slug_to_categories_table', 1),
(11, '2016_07_24_060101_add_slug_to_tags_table', 1),
(12, '2016_08_08_888888_create_tasks_table', 1),
(14, '2016_12_27_122136_add_4main_categories_to_articles', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `extras` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zdan@bk.ru', '41ad59f94d9404f6f699bf9a62421504c7952fb6ee7c8539f81443af2533cb45', '2017-01-03 13:34:21');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'body', 'body', '2016-12-27 09:34:52', '2016-12-27 09:34:52', NULL),
(2, 'repair', 'repair', '2016-12-27 09:35:01', '2016-12-27 09:35:01', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
`id` int(10) unsigned NOT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'infoparts', 'zdan@bk.ru', '$2y$10$nauxu5JAa5ZYcldz4IhcIOgUAa5cR38qsY4oNjaEZ.JyoGbAYi/G2', 'Mn2bT1PhdcfDoT2VRsu20gBZUQAT3SYHmp8d6HuVx2jDcU9hGt85F3NeuMgK', '2016-12-27 09:15:54', '2016-12-27 09:21:26');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `article_tag`
--
ALTER TABLE `article_tag`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
