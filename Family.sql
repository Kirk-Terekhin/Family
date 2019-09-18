-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 28 2017 г., 23:24
-- Версия сервера: 5.5.45
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `Family`
--

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_assets`
--

CREATE TABLE IF NOT EXISTS `a4qwu_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `a4qwu_assets`
--

INSERT INTO `a4qwu_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 103, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 50, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 51, 52, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 53, 54, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 55, 56, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 57, 58, 1, 'com_login', 'com_login', '{}'),
(13, 1, 59, 60, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 61, 62, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 63, 64, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 65, 66, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 67, 68, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 69, 70, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 71, 74, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 75, 76, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 77, 78, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 79, 80, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 81, 82, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 83, 86, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 87, 90, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 91, 92, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 37, 2, 'com_content.category.2', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 72, 73, 2, 'com_newsfeeds.category.5', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 88, 89, 2, 'com_weblinks.category.6', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 84, 85, 1, 'com_users.category.7', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 93, 94, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 95, 96, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 27, 19, 20, 3, 'com_content.article.1', 'О нас', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(36, 27, 21, 22, 3, 'com_content.article.2', 'Об отеле', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 23, 24, 3, 'com_content.article.3', 'Цены', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 27, 25, 26, 3, 'com_content.article.4', 'Экскурсии', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 27, 27, 28, 3, 'com_content.article.5', 'Развлечения', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 27, 29, 30, 3, 'com_content.article.6', 'Информация по размещению', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 27, 31, 32, 3, 'com_content.article.8', 'Галерея', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 1, 97, 98, 1, 'com_rokgallery', 'rokgallery', '{}'),
(48, 1, 99, 100, 1, 'com_jcomments', 'jcomments', '{}'),
(49, 8, 38, 41, 2, 'com_content.category.8', 'Отзывы', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(50, 49, 39, 40, 3, 'com_content.article.9', 'Отзывы', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 8, 42, 49, 2, 'com_content.category.9', 'Новости', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(52, 51, 43, 44, 3, 'com_content.article.10', 'Новость', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 51, 45, 46, 3, 'com_content.article.11', 'Открытие новых номеров', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 51, 47, 48, 3, 'com_content.article.14', 'Новость еще', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 27, 33, 34, 3, 'com_content.article.12', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 27, 35, 36, 3, 'com_content.article.13', 'Номера', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 1, 101, 102, 1, 'com_rsform', 'rsform', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_associations`
--

CREATE TABLE IF NOT EXISTS `a4qwu_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_banners`
--

CREATE TABLE IF NOT EXISTS `a4qwu_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_banner_clients`
--

CREATE TABLE IF NOT EXISTS `a4qwu_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `a4qwu_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_categories`
--

CREATE TABLE IF NOT EXISTS `a4qwu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `a4qwu_categories`
--

INSERT INTO `a4qwu_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 49, 1, 13, 14, 1, 'otzyvy', 'com_content', 'Отзывы', 'otzyvy', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2015-07-08 09:58:20', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 51, 1, 15, 16, 1, 'novosti', 'com_content', 'Новости', 'novosti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2015-07-08 18:10:23', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_contact_details`
--

CREATE TABLE IF NOT EXISTS `a4qwu_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_content`
--

CREATE TABLE IF NOT EXISTS `a4qwu_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `a4qwu_content`
--

INSERT INTO `a4qwu_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'О нас', 'o-nas', '', '<h2 style="text-align: center;"><strong>О нас:</strong></h2>\r\n<p><span style="font-family: trebuchet ms,geneva;">Добро Пожаловать в Дом отдыха «СемьЯ»</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Наш дом отдыха расположен на берегу озера Иссык-Куль, в с. Сары-Ой, в 245 км езды от г.Бишкек, в 10 км от г. Чолпон-Ата и в 25 км от международного аэропорта «Тамчы»  </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Дом отдыха «СемьЯ» - состоит из двух корпусов. Корпус №1 был открыт в 2012, а корпус №2 в августе 2014 г. У нас вы найдете первоклассные номера класса люкс. Вам мы можем предложить номера категории «СемьЯ», которые состоят из двух комнат и рассчитаны на 4 человека, а также номера категории «Сладкая парочка», однокомнатные номера для двоих. Все номера оснащены современными удобствами, такими как: высокоскоростной доступ в интернет в каждом номере, спутниковое ТВ, холодильник, душ с холодной и горячей водой. Наш дом отдыха может разместить до 90 человек.</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Территория ДО «СемьЯ» оснащена камерами видеонаблюдения по всему периметру. </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">На территории ДО «СемьЯ» располагаются:</span></p>\r\n<ul>\r\n<li><span style="font-family: trebuchet ms,geneva;">Столовая (всегда свежая и вкусная еда)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Конференц-зал (5</span><span style="font-family: ''trebuchet ms'', geneva; line-height: 1.3em;">0 чел.)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Детская площадка (горки, качели, песочница)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Бильярд (2 стола)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Теннисный стол</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">PlayStation 3</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Тренажерное оборудование</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Маленький бассейн для детей</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Большой каркасный бассейн (10 м.)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Интернет, Wi-Fi</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Топчаны</span></li>\r\n</ul>\r\n<p><span style="font-family: trebuchet ms,geneva;">Для наших гостей мы также предлагаем посетить ЦО «Радуга» и ЦО «Карвен 4 сезона», которые считаются одним из лучших пансионатов на всем побережье Иссык-Куля.  </span></p>', '', 1, 0, 0, 2, '2015-07-04 10:17:16', 579, '', '2015-07-11 11:12:56', 579, 0, '0000-00-00 00:00:00', '2015-07-04 10:17:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 8, '', '', 1, 279, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 36, 'Об отеле', 'about', '', '<h2 style="text-align: center;"><strong>Об отеле:</strong></h2>\r\n<p>Мы рады приветствовать Вас на нашем сайте! </p>\r\n<p>Дома отдыха «СемьЯ»</p>\r\n<p><strong style="line-height: 1.3em;">Расположение</strong></p>\r\n<p>Cеверноe побережье озера Иссык-Куль, с. Сары-Ой, в 15 км от г. Чолпон-Аты и в 245 км от г. Бишкека. Из-за сочетания умеренно-морского и горного климата на побережье Иссык-Куля не бывает изнурительной жары и продолжительных дождей. Вода в озере слабо-соленая, прогревается до 25 градусов. Воздух всегда свежий с ароматами горных трав.</p>\r\n<p><strong style="line-height: 1.3em;">Номера </strong></p>\r\n<p>Включает 2 корпуса с 29 номерами класса люкс на 90 человек. Все номера  оборудованы  спутниковым  телевидением, теплым полом. В стоимость  номера входит: проживание, бассейн, wi-fi интернет в каждом номере.</p>\r\n<p><strong style="line-height: 1.3em;">К Вашим услугам</strong></p>\r\n<p>По желанию: экскурсии по заповедным местам, прогулки на теплоходе, катерах, индивидуальные прогулки на комфортабельной яхте, рыбалка, дайвинг, сафари и многое другое.</p>\r\n<p><span style="line-height: 1.3em;"><strong>Территория дома отдыха “СемьЯ”</strong></span><span style="line-height: 1.3em;"> </span></p>\r\n<ul>\r\n<li><span style="font-family: trebuchet ms,geneva;">Столовая (всегда свежая и вкусная еда)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Конференц-зал (50 чел.)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Детская площадка (горки, качели, песочница)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Бильярд (2 стола)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Теннисный стол</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">PlayStation 3</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Тренажерное оборудование</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Маленький бассейн для детей</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Большой каркасный бассейн (10 м.)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Интернет, Wi-Fi</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;">Топчаны</span></li>\r\n</ul>\r\n<p><span style="font-family: trebuchet ms,geneva;">Территория круглосуточно охраняется, вся территория находится под круглосуточным видеонаблюдением. </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;"> </span></p>\r\n<p>{loadmodule mod_news}</p>', '', 1, 0, 0, 2, '2015-07-04 10:18:29', 579, '', '2015-07-11 11:13:53', 579, 0, '0000-00-00 00:00:00', '2015-07-04 10:18:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 7, '', '', 1, 743, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'Цены', 'price', '', '<h2 style="text-align: center;"><span style="font-size: x-large; font-family: andale mono,times;"><strong>                   Цены:</strong><span style="line-height: 1.3em;"> </span></span></h2>\r\n<p style="text-align: center;"><img src="images/2mest/IMG_2793.JPG" border="0" alt="Double" width="302" height="201" style="float: left;" /> Тип номера "<strong>Double</strong>" - уютный номер на двоих.   <br /> В номере есть спутниковое ТВ, wi-fi интернет, сушка для                   белья, гардеробный шкаф, холодильник, душ туалет с холодной и горячей водой.</p>\r\n<p style="text-align: center;"><strong>Цена: 50$</strong></p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><span style="line-height: 1.3em;"> </span></p>\r\n<p style="text-align: center;"><img src="images/IMG_2737.JPG" border="0" width="300" height="225" style="float: left;" />Тип номера "<strong>Double+</strong>" - уютный номер для двоих, номер состоит из двух комнат. Спальная и холл, с плазменным ТВ, теплыми полами, совершенно новая мебель, а также собственный балкон.  </p>\r\n<p style="text-align: center;"><strong>Цена: 80$</strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p style="text-align: center;"> <br /><br /><img src="images/newkorpus/IMG_2884.JPG" border="0" width="299" height="199" style="float: left;" />Тип номера "Family" - просторный большой уютный номер на 4 чел., абсолютно новая мебель, плазменные ТВ, теплые полы, душ туалет с горячей и холодной водой. <br /><br /></p>\r\n<p style="text-align: center;"><strong>Цена: 90$</strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<table style="border-width: 0px; border-style: solid; margin-left: auto; margin-right: auto; width: 100%;" border="0" cellspacing="0" cellpadding="10">\r\n<tbody>\r\n<tr style="background-color: #008b4f;">\r\n<td>\r\n<h4><span style="font-size: large; color: #ffffff;"><strong><span style="font-family: ''andale mono'', times;"><span style="font-family: ''andale mono'', times;">Тип номера</span> </span></strong></span></h4>\r\n</td>\r\n<td align="center">\r\n<h4><span style="font-family: ''andale mono'', times; font-size: large; color: #ffffff;"><strong>01-07/24-07 </strong></span></h4>\r\n</td>\r\n<td align="center">\r\n<h4><span style="font-family: ''andale mono'', times; font-size: large; color: #ffffff;"><strong>24-07/25-08</strong></span></h4>\r\n</td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td align="center">\r\n<p><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">Double </span></p>\r\n</td>\r\n<td style="text-align: center;">\r\n<p><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">50$</span></p>\r\n</td>\r\n<td style="text-align: center;">\r\n<p><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">60$</span></p>\r\n</td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td align="center"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">Double+ </span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">80$</span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">85$</span></td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td align="center"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">Triple </span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">75$</span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">80$</span></td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td align="center"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">Family </span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">90$</span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">100$</span></td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td align="center"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">Family+ </span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">100$</span></td>\r\n<td style="text-align: center;"><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;">110$</span></td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td> </td>\r\n<td><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;"> </span></td>\r\n<td><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;"> </span></td>\r\n</tr>\r\n<tr style="background-color: rgba(255, 255, 255, .3);">\r\n<td><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;"> </span></td>\r\n<td><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;"> </span></td>\r\n<td><span style="font-size: large; color: #000000; font-family: ''andale mono'', times;"> </span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="font-family: ''andale mono'', times;"> </span></p>\r\n<p><span style="font-family: ''andale mono'', times;"> </span></p>\r\n<p><span style="font-family: ''andale mono'', times;"> </span></p>\r\n<p><span style="font-family: ''andale mono'', times;"> </span></p>\r\n<p><span style="font-family: ''andale mono'', times;"> </span></p>', '', 1, 0, 0, 2, '2015-07-04 10:19:47', 579, '', '2015-07-11 18:52:31', 579, 0, '0000-00-00 00:00:00', '2015-07-04 10:19:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 25, 0, 6, '', '', 1, 273, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 38, 'Экскурсии', 'ekskursii', '', '<h2 style="text-align: center;"><strong>Экскурсии:</strong></h2>\r\n<h4><span style="font-size: medium;">Ущелье Джеты-Огуз.</span></h4>\r\n<p><span style="font-family: trebuchet ms,geneva;">Скальные ансамбли «Семь быков» и «Разбитое сердце» из красного песчаника – стали символами Иссык-Кульской области, о них сложены легенды и мифы. Огромные темно-зеленые леса создают красивое контрастное цветовое сочетание. В тур входит посещение в г. Каракол: Троицкой православной церкви, Дунганской мечети – построенной без единого гвоздя, музея им. Н.М. Пржевальского. </span></p>\r\n<h2><strong><img src="images/ -.jpg" border="0" alt="" width="276" height="208" /></strong></h2>\r\n<h4><span style="font-size: medium;">Григорьевское ущелье и Семеновское ущелье</span></h4>\r\n<p><span style="font-family: trebuchet ms,geneva;">Григорьевское и Семеновское ущелья – живописнейшие ущелья Иссык-Кульской области. На склонах гор возвышаются реликтовые тянь-шаньские ели, по дну ущелий мчится ледниковая вода кристальной чистоты. Воздух наполнен ароматами высокогорных трав. Летом здесь устанавливают юрты, где желающие могут познакомиться с бытом кыргызов, отведать блюда кыргызской кухни: бешбармак, кумыс и т.д. Для любителей верховой езды организуются конные прогулки по ущелью. Фотографии на память с ловчими птицами.<br /><br /><img src="images/    .jpg" border="0" alt="" width="269" height="202" />    <img src="images/ .jpg" border="0" alt="" width="315" height="210" /></span></p>\r\n<p><span style="font-size: medium; font-family: Arial, Helvetica, sans-serif; font-weight: bold; line-height: 1.3em;">Соленое озеро.</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Аналог мертвого моря в Израиле. Из-за высокого содержания минеральных солей купание способствует лечению кожных заболеваний, заболеваний суставов и органов дыхания. Тем более что купание в озере не доставит хлопот, лежи себе на спине на водной глади, даже двигаться не надо, так как чем глубже погружение, тем больше выталкивание. На озере есть природные запасы лечебной грязи и голубой косметологической глины, которыми вы незамедлительно можете воспользоваться намазав на тело.<br /><img src="images/ jpg" border="0" alt="" width="323" height="215" /><br /></span></p>\r\n<p><span style="font-size: medium; font-family: Arial, Helvetica, sans-serif; font-weight: bold; line-height: 1.3em;">Культурный центр «Рух Ордо Ташкул-Ата», петроглифы.</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Уникальность комплекса, по задумке автора Т. Керексизова, заключается в единении пяти основных религий мира: ислама, православия, католичества, буддизма и иудаизма в одном месте, под одним небом. Бог един для всех – таков постулат этого духовного центра. Каждый, кто попадает сюда, независимо от вероисповедания и национальности чувствует себя частичкой вселенной и может в полной мере насладиться спокойствием, умиротворением, позволяя мыслям погрузиться в глубокие философские размышления, заставляя задуматься о смысле жизни. Петроглифы представляют собой наскальные изображения – это музей под открытым небом (42 га), где насчитывается несколько десятков тысяч изображений. В основном это олени, козероги, сцены охоты. Возможно, раньше на месте музея был храм, где древние люди молились богам. Размер валунов от 0,3 – 3 метров.</span>  <br /><img src="images/  -2.jpeg" border="0" alt="" width="320" height="219" />  <img src="images/  -1.jpg" border="0" alt="" width="286" height="215" /></p>\r\n<p>Фото: www.ruhordo.kg <br />Текст: www.ak-maral.kg </p>', '', 1, 0, 0, 2, '2015-07-04 10:23:38', 579, '', '2015-07-10 03:43:31', 579, 0, '0000-00-00 00:00:00', '2015-07-04 10:23:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 5, '', '', 1, 104, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 39, 'Развлечения', 'razvlecheniya', '', '<h2 style="text-align: center;"><strong>Развлечения:</strong></h2>\r\n<p><span style="font-family: trebuchet ms,geneva;">Бильярд – 2 стола</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Настольный теннис – 1 стол</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">PlayStation 3</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Тренажерное оборудование</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Детская площадка</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Бассейн – 2 </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;"><span>{gallery}billiard{/gallery}</span></span></p>', '', 1, 0, 0, 2, '2015-07-04 10:24:54', 579, '', '2015-07-09 10:50:23', 579, 0, '0000-00-00 00:00:00', '2015-07-04 10:24:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 4, '', '', 1, 125, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 40, 'Информация по размещению', 'informatsiya-po-razmeshcheniyu', '', '<h2 style="text-align: center;"><span> Информация по размещению</span></h2>\r\n<h4><span style="font-size: medium;">Расчетное время</span></h4>\r\n<ul>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Время заезда с 13:00 (Для гостей из Казахстана кто прибывает ранним утром! обговаривается заранее)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Время выезда строго до 11:30</span></li>\r\n</ul>\r\n<p><br /><span style="font-family: trebuchet ms,geneva;"> Опоздание клиента не компенсируется. В порядке исключения, специально для туристических фирм, время заезда и выезда устанавливается по предварительной договоренности с туристической фирмой</span></p>\r\n<ul>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Ранний заезд с 04:00 часов до 12:00 часов – доплата ½ суток (при наличии свободных мест)</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Поздний выезд после 12:00 часов до 19:00 часов – доплата ½ сутки (при наличии свободных мест)</span></li>\r\n</ul>\r\n<h4><br /> <span style="font-size: medium;">Услуги размещения</span></h4>\r\n<ul>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Размещение более 2-х человек в номере без дополнительной оплаты строго запрещается</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Дети в возрасте до 5 лет принимаются бесплатно </span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> При размещении одного человека в двухместном номере оплата производится за весь номер</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Для размещения в номерах необходимо при себе иметь паспорт или удостоверение личности.</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Стоимость предоставления дополнительного постельного комплекта составляет - 350 сом</span></li>\r\n</ul>\r\n<h4><br /> <span style="font-size: medium;">Правила проживания</span></h4>\r\n<ul>\r\n<li><span style="font-family: trebuchet ms,geneva;"> В целях пожарной безопасности использование в номерах электроплиты для приготовления пищи строго запрещается</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Привозить домашних животных (кошки, собаки, хомяки, канарейки и т.д.) с собой на территорию и в номера категорически запрещается</span></li>\r\n<li><span style="font-family: trebuchet ms,geneva;"> Автостоянка – бесплатно с расчета 1 номер-1 машина</span></li>\r\n</ul>\r\n<p> </p>', '', 1, 0, 0, 2, '2015-07-04 13:51:36', 579, '', '2015-07-06 07:26:46', 579, 0, '0000-00-00 00:00:00', '2015-07-04 13:51:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 3, '', '', 1, 102, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 42, 'Галерея', 'galereya', '', '<h2 style="text-align: center;"><strong>Галерея</strong></h2>\r\n<p>{gallery}2mest{/gallery}</p>\r\n<p>{gallery}4mest{/gallery}</p>\r\n<p><span>{gallery}billiard{/gallery}</span><span id="copylink"></span></p>\r\n<p>{gallery}dush{/gallery}</p>\r\n<p>{gallery}kamery{/gallery}</p>\r\n<p>{gallery}newkorpus{/gallery}</p>\r\n<p>{gallery}territoria{/gallery}</p>', '', 1, 0, 0, 2, '2015-07-05 07:31:25', 579, '', '2015-07-09 16:59:40', 579, 0, '0000-00-00 00:00:00', '2015-07-09 06:58:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, 2, '', '', 1, 181, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 50, 'Отзывы', 'otzyvy', '', '<h1 style="text-align: center;"><strong><span style="font-size: xx-large;">Отзывы</span></strong></h1>', '', 1, 0, 0, 8, '2015-07-08 10:00:18', 579, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-07-08 10:00:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 162, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 52, 'Новость', 'demo-novost', '', '<p style="text-align: center;"><span style="font-family: trebuchet ms,geneva;"><img src="images/PWtIyR1k2DQ.jpg" border="0" alt="" /></span></p>\r\n<p style="text-align: justify;"><span style="font-family: trebuchet ms,geneva;">Новость</span></p>\r\n', '\r\n<p style="text-align: justify;"><span style="font-family: trebuchet ms,geneva;">Новость</span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;"> </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;"> </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;"> </span></p>\r\n<p><span style="font-family: trebuchet ms,geneva;">Демо текст</span></p>', -2, 0, 0, 9, '2015-07-08 18:16:17', 579, '', '2015-07-09 10:45:12', 579, 0, '0000-00-00 00:00:00', '2015-07-08 18:16:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 2, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 53, 'Открытие новых номеров', 'news', '', '<p style="text-align: justify;"><img src="images/IMG_2737.JPG" border="0" alt="" width="248" height="186" style="text-align: left; line-height: 1.3em;" /></p>\r\n<p style="text-align: left;">Совсем скоро! Новые номера Double+ </p>\r\n', '\r\n<p style="text-align: left;">Совсем скоро! Новые номера Double+, комфорт, домашний уют, wi-fi интернет, плазменные тв, теплые полы. <br />Успейте забронировать! стоимость 70$ </p>', 1, 0, 0, 9, '2015-07-08 18:33:32', 579, '', '2015-07-10 04:00:53', 579, 0, '0000-00-00 00:00:00', '2015-07-08 18:33:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 1, '', '', 1, 49, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 55, 'Контакты', 'kontakty', '', '<p><strong><span>+996 770 222 555</span></strong><br /><strong><span>+996 772 180 780</span></strong></p>\r\n<p><strong style="font-size: 12.1599998474121px; line-height: 1.3em;">Email: <a href="mailto:office@family.com.kg">office@family.com.kg</a></strong></p>\r\n<p><strong><span>Кыргызская Республика</span><br /><strong>с. Сары-Ой</strong></strong></p>', '', 1, 0, 0, 2, '2015-07-09 09:06:02', 579, '', '2015-07-09 09:46:22', 579, 0, '0000-00-00 00:00:00', '2015-07-09 09:06:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 1, '', '', 1, 73, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 56, 'Номера', 'nomera', '', '<h2 style="text-align: center;"><strong>Номера</strong></h2>\r\n<p>Двухместные номера</p>\r\n<p>{gallery}2mest{/gallery}</p>\r\n<p>Четырехместные номера</p>\r\n<p>{gallery}4mest{/gallery}</p>', '', 1, 0, 0, 2, '2015-07-09 09:09:54', 579, '', '2015-07-09 12:36:32', 579, 0, '0000-00-00 00:00:00', '2015-07-09 09:09:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 0, '', '', 1, 106, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 58, 'Новость еще', 'novost-eshche', '', '<p><img src="images/joomla_black.gif" border="0" alt="" /></p>\r\n<p>Открытие сезона</p>\r\n', '\r\n<p> </p>', -2, 0, 0, 9, '2015-07-09 12:38:01', 579, '', '2015-07-09 12:39:09', 579, 0, '0000-00-00 00:00:00', '2015-07-09 12:38:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `a4qwu_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_content_rating`
--

