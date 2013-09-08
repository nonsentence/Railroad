-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2013 at 11:09 PM
-- Server version: 5.1.66
-- PHP Version: 5.3.3-7+squeeze15
-- 
-- Database: `cs_52stats`
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
  `name` varchar(50) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=773 ;

-- 
-- Dumping data for table `player`
-- 

INSERT INTO `player` (`id`, `uid`, `nick`, `name`, `ct_kills`, `ct_deaths`, `te_kills`, `te_deaths`, `ratio`, `kills_part`, `ct_wins`, `ct_loss`, `te_wins`, `te_loss`, `time`) VALUES 
(756, NULL, '', 'volkan', 3, 20, 0, 0, 0.15, 0, 0, 0, 0, 0, 0),
(755, NULL, '', 'BeTa-Cs v3', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(754, NULL, '', 'tuRKisH', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(753, NULL, '', 'Delete!', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(752, NULL, '', 'Delete*', 11, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, NULL, '', 'yusuf', 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(750, NULL, '', 'SERKAN', 23, 13, 0, 0, 1.77, 1, 0, 0, 0, 0, 0),
(749, NULL, '', 'EMRAH', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(748, NULL, '', 'ARG', 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(747, NULL, '', 'Esc', 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(746, NULL, '', '123', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(745, NULL, '', 'ethan', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(744, NULL, '', 'ozzy', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(743, NULL, '', 'ThePunusher', 14, 20, 0, 0, 0.7, 0, 0, 0, 0, 0, 0),
(742, NULL, '', 'sakal', 70, 73, 0, 0, 0.96, 2, 0, 0, 0, 0, 0),
(741, NULL, '', 'Canx', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, NULL, '', 'piss', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(739, NULL, '', 'STRikeR', 15, 14, 0, 0, 1.07, 1, 0, 0, 0, 0, 0),
(738, NULL, '', 'kabus', 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(737, NULL, '', 'Zlever', 20, 14, 0, 0, 1.43, 1, 0, 0, 0, 0, 0),
(734, NULL, '', 'TugTaglemec', 11, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(733, NULL, '', 'F.B.I', 2, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(732, NULL, '', 'yezzah', 19, 11, 0, 0, 1.73, 1, 0, 0, 0, 0, 0),
(731, NULL, '', 'Gram Brangs MOTHERFUCKER', 13, 16, 0, 0, 0.81, 0, 0, 0, 0, 0, 0),
(730, NULL, '', 'slash0r', 32, 32, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(729, NULL, '', 'chos3n', 27, 29, 0, 0, 0.93, 1, 0, 0, 0, 0, 0),
(728, NULL, '', 'CEZALANDIRICI', 25, 47, 0, 0, 0.53, 1, 0, 0, 0, 0, 0),
(727, NULL, '', 'inci', 50, 31, 0, 0, 1.61, 2, 0, 0, 0, 0, 0),
(726, NULL, '', 'VARLI', 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(725, NULL, '', 'ZZZaio', 12, 27, 0, 0, 0.44, 0, 0, 0, 0, 0, 0),
(724, NULL, '', 'Tug', 27, 11, 0, 0, 2.45, 1, 0, 0, 0, 0, 0),
(723, NULL, '', 'mali00', 10, 28, 0, 0, 0.36, 0, 0, 0, 0, 0, 0),
(721, NULL, '', 'Chakskill', 2, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(720, NULL, '', 'ChakX', 33, 100, 0, 0, 0.33, 1, 0, 0, 0, 0, 0),
(719, NULL, '', '[TAMM]Gotteshand', 82, 32, 0, 0, 2.56, 3, 0, 0, 0, 0, 0),
(718, NULL, '', 'Kaan', 8, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(735, NULL, '', 'destur', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(716, NULL, '', 'Lambo', 11, 14, 0, 0, 0.79, 0, 0, 0, 0, 0, 0),
(717, NULL, '', 'TheBedduaTR', 16, 10, 0, 0, 1.6, 1, 0, 0, 0, 0, 0),
(715, NULL, '', 'Harami', 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(714, NULL, '', 'sie1', 1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(713, NULL, '', 'h4k4n', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(712, NULL, '', '[56k]JAYHILL!!', 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(711, NULL, '', 'Krooney', 13, 12, 0, 0, 1.08, 0, 0, 0, 0, 0, 0),
(710, NULL, '', 'kronaldo', 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(709, NULL, '', '**KELLECI**', 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(708, NULL, '', 'niyazi', 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(707, NULL, '', 'ceycey', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(706, NULL, '', 'aliriza', 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, NULL, '', 'MAQTINSVK', 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(704, NULL, '', '[56kLaG]FatBoy', 13, 17, 0, 0, 0.76, 0, 0, 0, 0, 0, 0),
(703, NULL, '', '[56klaG]MaQTIn', 15, 26, 0, 0, 0.58, 1, 0, 0, 0, 0, 0),
(702, NULL, '', 'EmiroqLu', 11, 29, 0, 0, 0.38, 0, 0, 0, 0, 0, 0),
(701, NULL, '', 'OffTake', 12, 21, 0, 0, 0.57, 0, 0, 0, 0, 0, 0),
(700, NULL, '', 'HuLK', 22, 19, 0, 0, 1.16, 1, 0, 0, 0, 0, 0),
(699, NULL, '', 'sniper', 2, 20, 0, 0, 0.1, 0, 0, 0, 0, 0, 0),
(698, NULL, '', 'OrHaN_', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(697, NULL, '', 'PatSVK', 124, 52, 0, 0, 2.38, 4, 0, 0, 0, 0, 0),
(696, NULL, '', 'NaavvE', 47, 35, 0, 0, 1.34, 2, 0, 0, 0, 0, 0),
(695, NULL, '', 'killer', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(694, NULL, '', 'musty', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(693, NULL, '', 'kakara', 7, 29, 0, 0, 0.24, 0, 0, 0, 0, 0, 0),
(692, NULL, '', 'Staunts', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(691, NULL, '', 'JoEEEELLL', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(690, NULL, '', '_VeNoM_', 13, 12, 0, 0, 1.08, 0, 0, 0, 0, 0, 0),
(689, NULL, '', 'lukunku', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(688, NULL, '', 'benkekim_xD', 10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(687, NULL, '', '[56kLaG]JoeyHillWannAplAY61?', 2, 21, 0, 0, 0.1, 0, 0, 0, 0, 0, 0),
(686, NULL, '', 'KARAMURAT', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(685, NULL, '', 'JacKZoe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(684, NULL, '', 'mark', 52, 39, 0, 0, 1.33, 2, 0, 0, 0, 0, 0),
(683, NULL, '', 'kotik', 11, 15, 0, 0, 0.73, 0, 0, 0, 0, 0, 0),
(682, NULL, '', 'IITheXLordII', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(681, NULL, '', 'CaBBarCan__', 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(680, NULL, '', 'asdasd', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(679, NULL, '', 'Henry', 27, 18, 0, 0, 1.5, 1, 0, 0, 0, 0, 0),
(678, NULL, '', 'korkusuz.', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(677, NULL, '', 'Carleone', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(676, NULL, '', 'nohaha', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(675, NULL, '', 'pepee', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(674, NULL, '', '29+11=40yapar', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(673, NULL, '', 'MErt', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(672, NULL, '', 'LonelyDarkness', 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(671, NULL, '', 'asdas', 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(670, NULL, '', 'WannaPlay61 - JaYHiLL', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(669, NULL, '', 'bombaci_mulayim', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(668, NULL, '', 'Junver', 5, 19, 0, 0, 0.26, 0, 0, 0, 0, 0, 0),
(667, NULL, '', 'ruzgar', 25, 20, 0, 0, 1.25, 1, 0, 0, 0, 0, 0),
(666, NULL, '', 'Armael', 19, 39, 0, 0, 0.49, 1, 0, 0, 0, 0, 0),
(736, NULL, '', 'WaReZfRoG', 135, 115, 0, 0, 1.17, 5, 0, 0, 0, 0, 0),
(665, NULL, '', 'izmitLiyiz', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(664, NULL, '', 'Krofettin', 13, 28, 0, 0, 0.46, 0, 0, 0, 0, 0, 0),
(663, NULL, '', 'freekill', 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(662, NULL, '', 'iLL**hiLL', 29, 29, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(661, NULL, '', 'Krobben', 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(660, NULL, '', '[e.F.c]*e*l*i*t*e*', 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(659, NULL, '', 'geist', 36, 10, 0, 0, 3.6, 1, 0, 0, 0, 0, 0),
(658, NULL, '', '[SA]SirChakotay', 64, 105, 0, 0, 0.61, 2, 0, 0, 0, 0, 0),
(657, NULL, '', 'RGiSTR_55', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(656, NULL, '', 'Gaddar', 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(655, NULL, '', 'emre', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(654, NULL, '', 'ColGADDAFIKilled', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(653, NULL, '', 'YsN', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(652, NULL, '', 'CaDiLLaC..!!', 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(651, NULL, '', 'NRooKLyN', 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(650, NULL, '', 'Felaket', 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(649, NULL, '', 'Maximus', 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(648, NULL, '', 'DOOM21O', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(647, NULL, '', '*-*Gardolap_Osman*-*', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(646, NULL, '', 'simsek_ferit', 19, 23, 0, 0, 0.83, 1, 0, 0, 0, 0, 0),
(645, NULL, '', 'mustafa', 72, 74, 0, 0, 0.97, 3, 0, 0, 0, 0, 0),
(644, NULL, '', 'NyRooKLyN', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(643, NULL, '', 'wannaPlay61 JayHill', 9, 18, 0, 0, 0.5, 0, 0, 0, 0, 0, 0),
(642, NULL, '', 'galacos', 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(641, NULL, '', 'izmitLiyiz!!!', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(640, NULL, '', 'SeRDaR', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(639, NULL, '', '*****RuZgAr*******', 8, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(638, NULL, '', '***RuZg@R***', 16, 13, 0, 0, 1.23, 1, 0, 0, 0, 0, 0),
(637, NULL, '', 'Uqurcan', 26, 7, 0, 0, 3.71, 1, 0, 0, 0, 0, 0),
(636, NULL, '', 'ohaaaaa', 21, 25, 0, 0, 0.84, 1, 0, 0, 0, 0, 0),
(635, NULL, '', 'mahoni', 14, 18, 0, 0, 0.78, 0, 0, 0, 0, 0, 0),
(634, NULL, '', '-*-*-*pS!q0LadY*-*-*-*', 100, 73, 0, 0, 1.37, 4, 0, 0, 0, 0, 0),
(633, NULL, '', '[56kLaG]JoeyHill!!', 1, 22, 0, 0, 0.05, 0, 0, 0, 0, 0, 0),
(632, NULL, '', 'DEAD', 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(631, NULL, '', '**B**A**Y**T**A**R**', 20, 15, 0, 0, 1.33, 1, 0, 0, 0, 0, 0),
(630, NULL, '', 'n!qo', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(629, NULL, '', 'Maj0', 10, 28, 0, 0, 0.36, 0, 0, 0, 0, 0, 0),
(628, NULL, '', 'korkusuz', 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(627, NULL, '', 'Cpt ARRRR', 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(626, NULL, '', 'Cpt', 5, 22, 0, 0, 0.23, 0, 0, 0, 0, 0, 0),
(625, NULL, '', 'Chester', 35, 48, 0, 0, 0.73, 1, 0, 0, 0, 0, 0),
(624, NULL, '', 'lanet', 18, 22, 0, 0, 0.82, 1, 0, 0, 0, 0, 0),
(623, NULL, '', 'WannaPlay61', 23, 35, 0, 0, 0.66, 1, 0, 0, 0, 0, 0),
(622, NULL, '', 'PrePare', 15, 21, 0, 0, 0.71, 1, 0, 0, 0, 0, 0),
(621, NULL, '', 'barut', 6, 14, 0, 0, 0.43, 0, 0, 0, 0, 0, 0),
(620, NULL, '', 'melo', 9, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(619, NULL, '', 'BOMBACI', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(618, NULL, '', 'chiko', 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(617, NULL, '', 'Ferhat', 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(616, NULL, '', 'MicRop', 14, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(615, NULL, '', 'L_j', 41, 17, 0, 0, 2.41, 1, 0, 0, 0, 0, 0),
(614, NULL, '', '-*-*-*-**pSq0LadY-**-*-*-*-*-*-', 44, 64, 0, 0, 0.69, 2, 0, 0, 0, 0, 0),
(613, NULL, '', '0070_cabbar_baba', 20, 29, 0, 0, 0.69, 1, 0, 0, 0, 0, 0),
(579, NULL, '', 'FatBoy', 38, 12, 0, 0, 3.17, 1, 0, 0, 0, 0, 0),
(722, NULL, '', '@@badigard@@', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(578, NULL, '', 'maQtin', 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(577, NULL, '', 'Zielca', 12, 18, 0, 0, 0.67, 0, 0, 0, 0, 0, 0),
(576, NULL, '', 'Beefhole', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(580, NULL, '', 'LaneTLy', 16, 22, 0, 0, 0.73, 1, 0, 0, 0, 0, 0),
(581, NULL, '', 'reaallyy', 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(582, NULL, '', 'Oyuncu', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(583, NULL, '', 'Beta-cs Oyuncu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(584, NULL, '', 'kocak', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(585, NULL, '', 'ismet', 8, 18, 0, 0, 0.44, 0, 0, 0, 0, 0, 0),
(586, NULL, '', 'YILDIZ**13', 17, 9, 0, 0, 1.89, 1, 0, 0, 0, 0, 0),
(587, NULL, '', 'Cnegurozka', 92, 162, 0, 0, 0.57, 3, 0, 0, 0, 0, 0),
(588, NULL, '', 'Blade', 56, 75, 0, 0, 0.75, 2, 0, 0, 0, 0, 0),
(589, NULL, '', 'Sk8er_Boi', 28, 20, 0, 0, 1.4, 1, 0, 0, 0, 0, 0),
(590, NULL, '', 's1n4n', 24, 29, 0, 0, 0.83, 1, 0, 0, 0, 0, 0),
(591, NULL, '', 'EMRAH_!!!', 33, 25, 0, 0, 1.32, 1, 0, 0, 0, 0, 0),
(592, NULL, '', '****alayina****gider****', 12, 24, 0, 0, 0.5, 0, 0, 0, 0, 0, 0),
(593, NULL, '', 'Kinder', 7, 13, 0, 0, 0.54, 0, 0, 0, 0, 0, 0),
(594, NULL, '', '[56kLAG]WaNNaPlaYBeTa61', 12, 22, 0, 0, 0.55, 0, 0, 0, 0, 0, 0),
(595, NULL, '', 'goncol_boys', 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(596, NULL, '', 'qeberik', 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(597, NULL, '', 'TieSto', 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(598, NULL, '', 'Casuz2', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(599, NULL, '', 'ohaaa', 11, 21, 0, 0, 0.52, 0, 0, 0, 0, 0, 0),
(600, NULL, '', 'kerty_lord', 9, 19, 0, 0, 0.47, 0, 0, 0, 0, 0, 0),
(601, NULL, '', '3v1L', 43, 36, 0, 0, 1.19, 2, 0, 0, 0, 0, 0),
(602, NULL, '', 'Tartarus', 28, 78, 0, 0, 0.36, 1, 0, 0, 0, 0, 0),
(603, NULL, '', 'Borx', 9, 54, 0, 0, 0.17, 0, 0, 0, 0, 0, 0),
(604, NULL, '', 'Jucken_im_Arsch', 4, 35, 0, 0, 0.11, 0, 0, 0, 0, 0, 0),
(605, NULL, '', 'Wmers', 87, 26, 0, 0, 3.35, 3, 0, 0, 0, 0, 0),
(606, NULL, '', 'pakito_of_turkish', 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(607, NULL, '', 'AbduLCanBaZz', 59, 50, 0, 0, 1.18, 2, 0, 0, 0, 0, 0),
(608, NULL, '', 'Beta-cs', 23, 79, 0, 0, 0.29, 1, 0, 0, 0, 0, 0),
(609, NULL, '', 'izmitli_pakito', 35, 17, 0, 0, 2.06, 1, 0, 0, 0, 0, 0),
(610, NULL, '', 'FatBoySVK', 37, 7, 0, 0, 5.29, 1, 0, 0, 0, 0, 0),
(611, NULL, '', 'GosuHCl', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(612, NULL, '', 'poantry', 15, 14, 0, 0, 1.07, 1, 0, 0, 0, 0, 0),
(757, NULL, '', 'kata', 14, 28, 0, 0, 0.5, 0, 0, 0, 0, 0, 0),
(758, NULL, '', 'chimpanzee_%5', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(759, NULL, '', 'huseyin', 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(760, NULL, '', 'Ugurcan', 19, 25, 0, 0, 0.76, 1, 0, 0, 0, 0, 0),
(761, NULL, '', '@Y.s.F', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(762, NULL, '', 'xXByXx', 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(763, NULL, '', 'KaDiR', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(764, NULL, '', 'ClinT.mne', 24, 26, 0, 0, 0.92, 1, 0, 0, 0, 0, 0),
(765, NULL, '', 'XXX', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(766, NULL, '', 'Rockers', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(767, NULL, '', 'Theory', 18, 8, 0, 0, 2.25, 1, 0, 0, 0, 0, 0),
(768, NULL, '', 'de_stroyer', 8, 18, 0, 0, 0.44, 0, 0, 0, 0, 0, 0),
(769, NULL, '', 'JoNTuRK', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(770, NULL, '', 'Hammurabi', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(771, NULL, '', 'DrunkZapata', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(772, NULL, '', 'AKNET', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- 
-- Dumping data for table `weapons`
-- 

INSERT INTO `weapons` (`id`, `ent`, `name`, `ct_kills`, `te_kills`, `kills_part`, `type`) VALUES 
(1, 'usp', 'H&K .45 Tactical', 72, 0, 6, 1),
(2, 'glock18', 'Glock18 Select Fire', 46, 0, 2, 1),
(3, 'deagle', 'Desert Eagle .50 AE', 79, 0, 3, 1),
(4, 'p228', 'SIG P228', 23, 0, 1, 1),
(5, 'm3', 'Benelli M3 Super 90', 14, 0, 2, 4),
(6, 'xm1014', 'Benelli XM1014', 7, 0, 0, 4),
(7, 'mp5navy', 'H&K MP5-Navy', 310, 0, 13, 2),
(8, 'tmp', 'Steyr Tactical Machine Pistol', 31, 0, 2, 2),
(9, 'p90', 'FN P90', 444, 0, 16, 2),
(11, 'ak47', 'AK-47', 124, 0, 5, 3),
(12, 'sg552', 'Sig SG-552 Commando', 161, 0, 14, 3),
(13, 'm4a1', 'Colt M4A1 Carbine', 228, 0, 15, 3),
(22, 'self_grenade', 'Suicide by HE Grenade', 5, 0, 0, 6),
(15, 'scout', 'Steyr Scout', 12, 0, 0, 7),
(16, 'awp', 'Al Acrtic Warfare/Magnum', 123, 0, 7, 7),
(17, 'g3sg1', 'H&K G3/SG-1 Sniper Rifle', 5, 0, 1, 7),
(18, 'm249', 'FN M249 Para', 23, 0, 1, 5),
(19, 'grenade', 'HE Grenade', 21, 0, 1, 6),
(20, 'world_worldspawn', 'Suicide by Falling/Drowning', 51, 0, 2, 6),
(21, 'knife', 'Knife', 81, 0, 4, 6),
(23, 'debris', 'Flashbang', 1, 0, 0, 6),
(24, 'world_trigger_hurt', 'Unknown', 3, 0, 0, 6),
(25, 'self_world', 'Suicide', 95, 0, 4, 6),
(26, 'world_train', 'Train', 0, 0, 0, 6),
(27, 'world_door', 'Door', 0, 0, 0, 6),
(28, 'tank', 'Tank', 0, 0, 0, 6),
(29, 'self_debris', 'Suicide by Flashbang', 0, 0, 0, 6),
(31, 'world_plat', 'Unknown', 0, 0, 0, 6);

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
