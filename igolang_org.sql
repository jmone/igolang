-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 01 月 31 日 16:48
-- 服务器版本: 5.1.60
-- PHP 版本: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `igolang_org`
--

-- --------------------------------------------------------

--
-- 表的结构 `org_article`
--

CREATE TABLE IF NOT EXISTS `org_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `keywords` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `add_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `views` int(10) DEFAULT '0',
  `comments` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `org_category`
--

CREATE TABLE IF NOT EXISTS `org_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(20) CHARACTER SET utf8 NOT NULL COMMENT '分类名称',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ico` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort_number` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `org_category`
--

INSERT INTO `org_category` (`id`, `name`, `description`, `keywords`, `ico`, `sort_number`) VALUES
(1, '新手疑惑', '新手基地', 'new', NULL, NULL),
(2, 'Web开发', 'Go语言Web开发指南', 'web', NULL, NULL),
(5, '云存储', '', '', NULL, NULL),
(4, '云', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `org_comment`
--

CREATE TABLE IF NOT EXISTS `org_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `content` text,
  `reply_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `org_link`
--

CREATE TABLE IF NOT EXISTS `org_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo` varchar(200) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `org_user`
--

CREATE TABLE IF NOT EXISTS `org_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `password` char(32) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `homepage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `money` int(10) DEFAULT '100',
  `signature` text CHARACTER SET utf8,
  `articles` int(10) DEFAULT '0',
  `replies` int(10) DEFAULT '0',
  `regist_time` int(10) DEFAULT NULL,
  `last_login` int(10) NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ip` char(15) CHARACTER SET utf8 DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `introduction` text CHARACTER SET utf8,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