CREATE TABLE IF NOT EXISTS `a4qwu_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `a4qwu_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_extensions`
--

CREATE TABLE IF NOT EXISTS `a4qwu_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10057 ;

--
-- Дамп данных таблицы `a4qwu_extensions`
--

INSERT INTO `a4qwu_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `a4qwu_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'RSFormProRussianlanguagepack', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":false,"name":"RSForm!Pro Russian language pack","type":"language","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/rsjoomla.com","version":"","description":"","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'RSFormProRussianlanguagepack', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":false,"name":"RSForm!Pro Russian language pack","type":"language","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"4","description":"","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"March 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'RSFormProRussianlanguagepack', 'package', 'pkg_RSFormProRussianlanguagepack', '', 0, 1, 1, 0, '{"legacy":false,"name":"RSForm!Pro Russian language pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'family.com.kg', 'template', 'family.com.kg', '', 0, 1, 1, 0, '{"legacy":false,"name":"family.com.kg","type":"template","creationDate":"04.07.2015","author":"Ragnarok","copyright":"2015","authorEmail":"email","authorUrl":"url","version":"1.0.0","description":"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Slideshow CK', 'module', 'mod_slideshowck', '', 0, 1, 0, 0, '{"legacy":false,"name":"Slideshow CK","type":"module","creationDate":"Avril 2012","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"1.4.11","description":"MOD_SLIDESHOWCK_XML_DESCRIPTION","group":""}', '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","skin":"camera_amber_skin","alignment":"center","loader":"pie","width":"auto","height":"62%","navigation":"2","thumbnails":"1","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","effect":"random","time":"7000","transperiod":"1500","captioneffect":"random","portrait":"0","autoAdvance":"1","hover":"1","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'SP Weather', 'module', 'mod_sp_weather', '', 0, 1, 0, 0, '{"legacy":false,"name":"SP Weather","type":"module","creationDate":"Sep 2012","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2016 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.2.5","description":"Weather module by JoomShaper.com using Yahoo weather API.","group":""}', '{"location":"London","locationTranslated":"","city":"1","condition":"1","humidity":"1","wind":"1","forecast":"4","layout":"block","separator":"\\/","tempUnit":"c","moduleclass_sfx":"","cache":"0","useCache":"1","cacheTime":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'Button - RokGallery', 'plugin', 'rokgallery', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Button - RokGallery","type":"plugin","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.31","description":"This is an Editor Button to allow selection of RokGallery Slices","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10008, 'OS ImageGallery Free', 'module', 'mod_OS_ImageGallery_Free', '', 0, 1, 0, 0, '{"legacy":false,"name":"OS ImageGallery Free","type":"module","creationDate":"Nov 2013","author":"OrdaSoft","copyright":"OrdaSoft 2013","authorEmail":"akbet@mail.ru","authorUrl":"http:\\/\\/ordasoft.com","version":"1.0.1","description":"<img src=\\"..\\/modules\\/mod_OS_ImageGallery_Free\\/images\\/os_gallery_installation_image.png\\">","group":""}', '{"imagezer":"","width":"350","height":"240","img_in_row":"3","jquery-local":"0","jquery":"0","no-conflict":"0","sufix":"ordasoft"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'com_jcomments', 'component', 'com_jcomments', '', 1, 1, 0, 0, '{"legacy":false,"name":"JComments","type":"component","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"3.0.5","description":"JComments lets your users comment on content items.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'System - RokGallery', 'plugin', 'rokgallery', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokGallery","type":"plugin","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.31","description":"A system level support plugin for RokGallery.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10025, 'RokCommon', 'library', 'lib_rokcommon', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokCommon","type":"library","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.0","description":"RokCommon Shared Library","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'System - RokCommon', 'plugin', 'rokcommon', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokCommon","type":"plugin","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.0","description":"RokCommon System Plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'rokgallery', 'component', 'com_rokgallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokGallery","type":"component","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.31","description":"Parent for all PHP based projects","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'RokGallery Module', 'module', 'mod_rokgallery', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokGallery Module","type":"module","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.31","description":"Module for displaying RokGallery","group":""}', '{"link":"0","default_menuitem":"0","title":"false","caption":"false","sort_by":"gallery_ordering","sort_direction":"ASC","limit_count":"10","css_style":"light","layout":"grid","columns":"1","arrows":"onhover","navigation":"thumbnails","animation_type":"random","animation_duration":"500","autoplay_enabled":"0","autoplay_delay":"7","showcase_arrows":"onhover","showcase_image_position":"left","showcase_imgpadding":"0","showcase_animation_type":"random","showcase_captionsanimation":"crossfade","showcase_animation_duration":"500","showcase_autoplay_enabled":"0","showcase_autoplay_delay":"7","showcase_responsive_arrows":"onhover","showcase_responsive_image_position":"left","showcase_responsive_imgpadding":"0","showcase_responsive_animation_type":"random","showcase_responsive_captionsanimation":"crossfade","showcase_responsive_animation_duration":"500","showcase_responsive_autoplay_enabled":"0","showcase_responsive_autoplay_delay":"7","cache":"0","module_cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'plg_content_jcomments', 'plugin', 'jcomments', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_CONTENT_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"show_frontpage":"1","enable_for_archived":"0","comments_count":"1","add_comments":"1","links_position":"1","readmore_link":"1","readmore_css_class":"readmore-link","comments_css_class":"comments-link","show_hits":"0","show_comments_event":"onAfterDisplayContent"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'plg_editors-xtd_jcommentson', 'plugin', 'jcommentson', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_jcommentson","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSON_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'plg_editors-xtd_jcommentsoff', 'plugin', 'jcommentsoff', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_jcommentsoff","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSOFF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'plg_search_jcomments', 'plugin', 'jcomments', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SEARCH_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'plg_system_jcomments', 'plugin', 'jcomments', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SYSTEM_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"disable_template_css":"0","disable_error_reporting":"0","clear_rss":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'plg_user_jcomments', 'plugin', 'jcomments', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_USER_JCOMMENTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'plg_quickicon_jcomments', 'plugin', 'jcomments', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_QUICKICON_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"context":"mod_quickicon","displayedtext":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'JComments Latest', 'module', 'mod_jcomments_latest', '', 0, 1, 0, 0, '{"legacy":false,"name":"JComments Latest","type":"module","creationDate":"30\\/07\\/2013","author":"smart","copyright":"Copyright 2006-2013 Joomlatune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"3.0.3","description":"MOD_JCOMMENTS_LATEST_XML_DESCRIPTION","group":""}', '{"source":"com_content","count":"5","comments_grouping":"none","ordering":"date","show_comment_title":"1","show_comment_author":"1","limit_comment_text":"100","readmore":"0","show_comment_date":"1","date_type":"absolute","date_format":"d.m.Y H:i","show_object_title":"1","link_object_title":"0","item_heading":"4","show_avatar":"0","show_smiles":"0","catid":"","useCSS":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'RSForm! Pro Module', 'module', 'mod_rsform', '', 0, 1, 0, 0, '{"legacy":false,"name":"RSForm! Pro Module","type":"module","creationDate":"November 2012","author":"RSJoomla!","copyright":"(C) 2007-2012 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.4.0","description":"MOD_RSFORM_DESC","group":""}', '{"formId":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{"legacy":true,"name":"TCPDF","type":"library","creationDate":"28 January 2011","author":"Nicola Asuni","copyright":"http:\\/\\/www.tcpdf.org","authorEmail":"","authorUrl":"http:\\/\\/www.tcpdf.org","version":"2.5.0","description":"Class for generating PDF files on-the-fly without requiring external extensions.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{"legacy":false,"name":"RSForm!","type":"component","creationDate":"March 2014","author":"RSJoomla!","copyright":"(C) 2007-2014 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.50.0","description":"COM_RSFORM_INSTALL_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'System - Google Maps', 'plugin', 'plugin_googlemap3', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Google Maps","type":"plugin","creationDate":"July 2013","author":"Mike Reumer","copyright":"(C) 2013 Reumer","authorEmail":"tech@reumer.net","authorUrl":"tech.reumer.net","version":"3.1","description":"PLUGIN_GOOGLE_MAP3_INSTALLATION","group":""}', '{"publ":"0","debug":"0","plugincode":"mosmap","brackets":"both","Google_API_version":"3.x","visualrefresh":"0","show":"1","mapclass":"","mapcss":"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r\\n*\\/\\r\\n.map img, .svPanel img {\\r\\n    border: 0px;\\r\\n    box-shadow: none;\\r\\n    margin: 0px !important;\\r\\n    padding: 0px !important;\\r\\n    max-width: none !important;\\r\\n    background: none !important;\\r\\n}\\r\\n\\r\\n\\/* Make sure the directions are below the map\\r\\n*\\/\\r\\n.directions {\\r\\n    clear: left;\\r\\n}\\r\\n\\r\\n.adp-directions {\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\n\\/* Solve problems in chrome with the show of the direction steps in full width\\r\\n*\\/\\r\\n.adp-placemark {\\r\\n    width : 100%;\\r\\n}\\r\\n\\r\\n\\/* Padding for image overlay\\r\\n*\\/\\r\\n.controlDiv {\\r\\n    padding : 5px;\\r\\n}\\r\\n","loadmootools":"1","timeinterval":"500","Google_API_key":"","Google_Multi_API_key":"","urlsetting":"http_host","googlewebsite":"maps.google.com","styledmap":"","align":"center","langtype":"site","lang":"","width":"500","height":"400","effect":"none","lat":"52.075581","lon":"4.541513","centerlat":"","centerlon":"","address":"","latitudeid":"","latitudedesc":"1","latitudecoord":"0","latitudeform":"0","controltype":"UI","zoomType":"3D-large","svcontrol":"1","returncontrol":"1","zoom":"10","corzoom":"0","minzoom":"0","maxzoom":"19","rotation":"1","zoomnew":"0","zoomWheel":"0","keyboard":"0","mapType":"Normal","showmaptype":"1","showNormalMaptype":"1","showSatelliteMaptype":"1","showHybridMaptype":"1","showTerrainMaptype":"1","showEarthMaptype":"1","showscale":"0","overview":"0","dragging":"1","marker":"1","icon":"","iconwidth":"","iconheight":"","iconanchorx":"","iconanchory":"","iconshadow":"","iconshadowwidth":"","iconshadowheight":"","iconimagemap":"","traffic":"0","transit":"0","bicycle":"0","panoramio":"0","pano_userid":"","pano_tag":"","weather":"0","weathercloud":"0","weatherinfo":"1","weathertempunit":"celsius","weatherwindunit":"km","dir":"0","dirtype":"D","formdirtype":"1","avoidhighways":"0","avoidtoll":"0","diroptimize":"0","diralternatives":"0","showdir":"1","animdir":"0","animspeed":"1","animautostart":"0","animunit":"kilometers","formspeed":"0","formaddress":"0","formdir":"0","autocompl":"both","langanim":"en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow","txtdir":"Directions: ","txtgetdir":"Get Directions","txtfrom":"From here","txtto":"To here","txtdiraddr":"Address: ","txt_driving":"","txt_avhighways":"","txt_avtoll":"","txt_walking":"","txt_bicycle":"","txt_transit":"","txt_optimize":"","txt_alternatives":"","inputsize":"25","dirdefault":"0","gotoaddr":"0","gotoaddrzoom":"0","txtaddr":"Address: ##","erraddr":"Address ## not found!","txtgotoaddr":"Goto","clientgeotype":"google","lightbox":"0","txtlightbox":"Open lightbox","lbxcaption":"","lbxwidth":"500","lbxheight":"700","lbxcenterlat":"","lbxcenterlon":"","lbxzoom":"","sv":"none","svwidth":"100%","svheight":"300","svyaw":"0","svpitch":"0","svzoom":"","svautorotate":"0","svaddress":"1","earthtimeout":"300","earthborders":"1","earthbuildings":"0","earthroads":"0","earthterrain":"0","kmlrenderer":"google","kmlsidebar":"none","kmlsbwidth":"200","kmlfoldersopen":"0","kmlhide":"0","kmlscale":"0","kmlopenmethod":"click","kmlsbsort":"none","kmllightbox":"0","kmlmessshow":"0","kmlclickablemarkers":"1","kmlzoommarkers":"0","kmlopendivmarkers":"","kmlcontentlinkmarkers":"0","kmllinkablemarkers":"0","kmllinktarget":"_self","kmllinkmethod":"dblclick","kmlhighlite":"{ ''color'': ''#aaffff'', ''opacity'': 0.3,  ''textcolor'': ''#000000'' }","kmlmarkerlabel":"100","kmlmarkerlabelclass":"","kmlpolylabel":"100","kmlpolylabelclass":"","proxy":"1","txtsrchnrby":"Search nearby","txtzoomhere":"Zoom Here","txtaddrstart":"Start address:","txtkmlgetdir":"Go","txtback":"\\u00ab Back","txtsearchnearby":"Search nearby: e.g. pizza","txtsearch":"Go","maxcluster":"","clustericonurl":"\\/media\\/plugin_googlemap3\\/site\\/geoxmlv3\\/images\\/m","gridsize":"","minmarkerscluster":"","maxlinesinfocluster":"","clusterinfowindow":"click","clusterzoom":"dblclick","clustermarkerzoom":"16","txtzoomin":"Zoom in to show more","txtclustercount1":"...and","txtclustercount2":"more","tilelayer":"","tilemethod":"","tileopacity":"1","tilebounds":"","tileminzoom":"0","tilemaxzoom":"19","imageurl":"","imageposition":"RIGHT_TOP","imageindex":"1","imagewidth":"","imageheight":"","twittername":"","twittertweets":"15","twittericon":"\\/media\\/plugin_googlemap3\\/site\\/Twitter\\/twitter_map_icon.png","twitterline":"#ff0000ff","twitterlinewidth":"4","twitterstartloc":"0,0,0","twitterconsumerkey":"","twitterconsumersecret":"","twitteraccesstoken":"","twitteraccesstokensecret":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_sig', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"May 14th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"3.0.1","description":"JW_PLG_SIG_XML_DESC","group":""}', '{"galleries_rootfolder":"images","jQueryHandling":"1.8.3","thb_width":"200","thb_height":"160","jpg_quality":"80","cache_expire_time":"1440","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_filters`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `a4qwu_finder_taxonomy`
--

INSERT INTO `a4qwu_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_terms`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_finder_terms_common`
--

INSERT INTO `a4qwu_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_finder_types`
--

CREATE TABLE IF NOT EXISTS `a4qwu_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `thread_id` int(11) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `object_params` text NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isgood` smallint(5) NOT NULL DEFAULT '0',
  `ispoor` smallint(5) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_source` (`source`),
  KEY `idx_email` (`email`),
  KEY `idx_lang` (`lang`),
  KEY `idx_subscribe` (`subscribe`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_object` (`object_id`,`object_group`,`published`,`date`),
  KEY `idx_path` (`path`,`level`),
  KEY `idx_thread` (`thread_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `a4qwu_jcomments`
--

INSERT INTO `a4qwu_jcomments` (`id`, `parent`, `thread_id`, `path`, `level`, `object_id`, `object_group`, `object_params`, `lang`, `userid`, `name`, `username`, `email`, `homepage`, `title`, `comment`, `ip`, `date`, `isgood`, `ispoor`, `published`, `deleted`, `subscribe`, `source`, `source_id`, `checked_out`, `checked_out_time`, `editor`) VALUES
(10, 0, 0, '0', 0, 9, 'com_content', '', 'ru-RU', 0, 'Алексей', 'Алексей', 'ale_juve@mail.ru', '', '', 'Здравствуйте, мы у вас отдыхали в 2013 году, очень понравилось, думаю много чего изменилось с тех пор. Хотели бы забронировать на август месяц, где-то с 10 августа и на неделю. <br />Алексей и Яна (Красноярск)', '91.205.49.207', '2015-07-09 14:22:28', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(11, 0, 0, '0', 0, 9, 'com_content', '', 'ru-RU', 0, 'Дамира', 'Дамира', 'imarat@namba.kg', '', '', 'Добрый день Марат, мы забронировали у вас на 24 июля, надеюсь будет все также вкусно как в прошлом году. Мы поставили больше горок и качель на детской площадке?', '37.218.141.206', '2015-07-11 10:58:33', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_blacklist`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `notes` tinytext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_custom_bbcodes`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_custom_bbcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `simple_pattern` varchar(255) NOT NULL DEFAULT '',
  `simple_replacement_html` text NOT NULL,
  `simple_replacement_text` text NOT NULL,
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `replacement_html` text NOT NULL,
  `replacement_text` text NOT NULL,
  `button_acl` text NOT NULL,
  `button_open_tag` varchar(16) NOT NULL DEFAULT '',
  `button_close_tag` varchar(16) NOT NULL DEFAULT '',
  `button_title` varchar(255) NOT NULL DEFAULT '',
  `button_prompt` varchar(255) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `button_css` varchar(255) NOT NULL DEFAULT '',
  `button_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `a4qwu_jcomments_custom_bbcodes`
--

INSERT INTO `a4qwu_jcomments_custom_bbcodes` (`id`, `name`, `simple_pattern`, `simple_replacement_html`, `simple_replacement_text`, `pattern`, `replacement_html`, `replacement_text`, `button_acl`, `button_open_tag`, `button_close_tag`, `button_title`, `button_prompt`, `button_image`, `button_css`, `button_enabled`, `ordering`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'YouTube Video', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,1', '[youtube]', '[/youtube]', 'YouTube Video', '', '', 'bbcode-youtube', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(2, 'YouTube Video (short syntax)', '[youtube]{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 2, 1, 0, '0000-00-00 00:00:00'),
(3, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}{TEXT}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([\\w0-9-\\+\\=\\!\\?\\(\\)\\[\\]\\{\\}\\&\\%\\*\\#\\.,_ ]+)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,1', '[youtube]', '[/youtube]', 'YouTube Video', '', '', '', 0, 3, 1, 0, '0000-00-00 00:00:00'),
(4, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?feature=player_embedded&v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://www\\.youtube\\.com/watch\\?feature\\=player_embedded&v\\=([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 4, 1, 0, '0000-00-00 00:00:00'),
(5, 'YouTube Video (alternate syntax)', '[youtube]http://youtu.be/{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://youtu\\.be/([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 5, 1, 0, '0000-00-00 00:00:00'),
(6, 'Facebook Video', '[fv]http://www.facebook.com/video/video.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/video\\/video\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,1', '[fv]', '[/fv]', 'Facebook Video', '', '', 'bbcode-facebook', 1, 6, 1, 0, '0000-00-00 00:00:00'),
(7, 'Facebook Video (short syntax)', '[fv]{IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 7, 1, 0, '0000-00-00 00:00:00'),
(8, 'Facebook Video (alternate syntax)', '[fv]http://www.facebook.com/photo.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/photo\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 8, 1, 0, '0000-00-00 00:00:00'),
(9, 'Instagram', '[instagram]http://instagram.com/p/{IDENTIFIER}/[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\/\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,1', '[instagram]', '[/instagram]', 'Instagram Photo', '', '', 'bbcode-instagram', 1, 9, 1, 0, '0000-00-00 00:00:00'),
(10, 'Instagram (short syntax)', '[instagram]{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 10, 1, 0, '0000-00-00 00:00:00'),
(11, 'Instagram (alternate syntax)', '[instagram]http://instagram.com/p/{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 11, 1, 0, '0000-00-00 00:00:00'),
(12, 'Vimeo', '[vimeo]http://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]http\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,1', '[vimeo]', '[/vimeo]', 'Vimeo Video', '', '', 'bbcode-vimeo', 1, 12, 1, 0, '0000-00-00 00:00:00'),
(13, 'Vimeo (short syntax)', '[vimeo]{IDENTIFIER}[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(14, 'Vimeo (alternate syntax)', '[vimeo]https://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]https\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,1', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(15, 'Wiki', '[wiki]{SIMPLETEXT}[/wiki]', '<a href="http://www.wikipedia.org/wiki/{SIMPLETEXT}" title="{SIMPLETEXT}" target="_blank">{SIMPLETEXT}</a>', '{SIMPLETEXT}', '\\[wiki\\]([A-Za-z0-9\\-\\+\\.,_ ]+)\\[\\/wiki\\]', '<a href="http://www.wikipedia.org/wiki/${1}" title="${1}" target="_blank">${1}</a>', '${1}', '1,2,3,4,5,6,7,8,1', '[wiki]', '[/wiki]', 'Wikipedia', '', '', 'bbcode-wiki', 1, 14, 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_mailq`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_priority` (`priority`),
  KEY `idx_attempts` (`attempts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_objects`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `expired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`,`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `a4qwu_jcomments_objects`
--

INSERT INTO `a4qwu_jcomments_objects` (`id`, `object_id`, `object_group`, `category_id`, `lang`, `title`, `link`, `access`, `userid`, `expired`, `modified`) VALUES
(1, 1, 'com_content', 2, 'ru-RU', 'О нас', '/index.php/kontakty', 1, 579, 0, '2015-07-08 08:35:17'),
(2, 2, 'com_content', 2, 'ru-RU', 'Об отеле', '/', 1, 579, 0, '2015-07-08 04:40:09'),
(3, 3, 'com_content', 2, 'ru-RU', 'Цены', '/index.php/tseny', 1, 579, 0, '2015-07-08 04:40:44'),
(4, 5, 'com_content', 2, 'ru-RU', 'Развлечения', '/index.php/razvlecheniya', 1, 579, 0, '2015-07-08 04:40:54'),
(5, 4, 'com_content', 2, 'ru-RU', 'Экскурсии', '/index.php/ekskursii', 1, 579, 0, '2015-07-08 04:41:24'),
(6, 6, 'com_content', 2, 'ru-RU', 'Информация по размещению', '/index.php/informatsiya-po-razmeshcheniyu', 1, 579, 0, '2015-07-08 04:41:32'),
(7, 8, 'com_content', 2, 'ru-RU', 'Галерея', '/index.php/8-galereya', 1, 579, 0, '2015-07-08 05:09:15'),
(8, 9, 'com_content', 8, 'ru-RU', 'Отзывы', '/index.php/otzyvy', 1, 579, 0, '2015-07-11 10:58:33');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_reports`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_reports` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_settings`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_settings` (
  `component` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`component`,`lang`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_jcomments_settings`
--

INSERT INTO `a4qwu_jcomments_settings` (`component`, `lang`, `name`, `value`) VALUES
('', '', 'enable_username_check', '1'),
('', '', 'username_maxlength', '20'),
('', '', 'forbidden_names', 'administrator,moderator'),
('', '', 'author_name', '2'),
('', '', 'author_email', '2'),
('', '', 'author_homepage', '0'),
('', '', 'comment_maxlength', '1000'),
('', '', 'comment_minlength', '0'),
('', '', 'word_maxlength', '50'),
('', '', 'link_maxlength', '50'),
('', '', 'flood_time', '30'),
('', '', 'enable_notification', '0'),
('', '', 'notification_email', ''),
('', '', 'template', 'default'),
('', '', 'template_view', 'list'),
('', '', 'enable_smilies', '0'),
('', '', 'comments_per_page', '100'),
('', '', 'comments_page_limit', '15'),
('', '', 'comments_pagination', 'both'),
('', '', 'comments_list_order', 'DESC'),
('', '', 'comments_tree_order', '0'),
('', '', 'show_commentlength', '0'),
('', '', 'enable_nested_quotes', '1'),
('', '', 'enable_rss', '0'),
('', '', 'censor_replace_word', '[censored]'),
('', '', 'show_policy', '1,2'),
('', '', 'enable_captcha', '1'),
('', '', 'floodprotection', '1,2,3,4'),
('', '', 'enable_comment_length_check', '1,2'),
('', '', 'autopublish', '1,6,7,2,3,4,5,8'),
('', '', 'autolinkurls', '6,7,2,3,4,5,8'),
('', '', 'enable_subscribe', '6,7,2,3,4,5,8'),
('', '', 'enable_gravatar', ''),
('', '', 'can_comment', '1,6,7,2,3,4,5,8'),
('', '', 'can_reply', '1,6,7,2,3,4,5,8'),
('', '', 'can_view_homepage', '6,7,2,3,4,5,8'),
('', '', 'can_publish', '6,7,5,8'),
('', '', 'can_publish_for_my_object', ''),
('', '', 'can_view_email', '6,7,8'),
('', '', 'can_edit', '6,7,8'),
('', '', 'can_edit_own', '6,7,2,3,4,5,8'),
('', '', 'can_edit_for_my_object', ''),
('', '', 'can_delete', '6,7,8'),
('', '', 'can_delete_own', '6,7,8'),
('', '', 'can_delete_for_my_object', ''),
('', '', 'can_report', '6,7,2,3,4,5,8'),
('', '', 'can_ban', '7,8'),
('', '', 'can_vote', '6,7,2,3,4,5,8'),
('', '', 'can_view_ip', '7,8'),
('', '', 'enable_bbcode_b', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_i', '6,7,2,3,4,5,8'),
('', '', 'message_banned', ''),
('', '', 'enable_bbcode_u', '6,7,2,3,4,5,8'),
('', '', 'max_comments_per_object', '0'),
('', '', 'enable_bbcode_s', '6,7,2,3,4,5,8'),
('', '', 'captcha_engine', 'kcaptcha'),
('', '', 'enable_bbcode_url', '6,7,2,3,4,5,8'),
('', '', 'form_position', '0'),
('', '', 'enable_bbcode_img', '6,7,2,3,4,5,8'),
('', '', 'reports_before_unpublish', '0'),
('', '', 'enable_bbcode_list', '6,7,2,3,4,5,8'),
('', '', 'reports_per_comment', '0'),
('', '', 'enable_bbcode_hide', '6,7,2,3,4,5,8'),
('', '', 'enable_reports', '1'),
('', '', 'enable_bbcode_quote', '6,7,2,3,4,5,8'),
('', '', 'load_cached_comments', '1'),
('', '', 'enable_bbcode_code', '2,3,4,5,6,7,8'),
('', '', 'enable_categories', '8'),
('', '', 'emailprotection', '1'),
('', '', 'enable_comment_maxlength_check', ''),
('', '', 'enable_autocensor', '1'),
('', '', 'badwords', ''),
('', '', 'smilies', ':D	laugh.gif\n:lol:	lol.gif\n:-)	smile.gif\n;-)	wink.gif\n8)	cool.gif\n:-|	normal.gif\n:-*	whistling.gif\n:oops:	redface.gif\n:sad:	sad.gif\n:cry:	cry.gif\n:o	surprised.gif\n:-?	confused.gif\n:-x	sick.gif\n:eek:	shocked.gif\n:zzz	sleeping.gif\n:P	tongue.gif\n:roll:	rolleyes.gif\n:sigh:	unsure.gif'),
('', '', 'enable_plugins', '1'),
('', '', 'form_show', '1'),
('', '', 'display_author', 'name'),
('', '', 'enable_voting', '0'),
('', '', 'merge_time', '0'),
('', '', 'message_policy_post', ''),
('', '', 'message_policy_whocancomment', 'You have no rights to post comments'),
('', '', 'message_locked', 'Comments are now closed for this entry'),
('', '', 'comment_title', '0'),
('', '', 'enable_custom_bbcode', '0'),
('', '', 'enable_geshi', '0'),
('', '', 'enable_quick_moderation', '0'),
('', '', 'notification_type', '1,2'),
('', '', 'delete_mode', '0'),
('', '', 'enable_blacklist', '0'),
('', '', 'smilies_path', '/components/com_jcomments/images/smilies/'),
('', '', 'feed_limit', '100'),
('', '', 'report_reason_required', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_smilies`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_smilies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(39) NOT NULL DEFAULT '',
  `alias` varchar(39) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `a4qwu_jcomments_smilies`
--

INSERT INTO `a4qwu_jcomments_smilies` (`id`, `code`, `alias`, `image`, `name`, `published`, `ordering`, `checked_out`, `checked_out_time`) VALUES
(1, ':D', '', 'laugh.gif', 'Laugh', 0, 1, 0, '0000-00-00 00:00:00'),
(2, ':lol:', '', 'lol.gif', 'Lol', 0, 2, 0, '0000-00-00 00:00:00'),
(3, ':-)', '', 'smile.gif', 'Smile', 0, 3, 0, '0000-00-00 00:00:00'),
(4, ';-)', '', 'wink.gif', 'Wink', 0, 4, 0, '0000-00-00 00:00:00'),
(5, '8)', '', 'cool.gif', 'Cool', 0, 5, 0, '0000-00-00 00:00:00'),
(6, ':-|', '', 'normal.gif', 'Normal', 0, 6, 0, '0000-00-00 00:00:00'),
(7, ':-*', '', 'whistling.gif', 'Whistling', 0, 7, 0, '0000-00-00 00:00:00'),
(8, ':oops:', '', 'redface.gif', 'Redface', 0, 8, 0, '0000-00-00 00:00:00'),
(9, ':sad:', '', 'sad.gif', 'Sad', 0, 9, 0, '0000-00-00 00:00:00'),
(10, ':cry:', '', 'cry.gif', 'Cry', 0, 10, 0, '0000-00-00 00:00:00'),
(11, ':o', '', 'surprised.gif', 'Surprised', 0, 11, 0, '0000-00-00 00:00:00'),
(12, ':-?', '', 'confused.gif', 'Confused', 0, 12, 0, '0000-00-00 00:00:00'),
(13, ':-x', '', 'sick.gif', 'Sick', 0, 13, 0, '0000-00-00 00:00:00'),
(14, ':eek:', '', 'shocked.gif', 'Shocked', 0, 14, 0, '0000-00-00 00:00:00'),
(15, ':zzz', '', 'sleeping.gif', 'Sleeping', 0, 15, 0, '0000-00-00 00:00:00'),
(16, ':P', '', 'tongue.gif', 'Tongue', 0, 16, 0, '0000-00-00 00:00:00'),
(17, ':roll:', '', 'rolleyes.gif', 'Rolleyes', 0, 17, 0, '0000-00-00 00:00:00'),
(18, ':sigh:', '', 'unsure.gif', 'Unsure', 0, 18, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_subscriptions`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_subscriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`),
  KEY `idx_lang` (`lang`),
  KEY `idx_source` (`source`),
  KEY `idx_hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_version`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_version` (
  `version` varchar(16) NOT NULL DEFAULT '',
  `previous` varchar(16) NOT NULL DEFAULT '',
  `installed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_jcomments_votes`
--

CREATE TABLE IF NOT EXISTS `a4qwu_jcomments_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_comment` (`commentid`,`userid`),
  KEY `idx_user` (`userid`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_languages`
--

CREATE TABLE IF NOT EXISTS `a4qwu_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `a4qwu_languages`
--

INSERT INTO `a4qwu_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'ru-RU', 'Russian', 'Russian', 'ru', 'ru', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_menu`
--

CREATE TABLE IF NOT EXISTS `a4qwu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Дамп данных таблицы `a4qwu_menu`
--

INSERT INTO `a4qwu_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 121, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 43, 44, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Об отеле', 'about', '', 'about', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'mainmenu', 'Номера', 'nomera', '', 'nomera', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(103, 'mainmenu', 'Цены', 'tseny', '', 'tseny', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(106, 'mainmenu', 'Экскурсии', 'ekskursii', '', 'ekskursii', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(104, 'mainmenu', 'Развлечения', 'razvlecheniya', '', 'razvlecheniya', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 579, '2015-07-09 01:03:35', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 54, 0, '*', 0),
(107, 'mainmenu', 'Отзывы', 'otzyvy', '', 'otzyvy', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(108, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(109, 'mainmenu', 'Информация по размещению', 'informatsiya-po-razmeshcheniyu', '', 'informatsiya-po-razmeshcheniyu', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(121, 'mainmenu', 'g', 'g', '', 'g', 'index.php?option=com_rokgallery&view=gallery', 'component', -2, 1, 1, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"gallery_id":"1","default_layout":"grid-4col","default_style":"light","default_sort_by":"gallery_ordering","default_sort_direction":"ASC","slice_link_to":"default","show_sorts":"1","show_available_layouts":"1","pages_in_shown_range":"7","grid-3col-items_per_row":"3","grid-3col-rows_per_page":"4","grid-4col-items_per_row":"4","grid-4col-rows_per_page":"4","list-2col-items_per_row":"2","list-2col-rows_per_page":"6","gallery_show_title":"1","gallery_use_title_from":"slice","gallery_show_caption":"1","gallery_use_caption_from":"slice","gallery_show_tags":"1","gallery_use_tags_from":"combined","gallery_remove_gallery_tags":"1","gallery_show_tags_count":"1","gallery_show_created_at":"1","gallery_show_loves":"1","gallery_show_views":"1","detail_show_title":"1","detail_use_title_from":"slice","detail_show_caption":"1","detail_use_caption_from":"slice","detail_show_tags":"1","detail_use_tags_from":"combined","detail_remove_gallery_tags":"1","detail_show_tags_count":"1","detail_show_created_at":"1","detail_show_updated_at":"1","detail_show_loves":"1","detail_show_views":"1","detail_show_filesize":"1","detail_use_filesize_from":"file","detail_show_dimensions":"1","detail_use_dimensions_from":"file","detail_show_download_full":"1","detail_show_gallery_info":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(114, 'mainmenu', 'Галерея', 'galereya', '', 'galereya', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(115, 'main', 'RokGallery', 'rokgallery', '', 'rokgallery', 'index.php?option=com_rokgallery', 'component', 0, 1, 1, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokgallery/assets/images/rokgallery_16x16.png', 0, '', 65, 66, 0, '', 1),
(120, 'mainmenu', 'Galeria', 'galeria', '', 'galeria', 'index.php?option=com_rokgallery&view=gallery', 'component', -2, 1, 1, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"gallery_id":"1","default_layout":"grid-4col","default_style":"light","default_sort_by":"gallery_ordering","default_sort_direction":"ASC","slice_link_to":"rokbox2","show_sorts":"1","show_available_layouts":"1","available_layouts":["grid-3col"],"pages_in_shown_range":"7","grid-3col-items_per_row":"3","grid-3col-rows_per_page":"4","grid-4col-items_per_row":"4","grid-4col-rows_per_page":"4","list-2col-items_per_row":"2","list-2col-rows_per_page":"6","gallery_show_title":"0","gallery_use_title_from":"file","gallery_show_caption":"0","gallery_use_caption_from":"slice","gallery_show_tags":"0","gallery_use_tags_from":"file","gallery_remove_gallery_tags":"0","gallery_show_tags_count":"0","gallery_show_created_at":"0","gallery_show_loves":"0","gallery_show_views":"0","detail_show_title":"1","detail_use_title_from":"slice","detail_show_caption":"0","detail_use_caption_from":"slice","detail_show_tags":"0","detail_use_tags_from":"combined","detail_remove_gallery_tags":"0","detail_show_tags_count":"0","detail_show_created_at":"0","detail_show_updated_at":"0","detail_show_loves":"0","detail_show_views":"0","detail_show_filesize":"0","detail_use_filesize_from":"file","detail_show_dimensions":"0","detail_use_dimensions_from":"slice","detail_show_download_full":"0","detail_show_gallery_info":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(162, 'main', 'COM_RSFORM_UPDATES', 'com-rsform-updates', '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 116, 117, 0, '', 1),
(134, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 0, 133, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 92, 93, 0, '', 1),
(135, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 0, 133, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 94, 95, 0, '', 1),
(136, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 0, 133, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 96, 97, 0, '', 1),
(137, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 0, 133, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 98, 99, 0, '', 1),
(122, 'main', 'COM_JCOMMENTS', 'com-jcomments', '', 'com-jcomments', 'index.php?option=com_jcomments', 'component', 0, 1, 1, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jcomments/assets/images/icon-16-jcomments.png', 0, '', 71, 90, 0, '', 1),
(123, 'main', 'COM_JCOMMENTS_COMMENTS', 'com-jcomments-comments', '', 'com-jcomments/com-jcomments-comments', 'index.php?option=com_jcomments&view=comments', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-comments', 0, '', 72, 73, 0, '', 1),
(124, 'main', 'COM_JCOMMENTS_SETTINGS', 'com-jcomments-settings', '', 'com-jcomments/com-jcomments-settings', 'index.php?option=com_jcomments&view=settings', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-settings', 0, '', 74, 75, 0, '', 1),
(125, 'main', 'COM_JCOMMENTS_SMILIES', 'com-jcomments-smilies', '', 'com-jcomments/com-jcomments-smilies', 'index.php?option=com_jcomments&view=smilies', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-smilies', 0, '', 76, 77, 0, '', 1),
(126, 'main', 'COM_JCOMMENTS_SUBSCRIPTIONS', 'com-jcomments-subscriptions', '', 'com-jcomments/com-jcomments-subscriptions', 'index.php?option=com_jcomments&view=subscriptions', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-subscriptions', 0, '', 78, 79, 0, '', 1),
(127, 'main', 'COM_JCOMMENTS_CUSTOM_BBCODE', 'com-jcomments-custom-bbcode', '', 'com-jcomments/com-jcomments-custom-bbcode', 'index.php?option=com_jcomments&view=custombbcodes', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-custombbcodes', 0, '', 80, 81, 0, '', 1),
(128, 'main', 'COM_JCOMMENTS_BLACKLIST', 'com-jcomments-blacklist', '', 'com-jcomments/com-jcomments-blacklist', 'index.php?option=com_jcomments&view=blacklists', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-blacklist', 0, '', 82, 83, 0, '', 1),
(129, 'main', 'COM_JCOMMENTS_MAILQ', 'com-jcomments-mailq', '', 'com-jcomments/com-jcomments-mailq', 'index.php?option=com_jcomments&view=mailq', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-mailq', 0, '', 84, 85, 0, '', 1),
(130, 'main', 'COM_JCOMMENTS_IMPORT', 'com-jcomments-import', '', 'com-jcomments/com-jcomments-import', 'index.php?option=com_jcomments&view=import', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-import', 0, '', 86, 87, 0, '', 1),
(131, 'main', 'COM_JCOMMENTS_ABOUT', 'com-jcomments-about', '', 'com-jcomments/com-jcomments-about', 'index.php?option=com_jcomments&view=about', 'component', 0, 122, 2, 10033, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-about', 0, '', 88, 89, 0, '', 1),
(138, 'main', 'COM_RSFORM_UPDATES', 'com-rsform-updates', '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 0, 133, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 100, 101, 0, '', 1),
(139, 'main', 'COM_RSFORM_PLUGINS', 'com-rsform-plugins', '', 'rsformpro/com-rsform-plugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 133, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 102, 103, 0, '', 1),
(161, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 114, 115, 0, '', 1),
(160, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 112, 113, 0, '', 1),
(157, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 106, 107, 0, '', 1),
(156, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform', 'component', 0, 1, 1, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '', 105, 120, 0, '', 1),
(158, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 108, 109, 0, '', 1),
(159, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 'com-rsform-manage-directory-submissions', '', 'rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 110, 111, 0, '', 1),
(155, 'mainmenu', 'Бильярд', 'bilyard', '', 'razvlecheniya/bilyard', 'index.php?option=com_content&view=article&id=5', 'component', 1, 104, 2, 22, 0, 579, '2015-07-11 10:38:40', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(163, 'main', 'COM_RSFORM_PLUGINS', 'com-rsform-plugins', '', 'rsformpro/com-rsform-plugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 156, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 118, 119, 0, '', 1),
(164, 'mainmenu', 'Теннис', 'tennis', '', 'razvlecheniya/tennis', 'index.php?option=com_content&view=article&id=5', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_menu_types`
--

CREATE TABLE IF NOT EXISTS `a4qwu_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `a4qwu_menu_types`
--

INSERT INTO `a4qwu_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_messages`
--

CREATE TABLE IF NOT EXISTS `a4qwu_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `a4qwu_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_modules`
--

CREATE TABLE IF NOT EXISTS `a4qwu_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Дамп данных таблицы `a4qwu_modules`
--

INSERT INTO `a4qwu_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'menu', 579, '2015-07-11 15:27:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Слайдшоу', '', '', 1, 'slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slideshowck', 1, 0, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|images\\/slide1.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide1.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/slide2.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide2.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/slide3.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide3.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/slide4.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide4.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","theme":"default","skin":"camera_amber_skin","alignment":"center","loader":"none","width":"auto","height":"45%","navigation":"2","thumbnails":"0","thumbnailwidth":"100","thumbnailheight":"75","pagination":"0","effect":["simpleFade"],"time":"7000","transperiod":"1500","captioneffect":"moveFromLeft","portrait":"0","autoAdvance":"1","hover":"1","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1"}', 0, '*'),
(88, 'logo', '', '<h1><a href="http://family.com.kg/"><span style="font-size: xx-large;">Дом Отдыха «СемьЯ»</span></a></h1>', 1, 'top1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Телефоны header', '', '<p style="text-align: right;"><strong><span style="font-size: large;">+996 770 222 555</span></strong><br /><strong><span style="font-size: large;"> +996 772 180 780<br />+996 3132 58 078</span></strong></p>', 1, 'top3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'Курс валют', '', '<p><a href="http://www.for.kg/" target="_blank"><img src="http://www.for.kg/informers/currency.php?type=1&amp;color=7" border="0" alt="Курсы валют Кыргызстана по отношению к сому" width="120" height="90" style="display: block; margin-left: auto; margin-right: auto;" /> </a></p>', 4, 'rightCol', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 'Погода', '', '', 2, 'rightCol', 579, '2017-09-28 20:22:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sp_weather', 1, 1, '{"location":"\\u0427\\u043e\\u043b\\u043f\\u043e\\u043d-\\u0410\\u0442\\u0430","locationTranslated":"","city":"1","condition":"1","humidity":"1","wind":"1","forecast":"4","tmpl_layout":"block","separator":"\\/","tempUnit":"c","layout":"_:default","moduleclass_sfx":"","cache":"0","useCache":"1","cacheTime":"900"}', 0, '*'),
(97, 'Погода', '', '', 3, 'rightCol', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sp_weather', 1, 1, '{"location":"\\u0411\\u0438\\u0448\\u043a\\u0435\\u043a","locationTranslated":"","city":"1","condition":"1","humidity":"1","wind":"1","forecast":"4","layout":"list","separator":"\\/","tempUnit":"c","moduleclass_sfx":"","cache":"0","useCache":"1","cacheTime":"900"}', 0, '*'),
(98, 'Телефоны footer', '', '<p><strong>+996 770 222 555</strong><br /><strong>+996 772 180 780<br />+996 3132 58 078</strong></p>', 1, 'footer1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 'Адреса Footer', '', '<p>Email: <a href="mailto:office@family.com.kg">office@family.com.kg</a><br /> Кыргызская Республика<br /><strong> с. Сары-Ой</strong></p>', 1, 'footer2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'copyright', '', '<p style="text-align: right;"><strong>©2012–2015 ДО "СемьЯ"<br /></strong><strong style="line-height: 1.3em;">Все права защищены</strong></p>', 1, 'footer4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 'Новости', '', '', 1, 'galery', 579, '2015-07-10 04:00:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["9"],"image":"1","item_title":"1","link_titles":"1","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"100","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(102, 'OS ImageGallery Free', '', '', 1, 'galery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_OS_ImageGallery_Free', 1, 0, '{"imagezer":"W3siZmlsZSI6IjE0MTcxODQ0MDEtNjA4ODE5NS13d3ctbmV2c2VvYm9pLWNvbS11YS5qcGciLCJhbHQiOiIiLCJuYW1lIjoiIn0seyJmaWxlIjoiMTQxNzE4NDQwMS02MDg4MjI4LXd3dy1uZXZzZW9ib2ktY29tLXVhLmpwZyIsImFsdCI6IiIsIm5hbWUiOiIifSx7ImZpbGUiOiIxNDE3MTg0NDAxLTYwODgyOTktd3d3LW5ldnNlb2JvaS1jb20tdWEuanBnIiwiYWx0IjoiIiwibmFtZSI6IiJ9LHsiZmlsZSI6IjE0MTcxODQ0MDItNjA4ODI3Ni13d3ctbmV2c2VvYm9pLWNvbS11YS5qcGciLCJhbHQiOiIiLCJuYW1lIjoiIn0seyJmaWxlIjoiMTQxNzE4NDQwMy02MDg4MjI1LXd3dy1uZXZzZW9ib2ktY29tLXVhLmpwZyIsImFsdCI6IiIsIm5hbWUiOiIifSx7ImZpbGUiOiIxNDE3MTg0NDAyLTYwODgxODItd3d3LW5ldnNlb2JvaS1jb20tdWEuanBnIiwiYWx0IjoiIiwibmFtZSI6IiJ9LHsiZmlsZSI6IjE0MTcxODQ0MDItNjA4ODIzMi13d3ctbmV2c2VvYm9pLWNvbS11YS5qcGciLCJhbHQiOiIiLCJuYW1lIjoiIn0seyJmaWxlIjoiMTQxNzE4NDQwMy02MDg4MjYwLXd3dy1uZXZzZW9ib2ktY29tLXVhLmpwZyIsImFsdCI6IiIsIm5hbWUiOiIifSx7ImZpbGUiOiIxNDE3MTg0NDA0LTYwODgyNDItd3d3LW5ldnNlb2JvaS1jb20tdWEuanBnIiwiYWx0IjoiIiwibmFtZSI6IiJ9LHsiZmlsZSI6IjE0MTcxODQ0MDQtNjA4ODMwMS13d3ctbmV2c2VvYm9pLWNvbS11YS5qcGciLCJhbHQiOiIiLCJuYW1lIjoiIn0seyJmaWxlIjoiMTQxNzE4NDQwMy02MDg4Mjc0LXd3dy1uZXZzZW9ib2ktY29tLXVhLmpwZyIsImFsdCI6IiIsIm5hbWUiOiIifSx7ImZpbGUiOiIxNDE3MTg0NDA1LTYwODgyMjYtd3d3LW5ldnNlb2JvaS1jb20tdWEuanBnIiwiYWx0IjoiIiwibmFtZSI6IiJ9LHsiZmlsZSI6IjE0MTcxODQ0MDYtNjA4ODE4Ni13d3ctbmV2c2VvYm9pLWNvbS11YS5qcGciLCJhbHQiOiIiLCJuYW1lIjoiIn0seyJmaWxlIjoiMTQxNzE4NDQwNi02MDg4MjI3LXd3dy1uZXZzZW9ib2ktY29tLXVhLmpwZyIsImFsdCI6IiIsIm5hbWUiOiIifSx7ImZpbGUiOiIxNDE3MTg0NDA2LTYwODgyNjctd3d3LW5ldnNlb2JvaS1jb20tdWEuanBnIiwiYWx0IjoiIiwibmFtZSI6IiJ9LHsiZmlsZSI6IjE0MTcxODQ0MDctNjA4ODI0Ny13d3ctbmV2c2VvYm9pLWNvbS11YS5qcGciLCJhbHQiOiIiLCJuYW1lIjoiIn1d","width":"350","height":"240","img_in_row":"4","jquery-local":"1","jquery":"0","no-conflict":"0","sufix":"ordasoft"}', 0, '*'),
(117, 'Карта', '', '<p>{mosmap lat=''52.052312''|lon=''4.447141''|zoom=''3''|text=''sv DWO''|tooltip=''DWO''|marker=''1''}</p>', 1, 'galery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 'Адрес header', '', '<p style="text-align: right;">Email: <a href="mailto:office@family.com.kg">office@family.com.kg</a><br /> Кыргызская Республика<br /><strong> с. Сары-Ой</strong></p>', 1, 'top2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 'Слайдер', '', '', 0, 'slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_slideshowck', 1, 0, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|images\\/slide1.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide1.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/slide2.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide2.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/slide3.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide3.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/slide4.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/family.com.kg\\/images\\/slide4.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","theme":"default","skin":"camera_amber_skin","alignment":"center","loader":"pie","width":"auto","height":"45%","navigation":"2","thumbnails":"0","thumbnailwidth":"100","thumbnailheight":"75","pagination":"0","effect":["random"],"time":"7000","transperiod":"1500","captioneffect":"moveFromLeft","portrait":"0","autoAdvance":"1","hover":"1","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1"}', 0, '*'),
(115, 'карты', '', '', 0, 'galery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 0, '{"url":"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d11745.071592966391!2d76.90966134999995!3d42.61327404999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3884e8d02dcf5249%3A0x27d296fcdc2fe6d4!2z0KfQvtC9LdCh0LDRgNGLLdCe0LksINCa0LjRgNCz0LjQt9C40Y8!5e0!3m2!1sru!2sru!4v1436356256890","add":"1","scrolling":"no","width":"100%","height":"300","height_auto":"1","frameborder":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 'Форма бронирования', '', '', 1, 'rightCol', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rsform', 1, 1, '{"formId":"4","moduleclass_sfx":""}', 0, 'ru-RU'),
(122, 'Погода ню', '', '', 0, 'rightCol', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_sp_weather', 1, 0, '{"location":"London","locationTranslated":"","city":"1","condition":"1","humidity":"1","wind":"1","forecast":"4","tmpl_layout":"block","separator":"\\/","tempUnit":"c","layout":"_:default","moduleclass_sfx":"","cache":"0","useCache":"1","cacheTime":"900"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_modules_menu`
--

CREATE TABLE IF NOT EXISTS `a4qwu_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_modules_menu`
--

INSERT INTO `a4qwu_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(87, 101),
(88, 0),
(89, 0),
(93, 0),
(94, 0),
(97, 0),
(98, 0),
(99, 0),
(102, 114),
(111, 0),
(112, 0),
(115, 108),
(116, 101),
(117, 108),
(120, 101),
(121, 0),
(122, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `a4qwu_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_overrider`
--

CREATE TABLE IF NOT EXISTS `a4qwu_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_redirect_links`
--

CREATE TABLE IF NOT EXISTS `a4qwu_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `a4qwu_redirect_links`
--

INSERT INTO `a4qwu_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://family.com.kg/index.php/galereya/2-uncategorised/7-galereya', '', 'http://family.com.kg/index.php/galereya', '', 1, 0, '2015-07-05 07:32:12', '0000-00-00 00:00:00'),
(2, 'http://family.com.kg/index.php/galereya', '', 'http://family.com.kg/index.php/7-galereya', '', 2, 0, '2015-07-05 07:32:22', '0000-00-00 00:00:00'),
(3, 'http://family.com.kg/index.php/galereya?page=1', '', 'http://family.com.kg/index.php/galereya/39-tropiki-plyazh-pesok-gamak-otdykh-palmy-96442-602x339', '', 1, 0, '2015-07-05 17:15:18', '0000-00-00 00:00:00'),
(4, 'http://family.com.kg/index.php/index.php?option=com_igallery&task=image.addHit&format=raw&id=1', '', 'http://family.com.kg/index.php/galereya', '', 1, 0, '2015-07-05 18:07:55', '0000-00-00 00:00:00'),
(5, 'http://family.com.kg/index.php/galeria?page=1', '', 'http://family.com.kg/index.php/galeria/19-family13?page=1', '', 1, 0, '2015-07-05 18:44:54', '0000-00-00 00:00:00'),
(6, 'http://family.com.kg/index.php/galeria/19-family13?page=1', '', 'http://family.com.kg/index.php/galeria/20-family14', '', 1, 0, '2015-07-05 18:45:19', '0000-00-00 00:00:00'),
(7, 'http://family.com.kg/index.php/galeria/20-family14', '', 'http://family.com.kg/index.php/galeria', '', 1, 0, '2015-07-05 18:45:25', '0000-00-00 00:00:00'),
(8, 'http://family.com.kg/index.php/galeria', '', 'http://family.com.kg/index.php/galereya', '', 1, 0, '2015-07-05 18:45:30', '0000-00-00 00:00:00'),
(9, 'http://family.com.kg/index.php/nomeri', '', '', '', 16, 0, '2015-07-13 10:42:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokcommon_configs`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `a4qwu_rokcommon_configs`
--

INSERT INTO `a4qwu_rokcommon_configs` (`id`, `extension`, `type`, `file`, `priority`) VALUES
(1, 'rokgallery', 'container', '/components/com_rokgallery/container.xml', 10),
(2, 'rokgallery', 'library', '/components/com_rokgallery/lib', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_files`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `guid` char(36) NOT NULL,
  `md5` char(32) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `license` varchar(255) DEFAULT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `type` char(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `a4qwu_files_sluggable_idx` (`slug`),
  KEY `a4qwu_rokgallery_files_published_idx` (`published`),
  KEY `a4qwu_rokgallery_files_md5_idx` (`md5`),
  KEY `a4qwu_rokgallery_files_guid_idx` (`guid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Дамп данных таблицы `a4qwu_rokgallery_files`
--

INSERT INTO `a4qwu_rokgallery_files` (`id`, `filename`, `guid`, `md5`, `title`, `description`, `license`, `xsize`, `ysize`, `filesize`, `type`, `published`, `created_at`, `updated_at`, `slug`) VALUES
(59, 'IMG_0926.JPG', 'f783d2c0-22c0-4a1e-a6ce-ae067a9b5f73', 'b2b4ed05f283cd3846f6cdd848f52f6d', 'IMG 0926', NULL, NULL, 1536, 1024, 300149, 'jpg', 1, '2015-07-09 13:58:43', '2015-07-09 13:58:43', 'img-0926'),
(60, 'IMG_0947.JPG', '442daafd-2eeb-4fdb-8d16-527943ab24c0', 'ad566ae535a5ea453bb8be2429006332', 'IMG 0947', NULL, NULL, 1536, 1024, 268799, 'jpg', 1, '2015-07-09 13:58:43', '2015-07-09 13:58:43', 'img-0947'),
(61, 'IMG_0972.JPG', '3126688b-8d69-41c1-cee9-8bbf0dec2e47', 'b39b74e8614224330cb2e4e5f3632caf', 'IMG 0972', NULL, NULL, 1536, 1024, 387418, 'jpg', 1, '2015-07-09 13:58:44', '2015-07-09 13:58:44', 'img-0972'),
(62, 'IMG_0994.JPG', 'bd6ae56a-e22a-4eb9-c16d-26328d928699', '72b8bb8b364524ec4d5ada0b9311e484', 'IMG 0994', NULL, NULL, 1536, 1024, 314384, 'jpg', 1, '2015-07-09 13:58:44', '2015-07-09 13:58:44', 'img-0994'),
(63, 'IMG_2726.JPG', '155d0d03-fbcb-4a61-9c05-370c0dcb094f', '2e77deebcf9ba88d2cebfa0c8eee807c', 'IMG 2726', NULL, NULL, 1365, 1024, 273123, 'jpg', 1, '2015-07-09 13:58:45', '2015-07-09 13:58:45', 'img-2726'),
(64, 'IMG_2747.JPG', 'adaa21b0-617b-4e90-936b-d151e7dda372', '195fb79b049aab728ac17cdc5a217929', 'IMG 2747', NULL, NULL, 4564, 1024, 941942, 'jpg', 1, '2015-07-09 13:58:45', '2015-07-09 13:58:45', 'img-2747'),
(65, 'IMG_2781.JPG', '2a67f152-1ee6-4dd5-d1f9-71ab926b2b5a', '36706b8f95287b8e736dae7df3fcb997', 'IMG 2781', NULL, NULL, 1536, 1024, 344326, 'jpg', 1, '2015-07-09 13:58:46', '2015-07-09 13:58:46', 'img-2781'),
(66, 'IMG_2785.JPG', '5fc9435b-5003-4115-ba06-19e03f5c4c08', '6a687dbff1fc3aa91fd6b655ccb1b7d3', 'IMG 2785', NULL, NULL, 1536, 1024, 279015, 'jpg', 1, '2015-07-09 13:58:47', '2015-07-09 13:58:47', 'img-2785'),
(67, 'IMG_2788.JPG', '70e02a64-af27-4d95-c207-a30c8e2cf6cb', '82041e66a34077c7949f1b1530dce08f', 'IMG 2788', NULL, NULL, 1536, 1024, 243503, 'jpg', 1, '2015-07-09 13:58:48', '2015-07-09 13:58:48', 'img-2788'),
(68, 'IMG_2789.JPG', '5ba6dc43-480f-4bf1-bc01-c3af5cc6b1a4', 'f8061098b4564ed625e421bd224d5779', 'IMG 2789', NULL, NULL, 683, 1024, 128807, 'jpg', 1, '2015-07-09 13:58:48', '2015-07-09 13:58:48', 'img-2789'),
(69, 'IMG_2790.JPG', 'a6e736b9-ab43-46a4-de70-b085c2f4a8db', 'e4c5b2296a37719d91391fdc9aebba78', 'IMG 2790', NULL, NULL, 683, 1024, 127531, 'jpg', 1, '2015-07-09 13:58:48', '2015-07-09 13:58:48', 'img-2790'),
(70, 'IMG_2793.JPG', 'fe27515e-fde4-4a0e-8ff8-72d7c1b41032', 'cb73a1d5af3c6fb31be49af6329aafc9', 'IMG 2793', NULL, NULL, 1536, 1024, 234509, 'jpg', 1, '2015-07-09 13:58:49', '2015-07-09 13:58:49', 'img-2793'),
(71, 'IMG_2800.JPG', 'f7878c33-0665-4ea9-cf1a-2b66aee7672c', 'a6f77a372b23b6fc39fd20f7221a6e05', 'IMG 2800', NULL, NULL, 1536, 1024, 366217, 'jpg', 1, '2015-07-09 13:58:49', '2015-07-09 13:58:49', 'img-2800'),
(72, 'IMG_2808.JPG', '752e5e50-762e-474f-ccc5-4ccc875fc9f2', '147c91ee12d6d1bab178e45a9c0fb698', 'IMG 2808', NULL, NULL, 1536, 1024, 412613, 'jpg', 1, '2015-07-09 13:58:50', '2015-07-09 13:58:50', 'img-2808'),
(73, 'IMG_2809.JPG', '40604e88-e52f-43d9-ebd5-eaa1119df8b4', '0ff12e1c5a6c42b0b12d4a9a52f6c08f', 'IMG 2809', NULL, NULL, 1536, 1024, 407500, 'jpg', 1, '2015-07-09 13:58:51', '2015-07-09 13:58:51', 'img-2809'),
(74, 'IMG_2813.JPG', '9014ddd3-c61c-4a76-c22f-5c85a7874866', '135bce501324fe8090b02fff5a1bd9e4', 'IMG 2813', NULL, NULL, 683, 1024, 147832, 'jpg', 1, '2015-07-09 13:58:51', '2015-07-09 13:58:51', 'img-2813'),
(75, 'IMG_2830.JPG', 'c2b7f069-b663-4e85-d78a-69dceae22487', '32073f5e3d29185735f9cb20b8bc691c', 'IMG 2830', NULL, NULL, 1536, 1024, 348509, 'jpg', 1, '2015-07-09 13:58:51', '2015-07-09 13:58:51', 'img-2830'),
(76, 'IMG_2853.JPG', '130ea273-d751-498c-ace5-733456ef124e', 'e69beade2e2de0218aaf1659b37f5c16', 'IMG 2853', NULL, NULL, 1536, 1024, 182085, 'jpg', 1, '2015-07-09 13:58:52', '2015-07-09 13:58:52', 'img-2853'),
(77, 'IMG_2857.JPG', '9f0d2d36-9196-4839-fce2-96b4af723f00', 'bfcd6fedee72b5b992706581f68f0a39', 'IMG 2857', NULL, NULL, 1536, 1024, 258208, 'jpg', 1, '2015-07-09 13:58:52', '2015-07-09 13:58:52', 'img-2857'),
(78, 'IMG_2861.JPG', '6b1f72a7-be0c-4a70-9354-cf4f206b3a8a', '397c30bb477e3cd38e4663493b1024ac', 'IMG 2861', NULL, NULL, 683, 1024, 140855, 'jpg', 1, '2015-07-09 13:58:52', '2015-07-09 13:58:52', 'img-2861'),
(79, 'IMG_2862.JPG', '221a2e1c-ee14-45f7-bf38-3ce95d2acee2', '7ccab18f4fa3effcf773989c3797bfd5', 'IMG 2862', NULL, NULL, 1536, 1024, 290640, 'jpg', 1, '2015-07-09 13:58:53', '2015-07-09 13:58:53', 'img-2862'),
(80, 'IMG_2864.JPG', '286254c2-2877-40a4-9c6b-18cb7d8ab2f4', 'c071692933e96c1b4aa6535c3fcf9f7c', 'IMG 2864', NULL, NULL, 1536, 1024, 262544, 'jpg', 1, '2015-07-09 13:58:53', '2015-07-09 13:58:53', 'img-2864'),
(81, 'IMG_2869.JPG', 'cdd856dc-4ae6-43cf-e512-9dee3c5fecc3', 'fac1f808220670e78bff087b62c648df', 'IMG 2869', NULL, NULL, 1536, 1024, 657429, 'jpg', 1, '2015-07-09 13:58:54', '2015-07-09 13:58:54', 'img-2869'),
(82, 'IMG_2873.JPG', '4590c750-71ce-4894-85d2-49d9ae4886a1', '958f847680772d065f542dbabc0a9c99', 'IMG 2873', NULL, NULL, 1536, 1024, 377637, 'jpg', 1, '2015-07-09 13:58:55', '2015-07-09 13:58:55', 'img-2873'),
(83, 'IMG_2878.JPG', '2bd1b302-2508-4907-e047-b782dc55bdd6', '0666c6bf287a16e5cee7d7090718b0fa', 'IMG 2878', NULL, NULL, 683, 1024, 127468, 'jpg', 1, '2015-07-09 13:58:55', '2015-07-09 13:58:55', 'img-2878'),
(84, 'IMG_2884.JPG', '021ecd57-a6a9-4f44-d0cf-83d9569341d1', '03b923778120f4024df70d6dbaeec87a', 'IMG 2884', NULL, NULL, 1536, 1024, 304700, 'jpg', 1, '2015-07-09 13:58:55', '2015-07-09 13:58:55', 'img-2884'),
(85, 'IMG_2888.JPG', '2520d116-d5d1-419d-aaa1-87c8e04ccfa7', '1e09cf2abd3967e008aba77dfb63e12a', 'IMG 2888', NULL, NULL, 1536, 1024, 381366, 'jpg', 1, '2015-07-09 13:58:56', '2015-07-09 13:58:56', 'img-2888'),
(86, 'IMG_2895.JPG', '86bc6af4-a874-4eb6-80cd-edf45f3eb744', '69664781337dc83520db2af7af6e1d9f', 'IMG 2895', NULL, NULL, 1536, 1024, 184077, 'jpg', 1, '2015-07-09 13:58:57', '2015-07-09 13:58:57', 'img-2895'),
(87, 'IMG_2936.JPG', 'ecf7a8b6-9a42-4423-beba-4d18f10e92ce', '1979d97f05a1f56692b5ece0cd7c99e9', 'IMG 2936', NULL, NULL, 1536, 1024, 343121, 'jpg', 1, '2015-07-09 13:58:57', '2015-07-09 13:58:57', 'img-2936'),
(88, 'IMG_2941.JPG', 'a851edab-cf5f-495a-aa1c-a69390cae222', '5b31f6691bfb8353a11d914a61c15908', 'IMG 2941', NULL, NULL, 1536, 1024, 344643, 'jpg', 1, '2015-07-09 13:58:57', '2015-07-09 13:58:57', 'img-2941'),
(89, 'IMG_2954.JPG', 'd50d70dd-08a6-4fa2-8db8-3204893a9429', '17e1ff63ce9b8d644733df96d65f3bac', 'IMG 2954', NULL, NULL, 1536, 1024, 334890, 'jpg', 1, '2015-07-09 13:58:58', '2015-07-09 13:58:58', 'img-2954');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_files_index`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_files_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `a4qwu_rokgallery_files_index_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rokgallery_files_index`
--

INSERT INTO `a4qwu_rokgallery_files_index` (`keyword`, `field`, `position`, `id`) VALUES
('0926', 'title', 1, 59),
('img', 'title', 0, 59),
('0947', 'title', 1, 60),
('img', 'title', 0, 60),
('0972', 'title', 1, 61),
('img', 'title', 0, 61),
('0994', 'title', 1, 62),
('img', 'title', 0, 62),
('2726', 'title', 1, 63),
('img', 'title', 0, 63),
('2747', 'title', 1, 64),
('img', 'title', 0, 64),
('2781', 'title', 1, 65),
('img', 'title', 0, 65),
('2785', 'title', 1, 66),
('img', 'title', 0, 66),
('2788', 'title', 1, 67),
('img', 'title', 0, 67),
('2789', 'title', 1, 68),
('img', 'title', 0, 68),
('2790', 'title', 1, 69),
('img', 'title', 0, 69),
('2793', 'title', 1, 70),
('img', 'title', 0, 70),
('2800', 'title', 1, 71),
('img', 'title', 0, 71),
('2808', 'title', 1, 72),
('img', 'title', 0, 72),
('2809', 'title', 1, 73),
('img', 'title', 0, 73),
('2813', 'title', 1, 74),
('img', 'title', 0, 74),
('2830', 'title', 1, 75),
('img', 'title', 0, 75),
('2853', 'title', 1, 76),
('img', 'title', 0, 76),
('2857', 'title', 1, 77),
('img', 'title', 0, 77),
('2861', 'title', 1, 78),
('img', 'title', 0, 78),
('2862', 'title', 1, 79),
('img', 'title', 0, 79),
('2864', 'title', 1, 80),
('img', 'title', 0, 80),
('2869', 'title', 1, 81),
('img', 'title', 0, 81),
('2873', 'title', 1, 82),
('img', 'title', 0, 82),
('2878', 'title', 1, 83),
('img', 'title', 0, 83),
('2884', 'title', 1, 84),
('img', 'title', 0, 84),
('2888', 'title', 1, 85),
('img', 'title', 0, 85),
('2895', 'title', 1, 86),
('img', 'title', 0, 86),
('2936', 'title', 1, 87),
('img', 'title', 0, 87),
('2941', 'title', 1, 88),
('img', 'title', 0, 88),
('2954', 'title', 1, 89),
('img', 'title', 0, 89);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_file_loves`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_file_loves` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_file_tags`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_file_tags` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`,`tag`),
  KEY `a4qwu_rokgallery_file_tags_file_id_idx` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rokgallery_file_tags`
--

INSERT INTO `a4qwu_rokgallery_file_tags` (`file_id`, `tag`) VALUES
(59, 'galery'),
(60, 'galery'),
(61, 'galery'),
(62, 'galery'),
(63, 'galery'),
(64, 'galery'),
(65, 'galery'),
(66, 'galery'),
(67, 'galery'),
(68, 'galery'),
(69, 'galery'),
(70, 'galery'),
(71, 'galery'),
(72, 'galery'),
(73, 'galery'),
(74, 'galery'),
(75, 'galery'),
(76, 'galery'),
(77, 'galery'),
(78, 'galery'),
(79, 'galery'),
(80, 'galery'),
(81, 'galery'),
(82, 'galery'),
(83, 'galery'),
(84, 'galery'),
(85, 'galery'),
(86, 'galery'),
(87, 'galery'),
(88, 'galery'),
(89, 'galery');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_file_views`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_file_views` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rokgallery_file_views`
--

INSERT INTO `a4qwu_rokgallery_file_views` (`file_id`, `kount`) VALUES
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(83, 1),
(84, 1),
(89, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_filters`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `query` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_galleries`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `filetags` longtext,
  `width` int(10) unsigned NOT NULL DEFAULT '910',
  `height` int(10) unsigned NOT NULL DEFAULT '500',
  `keep_aspect` tinyint(1) DEFAULT '0',
  `force_image_size` tinyint(1) DEFAULT '0',
  `thumb_xsize` int(10) unsigned NOT NULL DEFAULT '190',
  `thumb_ysize` int(10) unsigned NOT NULL DEFAULT '150',
  `thumb_background` varchar(12) DEFAULT NULL,
  `thumb_keep_aspect` tinyint(1) DEFAULT '0',
  `auto_publish` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `a4qwu_rokgallery_galleries_auto_publish_idx` (`auto_publish`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `a4qwu_rokgallery_galleries`
--

INSERT INTO `a4qwu_rokgallery_galleries` (`id`, `name`, `filetags`, `width`, `height`, `keep_aspect`, `force_image_size`, `thumb_xsize`, `thumb_ysize`, `thumb_background`, `thumb_keep_aspect`, `auto_publish`) VALUES
(1, 'Ð“Ð°Ð»ÐµÑ€ÐµÑ', 'a:1:{i:0;s:6:"galery";}', 910, 0, 1, 0, 190, 150, 'transparent', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_jobs`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_jobs` (
  `id` char(36) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `properties` text,
  `state` varchar(255) NOT NULL,
  `status` text,
  `percent` bigint(20) unsigned DEFAULT NULL,
  `sm` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rokgallery_jobs`
--

INSERT INTO `a4qwu_rokgallery_jobs` (`id`, `type`, `properties`, `state`, `status`, `percent`, `sm`, `created_at`, `updated_at`) VALUES
('035ba18f-59bc-4f10-fbf9-6a82019715d1', 'Tag Addition', 'a:31:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:89;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:86;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:87;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:88;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:85;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:82;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:83;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:84;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:81;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:9;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:79;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:10;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:80;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:11;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:76;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:12;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:77;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:13;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:78;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:14;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:73;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:15;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:74;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:16;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:75;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:17;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:72;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:18;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:70;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:19;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:71;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:20;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:67;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:21;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:68;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:22;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:69;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:23;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:66;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:24;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:65;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:25;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:63;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:26;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:64;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:27;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:61;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:28;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:62;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:29;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:59;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:30;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:60;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:0;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Running', 'Added Tags to file IMG 2808', 58, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:18:"\0*\0_previous_state";O:29:"RokGallery_Job_StateMap_Ready":2:{s:8:"\0*\0_name";s:29:"RokGallery_Job_StateMap.Ready";s:6:"\0*\0_id";i:1;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2015-07-09 14:08:54', '2015-07-09 14:09:13'),
('2ae9008a-7a1f-42e9-bc5a-594867a82afa', 'Tag Addition', 'a:13:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:67;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:71;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:70;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:68;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:69;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:66;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:65;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:63;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:64;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:9;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:61;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:10;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:62;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:11;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:59;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:12;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:60;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Addition Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2015-07-09 14:11:34', '2015-07-09 14:11:34'),
('96149a40-f896-4b73-fbe4-e23f6cdb16b7', 'Tag Addition', 'a:31:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:89;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:86;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:87;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:88;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:85;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:82;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:83;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:84;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:81;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:9;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:79;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:10;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:80;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:11;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:76;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:12;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:77;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:13;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:78;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:14;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:73;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:15;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:74;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:16;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:75;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:17;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:72;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:18;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:70;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:19;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:71;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:20;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:67;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:21;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:68;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:22;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:69;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:23;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:66;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:24;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:65;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:25;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:63;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:26;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:64;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:27;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:61;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:28;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:62;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:29;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:59;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:30;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:60;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Addition Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2015-07-09 14:10:47', '2015-07-09 14:11:01'),
('b8be21ba-0a3f-45f1-9bd1-12565b6a4267', 'Tag Removal', 'a:31:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:89;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:86;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:87;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:88;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:85;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:82;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:83;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:84;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:81;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:9;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:79;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:10;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:80;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:11;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:76;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:12;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:77;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:13;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:78;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:14;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:73;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:15;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:74;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:16;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:75;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:17;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:72;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:18;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:70;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:19;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:71;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:20;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:67;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:21;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:68;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:22;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:69;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:23;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:66;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:24;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:65;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:25;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:63;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:26;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:64;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:27;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:61;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:28;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:62;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:29;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:59;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:30;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:60;s:7:"\0*\0tags";a:1:{i:0;s:6:"galery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Removal Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2015-07-09 14:06:51', '2015-07-09 14:06:55');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_profiles`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `profile` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `a4qwu_rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_schema_version`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_schema_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rokgallery_schema_version`
--

INSERT INTO `a4qwu_rokgallery_schema_version` (`version`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_slices`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_slices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `guid` char(36) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `caption` text,
  `link` text,
  `filesize` int(10) unsigned NOT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `admin_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `manipulations` longtext,
  `palette` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumb_xsize` int(10) unsigned NOT NULL,
  `thumb_ysize` int(10) unsigned NOT NULL,
  `thumb_keep_aspect` tinyint(1) NOT NULL DEFAULT '1',
  `thumb_background` varchar(12) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `a4qwu_rokgallery_slices_sluggable_idx` (`slug`,`gallery_id`),
  KEY `rokgallery_slices_published_idx` (`published`),
  KEY `rokgallery_slices_guid_idx` (`guid`),
  KEY `file_id_idx` (`file_id`),
  KEY `gallery_id_idx` (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

--
-- Дамп данных таблицы `a4qwu_rokgallery_slices`
--

INSERT INTO `a4qwu_rokgallery_slices` (`id`, `file_id`, `gallery_id`, `guid`, `title`, `caption`, `link`, `filesize`, `xsize`, `ysize`, `published`, `admin_thumb`, `manipulations`, `palette`, `created_at`, `updated_at`, `slug`, `thumb_xsize`, `thumb_ysize`, `thumb_keep_aspect`, `thumb_background`, `ordering`) VALUES
(105, 59, NULL, 'd50069c9-30a6-4672-8e69-e61f1aa8fc74', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 9724, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:43', '2015-07-09 13:58:43', 'admin-thumbnail', 150, 150, 1, NULL, 48),
(106, 60, NULL, '5224f1b7-2ce0-44db-a282-308caf3bb6d0', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 8011, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:44', '2015-07-09 13:58:44', 'admin-thumbnail-1', 150, 150, 1, NULL, 47),
(107, 61, NULL, '7898a460-3a2c-4be9-e6c3-67a80ccf8cc8', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 10889, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:44', '2015-07-09 13:58:44', 'admin-thumbnail-2', 150, 150, 1, NULL, 46),
(108, 62, NULL, 'abb02ebf-b2df-4547-d9e7-66b5322cdd78', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 9840, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:45', '2015-07-09 13:58:45', 'admin-thumbnail-3', 150, 150, 1, NULL, 45),
(109, 63, NULL, '69374229-680d-4fec-ad83-d501450d4180', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 10828, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:45', '2015-07-09 13:58:45', 'admin-thumbnail-4', 150, 150, 1, NULL, 44),
(110, 64, NULL, 'f3cdb172-a4f8-4d26-9731-8683bfb783b7', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 11556, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:802;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:251;s:3:"top";i:0;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:46', '2015-07-09 13:58:46', 'admin-thumbnail-5', 150, 150, 1, NULL, 43),
(111, 65, NULL, '59506f46-bac3-4432-fd01-28c094708070', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 10925, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:47', '2015-07-09 13:58:47', 'admin-thumbnail-6', 150, 150, 1, NULL, 42),
(112, 66, NULL, 'a3f47321-3ec3-4717-f16a-c0cc2783f209', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 10898, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:47', '2015-07-09 13:58:47', 'admin-thumbnail-7', 150, 150, 1, NULL, 41),
(113, 67, NULL, 'f8c532ff-79df-47f5-93d9-d9bc77d0268e', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 11906, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:48', '2015-07-09 13:58:48', 'admin-thumbnail-8', 150, 150, 1, NULL, 40),
(114, 68, NULL, '8af6d37d-b52b-44aa-827f-4cc7698e5829', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 7859, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:450;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:135;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:48', '2015-07-09 13:58:48', 'admin-thumbnail-9', 150, 150, 1, NULL, 39),
(115, 69, NULL, 'e7790edd-62f1-484e-854a-fcc3acda2ee3', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 8512, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:450;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:135;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:48', '2015-07-09 13:58:48', 'admin-thumbnail-10', 150, 150, 1, NULL, 38),
(116, 70, NULL, '861b8627-0eb8-4c9c-d3de-7caeb1ff6b28', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 7398, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:49', '2015-07-09 13:58:49', 'admin-thumbnail-11', 150, 150, 1, NULL, 37),
(117, 71, NULL, 'fd9e9048-17ab-4933-9cb0-c88f0fffa903', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 10605, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:50', '2015-07-09 13:58:50', 'admin-thumbnail-12', 150, 150, 1, NULL, 36),
(118, 72, NULL, '79e5a017-db3b-40d9-c9c3-63bba6179451', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 14249, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:50', '2015-07-09 13:58:50', 'admin-thumbnail-13', 150, 150, 1, NULL, 35),
(119, 73, NULL, '2bb4a48c-934b-4ee7-cbe1-45e53dc867b8', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 14521, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:51', '2015-07-09 13:58:51', 'admin-thumbnail-14', 150, 150, 1, NULL, 34),
(120, 74, NULL, 'b74951e2-4c47-4940-95a7-9370cbed6cf2', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 11924, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:450;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:135;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:51', '2015-07-09 13:58:51', 'admin-thumbnail-15', 150, 150, 1, NULL, 33),
(121, 75, NULL, 'b426880a-8b9a-4ecd-fde8-82aaa47b835b', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 11389, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:51', '2015-07-09 13:58:51', 'admin-thumbnail-16', 150, 150, 1, NULL, 32),
(122, 76, NULL, '1583ea75-a09e-4fb9-81b6-8cd72555623f', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 6813, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:52', '2015-07-09 13:58:52', 'admin-thumbnail-17', 150, 150, 1, NULL, 31),
(123, 77, NULL, 'fb249f5f-9a3a-4912-c76d-64cc9dc3d28b', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 9856, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:52', '2015-07-09 13:58:52', 'admin-thumbnail-18', 150, 150, 1, NULL, 30),
(124, 78, NULL, 'ef6f363c-3fc5-4cfa-9103-2a66b5c8d262', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 10032, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:450;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:135;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:53', '2015-07-09 13:58:53', 'admin-thumbnail-19', 150, 150, 1, NULL, 29),
(125, 79, NULL, 'ac822ad8-27fa-4234-d5ef-1c244f87ec7e', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 12495, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:53', '2015-07-09 13:58:53', 'admin-thumbnail-20', 150, 150, 1, NULL, 28),
(126, 80, NULL, '1915e107-3265-4181-b79c-d05c569aaf1f', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 7750, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:54', '2015-07-09 13:58:54', 'admin-thumbnail-21', 150, 150, 1, NULL, 27),
(127, 81, NULL, 'fbce6cd4-e73e-4c83-968b-1a4a167c381e', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 18786, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:54', '2015-07-09 13:58:54', 'admin-thumbnail-22', 150, 150, 1, NULL, 26),
(128, 82, NULL, 'cb690b1e-d04b-4293-d8ee-112bfb8fb9ec', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 9979, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:55', '2015-07-09 13:58:55', 'admin-thumbnail-23', 150, 150, 1, NULL, 25),
(129, 83, NULL, '75c154f2-de6c-47c9-d510-ef77ab056361', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 7866, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:450;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:135;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:55', '2015-07-09 13:58:55', 'admin-thumbnail-24', 150, 150, 1, NULL, 24),
(130, 84, NULL, 'a857af13-91ab-4e52-a40e-f30363187865', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 11297, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:56', '2015-07-09 13:58:56', 'admin-thumbnail-25', 150, 150, 1, NULL, 23),
(131, 85, NULL, 'aae7e50f-2646-47dd-9dd9-137a94df171a', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 11687, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:56', '2015-07-09 13:58:56', 'admin-thumbnail-26', 150, 150, 1, NULL, 22),
(132, 86, NULL, 'dedf469b-e744-44ed-c0a2-9de9af24eafd', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 7102, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:57', '2015-07-09 13:58:57', 'admin-thumbnail-27', 150, 150, 1, NULL, 21),
(133, 87, NULL, '9bdffc52-9ffd-4c99-9d02-c84f79d1415f', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 12789, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:57', '2015-07-09 13:58:57', 'admin-thumbnail-28', 150, 150, 1, NULL, 20),
(134, 88, NULL, 'ff00f685-2ff4-4634-f15a-abd7b16a4d81', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 12789, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:58', '2015-07-09 13:58:58', 'admin-thumbnail-29', 150, 150, 1, NULL, 19),
(135, 89, NULL, '2e40f00d-d5ad-4e90-fdac-dd2620b7cd90', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 15498, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:200;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:10;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 13:58:59', '2015-07-09 13:58:59', 'admin-thumbnail-30', 150, 150, 1, NULL, 17),
(136, 59, NULL, 'd0002c54-e3f8-4bcf-a7e4-92598e56425e', 'IMG 0926', NULL, NULL, 70114, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:41', '2015-07-09 14:06:54', 'img-0926', 190, 150, 0, 'transparent', 2),
(137, 60, NULL, 'a4f47ec9-0dd1-4982-c0bf-2ef84a4182de', 'IMG 0947', NULL, NULL, 55831, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:42', '2015-07-09 14:06:54', 'img-0947', 190, 150, 0, 'transparent', 0),
(138, 61, NULL, '007dd65e-0bfc-430f-c340-dd6c88fd5bd4', 'IMG 0972', NULL, NULL, 84014, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:43', '2015-07-09 14:06:54', 'img-0972', 190, 150, 0, 'transparent', 4),
(139, 62, NULL, '199b7b7f-735d-4bdb-8b47-773066f771ab', 'IMG 0994', NULL, NULL, 69618, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:44', '2015-07-09 14:06:54', 'img-0994', 190, 150, 0, 'transparent', 1),
(140, 63, NULL, 'f9a5e9e6-ab8e-4959-89bc-ed1931d929d3', 'IMG 2726', NULL, NULL, 82055, 910, 683, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:683;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:45', '2015-07-09 14:06:54', 'img-2726', 190, 150, 0, 'transparent', 6),
(141, 64, NULL, '260dd027-acaa-41eb-decb-c41b156f9236', 'IMG 2747', NULL, NULL, 36490, 910, 204, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:204;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:46', '2015-07-09 14:06:54', 'img-2747', 190, 150, 0, 'transparent', 3),
(142, 65, NULL, '93256bcd-131f-406d-fe1a-a1873e4a01a2', 'IMG 2781', NULL, NULL, 77641, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:47', '2015-07-09 14:06:54', 'img-2781', 190, 150, 0, 'transparent', 5),
(143, 66, NULL, 'c5c1f4d4-d437-4b75-884d-d0011d7ac544', 'IMG 2785', NULL, NULL, 66909, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:48', '2015-07-09 14:06:54', 'img-2785', 190, 150, 0, 'transparent', 7),
(144, 67, NULL, '17298cb8-3717-4cb3-f494-ac0eb9e88646', 'IMG 2788', NULL, NULL, 65289, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:48', '2015-07-09 14:06:53', 'img-2788', 190, 150, 0, 'transparent', 12),
(145, 68, NULL, '8f570799-34c4-4130-f58c-755e3c6fdf8d', 'IMG 2789', NULL, NULL, 107818, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:50', '2015-07-09 14:06:54', 'img-2789', 190, 150, 0, 'transparent', 10),
(146, 69, NULL, 'df1c3fa7-7322-421c-e589-5f5bb9586cf1', 'IMG 2790', NULL, NULL, 107312, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:52', '2015-07-09 14:06:54', 'img-2790', 190, 150, 0, 'transparent', 8),
(147, 70, NULL, '9049ae42-cd96-4085-93cc-38b214a9f2ce', 'IMG 2793', NULL, NULL, 47731, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:53', '2015-07-09 14:06:53', 'img-2793', 190, 150, 0, 'transparent', 13),
(148, 71, NULL, '5ce51502-0a8c-4db8-a03c-cf6c57325d12', 'IMG 2800', NULL, NULL, 76645, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:53', '2015-07-09 14:06:53', 'img-2800', 190, 150, 0, 'transparent', 9),
(149, 72, NULL, 'c83d1446-7533-436e-c027-88b116217606', 'IMG 2808', NULL, NULL, 97158, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:54', '2015-07-09 14:06:53', 'img-2808', 190, 150, 0, 'transparent', 11),
(150, 73, NULL, 'df0595b2-a5af-4495-bbbd-f36e0ae2030e', 'IMG 2809', NULL, NULL, 96912, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:55', '2015-07-09 14:06:53', 'img-2809', 190, 150, 0, 'transparent', 18),
(151, 74, NULL, '61ca10d7-891e-4a5f-b802-079db49c8570', 'IMG 2813', NULL, NULL, 130504, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:56', '2015-07-09 14:06:53', 'img-2813', 190, 150, 0, 'transparent', 16),
(152, 75, NULL, '07f09364-9e3c-45dc-ee70-1e16caaea406', 'IMG 2830', NULL, NULL, 83926, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:57', '2015-07-09 14:06:53', 'img-2830', 190, 150, 0, 'transparent', 14),
(153, 76, NULL, '98b4326a-3a71-487f-e7d2-578006bfaee3', 'IMG 2853', NULL, NULL, 41599, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:01:58', '2015-07-09 14:06:52', 'img-2853', 190, 150, 0, 'transparent', 15),
(154, 89, 1, 'd66a3082-da0d-49eb-ede7-1632b395dcf4', 'IMG 2954', NULL, NULL, 90961, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:08:56', '2015-07-09 14:08:56', 'img-2954', 190, 150, 0, 'transparent', 30),
(155, 86, 1, '1587c7e6-c171-4d66-a49c-4d5ed672d92c', 'IMG 2895', NULL, NULL, 42067, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:08:57', '2015-07-09 14:08:57', 'img-2895', 190, 150, 0, 'transparent', 29),
(156, 87, 1, 'bcd1e2f2-8427-449f-9452-97a602c47932', 'IMG 2936', NULL, NULL, 81975, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:08:58', '2015-07-09 14:08:58', 'img-2936', 190, 150, 0, 'transparent', 28),
(157, 88, 1, '4b23fce7-0714-43f5-f1c2-4ba808c02723', 'IMG 2941', NULL, NULL, 87030, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:08:59', '2015-07-09 14:08:59', 'img-2941', 190, 150, 0, 'transparent', 27),
(158, 85, 1, 'f33c2e50-5313-4829-842f-b758f82f924e', 'IMG 2888', NULL, NULL, 85853, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:00', '2015-07-09 14:09:00', 'img-2888', 190, 150, 0, 'transparent', 26),
(159, 82, 1, '31acd06a-7bd6-4600-f802-5dd0f78c228c', 'IMG 2873', NULL, NULL, 78688, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:01', '2015-07-09 14:09:01', 'img-2873', 190, 150, 0, 'transparent', 25),
(160, 83, 1, '66c23701-2c8e-4f4c-9186-7800770cdbbc', 'IMG 2878', NULL, NULL, 106684, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:02', '2015-07-09 14:09:02', 'img-2878', 190, 150, 0, 'transparent', 24),
(161, 84, 1, 'c496826f-e2d7-4d78-fbcc-1db8bf632477', 'IMG 2884', NULL, NULL, 72289, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:03', '2015-07-09 14:09:03', 'img-2884', 190, 150, 0, 'transparent', 23),
(162, 81, 1, 'e14c87e5-6940-421c-a04f-d5096dbf4838', 'IMG 2869', NULL, NULL, 154467, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:05', '2015-07-09 14:09:05', 'img-2869', 190, 150, 0, 'transparent', 22),
(163, 79, 1, 'a89fcadb-2e61-42a8-cd7c-b2fd9f4d3aaf', 'IMG 2862', NULL, NULL, 73935, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:06', '2015-07-09 14:09:06', 'img-2862', 190, 150, 0, 'transparent', 21),
(164, 80, 1, '446fbe1b-34e1-4594-ddd9-2cc4eca92611', 'IMG 2864', NULL, NULL, 59032, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:06', '2015-07-09 14:09:06', 'img-2864', 190, 150, 0, 'transparent', 20),
(165, 76, 1, '71715636-b44a-44eb-c1d5-4f0cd7af5038', 'IMG 2853', NULL, NULL, 41599, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:07', '2015-07-09 14:09:07', 'img-2853', 190, 150, 0, 'transparent', 19),
(166, 77, 1, '5df7f91d-b680-4213-b00d-f95eccdc4d78', 'IMG 2857', NULL, NULL, 61277, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:08', '2015-07-09 14:09:08', 'img-2857', 190, 150, 0, 'transparent', 18),
(167, 78, 1, '51c7e00a-2b29-453a-e272-4d0f71d68dea', 'IMG 2861', NULL, NULL, 119752, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:09', '2015-07-09 14:09:09', 'img-2861', 190, 150, 0, 'transparent', 17),
(168, 73, 1, '9c5e7dec-dec9-4cac-c3c6-9f9460081530', 'IMG 2809', NULL, NULL, 96912, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:10', '2015-07-09 14:09:10', 'img-2809', 190, 150, 0, 'transparent', 16),
(169, 74, 1, '6bd94d67-c17d-420a-afab-6376b0f8e700', 'IMG 2813', NULL, NULL, 130504, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:12', '2015-07-09 14:09:12', 'img-2813', 190, 150, 0, 'transparent', 15),
(170, 75, 1, 'ce5c4d06-9f04-4410-acea-67294944d01b', 'IMG 2830', NULL, NULL, 83926, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:13', '2015-07-09 14:09:13', 'img-2830', 190, 150, 0, 'transparent', 14),
(171, 72, 1, 'aa79ff85-7133-4ada-e566-b8f8787afc36', 'IMG 2808', NULL, NULL, 97158, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:09:13', '2015-07-09 14:09:13', 'img-2808', 190, 150, 0, 'transparent', 13),
(172, 70, 1, '750783a4-a3c9-4145-9cfb-2370c5f64db3', 'IMG 2793', NULL, NULL, 47731, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:50', '2015-07-09 14:10:50', 'img-2793', 190, 150, 0, 'transparent', 12),
(173, 71, 1, '41673469-cb97-5000-83da-975c07bdb358', 'IMG 2800', NULL, NULL, 76645, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:51', '2015-07-09 14:10:51', 'img-2800', 190, 150, 0, 'transparent', 11),
(174, 67, 1, 'b7c983ed-2f60-4ef5-d2b6-5564dfda6e3c', 'IMG 2788', NULL, NULL, 65289, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:51', '2015-07-09 14:10:51', 'img-2788', 190, 150, 0, 'transparent', 10),
(175, 68, 1, '5ac431fe-baf2-4763-ff46-6473926f615a', 'IMG 2789', NULL, NULL, 107818, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:53', '2015-07-09 14:10:53', 'img-2789', 190, 150, 0, 'transparent', 9),
(176, 69, 1, '4a4c7fdf-e9bb-48bf-d0c6-e900a395e19c', 'IMG 2790', NULL, NULL, 107312, 910, 1364, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:1364;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:54', '2015-07-09 14:10:54', 'img-2790', 190, 150, 0, 'transparent', 8),
(177, 66, 1, '3e3628d5-31e7-46e7-94bb-73b543e8085f', 'IMG 2785', NULL, NULL, 66909, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:55', '2015-07-09 14:10:55', 'img-2785', 190, 150, 0, 'transparent', 7),
(178, 65, 1, '22d1764e-479b-4ef3-c17a-66239e835150', 'IMG 2781', NULL, NULL, 77641, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:56', '2015-07-09 14:10:56', 'img-2781', 190, 150, 0, 'transparent', 6),
(179, 63, 1, 'fe9d7952-0477-4200-bdc2-e313dfbe1633', 'IMG 2726', NULL, NULL, 82055, 910, 683, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:683;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:56', '2015-07-09 14:10:56', 'img-2726', 190, 150, 0, 'transparent', 5),
(180, 64, 1, 'e78d515e-4b2e-4eb4-c213-41eac7ea29b0', 'IMG 2747', NULL, NULL, 36490, 910, 204, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:204;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:58', '2015-07-09 14:10:58', 'img-2747', 190, 150, 0, 'transparent', 4),
(181, 61, 1, '37a20433-5dc7-4387-8044-b3ca35c8beb3', 'IMG 0972', NULL, NULL, 84014, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:58', '2015-07-09 14:10:58', 'img-0972', 190, 150, 0, 'transparent', 3),
(182, 62, 1, '990febd6-9040-4df9-cf56-3cecd8082de6', 'IMG 0994', NULL, NULL, 69618, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:10:59', '2015-07-09 14:10:59', 'img-0994', 190, 150, 0, 'transparent', 2),
(183, 59, 1, '73a72063-1452-42cf-e26c-8f81fd53d713', 'IMG 0926', NULL, NULL, 70114, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:11:00', '2015-07-09 14:11:00', 'img-0926', 190, 150, 0, 'transparent', 1),
(184, 60, 1, 'ef82afbd-0cca-4873-d7ea-8c064ba62cfc', 'IMG 0947', NULL, NULL, 55831, 910, 607, 1, 0, 'a:1:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"910";s:6:"height";i:607;s:8:"\0*\0setup";b:1;}}', NULL, '2015-07-09 14:11:01', '2015-07-09 14:11:01', 'img-0947', 190, 150, 0, 'transparent', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_slices_index`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_slices_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `rokgallery_slices_index_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rokgallery_slices_index`
--

INSERT INTO `a4qwu_rokgallery_slices_index` (`keyword`, `field`, `position`, `id`) VALUES
('admin', 'caption', 0, 105),
('admin', 'title', 0, 105),
('thumbnail', 'caption', 1, 105),
('thumbnail', 'title', 1, 105),
('admin', 'caption', 0, 106),
('admin', 'title', 0, 106),
('thumbnail', 'caption', 1, 106),
('thumbnail', 'title', 1, 106),
('admin', 'caption', 0, 107),
('admin', 'title', 0, 107),
('thumbnail', 'caption', 1, 107),
('thumbnail', 'title', 1, 107),
('admin', 'caption', 0, 108),
('admin', 'title', 0, 108),
('thumbnail', 'caption', 1, 108),
('thumbnail', 'title', 1, 108),
('admin', 'caption', 0, 109),
('admin', 'title', 0, 109),
('thumbnail', 'caption', 1, 109),
('thumbnail', 'title', 1, 109),
('admin', 'caption', 0, 110),
('admin', 'title', 0, 110),
('thumbnail', 'caption', 1, 110),
('thumbnail', 'title', 1, 110),
('admin', 'caption', 0, 111),
('admin', 'title', 0, 111),
('thumbnail', 'caption', 1, 111),
('thumbnail', 'title', 1, 111),
('admin', 'caption', 0, 112),
('admin', 'title', 0, 112),
('thumbnail', 'caption', 1, 112),
('thumbnail', 'title', 1, 112),
('admin', 'caption', 0, 113),
('admin', 'title', 0, 113),
('thumbnail', 'caption', 1, 113),
('thumbnail', 'title', 1, 113),
('admin', 'caption', 0, 114),
('admin', 'title', 0, 114),
('thumbnail', 'caption', 1, 114),
('thumbnail', 'title', 1, 114),
('admin', 'caption', 0, 115),
('admin', 'title', 0, 115),
('thumbnail', 'caption', 1, 115),
('thumbnail', 'title', 1, 115),
('admin', 'caption', 0, 116),
('admin', 'title', 0, 116),
('thumbnail', 'caption', 1, 116),
('thumbnail', 'title', 1, 116),
('admin', 'caption', 0, 117),
('admin', 'title', 0, 117),
('thumbnail', 'caption', 1, 117),
('thumbnail', 'title', 1, 117),
('admin', 'caption', 0, 118),
('admin', 'title', 0, 118),
('thumbnail', 'caption', 1, 118),
('thumbnail', 'title', 1, 118),
('admin', 'caption', 0, 119),
('admin', 'title', 0, 119),
('thumbnail', 'caption', 1, 119),
('thumbnail', 'title', 1, 119),
('admin', 'caption', 0, 120),
('admin', 'title', 0, 120),
('thumbnail', 'caption', 1, 120),
('thumbnail', 'title', 1, 120),
('admin', 'caption', 0, 121),
('admin', 'title', 0, 121),
('thumbnail', 'caption', 1, 121),
('thumbnail', 'title', 1, 121),
('admin', 'caption', 0, 122),
('admin', 'title', 0, 122),
('thumbnail', 'caption', 1, 122),
('thumbnail', 'title', 1, 122),
('admin', 'caption', 0, 123),
('admin', 'title', 0, 123),
('thumbnail', 'caption', 1, 123),
('thumbnail', 'title', 1, 123),
('admin', 'caption', 0, 124),
('admin', 'title', 0, 124),
('thumbnail', 'caption', 1, 124),
('thumbnail', 'title', 1, 124),
('admin', 'caption', 0, 125),
('admin', 'title', 0, 125),
('thumbnail', 'caption', 1, 125),
('thumbnail', 'title', 1, 125),
('admin', 'caption', 0, 126),
('admin', 'title', 0, 126),
('thumbnail', 'caption', 1, 126),
('thumbnail', 'title', 1, 126),
('admin', 'caption', 0, 127),
('admin', 'title', 0, 127),
('thumbnail', 'caption', 1, 127),
('thumbnail', 'title', 1, 127),
('admin', 'caption', 0, 128),
('admin', 'title', 0, 128),
('thumbnail', 'caption', 1, 128),
('thumbnail', 'title', 1, 128),
('admin', 'caption', 0, 129),
('admin', 'title', 0, 129),
('thumbnail', 'caption', 1, 129),
('thumbnail', 'title', 1, 129),
('admin', 'caption', 0, 130),
('admin', 'title', 0, 130),
('thumbnail', 'caption', 1, 130),
('thumbnail', 'title', 1, 130),
('admin', 'caption', 0, 131),
('admin', 'title', 0, 131),
('thumbnail', 'caption', 1, 131),
('thumbnail', 'title', 1, 131),
('admin', 'caption', 0, 132),
('admin', 'title', 0, 132),
('thumbnail', 'caption', 1, 132),
('thumbnail', 'title', 1, 132),
('admin', 'caption', 0, 133),
('admin', 'title', 0, 133),
('thumbnail', 'caption', 1, 133),
('thumbnail', 'title', 1, 133),
('admin', 'caption', 0, 134),
('admin', 'title', 0, 134),
('thumbnail', 'caption', 1, 134),
('thumbnail', 'title', 1, 134),
('admin', 'caption', 0, 135),
('admin', 'title', 0, 135),
('thumbnail', 'caption', 1, 135),
('thumbnail', 'title', 1, 135),
('0926', 'title', 1, 136),
('img', 'title', 0, 136),
('0947', 'title', 1, 137),
('img', 'title', 0, 137),
('0972', 'title', 1, 138),
('img', 'title', 0, 138),
('0994', 'title', 1, 139),
('img', 'title', 0, 139),
('2726', 'title', 1, 140),
('img', 'title', 0, 140),
('2747', 'title', 1, 141),
('img', 'title', 0, 141),
('2781', 'title', 1, 142),
('img', 'title', 0, 142),
('2785', 'title', 1, 143),
('img', 'title', 0, 143),
('2788', 'title', 1, 144),
('img', 'title', 0, 144),
('2789', 'title', 1, 145),
('img', 'title', 0, 145),
('2790', 'title', 1, 146),
('img', 'title', 0, 146),
('2793', 'title', 1, 147),
('img', 'title', 0, 147),
('2800', 'title', 1, 148),
('img', 'title', 0, 148),
('2808', 'title', 1, 149),
('img', 'title', 0, 149),
('2809', 'title', 1, 150),
('img', 'title', 0, 150),
('2813', 'title', 1, 151),
('img', 'title', 0, 151),
('2830', 'title', 1, 152),
('img', 'title', 0, 152),
('2853', 'title', 1, 153),
('img', 'title', 0, 153),
('2954', 'title', 1, 154),
('img', 'title', 0, 154),
('2895', 'title', 1, 155),
('img', 'title', 0, 155),
('2936', 'title', 1, 156),
('img', 'title', 0, 156),
('2941', 'title', 1, 157),
('img', 'title', 0, 157),
('2888', 'title', 1, 158),
('img', 'title', 0, 158),
('2873', 'title', 1, 159),
('img', 'title', 0, 159),
('2878', 'title', 1, 160),
('img', 'title', 0, 160),
('2884', 'title', 1, 161),
('img', 'title', 0, 161),
('2869', 'title', 1, 162),
('img', 'title', 0, 162),
('2862', 'title', 1, 163),
('img', 'title', 0, 163),
('2864', 'title', 1, 164),
('img', 'title', 0, 164),
('2853', 'title', 1, 165),
('img', 'title', 0, 165),
('2857', 'title', 1, 166),
('img', 'title', 0, 166),
('2861', 'title', 1, 167),
('img', 'title', 0, 167),
('2809', 'title', 1, 168),
('img', 'title', 0, 168),
('2813', 'title', 1, 169),
('img', 'title', 0, 169),
('2830', 'title', 1, 170),
('img', 'title', 0, 170),
('2808', 'title', 1, 171),
('img', 'title', 0, 171),
('2793', 'title', 1, 172),
('img', 'title', 0, 172),
('2800', 'title', 1, 173),
('img', 'title', 0, 173),
('2788', 'title', 1, 174),
('img', 'title', 0, 174),
('2789', 'title', 1, 175),
('img', 'title', 0, 175),
('2790', 'title', 1, 176),
('img', 'title', 0, 176),
('2785', 'title', 1, 177),
('img', 'title', 0, 177),
('2781', 'title', 1, 178),
('img', 'title', 0, 178),
('2726', 'title', 1, 179),
('img', 'title', 0, 179),
('2747', 'title', 1, 180),
('img', 'title', 0, 180),
('0972', 'title', 1, 181),
('img', 'title', 0, 181),
('0994', 'title', 1, 182),
('img', 'title', 0, 182),
('0926', 'title', 1, 183),
('img', 'title', 0, 183),
('0947', 'title', 1, 184),
('img', 'title', 0, 184);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rokgallery_slice_tags`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rokgallery_slice_tags` (
  `slice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`slice_id`,`tag`),
  KEY `rokgallery_slice_tags_slice_id_idx` (`slice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_calculations`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_calculations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_components`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `a4qwu_rsform_components`
--

INSERT INTO `a4qwu_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES
(1, 1, 1, 2, 1),
(2, 1, 10, 1, 1),
(3, 1, 1, 3, 1),
(4, 1, 3, 4, 1),
(5, 1, 5, 5, 1),
(6, 1, 4, 6, 1),
(7, 1, 6, 7, 1),
(8, 1, 13, 8, 1),
(9, 1, 10, 9, 1),
(10, 2, 1, 2, 1),
(11, 2, 10, 1, 1),
(12, 2, 1, 3, 1),
(13, 2, 3, 6, 1),
(14, 2, 5, 7, 1),
(15, 2, 4, 10, 1),
(16, 2, 6, 11, 1),
(17, 2, 13, 12, 1),
(18, 2, 10, 13, 1),
(19, 2, 41, 4, 1),
(20, 2, 41, 8, 1),
(21, 2, 10, 5, 1),
(22, 2, 10, 9, 1),
(42, 4, 3, 4, 1),
(41, 4, 6, 2, 1),
(40, 4, 6, 1, 1),
(33, 4, 1, 3, 1),
(34, 4, 1, 5, 1),
(35, 4, 1, 6, 1),
(36, 4, 1, 7, 1),
(37, 4, 2, 8, 1),
(38, 4, 10, 9, 1),
(39, 4, 13, 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_component_types`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- Дамп данных таблицы `a4qwu_rsform_component_types`
--

INSERT INTO `a4qwu_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES
(1, 'textBox'),
(2, 'textArea'),
(3, 'selectList'),
(4, 'checkboxGroup'),
(5, 'radioGroup'),
(6, 'calendar'),
(7, 'button'),
(8, 'captcha'),
(9, 'fileUpload'),
(10, 'freeText'),
(11, 'hidden'),
(12, 'imageButton'),
(13, 'submitButton'),
(14, 'password'),
(15, 'ticket'),
(41, 'pageBreak'),
(211, 'birthDay'),
(212, 'gmaps');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_component_type_fields`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rsform_component_type_fields`
--

INSERT INTO `a4qwu_rsform_component_type_fields` (`ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Ordering`) VALUES
(1, 'NAME', 'textbox', '', 1),
(1, 'CAPTION', 'textbox', '', 2),
(1, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(1, 'SIZE', 'textbox', '20', 4),
(1, 'MAXSIZE', 'textbox', '', 5),
(1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(1, 'DEFAULTVALUE', 'textarea', '', 9),
(1, 'DESCRIPTION', 'textarea', '', 11),
(1, 'COMPONENTTYPE', 'hidden', '1', 15),
(1, 'VALIDATIONEXTRA', 'textbox', '', 6),
(2, 'NAME', 'textbox', '', 1),
(2, 'CAPTION', 'textbox', '', 2),
(2, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(2, 'COLS', 'textbox', '50', 4),
(2, 'ROWS', 'textbox', '5', 5),
(2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(2, 'DEFAULTVALUE', 'textarea', '', 9),
(2, 'DESCRIPTION', 'textarea', '', 10),
(2, 'COMPONENTTYPE', 'hidden', '2', 10),
(2, 'WYSIWYG', 'select', 'NO\r\nYES', 11),
(2, 'VALIDATIONEXTRA', 'textbox', '', 6),
(3, 'NAME', 'textbox', '', 1),
(3, 'CAPTION', 'textbox', '', 2),
(3, 'SIZE', 'textbox', '', 3),
(3, 'MULTIPLE', 'select', 'NO\r\nYES', 4),
(3, 'ITEMS', 'textarea', '', 5),
(3, 'REQUIRED', 'select', 'NO\r\nYES', 6),
(3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(3, 'DESCRIPTION', 'textarea', '', 8),
(3, 'COMPONENTTYPE', 'hidden', '3', 10),
(3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(4, 'NAME', 'textbox', '', 1),
(4, 'CAPTION', 'textbox', '', 2),
(4, 'ITEMS', 'textarea', '', 3),
(4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(4, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(4, 'DESCRIPTION', 'textarea', '', 6),
(4, 'COMPONENTTYPE', 'hidden', '4', 7),
(4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(5, 'NAME', 'textbox', '', 1),
(5, 'CAPTION', 'textbox', '', 2),
(5, 'ITEMS', 'textarea', '', 3),
(5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(5, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(5, 'DESCRIPTION', 'textarea', '', 6),
(5, 'COMPONENTTYPE', 'hidden', '5', 7),
(5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(6, 'NAME', 'textbox', '', 1),
(6, 'CAPTION', 'textbox', '', 2),
(6, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(6, 'VALIDATIONCALENDAR', 'select', '//<code>\r\nreturn RSFormProHelper::getOtherCalendars();\r\n//</code>', 4),
(6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4),
(6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', 5),
(6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(6, 'DESCRIPTION', 'textarea', '', 7),
(6, 'COMPONENTTYPE', 'hidden', '6', 8),
(6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(6, 'READONLY', 'select', 'NO\r\nYES', 6),
(6, 'POPUPLABEL', 'textbox', '...', 6),
(6, 'MINDATE', 'textarea', '', 5),
(6, 'MAXDATE', 'textarea', '', 5),
(6, 'DEFAULTVALUE', 'textarea', '', 2),
(7, 'NAME', 'textbox', '', 1),
(7, 'CAPTION', 'textbox', '', 2),
(7, 'LABEL', 'textbox', '', 3),
(7, 'RESET', 'select', 'NO\r\nYES', 4),
(7, 'RESETLABEL', 'textbox', '', 5),
(7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(7, 'DESCRIPTION', 'textarea', '', 7),
(7, 'COMPONENTTYPE', 'hidden', '7', 8),
(7, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 6),
(8, 'NAME', 'textbox', '', 1),
(8, 'CAPTION', 'textbox', '', 2),
(8, 'LENGTH', 'textbox', '4', 3),
(8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4),
(8, 'TEXTCOLOR', 'textbox', '#000000', 5),
(8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', 6),
(8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', 7),
(8, 'DESCRIPTION', 'textarea', '', 9),
(8, 'COMPONENTTYPE', 'hidden', '8', 9),
(8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', 7),
(8, 'SHOWREFRESH', 'select', 'NO\r\nYES', 8),
(8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11),
(8, 'SIZE', 'textbox', '15', 12),
(8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', 3),
(9, 'NAME', 'textbox', '', 1),
(9, 'CAPTION', 'textbox', '', 2),
(9, 'FILESIZE', 'textbox', '', 3),
(9, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(9, 'ACCEPTEDFILES', 'textarea', '', 5),
(9, 'DESTINATION', 'textbox', '//<code>\r\nreturn ''components/com_rsform/uploads/'';\r\n//</code>', 6),
(9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(9, 'DESCRIPTION', 'textarea', '', 8),
(9, 'COMPONENTTYPE', 'hidden', '9', 9),
(9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(9, 'PREFIX', 'textarea', '', 6),
(9, 'EMAILATTACH', 'emailattach', '', 102),
(10, 'NAME', 'textbox', '', 1),
(10, 'TEXT', 'textarea', '', 1),
(10, 'COMPONENTTYPE', 'hidden', '10', 9),
(11, 'NAME', 'textbox', '', 1),
(11, 'DEFAULTVALUE', 'textarea', '', 1),
(11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1),
(11, 'COMPONENTTYPE', 'hidden', '11', 9),
(12, 'COMPONENTTYPE', 'hidden', '12', 10),
(12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(12, 'RESETLABEL', 'textbox', '', 7),
(12, 'RESET', 'select', 'NO\r\nYES', 6),
(12, 'IMAGERESET', 'textbox', '', 5),
(12, 'IMAGEBUTTON', 'textbox', '', 4),
(12, 'LABEL', 'textbox', '', 3),
(12, 'CAPTION', 'textbox', '', 2),
(12, 'NAME', 'textbox', '', 1),
(12, 'DESCRIPTION', 'textarea', '', 10),
(13, 'NAME', 'textbox', '', 1),
(13, 'CAPTION', 'textbox', '', 3),
(13, 'LABEL', 'textbox', '', 2),
(13, 'RESET', 'select', 'NO\r\nYES', 6),
(13, 'RESETLABEL', 'textbox', '', 7),
(13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(13, 'COMPONENTTYPE', 'hidden', '13', 10),
(13, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 9),
(13, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 8),
(13, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 8),
(13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 8),
(14, 'NAME', 'textbox', '', 1),
(14, 'CAPTION', 'textbox', '', 2),
(14, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(14, 'SIZE', 'textbox', '', 4),
(14, 'MAXSIZE', 'textbox', '', 5),
(14, 'DEFAULTVALUE', 'textarea', '', 6),
(14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(14, 'COMPONENTTYPE', 'hidden', '14', 8),
(14, 'DESCRIPTION', 'textarea', '', 100),
(14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 9),
(14, 'VALIDATIONEXTRA', 'textbox', '', 6),
(15, 'NAME', 'textbox', '', 1),
(15, 'LENGTH', 'textbox', '8', 4),
(15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(15, 'COMPONENTTYPE', 'hidden', '15', 8),
(15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', 3),
(41, 'NAME', 'textbox', '', 1),
(41, 'COMPONENTTYPE', 'hidden', '41', 5),
(41, 'NEXTBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''NEXT'');\r\n//</code>', 2),
(41, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 3),
(41, 'ADDITIONALATTRIBUTES', 'textarea', '', 4),
(41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', 5),
(41, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 6),
(41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 7),
(211, 'VALIDATION_ALLOW_INCORRECT_DATE', 'select', 'NO\r\nYES', 0),
(211, 'NAME', 'textbox', '', 1),
(211, 'VALIDATIONRULE_DATE', 'select', '//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>', 1),
(211, 'CAPTION', 'textbox', '', 2),
(211, 'DESCRIPTION', 'textarea', '', 3),
(211, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(211, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 5),
(211, 'DATEORDERING', 'select', 'DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM', 6),
(211, 'DATESEPARATOR', 'textbox', ' / ', 7),
(211, 'SHOWDAY', 'select', 'YES\r\nNO', 8),
(211, 'SHOWDAYPLEASE', 'textbox', 'Day', 9),
(211, 'SHOWDAYTYPE', 'select', 'DAY_TYPE_01\r\nDAY_TYPE_1', 10),
(211, 'SHOWMONTH', 'select', 'YES\r\nNO', 11),
(211, 'SHOWMONTHPLEASE', 'textbox', 'Month', 12),
(211, 'SHOWMONTHTYPE', 'select', 'MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG', 13),
(211, 'SHOWYEAR', 'select', 'YES\r\nNO', 14),
(211, 'SHOWYEARPLEASE', 'textbox', 'Year', 15),
(211, 'STARTYEAR', 'textbox', '1960', 16),
(211, 'ENDYEAR', 'textbox', '2013', 17),
(211, 'STORELEADINGZERO', 'select', 'NO\r\nYES', 18),
(211, 'ADDITIONALATTRIBUTES', 'textarea', '', 18),
(211, 'COMPONENTTYPE', 'hidden', '211', 19),
(212, 'NAME', 'textbox', '', 0),
(212, 'CAPTION', 'textbox', '', 1),
(212, 'DESCRIPTION', 'textarea', '', 3),
(212, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(212, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 5),
(212, 'DEFAULTVALUE', 'textarea', '', 2),
(212, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(212, 'MAPWIDTH', 'textbox', '450px', 7),
(212, 'MAPHEIGHT', 'textbox', '300px', 8),
(212, 'MAPCENTER', 'textbox', '39.5500507,-105.7820674', 9),
(212, 'COMPONENTTYPE', 'hidden', '212', 12),
(212, 'SIZE', 'textbox', '20', 13),
(212, 'MAPZOOM', 'textbox', '10', 10),
(212, 'MAPRESULT', 'select', 'ADDRESS\r\nCOORDINATES', 12),
(212, 'GEOLOCATION', 'select', 'NO\r\nYES', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_conditions`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_condition_details`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_config`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rsform_config`
--

INSERT INTO `a4qwu_rsform_config` (`SettingName`, `SettingValue`) VALUES
('global.register.code', ''),
('global.debug.mode', '0'),
('global.iis', '0'),
('global.editor', '1'),
('global.codemirror', '0'),
('auto_responsive', '1'),
('global.date_mask', 'Y-m-d H:i:s'),
('global.filtering', 'joomla'),
('calculations.thousands', ','),
('calculations.decimal', '.'),
('calculations.nodecimals', '2'),
('request_timeout', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_directory`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_directory` (
  `formId` int(11) NOT NULL,
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_directory_fields`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_directory_fields` (
  `formId` int(11) NOT NULL,
  `componentId` int(11) NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  UNIQUE KEY `formId` (`formId`,`componentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_emails`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_forms`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `a4qwu_rsform_forms`
--

INSERT INTO `a4qwu_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `FormLayoutName`, `FormLayoutAutogenerate`, `CSS`, `JS`, `FormTitle`, `ShowFormTitle`, `Published`, `Lang`, `ReturnUrl`, `ShowThankyou`, `Thankyou`, `ShowContinue`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`, `UserEmailScript`, `AdminEmailScript`, `AdditionalEmailsScript`, `MetaTitle`, `MetaDesc`, `MetaKeywords`, `Required`, `ErrorMessage`, `MultipleSeparator`, `TextareaNewLines`, `CSSClass`, `CSSId`, `CSSName`, `CSSAction`, `CSSAdditionalAttributes`, `AjaxValidation`, `ThemeParams`, `Keepdata`, `Backendmenu`, `ConfirmSubmission`, `Access`) VALUES
(1, 'RSformPro example', '<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class="formHorizontal formContainer" id="rsform_1_page_0">\n	<div class="rsform-block rsform-block-header">\n		<div class="formControlLabel">{Header:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\n		<p class="formDescription">{Header:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-fullname">\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\n		<p class="formDescription">{FullName:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-email">\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\n		<p class="formDescription">{Email:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-companysize">\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\n		<p class="formDescription">{CompanySize:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-position">\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\n		<p class="formDescription">{Position:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-contactby">\n		<div class="formControlLabel">{ContactBy:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\n		<p class="formDescription">{ContactBy:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-contactwhen">\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\n		<p class="formDescription">{ContactWhen:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-submit">\n		<div class="formControlLabel">{Submit:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\n		<p class="formDescription">{Submit:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-footer">\n		<div class="formControlLabel">{Footer:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\n		<p class="formDescription">{Footer:description}</p>\n		</div>\n	</div>\n</fieldset>\n', 'responsive', 1, '', '', 'RSForm! Pro example', 1, 1, '', '', 1, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, '', '', '(*)', '', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0, ''),
(2, 'RSformPro Multipage example', '<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_0">\n	<div class="rsform-block rsform-block-header">\n		<div class="formControlLabel">{Header:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\n		<p class="formDescription">{Header:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-fullname">\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\n		<p class="formDescription">{FullName:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-email">\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\n		<p class="formDescription">{Email:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-page1">\n		<div class="formControlLabel">&nbsp;</div>\n		<div class="formControls">\n		<div class="formBody">{Page1:body}</div>\n		</div>\n	</div>\n	</fieldset>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_1">\n	<div class="rsform-block rsform-block-companyheader">\n		<div class="formControlLabel">{CompanyHeader:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{CompanyHeader:body}<span class="formValidation">{CompanyHeader:validation}</span></div>\n		<p class="formDescription">{CompanyHeader:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-companysize">\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\n		<p class="formDescription">{CompanySize:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-position">\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\n		<p class="formDescription">{Position:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-page2">\n		<div class="formControlLabel">&nbsp;</div>\n		<div class="formControls">\n		<div class="formBody">{Page2:body}</div>\n		</div>\n	</div>\n	</fieldset>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_2">\n	<div class="rsform-block rsform-block-contactheader">\n		<div class="formControlLabel">{ContactHeader:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{ContactHeader:body}<span class="formValidation">{ContactHeader:validation}</span></div>\n		<p class="formDescription">{ContactHeader:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-contactby">\n		<div class="formControlLabel">{ContactBy:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\n		<p class="formDescription">{ContactBy:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-contactwhen">\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\n		<p class="formDescription">{ContactWhen:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-submit">\n		<div class="formControlLabel">{Submit:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\n		<p class="formDescription">{Submit:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-footer">\n		<div class="formControlLabel">{Footer:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\n		<p class="formDescription">{Footer:description}</p>\n		</div>\n	</div>\n</fieldset>\n', 'responsive', 1, '', '', 'RSForm! Pro Multipage example', 1, 1, '', '', 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0, ''),
(4, 'forma-bronirovaniya', '{error}\n<div class="form2LinesLayout">\n	<div class="formField rsform-block rsform-block-dateup">\n		{dateUp:caption}  *<br/>\n		{dateUp:body}<br/>\n		{dateUp:validation}\n		{dateUp:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-datedown">\n		{dateDown:caption}  *<br/>\n		{dateDown:body}<br/>\n		{dateDown:validation}\n		{dateDown:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-textname">\n		{TextName:caption}  *<br/>\n		{TextName:body}<br/>\n		{TextName:validation}\n		{TextName:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-typenomer">\n		{TypeNomer:caption}  *<br/>\n		{TypeNomer:body}<br/>\n		{TypeNomer:validation}\n		{TypeNomer:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-number">\n		{Number:caption}  *<br/>\n		{Number:body}<br/>\n		{Number:validation}\n		{Number:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-email">\n		{email:caption}  *<br/>\n		{email:body}<br/>\n		{email:validation}\n		{email:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-phone">\n		{Phone:caption}  *<br/>\n		{Phone:body}<br/>\n		{Phone:validation}\n		{Phone:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-comment">\n		{Comment:caption}<br/>\n		{Comment:body}<br/>\n		{Comment:validation}\n		{Comment:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-text">\n		{Text:caption}<br/>\n		{Text:body}<br/>\n		{Text:validation}\n		{Text:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-submit">\n		{Submit:caption}<br/>\n		{Submit:body}<br/>\n		{Submit:validation}\n		{Submit:description}<br/>\n	</div>\n</div>\n', '2lines', 1, '', '', 'Форма бронирования', 0, 1, 'en-GB', '', 1, '<p>Спасибо за Ваше сообщение! Мы свяжемся с вами как можно скорее</p>', 1, '<p> Спасибо, что обратились к нам. Мы свяжемся с Вами как можно скорее. </p> ', '{email:value}', '', '', 'mara.smv@gmail.com', '', 'family.com.kg', 'Спасибо за Ваше сообщение!', 1, 0, '', '<p> Поступил новый предоставленный файл . </p>', 'mara.smv@gmail.com', '', '', 'mara.smv@gmail.com', '', 'family.com.kg', 'Новые предоставленные файлы от ''''!', 1, '', '', '', '', '', '', 0, '', '', ' *', '<p class="formRed">Please complete all required fields!</p>', '\\n', 1, '', 'userForm', '', '', '', 1, 'name=green\nnum_css=1\ncss0=css/style.css', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_mappings`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_posts`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_rsform_posts`
--

INSERT INTO `a4qwu_rsform_posts` (`form_id`, `enabled`, `method`, `silent`, `url`) VALUES
(4, 0, 1, 1, 'http://');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_properties`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=384 ;

--
-- Дамп данных таблицы `a4qwu_rsform_properties`
--

INSERT INTO `a4qwu_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES
(1, 1, 'NAME', 'FullName'),
(2, 1, 'CAPTION', 'Full Name'),
(3, 1, 'REQUIRED', 'YES'),
(4, 1, 'SIZE', '20'),
(5, 1, 'MAXSIZE', ''),
(6, 1, 'VALIDATIONRULE', 'none'),
(7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(8, 1, 'ADDITIONALATTRIBUTES', ''),
(9, 1, 'DEFAULTVALUE', ''),
(10, 1, 'DESCRIPTION', ''),
(11, 2, 'NAME', 'Header'),
(12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(13, 3, 'NAME', 'Email'),
(14, 3, 'CAPTION', 'E-mail'),
(15, 3, 'REQUIRED', 'YES'),
(16, 3, 'SIZE', '20'),
(17, 3, 'MAXSIZE', ''),
(18, 3, 'VALIDATIONRULE', 'email'),
(19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(20, 3, 'ADDITIONALATTRIBUTES', ''),
(21, 3, 'DEFAULTVALUE', ''),
(22, 3, 'DESCRIPTION', ''),
(23, 4, 'NAME', 'CompanySize'),
(24, 4, 'CAPTION', 'Number of Employees'),
(25, 4, 'SIZE', ''),
(26, 4, 'MULTIPLE', 'NO'),
(27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(28, 4, 'REQUIRED', 'YES'),
(29, 4, 'ADDITIONALATTRIBUTES', ''),
(30, 4, 'DESCRIPTION', ''),
(31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(32, 5, 'NAME', 'Position'),
(33, 5, 'CAPTION', 'Position'),
(34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(35, 5, 'FLOW', 'HORIZONTAL'),
(36, 5, 'REQUIRED', 'YES'),
(37, 5, 'ADDITIONALATTRIBUTES', ''),
(38, 5, 'DESCRIPTION', ''),
(39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(40, 6, 'NAME', 'ContactBy'),
(41, 6, 'CAPTION', 'How should we contact you?'),
(42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(43, 6, 'FLOW', 'HORIZONTAL'),
(44, 6, 'REQUIRED', 'NO'),
(45, 6, 'ADDITIONALATTRIBUTES', ''),
(46, 6, 'DESCRIPTION', ''),
(47, 6, 'VALIDATIONMESSAGE', ''),
(48, 7, 'NAME', 'ContactWhen'),
(49, 7, 'CAPTION', 'When would you like to be contacted?'),
(50, 7, 'REQUIRED', 'YES'),
(51, 7, 'DATEFORMAT', 'dd.mm.yyyy'),
(52, 7, 'CALENDARLAYOUT', 'POPUP'),
(53, 7, 'ADDITIONALATTRIBUTES', ''),
(54, 7, 'READONLY', 'YES'),
(55, 7, 'POPUPLABEL', '...'),
(56, 7, 'DESCRIPTION', ''),
(57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(58, 8, 'NAME', 'Submit'),
(59, 8, 'LABEL', 'Submit'),
(60, 8, 'CAPTION', ''),
(61, 8, 'RESET', 'YES'),
(62, 8, 'RESETLABEL', 'Reset'),
(63, 8, 'ADDITIONALATTRIBUTES', ''),
(64, 9, 'NAME', 'Footer'),
(65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(66, 10, 'NAME', 'FullName'),
(67, 10, 'CAPTION', 'Full Name'),
(68, 10, 'REQUIRED', 'YES'),
(69, 10, 'SIZE', '20'),
(70, 10, 'MAXSIZE', ''),
(71, 10, 'VALIDATIONRULE', 'none'),
(72, 10, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(73, 10, 'ADDITIONALATTRIBUTES', ''),
(74, 10, 'DEFAULTVALUE', ''),
(75, 10, 'DESCRIPTION', ''),
(76, 10, 'VALIDATIONEXTRA', ''),
(77, 11, 'NAME', 'Header'),
(78, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(79, 12, 'NAME', 'Email'),
(80, 12, 'CAPTION', 'E-mail'),
(81, 12, 'REQUIRED', 'YES'),
(82, 12, 'SIZE', '20'),
(83, 12, 'MAXSIZE', ''),
(84, 12, 'VALIDATIONRULE', 'email'),
(85, 12, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(86, 12, 'ADDITIONALATTRIBUTES', ''),
(87, 12, 'DEFAULTVALUE', ''),
(88, 12, 'DESCRIPTION', ''),
(89, 12, 'VALIDATIONEXTRA', ''),
(90, 13, 'NAME', 'CompanySize'),
(91, 13, 'CAPTION', 'Number of Employees'),
(92, 13, 'SIZE', ''),
(93, 13, 'MULTIPLE', 'NO'),
(94, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(95, 13, 'REQUIRED', 'YES'),
(96, 13, 'ADDITIONALATTRIBUTES', ''),
(97, 13, 'DESCRIPTION', ''),
(98, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(99, 14, 'NAME', 'Position'),
(100, 14, 'CAPTION', 'Position'),
(101, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(102, 14, 'FLOW', 'HORIZONTAL'),
(103, 14, 'REQUIRED', 'YES'),
(104, 14, 'ADDITIONALATTRIBUTES', ''),
(105, 14, 'DESCRIPTION', ''),
(106, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(107, 15, 'NAME', 'ContactBy'),
(108, 15, 'CAPTION', 'How should we contact you?'),
(109, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(110, 15, 'FLOW', 'HORIZONTAL'),
(111, 15, 'REQUIRED', 'NO'),
(112, 15, 'ADDITIONALATTRIBUTES', ''),
(113, 15, 'DESCRIPTION', ''),
(114, 15, 'VALIDATIONMESSAGE', ''),
(115, 16, 'NAME', 'ContactWhen'),
(116, 16, 'CAPTION', 'When would you like to be contacted?'),
(117, 16, 'REQUIRED', 'YES'),
(118, 16, 'DATEFORMAT', 'dd.mm.yyyy'),
(119, 16, 'CALENDARLAYOUT', 'POPUP'),
(120, 16, 'ADDITIONALATTRIBUTES', ''),
(121, 16, 'READONLY', 'YES'),
(122, 16, 'POPUPLABEL', '...'),
(123, 16, 'DESCRIPTION', ''),
(124, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(125, 17, 'NAME', 'Submit'),
(126, 17, 'LABEL', 'Submit'),
(127, 17, 'CAPTION', ''),
(128, 17, 'RESET', 'YES'),
(129, 17, 'RESETLABEL', 'Reset'),
(130, 17, 'ADDITIONALATTRIBUTES', ''),
(131, 18, 'NAME', 'Footer'),
(132, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(133, 19, 'NAME', 'Page1'),
(134, 19, 'NEXTBUTTON', 'Next >'),
(135, 19, 'PREVBUTTON', 'Prev'),
(136, 19, 'ADDITIONALATTRIBUTES', ''),
(137, 20, 'NAME', 'Page2'),
(138, 20, 'NEXTBUTTON', 'Next >'),
(139, 20, 'PREVBUTTON', 'Prev'),
(140, 20, 'ADDITIONALATTRIBUTES', ''),
(141, 21, 'NAME', 'CompanyHeader'),
(142, 21, 'TEXT', 'Please tell us a little about your company.'),
(143, 22, 'NAME', 'ContactHeader'),
(144, 22, 'TEXT', 'Please let us know how and when to contact you.'),
(371, 42, 'EMAILATTACH', ''),
(370, 42, 'VALIDATIONMESSAGE', ''),
(369, 42, 'DESCRIPTION', ''),
(368, 42, 'ADDITIONALATTRIBUTES', ''),
(367, 42, 'REQUIRED', 'YES'),
(366, 42, 'ITEMS', '|Выберите номер[c]\r\nDouble \r\nDouble+\r\nTriple\r\nFamily\r\nFamily+ '),
(364, 42, 'SIZE', ''),
(365, 42, 'MULTIPLE', 'NO'),
(363, 42, 'CAPTION', 'Тип номера'),
(362, 42, 'NAME', 'TypeNomer'),
(361, 41, 'EMAILATTACH', ''),
(360, 41, 'MINDATE', ''),
(359, 41, 'MAXDATE', ''),
(358, 41, 'VALIDATIONCALENDAR', ''),
(357, 40, 'EMAILATTACH', ''),
(356, 40, 'MINDATE', ''),
(355, 40, 'MAXDATE', ''),
(353, 41, 'NAME', 'dateDown'),
(352, 41, 'CAPTION', 'When would you like to be contacted?'),
(351, 41, 'REQUIRED', 'YES'),
(350, 41, 'DATEFORMAT', 'dd.mm.yyyy'),
(349, 41, 'CALENDARLAYOUT', 'POPUP'),
(348, 41, 'ADDITIONALATTRIBUTES', ''),
(347, 41, 'READONLY', 'YES'),
(346, 41, 'POPUPLABEL', '...'),
(345, 41, 'DESCRIPTION', ''),
(344, 41, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(343, 40, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(342, 40, 'DESCRIPTION', ''),
(341, 40, 'POPUPLABEL', '...'),
(340, 40, 'READONLY', 'YES'),
(339, 40, 'ADDITIONALATTRIBUTES', ''),
(338, 40, 'CALENDARLAYOUT', 'POPUP'),
(337, 40, 'DATEFORMAT', 'dd.mm.yyyy'),
(336, 40, 'REQUIRED', 'YES'),
(354, 40, 'VALIDATIONCALENDAR', ''),
(335, 40, 'CAPTION', 'When would you like to be contacted?'),
(334, 40, 'NAME', 'dateUp'),
(259, 33, 'NAME', 'TextName'),
(260, 33, 'CAPTION', 'Фамилия и имя:'),
(261, 33, 'DEFAULTVALUE', ''),
(262, 33, 'DESCRIPTION', ''),
(263, 33, 'REQUIRED', 'YES'),
(264, 33, 'VALIDATIONEXTRA', ''),
(265, 33, 'VALIDATIONRULE', 'none'),
(266, 33, 'VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(267, 33, 'SIZE', '20'),
(268, 33, 'MAXSIZE', ''),
(269, 33, 'ADDITIONALATTRIBUTES', ''),
(270, 33, 'EMAILATTACH', ''),
(271, 34, 'NAME', 'Number'),
(272, 34, 'CAPTION', 'Количество номеров'),
(273, 34, 'DEFAULTVALUE', ''),
(274, 34, 'DESCRIPTION', ''),
(275, 34, 'REQUIRED', 'YES'),
(276, 34, 'VALIDATIONEXTRA', ''),
(277, 34, 'VALIDATIONRULE', 'numeric'),
(278, 34, 'VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(279, 34, 'SIZE', '20'),
(280, 34, 'MAXSIZE', ''),
(281, 34, 'ADDITIONALATTRIBUTES', ''),
(282, 34, 'EMAILATTACH', ''),
(283, 35, 'NAME', 'email'),
(284, 35, 'CAPTION', '  Электронная почта:'),
(285, 35, 'DEFAULTVALUE', ''),
(286, 35, 'DESCRIPTION', ''),
(287, 35, 'REQUIRED', 'YES'),
(288, 35, 'VALIDATIONEXTRA', ''),
(289, 35, 'VALIDATIONRULE', 'email'),
(290, 35, 'VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(291, 35, 'SIZE', '20'),
(292, 35, 'MAXSIZE', ''),
(293, 35, 'ADDITIONALATTRIBUTES', ''),
(294, 35, 'EMAILATTACH', ''),
(295, 36, 'NAME', 'Phone'),
(296, 36, 'CAPTION', 'Контактный телефон: '),
(297, 36, 'DEFAULTVALUE', ''),
(298, 36, 'DESCRIPTION', ''),
(299, 36, 'REQUIRED', 'YES'),
(300, 36, 'VALIDATIONEXTRA', ''),
(301, 36, 'VALIDATIONRULE', 'none'),
(302, 36, 'VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(303, 36, 'SIZE', '20'),
(304, 36, 'MAXSIZE', ''),
(305, 36, 'ADDITIONALATTRIBUTES', ''),
(306, 36, 'EMAILATTACH', ''),
(307, 37, 'NAME', 'Comment'),
(308, 37, 'CAPTION', 'Комментарий:'),
(309, 37, 'DEFAULTVALUE', ''),
(310, 37, 'DESCRIPTION', ''),
(311, 37, 'REQUIRED', 'NO'),
(312, 37, 'VALIDATIONEXTRA', ''),
(313, 37, 'VALIDATIONRULE', 'none'),
(314, 37, 'VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(315, 37, 'COLS', '50'),
(316, 37, 'ROWS', '5'),
(317, 37, 'WYSIWYG', 'NO'),
(318, 37, 'ADDITIONALATTRIBUTES', ''),
(319, 37, 'EMAILATTACH', ''),
(320, 38, 'NAME', 'Text'),
(321, 38, 'TEXT', '(*) Поля обязательны для заполнения'),
(322, 38, 'EMAILATTACH', ''),
(323, 39, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(324, 39, 'RESETLABEL', ''),
(325, 39, 'RESET', 'NO'),
(326, 39, 'CAPTION', ''),
(327, 39, 'LABEL', 'Забронировать номер'),
(328, 39, 'NAME', 'Submit'),
(329, 39, 'PREVBUTTON', 'PREV'),
(330, 39, 'DISPLAYPROGRESS', 'NO'),
(331, 39, 'BUTTONTYPE', 'TYPEINPUT'),
(332, 39, 'ADDITIONALATTRIBUTES', ''),
(333, 39, 'EMAILATTACH', '');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_submissions`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_submission_columns`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_submission_values`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_rsform_translations`
--

CREATE TABLE IF NOT EXISTS `a4qwu_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Дамп данных таблицы `a4qwu_rsform_translations`
--

INSERT INTO `a4qwu_rsform_translations` (`id`, `form_id`, `lang_code`, `reference`, `reference_id`, `value`) VALUES
(88, 4, 'ru-RU', 'forms', 'AdminEmailText', '<p><span style="font-size: large;">Пользователь </span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 1.3em; font-size: large;"><strong>{TextName:value}</strong></span><span style="font-size: large; line-height: 1.3em;"> заполнил форму и хочет забронировать номер.</span></p>\r\n<p><span><span style="font-size: medium;">Его данные:</span></span></p>\r\n<p><span style="font-size: small;"><strong>{dateUp:caption} {dateUp:value}</strong></span></p>\r\n<p><span style="font-size: small;"><strong>{dateDown:caption} {dateDown:value}</strong></span></p>\r\n<p><strong><span style="font-size: small;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-color: #f9f9f9;"> {TextName:caption} </span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-color: #f9f9f9;">{TextName:value}</span></span></strong></p>\r\n<p><span style="font-size: small;"><strong>{TypeNomer:caption} {TypeNomer:value}</strong></span></p>\r\n<p><span style="font-size: small;"><strong>{Number:caption} {Number:value}</strong></span></p>\r\n<p><span style="font-size: small;"><strong>{email:caption} {email:value}</strong></span></p>\r\n<p><span style="font-size: small;"><strong>{Phone:caption} {Phone:value}</strong></span></p>\r\n<p><span style="font-size: small;"><strong>{Comment:caption} </strong></span><span><span style="font-size: small;"><strong>{Comment:value}</strong></span><br /><br /><span style="font-size: small;">Данные также доступны в административной панели.</span></span></p>'),
(87, 4, 'ru-RU', 'forms', 'UserEmailText', '<pre><span style="font-size: large;">Уважаемый </span><strong style="font-size: large; line-height: 1.3em;">{TextName:value}</strong><span style="font-size: large; line-height: 1.3em;">!Вы успешно забронировали номер в Доме отдыха "СемьЯ".</span></pre>\r\n<pre><span><span style="font-size: medium;">Ваши данные:</span></span></pre>\r\n<pre><strong>{dateUp:caption} {dateUp:value}</strong></pre>\r\n<pre><strong>{dateDown:caption} {dateDown:value}</strong></pre>\r\n<pre><strong>{TextName:caption} <span style="line-height: 1.3em;">{TextName:value}</span></strong></pre>\r\n<pre><strong>{TypeNomer:caption} {TypeNomer:value}</strong></pre>\r\n<pre><strong>{Number:caption} {Number:value}</strong></pre>\r\n<pre><strong>{email:caption} {email:value}</strong></pre>\r\n<pre><strong>{Phone:caption} {Phone:value}</strong></pre>\r\n<pre><strong>{Comment:caption} {Comment:value}</strong></pre>'),
(85, 4, 'ru-RU', 'properties', '41.DEFAULTVALUE', ''),
(86, 4, 'ru-RU', 'properties', '41.POPUPLABEL', '...'),
(84, 4, 'ru-RU', 'properties', '41.VALIDATIONMESSAGE', 'Пожалуйста выберите дату.'),
(82, 4, 'ru-RU', 'properties', '41.CAPTION', 'Дата выезда:'),
(83, 4, 'ru-RU', 'properties', '41.DESCRIPTION', ''),
(80, 4, 'ru-RU', 'properties', '40.DEFAULTVALUE', ''),
(81, 4, 'ru-RU', 'properties', '40.POPUPLABEL', '...'),
(79, 4, 'ru-RU', 'properties', '40.VALIDATIONMESSAGE', 'Пожалуйста выберите дату.'),
(78, 4, 'ru-RU', 'properties', '40.DESCRIPTION', ''),
(77, 4, 'ru-RU', 'properties', '40.CAPTION', 'Дата заезда:'),
(44, 4, 'ru-RU', 'properties', '33.CAPTION', 'Фамилия и имя:'),
(45, 4, 'ru-RU', 'properties', '33.DESCRIPTION', ''),
(46, 4, 'ru-RU', 'properties', '33.VALIDATIONMESSAGE', 'Пожалуйста введите имя и фамилию.'),
(47, 4, 'ru-RU', 'properties', '33.DEFAULTVALUE', ''),
(48, 4, 'ru-RU', 'properties', '34.CAPTION', 'Количество номеров:'),
(49, 4, 'ru-RU', 'properties', '34.DESCRIPTION', ''),
(50, 4, 'ru-RU', 'properties', '34.VALIDATIONMESSAGE', 'Пожалуйста введите количество номеров.'),
(51, 4, 'ru-RU', 'properties', '34.DEFAULTVALUE', ''),
(52, 4, 'ru-RU', 'properties', '35.CAPTION', '  Электронная почта:'),
(53, 4, 'ru-RU', 'properties', '35.DESCRIPTION', ''),
(54, 4, 'ru-RU', 'properties', '35.VALIDATIONMESSAGE', 'Пожалуйста введите ваш Email.'),
(55, 4, 'ru-RU', 'properties', '35.DEFAULTVALUE', ''),
(56, 4, 'ru-RU', 'properties', '36.CAPTION', 'Контактный телефон: '),
(57, 4, 'ru-RU', 'properties', '36.DESCRIPTION', ''),
(58, 4, 'ru-RU', 'properties', '36.VALIDATIONMESSAGE', 'Пожалуйста введите контактный номер телефона.'),
(59, 4, 'ru-RU', 'properties', '36.DEFAULTVALUE', ''),
(60, 4, 'ru-RU', 'properties', '37.CAPTION', 'Комментарий:'),
(61, 4, 'ru-RU', 'properties', '37.DESCRIPTION', ''),
(62, 4, 'ru-RU', 'properties', '37.VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(63, 4, 'ru-RU', 'properties', '37.DEFAULTVALUE', ''),
(64, 4, 'ru-RU', 'properties', '38.TEXT', '(*) Поля обязательны для заполнения'),
(65, 4, 'ru-RU', 'properties', '39.LABEL', 'Забронировать номер'),
(66, 4, 'ru-RU', 'properties', '39.RESETLABEL', ''),
(67, 4, 'ru-RU', 'properties', '39.PREVBUTTON', 'PREV'),
(68, 4, 'ru-RU', 'properties', '39.CAPTION', ''),
(69, 4, 'ru-RU', 'properties', '39.DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(70, 4, 'ru-RU', 'forms', 'FormTitle', 'Форма бронирования'),
(71, 4, 'ru-RU', 'forms', 'UserEmailFromName', 'family.com.kg'),
(72, 4, 'ru-RU', 'forms', 'UserEmailSubject', 'Уважаемый {TextName:value}! Вы забронировали номер в Доме отдыха "СемьЯ"'),
(73, 4, 'ru-RU', 'forms', 'AdminEmailFromName', 'family.com.kg'),
(74, 4, 'ru-RU', 'forms', 'AdminEmailSubject', 'Пользователь {TextName:value} - {email:value} хочет забронировать номер!'),
(75, 4, 'ru-RU', 'forms', 'MetaDesc', ''),
(76, 4, 'ru-RU', 'forms', 'MetaKeywords', ''),
(89, 4, 'ru-RU', 'forms', 'Thankyou', '<p>Спасибо что выбрали Дом отдыха "СемьЯ"!</p>\r\n<p>Мы будем рады видеть вас!</p>'),
(90, 4, 'ru-RU', 'forms', 'ErrorMessage', '<p class="formRed">Пожалуйста заполните все поля правильно!</p>'),
(97, 4, 'ru-RU', 'properties', '42.VALIDATIONMESSAGE', 'Пожалуйста выберите тип номера.'),
(96, 4, 'ru-RU', 'properties', '42.DESCRIPTION', ''),
(95, 4, 'ru-RU', 'properties', '42.CAPTION', 'Тип номера:'),
(98, 4, 'ru-RU', 'properties', '42.ITEMS', '|Выберите номер[c]\r\nDouble \r\nDouble+\r\nTriple\r\nFamily\r\nFamily+ ');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_schemas`
--

CREATE TABLE IF NOT EXISTS `a4qwu_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_schemas`
--

INSERT INTO `a4qwu_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.19');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_session`
--

CREATE TABLE IF NOT EXISTS `a4qwu_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_session`
--

INSERT INTO `a4qwu_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('v5pd50040bmj08stpp37c9a272', 1, 0, '1506630146', '__default|a:8:{s:15:"session.counter";i:23;s:19:"session.timer.start";i:1506629597;s:18:"session.timer.last";i:1506630145;s:17:"session.timer.now";i:1506630146;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":5:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:94;}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:11:"com_plugins";O:8:"stdClass":1:{s:7:"plugins";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:7:"weather";s:6:"access";i:0;s:5:"state";s:0:"";s:6:"folder";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:6:"folder";s:9:"orderdirn";s:3:"asc";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"579";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:18:"mara.smv@gmail.com";s:8:"password";s:34:"$P$DZyNeSguFMHSz.w53axLh/9UQLDDkd.";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-07-04 07:20:44";s:13:"lastvisitDate";s:19:"2017-09-28 19:17:46";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"bdb929e74286f515ea19ba1df53dfebf";}', 579, 'admin', ''),
('2f5qa11dsnqvbqmsdf6579a9g0', 0, 1, '1506630195', '__default|a:7:{s:15:"session.counter";i:81;s:19:"session.timer.start";i:1506626111;s:18:"session.timer.last";i:1506630193;s:17:"session.timer.now";i:1506630194;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}}comments-captcha-code|s:3:"824";', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_template_styles`
--

CREATE TABLE IF NOT EXISTS `a4qwu_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `a4qwu_template_styles`
--

INSERT INTO `a4qwu_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'family.com.kg', 0, '1', 'family.com.kg - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_updates`
--

CREATE TABLE IF NOT EXISTS `a4qwu_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=73 ;

--
-- Дамп данных таблицы `a4qwu_updates`
--

INSERT INTO `a4qwu_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.2', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(46, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(47, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(48, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(49, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(50, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(51, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(52, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(53, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(54, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(55, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(56, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(57, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(58, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(59, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(60, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(61, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(62, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(63, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(64, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(65, 9, 10041, 0, 'JComments Latest', 'JComments Latest module shows a list of latest comments from JComments', 'mod_jcomments_latest', 'module', '', 0, '3.0.4', '', 'http://www.joomlatune.ru/updates/jcomments-latest.xml', 'http://www.joomlatune.com/jcomments-modules.html'),
(67, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(68, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(69, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(70, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(71, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(72, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.3', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_update_categories`
--

CREATE TABLE IF NOT EXISTS `a4qwu_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_update_sites`
--

CREATE TABLE IF NOT EXISTS `a4qwu_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `a4qwu_update_sites`
--

INSERT INTO `a4qwu_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1506626268),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1506626268),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1506626268),
(4, 'Slideshow CK Update', 'extension', 'http://update.joomlack.fr/mod_slideshowck_update.xml', 1, 1506626268),
(7, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 0, 1436184554),
(8, 'JComments Update Site', 'extension', 'http://www.joomlatune.ru/updates/jcomments.xml', 1, 1506626268),
(9, 'JComments Latest', 'extension', 'http://www.joomlatune.ru/updates/jcomments-latest.xml', 1, 1506626268),
(12, 'Simple Image Gallery', 'extension', 'http://www.joomlaworks.net/updates/jw_sig.xml', 1, 1506626268),
(11, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap3/extension.xml', 0, 1506626270);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `a4qwu_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `a4qwu_update_sites_extensions`
--

INSERT INTO `a4qwu_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10001),
(7, 10025),
(8, 10033),
(9, 10041),
(11, 10046),
(12, 10047);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_usergroups`
--

CREATE TABLE IF NOT EXISTS `a4qwu_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `a4qwu_usergroups`
--

INSERT INTO `a4qwu_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_users`
--

CREATE TABLE IF NOT EXISTS `a4qwu_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=580 ;

--
-- Дамп данных таблицы `a4qwu_users`
--

INSERT INTO `a4qwu_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(579, 'Super User', 'admin', 'mara.smv@gmail.com', '$P$DZyNeSguFMHSz.w53axLh/9UQLDDkd.', 'deprecated', 0, 1, '2015-07-04 07:20:44', '2017-09-28 20:13:22', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_user_notes`
--

CREATE TABLE IF NOT EXISTS `a4qwu_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_user_profiles`
--

CREATE TABLE IF NOT EXISTS `a4qwu_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `a4qwu_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a4qwu_user_usergroup_map`
--

INSERT INTO `a4qwu_user_usergroup_map` (`user_id`, `group_id`) VALUES
(579, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_viewlevels`
--

CREATE TABLE IF NOT EXISTS `a4qwu_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `a4qwu_viewlevels`
--

INSERT INTO `a4qwu_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `a4qwu_weblinks`
--

CREATE TABLE IF NOT EXISTS `a4qwu_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_files_index`
--
ALTER TABLE `a4qwu_rokgallery_files_index`
  ADD CONSTRAINT `a4qwu_rokgallery_files_index_id_idx` FOREIGN KEY (`id`) REFERENCES `a4qwu_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_file_loves`
--
ALTER TABLE `a4qwu_rokgallery_file_loves`
  ADD CONSTRAINT `a4qwu_file_loves_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `a4qwu_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_file_tags`
--
ALTER TABLE `a4qwu_rokgallery_file_tags`
  ADD CONSTRAINT `a4qwu_file_tags_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `a4qwu_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_file_views`
--
ALTER TABLE `a4qwu_rokgallery_file_views`
  ADD CONSTRAINT `a4qwu_file_views_file_id__files_id` FOREIGN KEY (`file_id`) REFERENCES `a4qwu_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_slices`
--
ALTER TABLE `a4qwu_rokgallery_slices`
  ADD CONSTRAINT `a4qwu_slices_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `a4qwu_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `a4qwu_slices_gallery_id_galleries_id` FOREIGN KEY (`gallery_id`) REFERENCES `a4qwu_rokgallery_galleries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_slices_index`
--
ALTER TABLE `a4qwu_rokgallery_slices_index`
  ADD CONSTRAINT `a4qwu_rokgallery_slices_index_id_idx` FOREIGN KEY (`id`) REFERENCES `a4qwu_rokgallery_slices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `a4qwu_rokgallery_slice_tags`
--
ALTER TABLE `a4qwu_rokgallery_slice_tags`
  ADD CONSTRAINT `a4qwu_slice_tags_slice_id_slices_id` FOREIGN KEY (`slice_id`) REFERENCES `a4qwu_rokgallery_slices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
