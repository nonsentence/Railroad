-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2013 at 11:09 PM
-- Server version: 5.1.66
-- PHP Version: 5.3.3-7+squeeze15
-- 
-- Database: `cs_61stats`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `kills`
-- 

CREATE TABLE `kills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wpn` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `map` int(11) NOT NULL,
  `ct` tinyint(1) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `kills`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `maps`
-- 

CREATE TABLE `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `ct_wins` int(11) NOT NULL DEFAULT '0',
  `ct_loss` int(11) NOT NULL DEFAULT '0',
  `te_wins` int(11) NOT NULL DEFAULT '0',
  `te_loss` int(11) NOT NULL DEFAULT '0',
  `ct_kills` int(11) NOT NULL DEFAULT '0',
  `ct_deaths` int(11) NOT NULL DEFAULT '0',
  `te_kills` int(11) NOT NULL DEFAULT '0',
  `te_deaths` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `maps`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `player`
-- 

CREATE TABLE `player` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `nick` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `ct_kills` int(11) NOT NULL DEFAULT '0',
  `ct_deaths` int(11) NOT NULL DEFAULT '0',
  `te_kills` int(11) NOT NULL DEFAULT '0',
  `te_deaths` int(11) NOT NULL DEFAULT '0',
  `ratio` float NOT NULL,
  `kills_part` int(3) NOT NULL DEFAULT '0',
  `ct_wins` int(11) NOT NULL DEFAULT '0',
  `ct_loss` int(11) NOT NULL DEFAULT '0',
  `te_wins` int(11) NOT NULL DEFAULT '0',
  `te_loss` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=358 ;

-- 
-- Dumping data for table `player`
-- 

INSERT INTO `player` (`id`, `uid`, `nick`, `name`, `ct_kills`, `ct_deaths`, `te_kills`, `te_deaths`, `ratio`, `kills_part`, `ct_wins`, `ct_loss`, `te_wins`, `te_loss`, `time`) VALUES 
(315, NULL, '', 'Player', 80, 50, 0, 0, 1, 6, 0, 0, 0, 0, 0),

-- --------------------------------------------------------

-- 
-- Table structure for table `weapons`
-- 

CREATE TABLE `weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ent` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `ct_kills` int(11) NOT NULL DEFAULT '0',
  `te_kills` int(11) NOT NULL DEFAULT '0',
  `kills_part` int(3) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '6',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- 
-- Dumping data for table `weapons`
-- 

INSERT INTO `weapons` (`id`, `ent`, `name`, `ct_kills`, `te_kills`, `kills_part`, `type`) VALUES 
(1, 'usp', 'H&K .45 Tactical', 77, 0, 5, 1),
(2, 'glock18', 'Glock18 Select Fire', 32, 0, 4, 1),
(3, 'deagle', 'Desert Eagle .50 AE', 61, 0, 4, 1),
(4, 'p228', 'SIG P228', 9, 0, 2, 1),
(5, 'm3', 'Benelli M3 Super 90', 21, 0, 2, 4),
(6, 'xm1014', 'Benelli XM1014', 5, 0, 1, 4),
(7, 'mp5navy', 'H&K MP5-Navy', 256, 0, 0, 2),
(8, 'tmp', 'Steyr Tactical Machine Pistol', 19, 0, 1, 2),
(9, 'p90', 'FN P90', 49, 0, 3, 2),
(10, 'mac10', 'Ingram MAC-10', 3, 0, 3, 2),
(11, 'ak47', 'AK-47', 210, 0, 11, 3),
(12, 'sg552', 'Sig SG-552 Commando', 61, 0, 5, 3),
(13, 'm4a1', 'Colt M4A1 Carbine', 243, 0, 17, 3),
(14, 'aug', 'Steyr Aug', 56, 0, 2, 3),
(15, 'scout', 'Steyr Scout', 20, 0, 2, 7),
(16, 'awp', 'Al Acrtic Warfare/Magnum', 111, 0, 11, 7),
(17, 'g3sg1', 'H&K G3/SG-1 Sniper Rifle', 4, 0, 1, 7),
(18, 'm249', 'FN M249 Para', 4, 0, 1, 5),
(19, 'grenade', 'HE Grenade', 18, 0, 0, 6),
(20, 'world_worldspawn', 'Suicide by Falling/Drowning', 13, 0, 1, 6),
(21, 'knife', 'Knife', 20, 0, 1, 6),
(22, 'self_grenade', 'Suicide by HE Grenade', 1, 0, 0, 6),
(23, 'self_world', 'Suicide', 104, 0, 8, 6),
(24, 'world_trigger_hurt', 'Unknown', 7, 0, 0, 6),
(25, 'world_door', 'Door', 0, 0, 0, 6),
(26, 'world_train', 'Train', 1, 0, 0, 6);

-- --------------------------------------------------------

-- 
-- Table structure for table `wpn_types`
-- 

CREATE TABLE `wpn_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `ct_kills` int(11) NOT NULL DEFAULT '0',
  `te_kills` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `wpn_types`
-- 

INSERT INTO `wpn_types` (`id`, `name`, `ct_kills`, `te_kills`) VALUES 
(1, 'Handgun', 0, 0),
(2, 'Sub-Machine Gun', 0, 0),
(3, 'Assault Rifle', 0, 0),
(4, 'Shotgun', 0, 0),
(5, 'Machinegun', 0, 0),
(6, 'Other', 0, 0),
(7, 'Sniper Rifle', 0, 0);
