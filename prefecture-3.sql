-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 19 mai 2018 à 15:08
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `prefecture`
--

-- --------------------------------------------------------

--
-- Structure de la table `aal`
--

DROP TABLE IF EXISTS `aal`;
CREATE TABLE IF NOT EXISTS `aal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `id_aal` int(11) DEFAULT NULL,
  `id_aal_type` int(11) DEFAULT NULL,
  `aal_childs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_aal` (`id_aal`),
  KEY `id_aal_type` (`id_aal_type`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `aal`
--

INSERT INTO `aal` (`id`, `nom`, `id_aal`, `id_aal_type`, `aal_childs`) VALUES
(1, 'ولاية جهة سوس ماسة', NULL, 1, NULL),
(2, 'أحواز', 1, 2, '10-11'),
(3, 'أڭادير الأطلسي ', 1, 2, '12-13-14-15'),
(4, 'أڭادير المحيط', 1, 5, '16-17-18'),
(5, 'أڭادير المركز', 1, 5, '19-20-21'),
(6, 'بنسرڭاو', 1, 5, '33-34'),
(7, 'تيكوين', 1, 5, '35-36-37'),
(8, 'أنزا', 1, 5, '38-39'),
(9, 'الميناء', 1, 5, ' '),
(10, 'الدرارڭة', 2, 4, ' '),
(11, 'أمسكرود', 2, 4, ' '),
(12, 'أورير', 3, 4, ' '),
(13, 'تغازوت', 3, 4, ' '),
(14, 'التامري', 3, 4, ' '),
(15, 'ايموزار', 3, 4, ' '),
(16, 'إدارية 1', 4, 3, ' '),
(17, 'إدارية 2', 4, 3, ' '),
(18, 'إدارية 3', 4, 3, ' '),
(19, 'إدارية 4', 5, 3, ' '),
(20, 'إدارية 5', 5, 3, ' '),
(21, 'إدارية 6', 5, 3, ' '),
(37, 'إدارية 11', 7, 3, ' '),
(38, 'إدارية 12', 8, 3, ' '),
(36, 'إدارية 10 ', 7, 3, ' '),
(33, ' إدارية 7', 6, 3, ' '),
(34, 'إدارية 8', 6, 3, ' '),
(35, 'إدارية 9', 7, 3, ' '),
(39, 'إدارية 13', 8, 3, ' ');

-- --------------------------------------------------------

--
-- Structure de la table `aal_type`
--

DROP TABLE IF EXISTS `aal_type`;
CREATE TABLE IF NOT EXISTS `aal_type` (
  `id_aal_type` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prefixe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_aal_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `aal_type`
--

INSERT INTO `aal_type` (`id_aal_type`, `nom`, `prefixe`) VALUES
(1, 'ولاية', 'W'),
(2, 'دائرة', 'CE'),
(3, 'ملحقة', 'AA'),
(4, 'قيادة', 'CA'),
(5, 'منطقة', 'D');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

DROP TABLE IF EXISTS `commune`;
CREATE TABLE IF NOT EXISTS `commune` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commune`
--

INSERT INTO `commune` (`id`, `nom`) VALUES
(1, 'أڭادير'),
(2, 'أمسكروض'),
(3, 'أورير'),
(4, 'أقصري'),
(5, 'أزيار'),
(6, 'دراركة'),
(7, 'إضمين'),
(8, 'إيموزار'),
(9, 'إمسوان'),
(10, 'تدرارت'),
(11, 'تاغزوت'),
(12, 'تامري'),
(13, 'تقي');

-- --------------------------------------------------------

--
-- Structure de la table `nature_plaignant`
--

DROP TABLE IF EXISTS `nature_plaignant`;
CREATE TABLE IF NOT EXISTS `nature_plaignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nature_plaignant`
--

INSERT INTO `nature_plaignant` (`id`, `nom`) VALUES
(1, 'شخص '),
(2, 'شركة'),
(3, 'أجنبي '),
(4, 'جمعيات '),
(5, 'تعاونية');

-- --------------------------------------------------------

--
-- Structure de la table `nature_plainte`
--

DROP TABLE IF EXISTS `nature_plainte`;
CREATE TABLE IF NOT EXISTS `nature_plainte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nature_plainte`
--

INSERT INTO `nature_plainte` (`id`, `nom`) VALUES
(1, 'فرد'),
(2, 'مجموعة أفراد');

-- --------------------------------------------------------

--
-- Structure de la table `plaignant`
--

DROP TABLE IF EXISTS `plaignant`;
CREATE TABLE IF NOT EXISTS `plaignant` (
  `id_plaignant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plaignant`),
  KEY `id_type` (`id_type`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plaignant`
--

INSERT INTO `plaignant` (`id_plaignant`, `nom`, `cin`, `adresse`, `tel`, `id_type`) VALUES
(4, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(3, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(5, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(6, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(7, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(8, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(9, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(10, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(11, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(12, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(13, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 2),
(14, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0671050321', 1),
(15, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0671050321', 1),
(16, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0671050321', 1),
(17, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0671050321', 1),
(18, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 4),
(19, 'صلاح الدين سراخ', 'dqsd', 'بنعنفر', '0617283123', 1),
(20, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(21, 'azdeaz sq', 'J454', 'eazeazeaa', '46456112', 1),
(22, 'eazeaze', 'eazee', 'dqsdqsds', 'dqsdqsdqs', 1),
(23, 'azdeaz sq', 'eaze', 'dqsds', '46456112', 1),
(24, 'qsdqsdqs', 'dqsdqsd', 'eazeaze', 'dqsdqsdqs', 1),
(25, 'azdeaz sq', 'dqsdqsd', 'dqsds', 'dqsdqsdqs', 2),
(26, 'azdeaz sq', 'eazee', 'dqsds', '46456112', 1),
(27, 'aze', 'eaze', 'dqsds', 'dsqdqsd', 1),
(28, 'azdeaz sq', 'eaze', 'dqsds', 'dqsdqsdqs', 1),
(29, 'eazeaz', 'dqsdqsd', 'fsdfd', '2313123', 1),
(30, 'azdeaz sq', 'dqsdqsd', 'dqsd', '46456112', 2),
(31, 'azdeaz sq', 'dqsdqsd', 'dqsd', '346345634', 1),
(32, 'aze', 'eaze', 'dqsd', 'dsqdqsd', 1),
(33, 'أحمد أومنصور', 'J261328', 'بنعفر القليعة', '0672836512', 1),
(34, 'qsdqsdqs', 'eazdqsdqsd', 'eazeaz', 'dqdazea', 1),
(35, 'qsdqsd', 'eaze', 'eazeaze', '4234234234', 1),
(36, 'أحمد أومنصور', 'J261328', 'بنعفر القليعة', '0672836512', 1),
(37, 'أحمد أومنصور', 'J261328', 'بنعفر القليعة', '0672836512', 5),
(38, 'azdeaz sq', 'eaze', 'dqsds', '46456112', 2),
(39, 'aze', 'dqsdqsd', 'dqsds', 'dqsdqsdqs', 1),
(40, 'أحمد أومنصور', 'J261328', 'بنعفر القليعة', '0672836512', 2),
(41, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 2),
(42, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(43, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(44, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(45, 'صلاح الدين سراخ', 'eaze', 'بنعنفر', '0617283123', 1),
(46, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(47, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 2),
(48, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(49, 'eazee', 'J4234', 'بنعنفر', '0617283123', 1),
(50, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(51, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(52, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(53, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(54, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(55, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(56, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(57, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(58, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(59, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(60, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(61, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(62, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(63, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(64, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(65, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(66, 'صلاح الدين سراخ', 'J4234', 'بنعنفر', '0617283123', 1),
(67, 'صلاح الدين سراخ', 'eaze', 'zaeaze', 'eazea', 1),
(68, 'ezaeae', 'ezaeaz', 'zaeazeaze', 'aze242', 2);

-- --------------------------------------------------------

--
-- Structure de la table `plainte`
--

DROP TABLE IF EXISTS `plainte`;
CREATE TABLE IF NOT EXISTS `plainte` (
  `id_plainte` int(11) NOT NULL AUTO_INCREMENT,
  `objet` varchar(1000) DEFAULT NULL,
  `date_enrg` date DEFAULT NULL,
  `date_clot` date DEFAULT NULL,
  `num_plainte` varchar(50) DEFAULT NULL,
  `piece_jointe` varchar(300) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `id_nature` int(11) DEFAULT NULL,
  `id_aal` int(11) DEFAULT NULL,
  `id_source` int(11) DEFAULT NULL,
  `id_plaignant` int(11) DEFAULT NULL,
  `id_rep` int(11) DEFAULT NULL,
  `id_commune` int(11) DEFAULT NULL,
  `id_service_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plainte`),
  KEY `id_status` (`id_status`),
  KEY `id_nature` (`id_nature`),
  KEY `id_aal` (`id_aal`),
  KEY `id_source` (`id_source`),
  KEY `id_plaignant` (`id_plaignant`),
  KEY `id_rep` (`id_rep`),
  KEY `fkcom` (`id_commune`),
  KEY `fkseri` (`id_service_int`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plainte`
--

INSERT INTO `plainte` (`id_plainte`, `objet`, `date_enrg`, `date_clot`, `num_plainte`, `piece_jointe`, `id_status`, `id_nature`, `id_aal`, `id_source`, `id_plaignant`, `id_rep`, `id_commune`, `id_service_int`) VALUES
(46, 'eazeaze', '2018-05-10', '2018-05-18', 'W/46/2018', 'uploads/reclamations/Read me.pdf', 1, 1, 1, 1, 50, 0, 1, 2),
(45, 'DAZDAZD', '2018-05-10', '2018-05-18', 'W/45/2018', 'uploads/reclamations/Read me.pdf', 1, 1, 1, 1, 49, 0, 1, 2),
(44, 'eaze', '2018-05-10', '2018-05-18', 'W/44/2018', 'uploads/reclamations/Read me.pdf', 1, 1, 1, 1, 48, 0, 1, 2),
(43, 'eazeazeaze', '2018-05-10', '2018-05-18', 'W/43/2018', 'uploads/reclamations/Read me.pdf', 1, 2, 1, 2, 47, 0, 1, 2),
(42, 'eazeazeaze', '2018-05-10', '2018-05-18', 'W/42/2018', '', 1, 1, 1, 1, 46, 0, 1, 2),
(41, 'ezaezaeazez', '2018-05-10', '2018-05-19', 'W/41/2018', 'uploads/reclamations/Read me.pdf', 1, 1, 1, 1, 45, 1, 1, 2),
(40, 'ezaezaeazez', '2018-05-10', NULL, 'W/40/2018', 'uploads/reclamations/Read me.pdf', 1, 1, 1, 1, 44, 1, 1, 2),
(39, 'eazeazeazeaz', '2018-05-10', NULL, 'W/39/2018', '', 1, 1, 1, 1, 43, NULL, 1, NULL),
(38, 'ezaezaeazez', '2018-05-10', NULL, 'W/38/2018', 'uploads/reclamations/Read me.pdf', 1, 1, 1, 1, 42, NULL, 1, NULL),
(37, 'eazeazeaze', '2018-05-10', NULL, 'CA/37/2018', '', 1, 2, 10, 1, 41, NULL, 1, NULL),
(36, 'jhjg,fnhfgdg', '2018-05-09', NULL, 'CE/36/2018', 'uploads/reclamations/document.pdf', 1, 2, 3, 2, 40, NULL, 1, 4),
(24, 'dqsdqdsd', '2018-05-03', NULL, 'W/24/2018', '', 1, 1, 1, 1, 28, NULL, 1, 1),
(25, 'eazeaze', '2018-05-03', NULL, 'W/25/2018', '', 1, 1, 1, 1, 29, NULL, 1, 1),
(26, 'azeazeaze', '2018-05-03', NULL, 'CA/26/2018', '', 1, 2, 10, 1, 30, NULL, 1, 1),
(27, 'azeazeazeaze', '2018-05-03', NULL, 'W/27/2018', '', 1, 1, 1, 1, 31, NULL, 1, 1),
(28, 'sdfqsffzefzefze', '2018-05-03', NULL, 'W/28/2018', '', 1, 1, 1, 1, 32, NULL, 1, 1),
(29, 'تضرر من البناء ', '2018-05-03', NULL, 'CE/29/2018', '', 1, 1, 3, 1, 33, NULL, 3, 6),
(30, 'eazeazea', '2018-05-03', NULL, 'W/30/2018', '', 1, 1, 1, 1, 34, NULL, 1, 1),
(31, 'eazeazeazezqsd', '2018-05-03', NULL, 'W/31/2018', '', 1, 1, 1, 1, 35, NULL, 1, 1),
(32, 'تضرر من البناء', '2018-05-03', NULL, 'D/32/2018', '', 1, 1, 5, 1, 36, NULL, 4, 8),
(33, 'تضرر من البناء', '2018-05-03', NULL, 'D/33/2018', 'uploads/reclamations/id.jpg', 1, 5, 7, 2, 37, NULL, 7, 8),
(34, 'aezeazeae', '2018-05-03', NULL, 'W/34/2018', 'uploads/reclamations/logo_agence_de_voyage_bvvvy_slinkythegreat-d7uyfxn.png', 1, 2, 1, 1, 38, NULL, 1, 1),
(35, 'eazeazeazez', '2018-05-03', NULL, 'W/35/2018', 'uploads/reclamations/id.jpg', 1, 1, 1, 1, 39, NULL, 1, 1),
(47, 'eazeezeaz', '2018-05-10', NULL, 'W/47/2018', 'W/47/2018.pdf', 1, 1, 1, 1, 51, NULL, 1, 2),
(48, NULL, '2018-05-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, 52, NULL, NULL, NULL),
(49, 'eazeazezez', '2018-05-10', NULL, 'W/49/2018', NULL, 1, 1, 1, 1, 53, NULL, 1, 2),
(50, 'ezaeazeaze', '2018-05-10', NULL, 'W/50/2018', 'uploads/reclamations/W-50-2018.pdf', 1, 1, 1, 1, 54, NULL, 1, 2),
(51, 'dazdazdz', '2018-05-10', NULL, 'W/51/2018', 'uploads/reclamations/W-51-2018.pdf', 1, 1, 1, 1, 55, NULL, 1, 2),
(52, 'dazdazdazd', '2018-05-10', NULL, 'W/52/2018', NULL, 1, 1, 1, 1, 56, NULL, 1, 2),
(53, 'eazeazeazeaze', '2018-05-10', NULL, 'W/53/2018', NULL, 1, 1, 1, 1, 57, NULL, 1, 2),
(54, 'ezaezaeazez', '2018-05-10', NULL, 'CE/54/2018', NULL, 1, 1, 2, 1, 58, NULL, 1, 2),
(55, 'ezaeazeeazez', '2018-05-10', NULL, 'W/55/2018', NULL, 1, 1, 1, 1, 59, NULL, 1, 2),
(56, 'eazeaze', '2018-05-10', NULL, 'W/56/2018', 'uploads/reclamations/W-56-2018.pdf', 1, 1, 1, 1, 60, NULL, 1, 2),
(57, 'eazeazeaze', '2018-05-10', NULL, 'W/57/2018', NULL, 1, 1, 1, 1, 61, NULL, 1, 2),
(58, 'ezaezaeazez', '2018-05-10', NULL, 'W/58/2018', 'uploads/reclamations/W-58-2018.pdf', 1, 1, 1, 1, 62, NULL, 1, 2),
(59, 'ezaezaeazez', '2018-05-10', NULL, 'W/59/2018', 'uploads/reclamations/W-59-2018.pdf', 1, 1, 1, 1, 63, NULL, 1, 2),
(60, 'dazdaz', '2018-05-10', NULL, 'W/60/2018', NULL, 1, 1, 1, 1, 64, NULL, 1, 2),
(61, 'ezaea', '2018-05-10', NULL, 'W/61/2018', 'uploads/reclamations/W-61-2018.pdf', 1, 1, 1, 1, 65, NULL, 1, 2),
(62, 'ddzadaaa', '2018-05-10', NULL, 'W/62/2018', 'uploads/reclamations/W-62-2018.pdf', 1, 1, 1, 1, 66, NULL, 1, 2),
(63, 'eazeazezaea', '2018-05-13', NULL, 'CE/63/2018', NULL, 1, 1, 2, 1, 67, NULL, 1, 2),
(64, 'eazeazeaze', '2018-05-13', NULL, 'CA/64/2018', NULL, 1, 2, 10, 1, 68, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `privilage`
--

DROP TABLE IF EXISTS `privilage`;
CREATE TABLE IF NOT EXISTS `privilage` (
  `id_prive` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `decsription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_prive`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `privilage`
--

INSERT INTO `privilage` (`id_prive`, `nom`, `decsription`) VALUES
(1, 'Saisir', 'Il peut saisir les plaintes'),
(2, 'Traiter', 'Il peut traiter les plaintes'),
(3, 'Repondre', 'Il peut répondre aux plaintes'),
(4, 'Statistiques', 'Il peut voir les statistiques');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `decsription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id_profil`, `nom`, `decsription`) VALUES
(1, 'Saisir', 'Son rôle est de saisir les plaintes'),
(2, 'Répondre', 'Répondre aux plaintes'),
(3, 'Saisir-Statistiques', 'Saisir les reclamations et voir les statistiques');

-- --------------------------------------------------------

--
-- Structure de la table `profilprive`
--

DROP TABLE IF EXISTS `profilprive`;
CREATE TABLE IF NOT EXISTS `profilprive` (
  `id_profil` int(11) DEFAULT NULL,
  `id_prive` int(11) DEFAULT NULL,
  KEY `id_profil` (`id_profil`),
  KEY `id_prive` (`id_prive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profilprive`
--

INSERT INTO `profilprive` (`id_profil`, `id_prive`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 1),
(3, 4),
(3, 1),
(1, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

DROP TABLE IF EXISTS `reponse`;
CREATE TABLE IF NOT EXISTS `reponse` (
  `id_rep` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `piece_jointe` varchar(300) DEFAULT NULL,
  `num_bo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_rep`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id_rep`, `description`, `piece_jointe`, `num_bo`) VALUES
(1, 'eaze', NULL, 'azeaz2'),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `service_exterieur`
--

DROP TABLE IF EXISTS `service_exterieur`;
CREATE TABLE IF NOT EXISTS `service_exterieur` (
  `id_service_ext` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_service_ext`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service_exterieur`
--

INSERT INTO `service_exterieur` (`id_service_ext`, `nom`) VALUES
(1, 'الوكالة المستقلة المتعددة الخدمات'),
(2, 'المكتب الوطني للكهرباء'),
(3, 'المكتب الوطني للماء الصالح لشرب');

-- --------------------------------------------------------

--
-- Structure de la table `service_interieur`
--

DROP TABLE IF EXISTS `service_interieur`;
CREATE TABLE IF NOT EXISTS `service_interieur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `id_service_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_service_int` (`id_service_int`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service_interieur`
--

INSERT INTO `service_interieur` (`id`, `nom`, `id_service_int`) VALUES
(1, 'ديوان السيد الوالي', NULL),
(2, 'الكتابة العامة', NULL),
(3, 'قسم الشؤون الداخلية', NULL),
(4, 'قسم البيئة والتعمير', 2),
(5, 'قسم التجهيز ', 2),
(6, 'قسم الجماعات المحلية', 2),
(7, 'قسم الميزانية والصفقات', 2),
(8, 'قسم الموارد البشرية', 2),
(9, 'قسم الشؤون الداخلية', 2),
(10, 'قسم الانظمة والمعلومات ', 2),
(11, 'مصلحة الشؤون القانونية والمنازعات ', 2),
(12, 'قسم الشؤون القروية', 2);

-- --------------------------------------------------------

--
-- Structure de la table `source`
--

DROP TABLE IF EXISTS `source`;
CREATE TABLE IF NOT EXISTS `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `source`
--

INSERT INTO `source` (`id`, `nom`) VALUES
(1, 'البريد'),
(2, 'محمول');

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id_status`, `nom`) VALUES
(1, 'En attente de traitement'),
(2, 'En cours de traitement'),
(3, 'Fermée');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

DROP TABLE IF EXISTS `traitement`;
CREATE TABLE IF NOT EXISTS `traitement` (
  `id_traitement` int(11) NOT NULL AUTO_INCREMENT,
  `date_traitement` date DEFAULT NULL,
  `piece_jointe` varchar(200) DEFAULT NULL,
  `num_bo` varchar(300) DEFAULT NULL,
  `contenu` varchar(3000) DEFAULT NULL,
  `id_plainte` int(11) DEFAULT NULL,
  `id_type_tr` int(11) DEFAULT NULL,
  `id_aal` int(11) DEFAULT NULL,
  `id_commun` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_service_ext` int(11) DEFAULT NULL,
  `id_service_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_traitement`),
  KEY `id_plainte` (`id_plainte`),
  KEY `id_type_tr` (`id_type_tr`),
  KEY `id_aal` (`id_aal`),
  KEY `id_commun` (`id_commun`),
  KEY `id_user` (`id_user`),
  KEY `id_service_ext` (`id_service_ext`),
  KEY `id_service_int` (`id_service_int`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id_traitement`, `date_traitement`, `piece_jointe`, `num_bo`, `contenu`, `id_plainte`, `id_type_tr`, `id_aal`, `id_commun`, `id_user`, `id_service_ext`, `id_service_int`) VALUES
(1, '2018-05-10', NULL, 'ezaeza', NULL, 20, 1, NULL, NULL, 1, NULL, NULL),
(2, '2018-05-10', NULL, 'ezaeza', NULL, 20, 1, NULL, NULL, 1, NULL, NULL),
(3, '2018-05-10', NULL, '312424a', NULL, 60, 1, NULL, NULL, 1, NULL, NULL),
(4, '2018-05-10', NULL, 'dq214', NULL, 61, 1, NULL, NULL, 1, NULL, NULL),
(5, '2018-05-10', NULL, 'G456', NULL, 62, 1, NULL, NULL, 1, NULL, NULL),
(24, '2018-05-18', NULL, NULL, NULL, 42, 3, NULL, NULL, 1, NULL, NULL),
(23, '2018-05-18', NULL, NULL, NULL, 43, NULL, NULL, NULL, 1, NULL, NULL),
(22, '2018-05-18', NULL, NULL, NULL, 44, NULL, NULL, NULL, 1, NULL, NULL),
(21, '2018-05-14', NULL, 'eaz57', 'dsqdqsd', 46, 4, NULL, NULL, 1, NULL, 1),
(20, '2018-05-14', '20.pdf', 'eaz57', 'dqadzaeze', 40, 4, NULL, NULL, 1, NULL, 1),
(19, '2018-05-13', NULL, 'dsdqs32423', NULL, 64, 1, NULL, NULL, 2, NULL, NULL),
(18, '2018-05-13', NULL, 'ezaeazeaz', 'eazeaze', 63, 5, 1, NULL, 2, NULL, NULL),
(17, '2018-05-13', NULL, 'eaze23', NULL, 63, 1, NULL, NULL, 2, NULL, NULL),
(15, '2018-05-13', '15.pdf', 'aze23', 'eazaadqsdqsdazeaze ', 26, 7, NULL, NULL, 2, NULL, NULL),
(16, '2018-05-13', '16.pdf', 'ezae233', 'eeazeazeaze', 37, 9, NULL, NULL, 2, 2, NULL),
(25, '2018-05-19', NULL, NULL, NULL, 41, 3, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `traitement_type`
--

DROP TABLE IF EXISTS `traitement_type`;
CREATE TABLE IF NOT EXISTS `traitement_type` (
  `id_type_trait` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(200) DEFAULT NULL,
  `isStatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_type_trait`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `traitement_type`
--

INSERT INTO `traitement_type` (`id_type_trait`, `nom`, `isStatus`) VALUES
(1, 'مسجلة ', 1),
(3, 'مقفلة', 1),
(4, 'الاحالة الداخلية من أجل الإفادة بالمعطيات أو اعداد جواب للمشتكي', 0),
(5, 'الاحالة على السلطة المحلية', 0),
(6, 'الاحالة على القضاء للاختصاص', 0),
(7, 'الاحالة على العمالات والأقاليم', 0),
(8, 'الاحالة على المصالح الأمنية', 0),
(9, 'الاحالة على المصالح الخارجية', 0),
(10, 'الاحالة على الجماعات الترابية', 0),
(11, 'المطالبة بمعطيات اضافية من المشتكي', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `actif` tinyint(1) DEFAULT NULL,
  `id_profil` int(11) DEFAULT NULL,
  `id_aal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_profil` (`id_profil`),
  KEY `id_aal` (`id_aal`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `login`, `mdp`, `actif`, `id_profil`, `id_aal`) VALUES
(1, 'bureauordre', '2e0f5d1a9df70fddeee2fd53a8d715da', 1, 1, 1),
(2, 'salah', '2a07e3ff3df21b226d0cd044d4a7cc83', 1, 2, 2),
(3, 'salaheddine', '2a07e3ff3df21b226d0cd044d4a7cc83', 1, 3, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
