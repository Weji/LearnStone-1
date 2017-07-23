-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Dim 23 Juillet 2017 à 19:33
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `LearnStone_High`
--

-- --------------------------------------------------------

--
-- Structure de la table `Answer`
--

CREATE TABLE `Answer` (
  `idAnswer` int(11) NOT NULL,
  `answerText` text NOT NULL,
  `isCorrectAnswer` tinyint(1) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Answer`
--

INSERT INTO `Answer` (`idAnswer`, `answerText`, `isCorrectAnswer`, `idQuestion`) VALUES
(1, 'Oui', 1, 1),
(2, 'Non', 0, 1),
(3, 'Les serviteurs ennemis sont obligés de l\'attaquer', 1, 2),
(4, 'Elle peut attaquer dès qu\'elle est jouée', 0, 2),
(5, 'Elle peut attaquer 2 fois par tour', 0, 2),
(6, 'Le premier coup qu\'on lui inflige ne lui fait rien', 0, 2),
(7, 'Alexstrasza', 0, 3),
(8, 'Seigneur Jaraxxus', 0, 3),
(9, 'Feu follet', 0, 3),
(10, 'Aile de Mort', 1, 3),
(11, '5', 0, 4),
(12, '7', 0, 4),
(13, '9', 1, 4),
(14, '10', 0, 4),
(15, 'Commune', 0, 5),
(16, 'Rare', 0, 5),
(17, 'Epique', 1, 5),
(18, 'Légendaire', 0, 5),
(19, 'Invoque un Mega aléatoire coutant 2 cristaux de mana', 0, 6),
(20, 'Invoque un serviteur aléatoire coutant 2 cristaux de mana', 1, 6),
(21, 'Invoque un Gobelin aléatoire coutant 2 cristaux de mana', 0, 6),
(22, 'Géant des montagnes', 0, 7),
(23, 'Géant mécanique', 0, 7),
(24, 'Géant des mers', 0, 7),
(25, 'Géant de lave', 1, 7),
(26, 'Ben Brode', 1, 8),
(27, 'Alan MacField', 0, 8),
(28, 'John O\'Brian', 0, 8),
(29, 'Josh Traik', 0, 8),
(30, 'Garrosh Hurlenfer', 1, 9),
(31, 'Jaina Portvaillant', 0, 9),
(32, 'Uther Porteur de Lumière', 0, 9),
(33, 'Malfurion Hurlorage', 0, 9),
(34, '3', 0, 10),
(35, '4', 0, 10),
(36, '5', 1, 10),
(37, '6', 0, 10),
(38, 'Marchand douteux', 0, 11),
(39, 'Maître-lame blessé', 1, 11),
(40, 'Purificateur écarlate', 0, 11),
(41, 'Mystique de Kezan', 0, 11),
(42, 'Chaman', 0, 12),
(43, 'Paladin', 0, 12),
(44, 'Mage', 0, 12),
(45, 'Chasseur', 1, 12),
(46, '+1/+1', 0, 13),
(47, '+2/+2', 0, 13),
(48, '+3/+3', 1, 13),
(49, '+4/+4', 0, 13);

-- --------------------------------------------------------

--
-- Structure de la table `CARD`
--

CREATE TABLE `CARD` (
  `idCard` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `text` text,
  `attack` int(11) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `manaCost` int(11) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `idRefClass` int(11) DEFAULT NULL,
  `idRefCardsSet` int(11) NOT NULL,
  `idRefType` int(11) NOT NULL,
  `idRefRace` int(11) DEFAULT NULL,
  `idRefRarity` int(11) NOT NULL,
  `img` text,
  `imgGold` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CARD`
--

INSERT INTO `CARD` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(1, 'Anduin Wrynn', NULL, NULL, 30, NULL, NULL, NULL, 5, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_09.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_09_premium.gif'),
(2, 'Garrosh Hurlenfer', NULL, NULL, 30, NULL, NULL, NULL, 9, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_01.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_01_premium.gif'),
(3, 'Gul’dan', NULL, NULL, 30, NULL, NULL, NULL, 3, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_07.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_07_premium.gif'),
(4, 'Jaina Portvaillant', NULL, NULL, 30, NULL, NULL, NULL, 1, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_08.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_08_premium.gif'),
(5, 'Malfurion Hurlorage', NULL, NULL, 30, NULL, NULL, NULL, 6, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_06.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_06_premium.gif'),
(6, 'Rexxar', NULL, NULL, 30, NULL, NULL, NULL, 7, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_05.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_05_premium.gif'),
(7, 'Thrall', NULL, NULL, 30, NULL, NULL, NULL, 8, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_02.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_02_premium.gif'),
(8, 'Uther le Porteur de Lumière', NULL, NULL, 30, NULL, NULL, NULL, 2, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_04.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_04_premium.gif'),
(9, 'Valeera Sanguinar', NULL, NULL, 30, NULL, NULL, NULL, 4, 1, 4, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/HERO_03.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/HERO_03_premium.gif'),
(10, 'Attaque sournoise', 'Inflige $2 |4(point,points) de dégâts à un serviteur indemne.', NULL, NULL, 0, 'Michael Sutfin', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_072.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_072_premium.gif'),
(11, 'Éclat lunaire', 'Inflige $1 |4(point,points) de dégâts.', NULL, NULL, 0, 'Richard Wright', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_008_premium.gif'),
(12, 'Guérison ancestrale', 'Rend tous ses points de vie à un serviteur et lui confère <b>Provocation</b>.', NULL, NULL, 0, 'Dan Scott', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_041.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_041_premium.gif'),
(13, 'Innervation', 'Vous gagnez 2 cristaux de mana pour ce tour uniquement.', NULL, NULL, 0, 'Doug Alexander', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_169.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_169_premium.gif'),
(14, 'Pacte sacrificiel', 'Détruit un démon. Rend #5 PV à votre héros.', NULL, NULL, 0, 'Jim Nelson', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_003_premium.gif'),
(15, 'Puissance totémique', 'Donne +2_PV à vos totems.', NULL, NULL, 0, 'Trent Kaniuga', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_244.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_244_premium.gif'),
(16, 'Archère elfe', '<b>Cri de guerre_:</b> inflige 1_point de dégâts.', 1, 1, 1, 'Steve Prescott', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_189.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_189_premium.gif'),
(17, 'Attaque pernicieuse', 'Inflige $3_|4(point,points) de dégâts au héros adverse.', NULL, NULL, 1, 'Frank Cho', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_075.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_075_premium.gif'),
(18, 'Bénédiction de puissance', 'Donne +3_ATQ à un serviteur.', NULL, NULL, 1, 'Zoltan Boros', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_087.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_087_premium.gif'),
(19, 'Charge', 'Confère <b>Charge</b> à un serviteur allié. Il ne peut pas attaquer de héros pendant ce tour.', NULL, NULL, 1, 'Alex Horley Orlandelli', NULL, 9, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_103.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_103_premium.gif'),
(20, 'Châtiment sacré', 'Inflige $2 |4(point,points) de dégâts.', NULL, NULL, 1, 'Steve Ellis', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS1_130.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS1_130_premium.gif'),
(21, 'Clerc de Comté-du-Nord', 'Vous piochez une carte chaque fois qu’un serviteur est soigné.', 1, 3, 1, 'Terese Nielsen', NULL, 5, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_235.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_235_premium.gif'),
(22, 'Corruption', 'Choisissez un serviteur adverse. Au début de votre tour, il est détruit.', NULL, NULL, 1, 'Wayne Reynolds', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_063.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_063_premium.gif'),
(23, 'Docteur vaudou', '<b>Cri de guerre_:</b> rend 2_PV.', 2, 1, 1, 'Karl Richardson', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_011_premium.gif'),
(24, 'Écumeur murloc', NULL, 2, 1, 1, 'Dan Scott', NULL, 10, 1, 1, 7, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_168.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_168_premium.gif'),
(25, 'Feu de l’âme', 'Inflige $4_|4(point,points) de dégâts. Vous défausse d’une carte aléatoire.', NULL, NULL, 1, 'Raymond Swanland', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_308.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_308_premium.gif'),
(26, 'Griffe', 'Donne +2_ATQ à votre héros pendant ce tour. +2_points d’armure.', NULL, NULL, 1, 'Dany Orizio', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_005_premium.gif'),
(27, 'Horion de givre', 'Inflige $1 |4(point,points) de dégâts à un personnage adverse, et le <b>gèle</b>.', NULL, NULL, 1, 'Alex Horley Orlandelli', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_037.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_037_premium.gif'),
(28, 'Humilité', 'L’Attaque d’un serviteur passe à 1.', NULL, NULL, 1, 'Daren Bader', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_360.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_360_premium.gif'),
(29, 'Image miroir', 'Invoque deux serviteurs_0/2 avec <b>Provocation</b>.', NULL, NULL, 1, 'Jim Nelson', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_027_premium.gif'),
(30, 'Justice de la Lumière', NULL, 1, NULL, 1, 'Glenn Rane', 4, 2, 1, 2, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_091.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_091_premium.gif'),
(31, 'Loup des bois', 'Vos autres Bêtes ont +1_ATQ.', 1, 1, 1, 'Malcolm Davis', NULL, 7, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_175.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_175_premium.gif'),
(32, 'Main de protection', 'Confère <b>Bouclier divin</b> à un serviteur.', NULL, NULL, 1, 'Clint Langley', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_371.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_371_premium.gif'),
(33, 'Marcheur du Vide', '<b>Provocation</b>', 1, 3, 1, 'Alex Horley Orlandelli', NULL, 3, 1, 1, 4, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_065.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_065_premium.gif'),
(34, 'Marque du chasseur', 'Fait tomber les points de vie d’un serviteur\\nà 1.', NULL, NULL, 1, 'Jimmy Lo', NULL, 7, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_084.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_084_premium.gif'),
(35, 'Mot de pouvoir : Bouclier', 'Donne +2_PV à un serviteur. Vous piochez une carte.', NULL, NULL, 1, 'Jessica Jung', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_004_premium.gif'),
(36, 'Oracle sinistrécaille', 'Vos autres murlocs ont +1_ATQ.', 1, 1, 1, 'Phil Saunders', NULL, 10, 1, 1, 7, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_508.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_508_premium.gif'),
(37, 'Pistage', 'Affiche les 3_cartes du dessus du deck. Vous en piochez une et vous vous défaussez des autres.', NULL, NULL, 1, 'Mauro Cascioli', NULL, 7, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_184.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_184_premium.gif'),
(38, 'Poison mortel', 'Donne +2_ATQ à votre arme.', NULL, NULL, 1, 'Trevor Jacobs', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_074.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_074_premium.gif'),
(39, 'Projectiles des Arcanes', 'Inflige $3 |4(point,points) de dégâts répartis de façon aléatoire entre tous les adversaires.', NULL, NULL, 1, 'Warren Mahy', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_277.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_277_premium.gif'),
(40, 'Sanglier brocheroc', '<b>Charge</b>', 1, 1, 1, 'Howard Lyon', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_171.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_171_premium.gif'),
(41, 'Soldat de Comté-de-l’Or', '<b>Provocation</b>', 1, 2, 1, 'Donato Giancola', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS1_042.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS1_042_premium.gif'),
(42, 'Tir des Arcanes', 'Inflige $2 |4(point,points) de dégâts.', NULL, NULL, 1, 'Luca Zontini', NULL, 7, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_185.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_185_premium.gif'),
(43, 'Tourbillon', 'Inflige $1_|4(point,points) de dégâts à TOUS les serviteurs.', NULL, NULL, 1, 'Jonboy Meyers', NULL, 9, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_400.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_400_premium.gif'),
(44, 'Vision télépathique', 'Place une copie d’une carte aléatoire de la main de l’adversaire dans la vôtre.', NULL, NULL, 1, 'Michael Komarck', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_003_premium.gif'),
(45, 'Voile de mort', 'Inflige $1 |4(point,points) de dégâts à un serviteur. Vous piochez une carte si ce serviteur est tué.', NULL, NULL, 1, 'Matt Gaser', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_302.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_302_premium.gif'),
(46, 'Arme croque-roc', 'Donne +3_ATQ à un personnage allié pendant ce tour.', NULL, NULL, 2, 'Alex Horley Orlandelli', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_045.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_045_premium.gif'),
(47, 'Assommer', 'Renvoie un serviteur adverse dans la main de votre adversaire.', NULL, NULL, 2, 'Scott Altmann', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_581.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_581_premium.gif'),
(48, 'Attaque mentale', 'Inflige $5 |4(point,points) de dégâts au héros adverse.', NULL, NULL, 2, 'Dave Allsop', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_233.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_233_premium.gif'),
(49, 'Chasse-marée murloc', '<b>Cri de guerre_:</b> invoque un éclaireur murloc_1/1.', 2, 1, 2, 'Dan Scott', NULL, 10, 1, 1, 7, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_506.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_506_premium.gif'),
(50, 'Crocilisque des rivières', NULL, 2, 3, 2, 'Daren Bader', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_120.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_120_premium.gif'),
(51, 'Croissance sauvage', 'Confère un cristal de mana vide.', NULL, NULL, 2, 'James Ryman', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_013.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_013_premium.gif'),
(52, 'Éclair de givre', 'Inflige $3_points de dégâts à un personnage et le <b>gèle</b>.', NULL, NULL, 2, 'Steve Ellis', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_024_premium.gif'),
(53, 'Enchaînement', 'Inflige $2_|4(point,points) de dégâts à deux serviteurs adverses aléatoires.', NULL, NULL, 2, 'Phroilan Gardner', NULL, 9, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_114.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_114_premium.gif'),
(54, 'Esprit divin', 'Double les points de vie d’un serviteur.', NULL, NULL, 2, 'Jim Pavelec', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_236.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_236_premium.gif'),
(55, 'Exécution', 'Détruit un serviteur adverse blessé.', NULL, NULL, 2, 'Dany Orizio', NULL, 9, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_108.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_108_premium.gif'),
(56, 'Explosion des Arcanes', 'Inflige $1 |4(point,points) de dégâts à tous les serviteurs adverses.', NULL, NULL, 2, 'Howard Lyon', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_025_premium.gif'),
(57, 'Frappe héroïque', 'Donne +4_ATQ à votre héros pendant ce tour.', NULL, NULL, 2, 'Jonboy Meyers', NULL, 9, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_105.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_105_premium.gif'),
(58, 'Furie des vents', 'Confère <b>Furie des vents</b> à un serviteur.', NULL, NULL, 2, 'Justin Sweet', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_039.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_039_premium.gif'),
(59, 'Géomancien kobold', '<b>Dégâts des sorts : +1</b>', 2, 2, 2, 'Gabor Szikszai', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_142.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_142_premium.gif'),
(60, 'Grunt loup-de-givre', '<b>Provocation</b>', 2, 2, 2, 'Richie Marella', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_121.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_121_premium.gif'),
(61, 'Guerrier branchie-bleue', '<b>Charge</b>', 2, 1, 2, 'Jakub Kasper', NULL, 10, 1, 1, 7, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_173.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_173_premium.gif'),
(62, 'Hache de guerre embrasée', NULL, 3, NULL, 2, 'Lucas Graciano', 2, 9, 1, 2, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_106.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_106_premium.gif'),
(63, 'Ingénieur novice', '<b>Cri de guerre :</b> vous piochez une carte.', 1, 1, 2, 'Karl Richardson', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_015.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_015_premium.gif'),
(64, 'Kriss', 'Inflige $1_|4(point,points) de dégâts. Vous piochez une carte.', NULL, NULL, 2, 'Alex Garner', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_278.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_278_premium.gif'),
(65, 'Limon des marais acide', '<b>Cri de guerre :</b> détruit l’arme de votre adversaire.', 3, 2, 2, 'Chris Rahn', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_066.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_066_premium.gif'),
(66, 'Lumière sacrée', 'Rend #6 |4(point,points) de vie.', NULL, NULL, 2, 'Zoltan & Gabor', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_089.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_089_premium.gif'),
(67, 'Marque du fauve', 'Confère <b>Provocation</b> et +2/+2_à un serviteur.<i> (+2_ATQ/+2_PV)</i>', NULL, NULL, 2, 'Brad Vancata', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_009_premium.gif'),
(68, 'Mot de l’ombre : Douleur', 'Détruit un serviteur avec 3_Attaque ou moins.', NULL, NULL, 2, 'Raymond Swanland', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_234.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_234_premium.gif'),
(69, 'Raptor Rougefange', NULL, 3, 2, 2, 'Dan Brereton', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_172.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_172_premium.gif'),
(70, 'Succube', '<b>Cri de guerre :</b> vous défausse d’une carte aléatoire.', 4, 3, 2, 'Matt Dixon', NULL, 3, 1, 1, 4, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_306.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_306_premium.gif'),
(71, 'Totem Langue de feu', 'Les serviteurs adjacents ont +2_ATQ.', 0, 3, 2, 'Jonathan Ryder', NULL, 8, 1, 1, 1, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_565.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_565_premium.gif'),
(72, 'Chasseuse de Tranchebauge', '<b>Cri de guerre_:</b> invoque un sanglier_1/1.', 2, 3, 3, 'Clint Langley', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_196.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_196_premium.gif'),
(73, 'Chef de raid', 'Vos autres serviteurs ont +1 ATQ.', 2, 2, 3, 'Phill Gonzales', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_122.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_122_premium.gif'),
(74, 'Chevaucheur de loup', '<b>Charge</b>', 3, 1, 3, 'Dany Orizio', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_124.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_124_premium.gif'),
(75, 'Clerc du Soleil brisé', '<b>Cri de guerre_:</b> donne_+1/+1 à un serviteur allié.', 3, 2, 3, 'Doug Alexander', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_019_premium.gif'),
(76, 'Compagnon animal', 'Invoque un compagnon animal aléatoire.', NULL, NULL, 3, 'Wei Wang', NULL, 7, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_031_premium.gif'),
(77, 'Drain de vie', 'Inflige $2 |4(point,points) de dégâts. Rend #2 |4(point,points) de vie à votre héros.', NULL, NULL, 3, 'Alex Horley Orlandelli', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_061.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_061_premium.gif'),
(78, 'Enragé du magma', NULL, 5, 1, 3, 'Matt Gaser', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_118.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_118_premium.gif'),
(79, 'Éventail de couteaux', 'Inflige $1_|4(point,points) de dégâts à tous les serviteurs adverses. Vous piochez une carte.', NULL, NULL, 3, 'Andrew Robinson', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_129.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_129_premium.gif'),
(80, 'Fusilier de Forgefer', '<b>Cri de guerre_:</b> inflige 1_point de dégâts.', 2, 2, 3, 'Tooth', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_141.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_141_premium.gif'),
(81, 'Grizzly Ferpoil', '<b>Provocation</b>', 3, 3, 3, 'Lars Grant-West', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_125.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_125_premium.gif'),
(82, 'Intelligence des Arcanes', 'Vous piochez 2 cartes.', NULL, NULL, 3, 'Dave Berggren', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_023_premium.gif'),
(83, 'Mage de Dalaran', '<b>Dégâts des sorts : +1</b>', 1, 4, 3, 'Jim Nelson', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_582.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_582_premium.gif'),
(84, 'Maîtrise du blocage', 'Vous gagnez 5 points d’armure. Vous piochez une carte.', NULL, NULL, 3, 'Michael Komarck', NULL, 9, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_606.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_606_premium.gif'),
(85, 'Maléfice', 'Transforme un serviteur en grenouille 0/1 avec <b>Provocation</b>.', NULL, NULL, 3, 'Steve Hui', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_246.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_246_premium.gif'),
(86, 'Mot de l’ombre : Mort', 'Détruit un serviteur avec 5_ATQ ou plus.', NULL, NULL, 3, 'Raymond Swanland', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_622.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_622_premium.gif'),
(87, 'Nova de givre', '<b>Gèle</b> tous les serviteurs adverses.', NULL, NULL, 3, 'Josh Tallman', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_026_premium.gif'),
(88, 'Officier chanteguerre', 'Vos serviteurs avec <b>Charge</b> ont +1 ATQ.', 2, 3, 3, 'Wei Wang', NULL, 9, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_084.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_084_premium.gif'),
(89, 'Ordre de tuer', 'Inflige $3_|4(point,points) de dégâts. Si vous contrôlez une Bête, inflige $5_|4(point,points) de dégâts à la place.', NULL, NULL, 3, 'Gabe from Penny Arcade', NULL, 7, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_539.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_539_premium.gif'),
(90, 'Patriarche dos-argenté', '<b>Provocation</b>', 1, 4, 3, 'Daren Bader', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_127.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_127_premium.gif'),
(91, 'Rugissement sauvage', 'Donne +2_ATQ à vos personnages pendant ce tour.', NULL, NULL, 3, 'Grace Liu', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_011_premium.gif'),
(92, 'Toucher guérisseur', 'Rend #8 |4(point,points) de vie.', NULL, NULL, 3, 'Cyril Van Der Haegen', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_007_premium.gif'),
(93, 'Trait de l’ombre', 'Inflige $4_|4(point,points) de dégâts à un serviteur.', NULL, NULL, 3, 'Dave Allsop', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_057.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_057_premium.gif'),
(94, 'Balayage', 'Inflige $4 |4(point,points) de dégâts à un adversaire et $1 |4(point,points) de dégâts à tous les autres adversaires.', NULL, NULL, 4, 'Sean O’Daniels', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_012_premium.gif'),
(95, 'Bénédiction des rois', 'Donne_+4/+4 à un serviteur. <i>(+4_ATQ/+4_PV)</i>', NULL, NULL, 4, 'Lucas Graciano', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_092.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_092_premium.gif'),
(96, 'Boule de feu', 'Inflige $6 |4(point,points) de dégâts.', NULL, NULL, 4, 'Ralph Horsley', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_029_premium.gif'),
(97, 'Championne en vrai-argent', 'Chaque fois que votre héros attaque, lui rend 2_PV.', 4, NULL, 4, 'Ryan Sook', 2, 2, 1, 2, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_097.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_097_premium.gif'),
(98, 'Chevalier de Hurlevent', '<b>Charge</b>', 2, 5, 4, 'Ladronn', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_131.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_131_premium.gif'),
(99, 'Consécration', 'Inflige $2_|4(point,points) de dégâts à tous les adversaires.', NULL, NULL, 4, 'Vance Kovacs', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_093.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_093_premium.gif'),
(100, 'Élémentaire d’eau', '<b>Gèle</b> tout personnage blessé par ce serviteur.', 3, 6, 4, 'John Avon', NULL, 1, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_033_premium.gif'),
(101, 'Flammes infernales', 'Inflige $3_|4(point,points) de dégâts à TOUS les personnages.', NULL, NULL, 4, 'Chippy', NULL, 3, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_062.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_062_premium.gif'),
(102, 'Flèches multiples', 'Inflige $3 |4(point,points) de dégâts à deux serviteurs adverses aléatoires.', NULL, NULL, 4, 'Benjamin Zhang', NULL, 7, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_183.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_183_premium.gif'),
(103, 'Gueule d’acier des oasis', NULL, 2, 7, 4, 'Ittoku', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_119.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_119_premium.gif'),
(104, 'Inventrice gnome', '<b>Cri de guerre :</b> vous piochez une carte.', 2, 4, 4, 'Court Jones', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_147.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_147_premium.gif'),
(105, 'Maître-bouclier de Sen’jin', '<b>Provocation</b>', 3, 5, 4, 'Brian Despain', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_179.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_179_premium.gif'),
(106, 'Maître-chien', '<b>Cri de guerre :</b> donne_+2/+2 et <b>Provocation</b> à une Bête alliée.', 4, 3, 4, 'Dan Brereton', NULL, 7, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_070.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_070_premium.gif'),
(107, 'Marteau de courroux', 'Inflige $3 |4(point,points) de dégâts. Vous piochez une carte.', NULL, NULL, 4, 'Efrem Palacios', NULL, 2, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_094.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_094_premium.gif'),
(108, 'Mécano de petit dragon', '<b>Cri de guerre_:</b> invoque un petit dragon mécanique_2/1.', 2, 4, 4, 'Warren Mahy', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_025_premium.gif'),
(109, 'Métamorphose', 'Transforme un serviteur en mouton_1/1.', NULL, NULL, 4, 'Vance Kovacs', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_022_premium.gif'),
(110, 'Ogre-magi', '<b>Dégâts des sorts : +1</b>', 4, 4, 4, 'James Ryman', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_197.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_197_premium.gif'),
(111, 'Parlevent', '<b>Cri de guerre :</b> confère <b>Furie des vents</b> à un serviteur allié.', 3, 3, 4, 'Vance Kovacs', NULL, 8, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_587.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_587_premium.gif'),
(112, 'Soldat d’élite kor’kron', '<b>Charge</b>', 4, 3, 4, 'Alex Horley Orlandelli', NULL, 9, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_011_premium.gif'),
(113, 'Yéti noroît', NULL, 4, 5, 4, 'Mauro Cascioli', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_182.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_182_premium.gif'),
(114, 'Assassiner', 'Détruit un serviteur adverse.', NULL, NULL, 5, 'Glenn Rane', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_076.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_076_premium.gif'),
(115, 'Berserker gurubashi', 'Chaque fois que ce serviteur subit des dégâts, il gagne +3_ATQ.', 2, 7, 5, 'Alex Horley Orlandelli', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_399.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_399_premium.gif'),
(116, 'Busard affamé', 'Vous piochez une carte chaque fois que vous invoquez une bête.', 3, 2, 5, 'Bernie Kang', NULL, 7, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_237.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_237_premium.gif'),
(117, 'Chef de guerre loup-de-givre', '<b>Cri de guerre :</b> gagne +1/+1 pour chaque autre serviteur allié sur le champ de bataille.', 4, 4, 5, 'James Ryman', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_226.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_226_premium.gif'),
(118, 'Commando foudrepique', '<b>Cri de guerre_:</b> inflige 2_points de dégâts.', 4, 2, 5, 'Kev Walker', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_150.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_150_premium.gif'),
(119, 'Faucheuse en arcanite', NULL, 5, NULL, 5, 'Stefan Kopinski', 2, 9, 1, 2, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_112.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_112_premium.gif'),
(120, 'Furie sanguinaire', 'Donne +3_ATQ à vos serviteurs pendant ce tour.', NULL, NULL, 5, 'Luca Zontini', NULL, 8, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_046.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_046_premium.gif'),
(121, 'Garde de Baie-du-Butin', '<b>Provocation</b>', 5, 4, 5, 'Matt Cavotta', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_187.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_187_premium.gif'),
(122, 'Lame d’assassin', NULL, 3, NULL, 5, 'Brian Huang', 4, 4, 1, 2, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_080.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_080_premium.gif'),
(123, 'Lamenuit', '<b>Cri de guerre_:</b> inflige 3_points de dégâts au héros adverse.', 4, 4, 5, 'Raymond Swanland', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_593.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_593_premium.gif'),
(124, 'Nova sacrée', 'Inflige $2_|4(point,points) de dégâts à tous les adversaires. Rend #2_|4(point,points) de vie à tous les personnages alliés.', NULL, NULL, 5, 'Luca Zontini', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS1_112.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS1_112_premium.gif'),
(125, 'Rhino de la toundra', 'Vos Bêtes ont <b>Charge</b>.', 2, 5, 5, 'Lars Grant-West', NULL, 7, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_178.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_178_premium.gif'),
(126, 'Soigneuse sombrécaille', '<b>Cri de guerre_:</b> rend 2_points de vie à tous les personnages alliés.', 4, 5, 5, 'Jesper Ejsing', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_055.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_055_premium.gif'),
(127, 'Archimage', '<b>Dégâts des sorts : +1</b>', 4, 7, 6, 'Steve Ellis', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_155.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_155_premium.gif'),
(128, 'Disparition', 'Renvoie tous les serviteurs dans la main de leur propriétaire.', NULL, NULL, 6, 'Sean O’Daniels', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_004_premium.gif'),
(129, 'Élémentaire de feu', '<b>Cri de guerre_:</b> inflige 3_points de dégâts.', 6, 5, 6, 'Ralph Horsley', NULL, 8, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_042.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_042_premium.gif'),
(130, 'Feu stellaire', 'Inflige $5 |4(point,points) de dégâts.\\nVous piochez une carte.', NULL, NULL, 6, 'Alex Horley Orlandelli', NULL, 6, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_173.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_173_premium.gif'),
(131, 'Infernal de l’effroi', '<b>Cri de guerre :</b> inflige 1 point de dégâts à TOUS les autres personnages.', 6, 6, 6, 'Zoltan & Gabor', NULL, 3, 1, 1, 4, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_064.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_064_premium.gif'),
(132, 'Missilière téméraire', '<b>Charge</b>', 5, 2, 6, 'John Polidora', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_213.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_213_premium.gif'),
(133, 'Ogre rochepoing', NULL, 6, 7, 6, 'Brian Despain', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_200.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_200_premium.gif'),
(134, 'Seigneur de l’arène', '<b>Provocation</b>', 6, 5, 6, 'E.M. Gist', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_162.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_162_premium.gif'),
(135, 'Champion de Hurlevent', 'Vos autres serviteurs\\nont +1/+1.', 6, 6, 7, 'Doug Alexander', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_222.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_222_premium.gif'),
(136, 'Chien du Magma', NULL, 9, 5, 7, 'E.M. Gist', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_201.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_201_premium.gif'),
(137, 'Choc de flammes', 'Inflige $4 |4(point,points) de dégâts à tous les serviteurs adverses.', NULL, NULL, 7, 'Romain De Santi', NULL, 1, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_032.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_032_premium.gif'),
(138, 'Gardien des rois', '<b>Cri de guerre_:</b> rend 6_points de vie à votre héros.', 5, 6, 7, 'E.M. Gist', NULL, 2, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_088.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_088_premium.gif'),
(139, 'Golem de guerre', NULL, 7, 7, 7, 'Dave Kendall', NULL, 10, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_186.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_186_premium.gif'),
(140, 'Sprint', 'Vous piochez 4 cartes.', NULL, NULL, 7, 'James Zhang', NULL, 4, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_077.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_077_premium.gif'),
(141, 'Protecteur Écorcefer', '<b>Provocation</b>', 8, 8, 8, 'Dave Allsop', NULL, 6, 1, 1, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_232.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_232_premium.gif'),
(142, 'Contrôle mental', 'Prend le contrôle d’un serviteur adverse.', NULL, NULL, 10, 'Sean O’Daniels', NULL, 5, 1, 3, NULL, 1, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS1_113.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS1_113_premium.gif'),
(143, 'Cercle de soins', 'Rend #4_|4(point,points) de vie à TOUS les serviteurs.', NULL, NULL, 0, 'Daarken', NULL, 5, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_621.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_621_premium.gif'),
(144, 'Feu follet', NULL, 1, 1, 0, 'Malcolm Davis', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_231.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_231_premium.gif'),
(145, 'Pas de l’ombre', 'Renvoie un serviteur allié dans votre main. Il coûte (2)_cristaux de moins.', NULL, NULL, 0, 'Graven Tung', NULL, 4, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_144.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_144_premium.gif'),
(146, 'Préparation', 'Le prochain sort que vous lancez pendant ce tour coûte (3) cristaux de moins.', NULL, NULL, 0, 'Clint Langley', NULL, 4, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_145.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_145_premium.gif'),
(147, 'Rage intérieure', 'Inflige $1_|4(point,points) de dégâts à un serviteur et lui donne +2_ATQ.', NULL, NULL, 0, 'Slawomir Maniak', NULL, 9, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_607.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_607_premium.gif'),
(148, 'Silence', 'Réduit au <b>Silence</b> un serviteur.', NULL, NULL, 0, 'Zoltan & Gabor', NULL, 5, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_332.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_332_premium.gif'),
(149, 'Acclimatation', 'Détruit un serviteur. Votre adversaire pioche 2_cartes.', NULL, NULL, 1, 'Leo Che', NULL, 6, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_161.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_161_premium.gif'),
(150, 'Amélioration !', 'Si vous avez une arme, lui donne +1/+1. Sinon, vous équipe d’une arme 1/3.', NULL, NULL, 1, 'Matt Cavotta', NULL, 9, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_409.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_409_premium.gif'),
(151, 'Bénédiction de sagesse', 'Choisissez un serviteur. Chaque fois qu’il attaque, vous piochez une carte.', NULL, NULL, 1, 'Chippy', NULL, 2, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_363.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_363_premium.gif'),
(152, 'Courroux bestial', 'Donne +2_ATQ et l’effet <b>Insensible</b> à une Bête alliée pendant ce tour.', NULL, NULL, 1, 'Alex Horley Orlandelli', NULL, 7, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_549.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_549_premium.gif'),
(153, 'Crabe affamé', '<b>Cri de guerre :</b> détruit un murloc et gagne +2/+2.', 1, 2, 1, 'Jaemin Kim', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_017_premium.gif'),
(154, 'Diable de poussière', '<b>Furie des vents</b>\\n<b>Surcharge :</b> (2)', 3, 1, 1, 'Raymond Swanland', NULL, 8, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_243.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_243_premium.gif'),
(155, 'Diablotin de sang', '<b>Camouflage</b>. À la fin de votre tour, donne +1_PV à un autre serviteur allié aléatoire.', 0, 1, 1, 'Bernie Kang', NULL, 3, 2, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_059.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_059_premium.gif'),
(156, 'Diablotin des flammes', '<b>Cri de guerre_:</b> inflige 3_points de dégâts à votre héros.', 3, 2, 1, 'Alex Horley Orlandelli', NULL, 3, 2, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_319.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_319_premium.gif'),
(157, 'Éclair', 'Inflige $3 |4(point,points) de dégâts.\\n<b>Surcharge :</b> (1)', NULL, NULL, 1, 'Daarken', NULL, 8, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_238.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_238_premium.gif'),
(158, 'Écuyère d’Argent', '<b>Bouclier divin</b>', 1, 1, 1, 'Zoltan & Gabor', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_008_premium.gif'),
(159, 'Feu intérieur', 'Change l’Attaque d’un serviteur pour qu’elle soit égale à ses PV.', NULL, NULL, 1, 'Steve Prescott', NULL, 5, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS1_129.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS1_129_premium.gif'),
(160, 'Forban de la Voile sanglante', '<b>Cri de guerre_:</b> ôte 1_Durabilité à l’arme de votre adversaire.', 1, 2, 1, 'Randy Gallegos', NULL, 10, 2, 1, 8, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_025_premium.gif'),
(161, 'Fourche d’éclairs', 'Inflige $2_|4(point,points) de dégâts à 2_serviteurs adverses aléatoires. <b>Surcharge_:</b>_(2)', NULL, NULL, 1, 'Ralph Horsley', NULL, 8, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_251.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_251_premium.gif'),
(162, 'Gardelumière', 'Chaque fois qu’un personnage est soigné, gagne +2 ATQ.', 1, 2, 1, 'Erik Ko', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_001_premium.gif'),
(163, 'Gardienne des secrets', 'Chaque fois qu’un <b>Secret</b> est joué, gagne +1/+1.', 1, 2, 1, 'Gonzalo Ordonez', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_080.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_080_premium.gif'),
(164, 'Gnome lépreux', '<b>Râle d’agonie_:</b> inflige 2_points de dégâts au héros adverse.', 1, 1, 1, 'Glenn Rane', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_029_premium.gif'),
(165, 'Heurt de bouclier', 'Inflige 1 point de dégâts à un serviteur pour chaque point d’Armure que vous avez.', NULL, NULL, 1, 'Raymond Swanland', NULL, 9, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_410.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_410_premium.gif'),
(166, 'Horion de terre', 'Réduit un serviteur au <b>Silence</b>, puis lui inflige $1 |4(point,points) de dégâts.', NULL, NULL, 1, 'Kevin Chin', NULL, 8, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_245.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_245_premium.gif'),
(167, 'Infiltrateur worgen', '<b>Camouflage</b>', 2, 1, 1, 'Raymond Swanland', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_010_premium.gif'),
(168, 'Jeune faucon-dragon', '<b>Furie des vents</b>', 1, 1, 1, 'Greg Hildebrandt', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_169.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_169_premium.gif'),
(169, 'Jeune prêtresse', 'À la fin de votre tour, donne +1 PV à un autre serviteur allié aléatoire.', 2, 1, 1, 'Vance Kovacs', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_004_premium.gif'),
(170, 'Mande-flots murloc', 'Gagne +1_ATQ chaque fois que vous invoquez un murloc.', 1, 2, 1, 'Jaemin Kim', NULL, 10, 2, 1, 7, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_509.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_509_premium.gif'),
(171, 'Matelot des mers du Sud', 'A <b>Charge</b> tant que vous êtes équipé d’une arme.', 2, 1, 1, 'Dan Brereton', NULL, 10, 2, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_146.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_146_premium.gif'),
(172, 'Noble sacrifice', '<b>Secret :</b> invoque un défenseur 2/1 qui devient la cible de l’adversaire sur le point d’attaquer.', NULL, NULL, 1, 'Zoltan & Gabor', NULL, 2, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_130.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_130_premium.gif'),
(173, 'Œil pour œil', '<b>Secret_:</b> inflige au héros adverse autant de dégâts que ceux subis par votre héros.', NULL, NULL, 1, 'James Ryman', NULL, 2, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_132.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_132_premium.gif');
INSERT INTO `CARD` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(174, 'Porte-bouclier', '<b>Provocation</b>', 0, 4, 1, 'Carl Critchlow', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_405.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_405_premium.gif'),
(175, 'Poulet furieux', '<b>Accès de rage :</b> +5 ATQ.', 1, 1, 1, 'Mike Sass', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_009_premium.gif'),
(176, 'Rédemption', '<b>Secret_:</b> quand un serviteur allié meurt, il est ressuscité avec_1_PV.', NULL, NULL, 1, 'Ittoku', NULL, 2, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_136.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_136_premium.gif'),
(177, 'Repentir', '<b>Secret :</b> une fois que votre adversaire a joué un serviteur, ses points de vie sont réduits à 1.', NULL, NULL, 1, 'Gonzalo Ordonez', NULL, 2, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_379.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_379_premium.gif'),
(178, 'Sang froid', 'Donne +2_ATQ à un serviteur. <b>Combo_:</b> +4_ATQ à la place.', NULL, NULL, 1, 'Alex Horley Orlandelli', NULL, 4, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_073.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_073_premium.gif'),
(179, 'Sauvagerie', 'Inflige des dégâts d’un montant équivalent à l’Attaque de votre héros à un serviteur.', NULL, NULL, 1, 'Dave Rapoza', NULL, 6, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_578.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_578_premium.gif'),
(180, 'Sergent grossier', '<b>Cri de guerre_:</b> donne +2_ATQ à un serviteur pendant ce tour.', 1, 1, 1, 'Luca Zontini', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_188.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_188_premium.gif'),
(181, 'Wyrm de mana', 'Chaque fois que vous lancez un sort, gagne +1_ATQ.', 1, 3, 1, 'Blizzard Cinematics', NULL, 1, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_012_premium.gif'),
(182, 'Accro au mana', 'Chaque fois que vous lancez un sort, gagne +2 ATQ pendant ce tour.', 1, 3, 2, 'Hideaki Takamura', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_055.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_055_premium.gif'),
(183, 'Alchimiste dément', '<b>Cri de guerre :</b> échange l’Attaque et la Vie d’un serviteur.', 2, 2, 2, 'Tom Fleming', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_059.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_059_premium.gif'),
(184, 'Amasseur de butin', '<b>Râle d’agonie :</b> vous piochez une carte.', 2, 1, 2, 'Jim Nelson', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_096.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_096_premium.gif'),
(185, 'Âme en peine de mana', 'TOUS les serviteurs coûtent (1) cristal de plus.', 2, 2, 2, 'Luca Zontini', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_616.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_616_premium.gif'),
(186, 'Apprentie du sorcier', 'Vos sorts coûtent (1)_|4(cristal,cristaux) de moins.', 3, 2, 2, 'Alex Horley Orlandelli', NULL, 1, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_608.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_608_premium.gif'),
(187, 'Assassin patient', '<b>Camouflage</b>\\n<b>Toxicité</b>', 1, 1, 2, 'Ben Olson', NULL, 4, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_522.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_522_premium.gif'),
(188, 'Auspice funeste', 'Au début de votre tour, détruit TOUS les serviteurs.', 0, 7, 2, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_021_premium.gif'),
(189, 'Berserker amani', '<b>Accès de rage :</b> +3 ATQ.', 2, 3, 2, 'Chippy', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_393.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_393_premium.gif'),
(190, 'Bombardier fou', '<b>Cri de guerre :</b> inflige 3 points de dégâts répartis de façon aléatoire entre tous les autres personnages.', 3, 2, 2, 'Mike Sass', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_082.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_082_premium.gif'),
(191, 'Chroniqueur Cho', 'Quand un joueur lance un sort, en place une copie dans la main de son adversaire.', 0, 4, 2, 'Mark Zug', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_100.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_100_premium.gif'),
(192, 'Colère', '<b>Choix des armes :</b> inflige $3 |4(point,points) de dégâts à un serviteur ; ou inflige $1 |4(point,points) de dégâts à un serviteur et vous piochez une carte.', NULL, NULL, 2, 'Raymond Swanland', NULL, 6, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_154.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_154_premium.gif'),
(193, 'Cri de commandement', 'Les points de vie de vos serviteurs ne peuvent pas passer en dessous de 1 ce tour-ci. Vous piochez une carte.', NULL, NULL, 2, 'Wayne Reynolds', NULL, 9, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_036.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_036_premium.gif'),
(194, 'Détournement', '<b>Secret_:</b> quand un adversaire attaque votre héros, il attaque un autre personnage aléatoire à la place.', NULL, NULL, 2, 'Daren Bader', NULL, 7, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_533.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_533_premium.gif'),
(195, 'Dragon féerique', 'Ne peut pas être la cible de sorts ou de pouvoirs héroïques.', 3, 2, 2, 'Samwise', NULL, 10, 2, 1, 2, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_023_premium.gif'),
(196, 'Égalité', 'Les points de vie de TOUS les serviteurs passent à 1.', NULL, NULL, 2, 'Michal Ivan', NULL, 2, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_619.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_619_premium.gif'),
(197, 'Esprit ancestral', 'Confère à un serviteur « <b>Râle d’agonie :</b> réinvoque ce serviteur. »', NULL, NULL, 2, 'Zoltan & Gabor', NULL, 8, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_038.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_038_premium.gif'),
(198, 'Éviscération', 'Inflige $2_|4(point,points) de dégâts. <b>Combo_:</b> inflige $4_|4(point,points) de dégâts à la place.', NULL, NULL, 2, 'Ariel Olivetti', NULL, 4, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_124.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_124_premium.gif'),
(199, 'Fabricante d’armures', 'Chaque fois qu’un serviteur allié subit des dégâts, vous gagnez 1_point d’armure.', 1, 4, 2, 'Greg Hildebrandt', NULL, 9, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_402.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_402_premium.gif'),
(200, 'Feu démoniaque', 'Inflige $2 |4(point,points) de dégâts à un serviteur. Si la cible est un de vos démons, lui donne +2/+2 à la place.', NULL, NULL, 2, 'Ben Wootten', NULL, 3, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_596.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_596_premium.gif'),
(201, 'Fusée éclairante', 'Tous les serviteurs perdent le <b>Camouflage</b>. Détruit tous les <b>Secrets</b> adverses. Vous piochez une carte.', NULL, NULL, 2, 'Tyler Walpole', NULL, 7, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_544.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_544_premium.gif'),
(202, 'Guetteur ancien', 'Ne peut pas attaquer.', 4, 5, 2, 'Richard Wright', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_045.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_045_premium.gif'),
(203, 'Hache de Forge-foudre', '<b>Surcharge :</b> (1)', 2, NULL, 2, 'Nate Bowden', 3, 8, 2, 2, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_247.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_247_premium.gif'),
(204, 'Heurtoir', 'Inflige $2 |4(point,points) de dégâts à un serviteur. Vous piochez une carte s’il survit.', NULL, NULL, 2, 'E.M. Gist', NULL, 9, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_391.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_391_premium.gif'),
(205, 'Hyène charognarde', 'Chaque fois qu’une bête alliée meurt, gagne_+2/+1.', 2, 2, 2, 'Jim Nelson', NULL, 7, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_531.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_531_premium.gif'),
(206, 'Jeune maître brasseur', '<b>Cri de guerre :</b> renvoie un serviteur allié du champ de bataille et le place dans votre main.', 3, 2, 2, 'Wei Wang', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_049.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_049_premium.gif'),
(207, 'Jongleur de couteaux', 'Inflige 1_point de dégâts à un adversaire aléatoire après que vous avez invoqué un serviteur.', 2, 2, 2, 'Matt Cavotta', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_019_premium.gif'),
(208, 'Loup alpha redoutable', 'Les serviteurs adjacents ont +1_ATQ.', 2, 2, 2, 'John Dickenson', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_162.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_162_premium.gif'),
(209, 'Mage de sang Thalnos', '<b>Dégâts des sorts : +1</b>.\\n<b>Râle d’agonie :</b> vous piochez une carte.', 1, 1, 2, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_012_premium.gif'),
(210, 'Maître fabricant d’épées', 'À la fin de votre tour, donne +1 ATQ à un autre serviteur allié aléatoire.', 1, 3, 2, 'E.M. Gist', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_037.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_037_premium.gif'),
(211, 'Meneur défias', '<b>Combo :</b> invoque un bandit défias 2/1.', 2, 2, 2, 'Dany Orizio', NULL, 4, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_131.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_131_premium.gif'),
(212, 'Millhouse Tempête-de-Mana', '<b>Cri de guerre :</b> les sorts adverses coûtent (0)_|4(cristal,cristaux) au prochain tour.', 4, 4, 2, 'Jim Nelson', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_029_premium.gif'),
(213, 'Minuscule invocatrice', 'Le premier serviteur que vous jouez à chaque tour coûte (1) cristal de moins.', 2, 2, 2, 'Ron Spears', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_076.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_076_premium.gif'),
(214, 'Mousse de la Voile sanglante', '<b>Cri de guerre_:</b> gagne des points d’Attaque d’un montant équivalent à ceux de votre arme.', 2, 3, 2, 'Jim Nelson', NULL, 10, 2, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_018.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_018_premium.gif'),
(215, 'Nat Pagle', 'Au début de votre tour, vous avez 50% de chances de piocher une carte supplémentaire.', 0, 4, 2, 'Steve Prescott', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_557.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_557_premium.gif'),
(216, 'Piège à serpents', '<b>Secret :</b> quand un de vos serviteurs est attaqué, invoque trois serpents 1/1.', NULL, NULL, 2, 'Bernie Kang', NULL, 7, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_554.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_554_premium.gif'),
(217, 'Piège explosif', '<b>Secret :</b> quand votre héros est attaqué, inflige $2 |4(point,points) de dégâts à tous les adversaires.', NULL, NULL, 2, 'Brandon Kitkouski', NULL, 7, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_610.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_610_premium.gif'),
(218, 'Piège givrant', '<b>Secret_:</b> quand un serviteur adverse attaque, le renvoie dans la main de son propriétaire et il coûte désormais (2)_cristaux de plus.', NULL, NULL, 2, 'Matt Gaser', NULL, 7, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_611.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_611_premium.gif'),
(219, 'Protecteur d’Argent', '<b>Cri de guerre :</b> confère <b>Bouclier divin</b> à un serviteur allié.', 2, 2, 2, 'Doug Alexander', NULL, 2, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_362.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_362_premium.gif'),
(220, 'Protectrice solfurie', '<b>Cri de guerre :</b> confère <b>Provocation</b> aux serviteurs adjacents.', 2, 3, 2, 'James Ryman', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_058.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_058_premium.gif'),
(221, 'Puissance du fauve', '<b>Choix des armes_:</b>\\ndonne_+1/+1 à vos serviteurs ou invoque une panthère_3/2.', NULL, NULL, 2, 'Steve Tappin', NULL, 6, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_160.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_160_premium.gif'),
(222, 'Puits de lumière', 'Au début de votre tour, rend 3 PV à un personnage allié blessé.', 0, 5, 2, 'Blizzard Entertainment', NULL, 5, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_341.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_341_premium.gif'),
(223, 'Pyromancien sauvage', 'Après que vous avez lancé un sort, inflige 1 point de dégâts à TOUS les serviteurs.', 3, 2, 2, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_020_premium.gif'),
(224, 'Rage du combat', 'Vous piochez une carte pour chaque personnage allié blessé.', NULL, NULL, 2, 'Alex Horley Orlandelli', NULL, 9, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_392.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_392_premium.gif'),
(225, 'Saccager', 'Donne_+3/+3 à un serviteur blessé.', NULL, NULL, 2, 'Jonboy Meyers', NULL, 9, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_104.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_104_premium.gif'),
(226, 'Sous-chef cruel', '<b>Cri de guerre_:</b> inflige 1_point de dégâts à un serviteur et lui donne +2_ATQ.', 2, 2, 2, 'Phroilan Gardner', NULL, 9, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_603.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_603_premium.gif'),
(227, 'Tir de précision', '<b>Secret :</b> une fois que votre adversaire a joué un serviteur, ce dernier subit $4 |4(point,points) de dégâts.', NULL, NULL, 2, 'Lorenzo Minaca', NULL, 7, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_609.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_609_premium.gif'),
(228, 'Trahison', 'Force un serviteur adverse à infliger ses dégâts aux serviteurs à côté de lui.', NULL, NULL, 2, 'Lucas Graciano', NULL, 4, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_126.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_126_premium.gif'),
(229, 'Acolyte de la souffrance', 'Vous piochez une carte chaque fois que ce serviteur subit des dégâts.', 1, 3, 3, 'Dave Kendall', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_007_premium.gif'),
(230, 'Agent du SI:7', '<b>Combo :</b> inflige 2 points de dégâts.', 3, 3, 3, 'Chris Moeller', NULL, 4, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_134.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_134_premium.gif'),
(231, 'Arc cornedaigle', 'Chaque fois qu’un <b>Secret</b> allié est révélé, gagne +1_Durabilité.', 3, NULL, 3, 'Cyril Van Der Haegen', 2, 7, 2, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_536.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_536_premium.gif'),
(232, 'Aventurier en pleine quête', 'Chaque fois que vous jouez une carte,\\ngagne +1/+1.', 2, 2, 3, 'Attila Adorjany', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_044.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_044_premium.gif'),
(233, 'Barrière de glace', '<b>Secret_:</b> quand votre héros est attaqué, il gagne 8_points d’armure.', NULL, NULL, 3, 'Alex Garner', NULL, 1, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_289.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_289_premium.gif'),
(234, 'Berserker écumant', 'Chaque fois qu’un serviteur subit des dégâts, gagne +1 ATQ.', 2, 4, 3, 'Simon Bisley', NULL, 9, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_604.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_604_premium.gif'),
(235, 'Bloc de glace', '<b>Secret :</b> protège votre héros des dégâts mortels, et le rend <b>Insensible</b> pendant ce tour.', NULL, NULL, 3, 'Carl Frank', NULL, 1, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_295.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_295_premium.gif'),
(236, 'Capitaine des mers du Sud', 'Vos autres pirates\\nont_+1/+1.', 3, 3, 3, 'Ken Steacy', NULL, 10, 2, 1, 8, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_027_premium.gif'),
(237, 'Casse-tête', 'Inflige $2 |4(point,points) de dégâts au héros adverse. <b>Combo :</b> renvoie cette carte dans votre main au tour suivant.', NULL, NULL, 3, 'James Zhang', NULL, 4, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_137.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_137_premium.gif'),
(238, 'Chef de guerre murloc', 'Vos autres murlocs ont_+2/+1.', 3, 3, 3, 'Tim McBurnie', NULL, 10, 2, 1, 7, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_507.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_507_premium.gif'),
(239, 'Chevalier de sang', '<b>Cri de guerre_:</b> tous les serviteurs perdent <b>Bouclier divin</b>. Gagne_+3/+3 pour chaque bouclier perdu.', 3, 3, 3, 'Trent Kaniuga', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_590.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_590_premium.gif'),
(240, 'Chouette bec-de-fer', '<b>Cri de guerre_:</b> réduit au <b>Silence</b> un serviteur.', 2, 1, 3, 'Trevor Jacobs', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_203.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_203_premium.gif'),
(241, 'Cobra empereur', '<b>Toxicité</b>', 2, 3, 3, 'Lars Grant-West', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_170.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_170_premium.gif'),
(242, 'Contresort', '<b>Secret :</b> quand votre adversaire lance un sort, le <b>contre</b>.', NULL, NULL, 3, 'Jason Chan', NULL, 1, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_287.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_287_premium.gif'),
(243, 'Contrôleur mental', '<b>Cri de guerre_:</b> si l’adversaire a 4_serviteurs ou plus, prend le contrôle de l’un d’eux au hasard.', 3, 3, 3, 'Leo Che', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_085.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_085_premium.gif'),
(244, 'Courbe-sort', '<b>Secret_:</b> quand votre adversaire lance un sort sur un serviteur, invoque un_1/3 qui devient la nouvelle cible.', NULL, NULL, 3, 'Gonzalo Ordonez', NULL, 1, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/tt_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/tt_010_premium.gif'),
(245, 'Croisée écarlate', '<b>Bouclier divin</b>', 3, 1, 3, 'Gonzalo Ordonez', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_020_premium.gif'),
(246, 'Démolisseur', 'Au début de votre tour, inflige 2 points de dégâts à un adversaire aléatoire.', 1, 4, 3, 'Raymond Swanland', NULL, 10, 2, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_102.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_102_premium.gif'),
(247, 'Détection des démons', 'Place dans votre main 2_démons aléatoires de votre jeu.', NULL, NULL, 3, 'Raven Mimura', NULL, 3, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_317.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_317_premium.gif'),
(248, 'Double vue', 'Vous piochez une carte. Elle coûte (3)_cristaux de moins.', NULL, NULL, 3, 'Lars Grant-West', NULL, 8, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_053.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_053_premium.gif'),
(249, 'Edwin VanCleef', '<b>Combo_:</b> gagne +2/+2 pour chaque autre carte que vous avez jouée pendant ce tour.', 2, 2, 3, 'Efrem Palacios', NULL, 4, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_613.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_613_premium.gif'),
(250, 'Élémentaire délié', 'Chaque fois que vous jouez une carte avec <b>Surcharge</b>, gagne_+1/+1.', 2, 4, 3, 'Matt Gaser', NULL, 8, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_258.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_258_premium.gif'),
(251, 'Entité miroir', '<b>Secret :</b> une fois que votre adversaire a joué un serviteur, en invoque une copie.', NULL, NULL, 3, 'Raven Mimura', NULL, 1, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_294.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_294_premium.gif'),
(252, 'Épée de justice', 'Après avoir invoqué un serviteur, lui donne_+1/+1_et perd_1_Durabilité.', 1, NULL, 3, 'Efrem Palacios', 5, 2, 2, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_366.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_366_premium.gif'),
(253, 'Esprit farouche', 'Invoque deux esprits du loup 2/3 avec <b>Provocation</b>.\\n<b>Surcharge_:</b>_(2)', NULL, NULL, 3, 'Clint Langley', NULL, 8, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_248.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_248_premium.gif'),
(254, 'Explosion de lave', 'Inflige $5 |4(point,points) de dégâts.\\n<b>Surcharge :</b> (2)', NULL, NULL, 3, 'Dan Scott', NULL, 8, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_241.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_241_premium.gif'),
(255, 'Faveur divine', 'Vous piochez des cartes jusqu’à en avoir autant en main que votre adversaire.', NULL, NULL, 3, 'Lucas Graciano', NULL, 2, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_349.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_349_premium.gif'),
(256, 'Forme d’Ombre', 'Transforme votre pouvoir héroïque, qui inflige 2_points de dégâts. Si la forme d’Ombre est déjà adoptée_: 3_points de dégâts.', NULL, NULL, 3, 'Alex Horley Orlandelli', NULL, 5, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_625.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_625_premium.gif'),
(257, 'Gangregarde', '<b>Provocation</b>. <b>Cri de guerre_:</b> détruit un de vos cristaux de mana.', 3, 5, 3, 'John Polidora', NULL, 3, 2, 1, 4, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_301.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_301_premium.gif'),
(258, 'Garde-paix de l’Aldor', '<b>Cri de guerre_:</b> l’Attaque d’un serviteur adverse passe à_1.', 3, 3, 3, 'Dany Orizio', NULL, 2, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_382.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_382_premium.gif'),
(259, 'Golem arcanique', '<b>Cri de guerre :</b> donne à votre adversaire un cristal de mana.', 4, 4, 3, 'Sedhayu Ardian', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_089.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_089_premium.gif'),
(260, 'Golem des moissons', '<b>Râle d’agonie :</b> invoque un golem endommagé 2/1.', 2, 3, 3, 'Brian Despain', NULL, 10, 2, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_556.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_556_premium.gif'),
(261, 'Goule mangeuse de chair', 'Chaque fois qu’un serviteur meurt, gagne +1_ATQ.', 2, 3, 3, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/tt_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/tt_004_premium.gif'),
(262, 'Guerrier tauren', '<b>Provocation</b>.\\n<b>Accès de rage_:</b> +3_ATQ', 2, 3, 3, 'Paul Warzecha', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_390.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_390_premium.gif'),
(263, 'Lâcher les chiens', 'Invoque un chien_1/1 avec <b>Charge</b> pour chaque serviteur adverse.', NULL, NULL, 3, 'Linggar Bramanty', NULL, 7, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_538.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_538_premium.gif'),
(264, 'Lame de la perdition', '<b>Cri de guerre_:</b> inflige 1_point de dégâts. <b>Combo_:</b> inflige 2_points de dégâts à la place.', 2, NULL, 3, 'Daren Bader', 2, 4, 2, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_133.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_133_premium.gif'),
(265, 'Long-voyant de Thrallmar', '<b>Furie des vents</b>', 2, 3, 3, 'Efrem Palacios', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_021_premium.gif'),
(266, 'Mage du Kirin Tor', '<b>Cri de guerre_:</b> le prochain <b>Secret</b> que vous jouez pendant ce tour coûte (0)_|4(cristal,cristaux).', 4, 3, 3, 'Popo Wei', NULL, 1, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_612.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_612_premium.gif'),
(267, 'Maître des diablotins', 'À la fin de votre tour, ce serviteur subit 1_point de dégâts et invoque un diablotin_1/1.', 1, 5, 3, 'Mark Gibbons', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_597.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_597_premium.gif'),
(268, 'Maître-lame blessé', '<b>Cri de guerre_:</b> s’inflige 4_points de dégâts.', 4, 7, 3, 'Samwise', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_181.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_181_premium.gif'),
(269, 'Marque de la nature', '<b>Choix des armes :</b> donne +4 ATQ à un serviteur ou +4 PV et <b>Provocation</b>.', NULL, NULL, 3, 'Clint Langley', NULL, 6, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_155.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_155_premium.gif'),
(270, 'Oracle froide-lumière', '<b>Cri de guerre :</b> chaque joueur pioche 2 cartes.', 2, 2, 3, 'Steve Prescott', NULL, 10, 2, 1, 7, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_050.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_050_premium.gif'),
(271, 'Panthère de la jungle', '<b>Camouflage</b>', 4, 2, 3, 'Jaemin Kim', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_017_premium.gif'),
(272, 'Prophète du Cercle terrestre', '<b>Cri de guerre_:</b> rend 3_points de vie.', 3, 3, 3, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_117.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_117_premium.gif'),
(273, 'Robot d’alarme', 'Au début de votre tour, échange ce serviteur avec un autre choisi au hasard dans votre main.', 0, 3, 3, 'Sean O’Daniels', NULL, 10, 2, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_006_premium.gif'),
(274, 'Roi Mukla', '<b>Cri de guerre_:</b> donne 2_bananes à votre adversaire.', 5, 5, 3, 'Sunny Gho', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_014.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_014_premium.gif'),
(275, 'Suprétincelle', '<b>Cri de guerre_:</b> transforme un autre serviteur aléatoire soit en diablosaure_5/5, soit en écureuil_1/1 .', 3, 3, 3, 'Tom Baxa', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_083.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_083_premium.gif'),
(276, 'Tempête de foudre', 'Inflige $2_à_$3_points de dégâts à tous les serviteurs adverses. <b>Surcharge_:</b>_(2)', NULL, NULL, 3, 'Christopher Moeller', NULL, 8, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_259.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_259_premium.gif'),
(277, 'Terreur du Vide', '<b>Cri de guerre_:</b> détruit les serviteurs adjacents et gagne leurs points d’Attaque et de Vie.', 3, 3, 3, 'Alexander Alexandrov', NULL, 3, 2, 1, 4, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_304.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_304_premium.gif'),
(278, 'Tir meurtrier', 'Détruit un serviteur adverse aléatoire.', NULL, NULL, 3, 'Steve Prescott', NULL, 7, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_617.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_617_premium.gif'),
(279, 'Totem de vague de mana', 'Vous piochez une carte à la fin de votre tour.', 0, 3, 3, 'Scott Altmann', NULL, 8, 2, 1, 1, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_575.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_575_premium.gif'),
(280, 'Vaporisation', '<b>Secret :</b> quand un serviteur attaque votre héros, le détruit.', NULL, NULL, 3, 'Raymond Swanland', NULL, 1, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_594.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_594_premium.gif'),
(281, 'Vol d’esprit', 'Copie 2_cartes du deck de votre adversaire et les place dans votre main.', NULL, NULL, 3, 'Alex Garner', NULL, 5, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_339.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_339_premium.gif'),
(282, 'Voyant froide-lumière', '<b>Cri de guerre_:</b> donne +2_PV à vos autres murlocs.', 2, 3, 3, 'Arthur Gimaldinov', NULL, 10, 2, 1, 7, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_103.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_103_premium.gif'),
(283, 'Worgen déchaîné', '<b>Accès de rage_:</b> <b>Furie des vents</b> et +1_ATQ', 3, 3, 3, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_412.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_412_premium.gif'),
(284, 'Âme de la forêt', 'Confère à vos serviteurs « <b>Râle d’agonie :</b> invoque un tréant 2/2. »', NULL, NULL, 4, 'Markus Erdt', NULL, 6, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_158.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_158_premium.gif'),
(285, 'Ancien maître brasseur', '<b>Cri de guerre :</b> renvoie un serviteur allié du champ de bataille et le place dans votre main.', 5, 4, 4, 'Bernie Kang', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_057.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_057_premium.gif'),
(286, 'Arcaniste éthérien', 'Si vous contrôlez un <b>Secret</b> à la fin de votre tour, gagne_+2/+2.', 3, 3, 4, 'Michael Komarck', NULL, 1, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_274.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_274_premium.gif'),
(287, 'Brise-sort', '<b>Cri de guerre_:</b> réduit au <b>Silence</b> un serviteur.', 4, 3, 4, 'Matt Cavotta', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_048.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_048_premium.gif'),
(288, 'Cône de froid', '<b>Gèle</b> et inflige $1 |4(point,points) de dégâts à un serviteur et ceux à côté de lui.', NULL, NULL, 4, 'Leo Che', NULL, 1, 2, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_275.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_275_premium.gif'),
(289, 'Corsaire de l’effroi', '<b>Provocation</b>. Coûte (1)_|4(cristal,cristaux) de moins par Attaque de votre arme.', 3, 3, 4, 'Trent Kaniuga', NULL, 10, 2, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_022_premium.gif'),
(290, 'Défenseur d’Argus', '<b>Cri de guerre_:</b> donne_+1/+1 et <b>Provocation</b> aux serviteurs adjacents.', 2, 3, 4, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_093.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_093_premium.gif'),
(291, 'Déluge de lames', 'Détruit votre arme, dont les dégâts sont infligés à tous les serviteurs adverses.', NULL, NULL, 4, 'Hideaki Takamura', NULL, 4, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_233.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_233_premium.gif'),
(292, 'Dissipation de masse', 'Réduit au <b>Silence</b> tous les serviteurs adverses. Vous piochez une carte.', NULL, NULL, 4, 'Sean O\'Daniels', NULL, 5, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_626.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_626_premium.gif'),
(293, 'Drake du Crépuscule', '<b>Cri de guerre_:</b> gagne +1_PV pour chaque carte dans votre main.', 4, 1, 4, 'Jaemin Kim', NULL, 10, 2, 1, 2, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_043.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_043_premium.gif'),
(294, 'Enseignante pourpre', 'Chaque fois que vous lancez un sort, invoque un apprenti pourpre 1/1.', 3, 5, 4, 'James Ryman', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_026_premium.gif'),
(295, 'Fabricante d’armes', '<b>Cri de guerre_:</b> vous équipe d’une arme_2/2.', 3, 3, 4, 'Samwise', NULL, 9, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_398.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_398_premium.gif'),
(296, 'Folie de l’ombre', 'Prend le contrôle d’un serviteur adverse avec 3 ATQ ou moins jusqu’à la fin du tour.', NULL, NULL, 4, 'Mark Gibbons', NULL, 5, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_334.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_334_premium.gif'),
(297, 'Frappe mortelle', 'Inflige $4 |4(point,points) de dégâts. Si votre héros a 12 PV ou moins, inflige $6 |4(point,points) de dégâts à la place.', NULL, NULL, 4, 'Zoltan & Gabor', NULL, 9, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_408.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_408_premium.gif'),
(298, 'Garde de Lune-d’argent', '<b>Bouclier divin</b>', 3, 3, 4, 'Phroilan Gardner', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_023_premium.gif'),
(299, 'Gardien du bosquet', '<b>Choix des armes_:</b> inflige 2_points de dégâts ou réduit au <b>Silence</b> un serviteur.', 2, 2, 4, 'Gabor Szikszai', NULL, 6, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_166.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_166_premium.gif'),
(300, 'Gardien mogu’shan', '<b>Provocation</b>', 1, 7, 4, 'Cole Eastburn', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_396.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_396_premium.gif'),
(301, 'Jeux d’esprit', 'Place une copie d’un serviteur aléatoire du deck de votre adversaire sur le champ de bataille.', NULL, NULL, 4, 'Zoltan & Gabor', NULL, 5, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_345.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_345_premium.gif'),
(302, 'Mage ancien', '<b>Cri de guerre_:</b> donne aux serviteurs adjacents <b>+1_aux dégâts des sorts</b>.', 2, 5, 4, 'Howard Lyon', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_584.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_584_premium.gif'),
(303, 'Maître de culte', 'Vous piochez une carte quand un de vos autres serviteurs meurt.', 4, 2, 4, 'Raymond Swanland', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_595.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_595_premium.gif'),
(304, 'Maîtresse du déguisement', '<b>Cri de guerre :</b> confère <b>Camouflage</b> à un serviteur allié jusqu’à votre prochain tour.', 4, 4, 4, 'Ron Spencer', NULL, 4, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_014.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_014_premium.gif'),
(305, 'Morsure', 'Donne +4_ATQ au héros pendant ce tour. +4_points d’armure.', NULL, NULL, 4, 'Tom Baxa', NULL, 6, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_570.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_570_premium.gif'),
(306, 'Nain sombrefer', '<b>Cri de guerre_:</b> donne +2_ATQ à un serviteur pendant ce tour.', 4, 4, 4, 'Scott Hampton', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_046.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_046_premium.gif'),
(307, 'Ombreflamme', 'Détruit un serviteur allié et inflige des dégâts équivalents à ses points d’attaque à tous les serviteurs adverses.', NULL, NULL, 4, 'Dave Kendall', NULL, 3, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_303.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_303_premium.gif'),
(308, 'Portail d’invocation', 'Vos serviteurs coûtent (2) cristaux de moins, mais jamais moins\\nde (1).', 0, 4, 4, 'Tyler Walpole', NULL, 3, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_315.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_315_premium.gif'),
(309, 'Prêtresse auchenaï', 'Vos cartes et pouvoirs rendant de la Vie infligent désormais des dégâts à la place.', 3, 5, 4, 'Doug Alexander', NULL, 5, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_591.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_591_premium.gif'),
(310, 'Rejeton de lumière', 'L’Attaque de ce serviteur est toujours égale à sa Vie.', 0, 5, 4, 'Daarken', NULL, 5, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_335.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_335_premium.gif'),
(311, 'Seigneur des abîmes', '<b>Cri de guerre_:</b> inflige 5_points de dégâts à votre héros.', 5, 6, 4, 'Glenn Rane', NULL, 3, 2, 1, 4, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_313.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_313_premium.gif'),
(312, 'Abomination', '<b>Provocation</b>.\\n<b>Râle d’agonie :</b> inflige 2_points de dégâts à TOUS les personnages.', 4, 4, 5, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_097.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_097_premium.gif'),
(313, 'Baston', 'Détruit tous les serviteurs sauf un <i>(choisi au hasard)</i>.', NULL, NULL, 5, 'Wayne Reynolds', NULL, 9, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_407.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_407_premium.gif'),
(314, 'Bénédiction du champion', 'Double l’Attaque d’un serviteur.', NULL, NULL, 5, 'Tyler Walpole', NULL, 2, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_355.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_355_premium.gif'),
(315, 'Capitaine Vertepeau', '<b>Cri de guerre_:</b> donne_+1/+1 à votre arme.', 5, 4, 5, 'Dan Scott', NULL, 10, 2, 1, 8, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_024_premium.gif'),
(316, 'Champion de la Main d’argent', '<b>Cri de guerre_:</b> invoque un écuyer_2/2.', 4, 4, 5, 'Matt Starbuck', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_151.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_151_premium.gif'),
(317, 'Chasseur de gros gibier', '<b>Cri de guerre_:</b> détruit un serviteur avec 7_Attaque ou plus.', 4, 2, 5, 'Chris Seaman', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_005_premium.gif'),
(318, 'Colère divine', 'Vous piochez une carte et infligez des dégâts d’un montant égal à son coût.', NULL, NULL, 5, 'Justin Sweet', NULL, 2, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_365.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_365_premium.gif'),
(319, 'Druide de la Griffe', '<b>Choix des armes_:</b> se transforme en_4/4 avec <b>Charge</b> ou en_4/6 avec <b>Provocation</b>.', 4, 4, 5, 'Luca Zontini', NULL, 6, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_165.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_165_premium.gif'),
(320, 'Élémentaire de terre', '<b>Provocation</b>\\n<b>Surcharge :</b> (3)', 7, 8, 5, 'Dan Scott', NULL, 8, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_250.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_250_premium.gif'),
(321, 'Force de la nature', 'Invoque trois tréants_2/2.', NULL, NULL, 5, 'Trevor Jacobs', NULL, 6, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_571.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_571_premium.gif'),
(322, 'Forgeron malveillant', '<b>Accès de rage :</b> votre arme a +2 ATQ.', 4, 6, 5, 'Justin Sweet', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_221.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_221_premium.gif'),
(323, 'Garde funeste', '<b>Charge</b>. <b>Cri de guerre :</b> vous défausse de deux cartes aléatoires.', 5, 7, 5, 'Lucas Graciano', NULL, 3, 2, 1, 4, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_310.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_310_premium.gif'),
(324, 'Harrison Jones', '<b>Cri de guerre :</b> détruit l’arme de votre adversaire. Vous piochez le nombre de cartes équivalent à sa durabilité.', 5, 4, 5, 'Matt Dixon', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_558.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_558_premium.gif'),
(325, 'Kodo déchaîné', '<b>Cri de guerre :</b> détruit un serviteur adverse aléatoire avec 2 en Attaque ou moins.', 3, 5, 5, 'Daren Bader', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_041.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_041_premium.gif'),
(326, 'Leeroy Jenkins', '<b>Charge</b>. <b>Cri de guerre_:</b> invoque deux dragonnets_1/1 pour votre adversaire.', 6, 2, 5, 'Gabe from Penny Arcade', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_116.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_116_premium.gif'),
(327, 'Manipulateur sans-visage', '<b>Cri de guerre :</b> choisit un serviteur et en devient la copie conforme.', 3, 3, 5, 'Raymond Swanland', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_564.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_564_premium.gif'),
(328, 'Marteau-du-Destin', '<b>Furie des vents\\nSurcharge :</b> (2)', 2, NULL, 5, 'John Polidora', 8, 8, 2, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_567.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_567_premium.gif'),
(329, 'Météores', '<b>Choix des armes :</b> inflige $5 |4(point,points) de dégâts à un serviteur ; ou $2 |4(point,points) de dégâts à tous les serviteurs adverses.', NULL, NULL, 5, 'Richard Wright', NULL, 6, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_007_premium.gif'),
(330, 'Nervi de la KapitalRisk', 'Vos serviteurs coûtent (3)_cristaux de plus.', 7, 6, 5, 'John Polidora', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_227.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_227_premium.gif'),
(331, 'Nourrir', '<b>Choix des armes_:</b> vous gagnez 2_cristaux de mana ou vous piochez 3_cartes.', NULL, NULL, 5, 'Terese Nielsen', NULL, 6, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_164.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_164_premium.gif');
INSERT INTO `CARD` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(332, 'Plaie funeste', 'Inflige $2_|4(point,points) de dégâts à un personnage. S’il est tué, invoque un démon aléatoire.', NULL, NULL, 5, 'Raymond Swanland', NULL, 3, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_320.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_320_premium.gif'),
(333, 'Rampant des tourbières', '<b>Provocation</b>', 3, 6, 5, 'Monica Langlois', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS1_069.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS1_069_premium.gif'),
(334, 'Tigre de Strangleronce', '<b>Camouflage</b>', 5, 5, 5, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_028_premium.gif'),
(335, 'Tir explosif', 'Inflige $5_|4(point,points) de dégâts à un serviteur et $2_|4(point,points) de dégâts aux serviteurs adjacents.', NULL, NULL, 5, 'Tom Baxa', NULL, 7, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_537.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_537_premium.gif'),
(336, 'Blizzard', 'Inflige $2_|4(point,points) de dégâts à tous les serviteurs adverses et_les_<b>gèle</b>.', NULL, NULL, 6, 'Chris Seaman', NULL, 1, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_028_premium.gif'),
(337, 'Cairne Sabot-de-Sang', '<b>Râle d’agonie :</b> invoque Baine Sabot-de-Sang avec 4/5.', 4, 5, 6, 'Wayne Reynolds', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_110.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_110_premium.gif'),
(338, 'Commandant d’Argent', '<b>Charge</b>\\n<b>Bouclier divin</b>', 4, 2, 6, 'James Ryman', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_067.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_067_premium.gif'),
(339, 'Commissaire-priseur', 'Vous piochez une carte chaque fois que vous lancez un sort.', 4, 4, 6, 'Matt Dixon', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_095.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_095_premium.gif'),
(340, 'Courroux vengeur', 'Inflige $8 |4(point,points) de dégâts répartis de façon aléatoire entre tous les adversaires.', NULL, NULL, 6, 'Alex Garner', NULL, 2, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_384.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_384_premium.gif'),
(341, 'Élémentaire de givre', '<b>Cri de guerre_:</b> <b>gèle</b> un personnage.', 5, 5, 6, 'Dan Scott', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_283.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_283_premium.gif'),
(342, 'Flammes sacrées', 'Inflige $5 points de dégâts. Rend #5 PV à votre héros.', NULL, NULL, 6, 'Miguel Coimbra', NULL, 5, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_624.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_624_premium.gif'),
(343, 'Grande crinière des savanes', '<b>Râle d’agonie :</b> invoque deux hyènes 2/2.', 6, 5, 6, 'Milivoj Ceran', NULL, 7, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_534.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_534_premium.gif'),
(344, 'Harpie Furie-des-vents', '<b>Furie des vents</b>', 4, 5, 6, 'Luke Mancini', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_033_premium.gif'),
(345, 'Illidan Hurlorage', 'Quand vous jouez une carte, invoque une Flamme d’Azzinoth_2/1.', 7, 5, 6, 'Alex Horley Orlandelli', NULL, 10, 2, 1, 4, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_614.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_614_premium.gif'),
(346, 'Kidnappeur', '<b>Combo_:</b> renvoie un serviteur dans la main de son propriétaire.', 5, 3, 6, 'Dave Allsop', NULL, 4, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_005_premium.gif'),
(347, 'La Bête', '<b>Râle d’agonie :</b> invoque Finkle Einhorn 3/3 pour votre adversaire.', 9, 7, 6, 'Glenn Rane', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_577.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_577_premium.gif'),
(348, 'Lardeur', 'À la fin de votre tour, invoque un gnoll_2/2 avec <b>Provocation</b>.', 4, 4, 6, 'Laurel D. Austin', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_040.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_040_premium.gif'),
(349, 'Le Chevalier noir', '<b>Cri de guerre :</b> détruit un serviteur adverse avec <b>Provocation</b>.', 4, 5, 6, 'Alex Horley Orlandelli', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_002.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_002_premium.gif'),
(350, 'Marche-soleil', '<b>Provocation</b>\\n<b>Bouclier divin</b>', 4, 5, 6, 'Andrea Uderzo', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_032.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_032_premium.gif'),
(351, 'Massacreur du temple', '<b>Cri de guerre_:</b> donne +3_PV à un serviteur allié.', 6, 6, 6, 'Daren Bader', NULL, 5, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_623.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_623_premium.gif'),
(352, 'Prêtresse d’Élune', '<b>Cri de guerre_:</b> rend 4_points de vie à votre héros.', 5, 4, 6, 'Dan Scott', NULL, 10, 2, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_583.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_583_premium.gif'),
(353, 'Prêtresse de la Cabale', '<b>Cri de guerre :</b> prend le contrôle d’un serviteur adverse avec 2 en Attaque ou moins.', 4, 5, 6, 'Chippy', NULL, 5, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_091.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_091_premium.gif'),
(354, 'Siphonner l’âme', 'Détruit un serviteur. Rend #3_PV à votre héros.', NULL, NULL, 6, 'Tyler Walpole', NULL, 3, 2, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_309.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_309_premium.gif'),
(355, 'Ancien de la guerre', '<b>Choix des armes :</b> \\n+5 ATQ ou +5 PV et <b>Provocation</b>.', 5, 5, 7, 'Sean O’Daniels', NULL, 6, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_178.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_178_premium.gif'),
(356, 'Ancien du savoir', '<b>Choix des armes_:</b> rend 5_PV ou vous piochez une carte.', 5, 5, 7, 'Patrik Hjelm', NULL, 6, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_008_premium.gif'),
(357, 'Arc long du gladiateur', 'Votre héros est <b>Insensible</b> quand il attaque.', 5, NULL, 7, 'Peter C. Lee', 2, 7, 2, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/DS1_188.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/DS1_188_premium.gif'),
(358, 'Archimage Antonidas', 'Chaque fois que vous lancez un sort, ajoute un sort «_boule de feu_» dans votre main.', 5, 7, 7, 'Wayne Reynolds', NULL, 1, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_559.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_559_premium.gif'),
(359, 'Assassin de Ravenholdt', '<b>Camouflage</b>', 7, 5, 7, 'Ralph Horsley', NULL, 10, 2, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_161.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_161_premium.gif'),
(360, 'Baron Geddon', 'À la fin de votre tour, inflige 2 points de dégâts à TOUS les autres personnages.', 7, 5, 7, 'Ian Ameling', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_249.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_249_premium.gif'),
(361, 'Hurlesang', 'Attaquer un serviteur coûte 1 ATQ au lieu de 1 Durabilité.', 7, NULL, 7, 'Zoltan & Gabor', 1, 9, 2, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_411.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_411_premium.gif'),
(362, 'Prophète Velen', 'Double les dégâts et les soins de vos sorts et de votre pouvoir héroïque.', 7, 7, 7, 'Wei Wang', NULL, 5, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_350.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_350_premium.gif'),
(363, 'Al’Akir, seigneur des Vents', '<b>Furie des vents, Charge, Bouclier divin, Provocation</b>', 3, 5, 8, 'Raymond Swanland', NULL, 8, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_010_premium.gif'),
(364, 'Grommash Hurlenfer', '<b>Charge</b>.\\n<b>Accès de rage :</b> +6 ATQ', 4, 9, 8, 'Glenn Rane', NULL, 9, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_414.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_414_premium.gif'),
(365, 'Gruul', 'À la fin de chaque tour, gagne +1/+1.', 7, 7, 8, 'Kev Walker', NULL, 10, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_038.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_038_premium.gif'),
(366, 'Imposition des mains', 'Rend #8_|4(point,points) de vie. Vous piochez 3_cartes.', NULL, NULL, 8, 'Raymond Swanland', NULL, 2, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_354.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_354_premium.gif'),
(367, 'Néant distordu', 'Détruit tous les serviteurs.', NULL, NULL, 8, 'Dave Allsop', NULL, 3, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_312.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_312_premium.gif'),
(368, 'Tirion Fordring', '<b>Bouclier divin</b>. <b>Provocation</b>. <b>Râle d’agonie_:</b> vous équipe de Porte-cendres_5/3.', 6, 6, 8, 'Brom', NULL, 2, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_383.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_383_premium.gif'),
(369, 'Alexstrasza', '<b>Cri de guerre :</b> fixe les points de vie restants d’un héros à 15.', 8, 8, 9, 'Raymond Swanland', NULL, 10, 2, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_561.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_561_premium.gif'),
(370, 'Cénarius', '<b>Choix des armes_:</b> donne_+2/+2 à vos autres serviteurs ou invoque deux tréants_2/2 avec <b>Provocation</b>.', 5, 8, 9, 'Alex Horley Orlandelli', NULL, 6, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_573.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_573_premium.gif'),
(371, 'Malygos', '<b>Dégâts des sorts : +5</b>', 4, 12, 9, 'Michael Komarck', NULL, 10, 2, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_563.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_563_premium.gif'),
(372, 'Nozdormu', 'Les joueurs n’ont que 15_secondes pour jouer leur tour.', 8, 8, 9, 'James Ryman', NULL, 10, 2, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_560.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_560_premium.gif'),
(373, 'Onyxia', '<b>Cri de guerre :</b> invoque des dragonnets 1/1 jusqu’à remplir votre côté du champ de bataille.', 8, 8, 9, 'Dany Orizio', NULL, 10, 2, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_562.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_562_premium.gif'),
(374, 'Roi Krush', '<b>Charge</b>', 8, 8, 9, 'Alex Horley Orlandelli', NULL, 7, 2, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_543.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_543_premium.gif'),
(375, 'Seigneur Jaraxxus', '<b>Cri de guerre :</b> le seigneur Jaraxxus détruit votre héros et prend sa place.', 3, 15, 9, 'Alex Horley Orlandelli', NULL, 3, 2, 1, 4, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_323.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_323_premium.gif'),
(376, 'Ysera', 'À la fin de votre tour, ajoute une carte Rêve dans votre main.', 4, 12, 9, 'Gabor Szikszai', NULL, 10, 2, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_572.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_572_premium.gif'),
(377, 'Aile de mort', '<b>Cri de guerre_:</b> détruit tous les autres serviteurs et vous défausse de votre main.', 12, 12, 10, 'Bernie Kang', NULL, 10, 2, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_030.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_030_premium.gif'),
(378, 'Explosion pyrotechnique', 'Inflige $10 |4(point,points) de dégâts.', NULL, NULL, 10, 'Luca Zontini', NULL, 1, 2, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_279.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_279_premium.gif'),
(379, 'Géant des mers', 'Coûte (1) cristal de moins pour chaque autre serviteur sur le champ de bataille.', 8, 8, 10, 'Svetlin Velinov', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_586.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_586_premium.gif'),
(380, 'Géant des montagnes', 'Coûte (1) cristal de moins pour chaque autre carte dans votre main.', 8, 8, 12, 'Samwise', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_105.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_105_premium.gif'),
(381, 'Géant de lave', 'Coûte (1) cristal de moins pour chaque point de dégâts subi par votre héros.', 8, 8, 25, 'Glenn Rane', NULL, 10, 2, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_620.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_620_premium.gif'),
(382, 'Dissimuler', 'Confère <b>Camouflage</b> à vos serviteurs jusqu’à votre prochain tour.', NULL, NULL, 1, 'Steve Hui', NULL, 4, 7, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_128.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_128_premium.gif'),
(383, 'Javelot de glace', '<b>Gèle</b> un personnage. S’il est déjà <b>gelé</b>, inflige $4 |4(point,points) de dégâts à la place.', NULL, NULL, 1, 'Alex Horley Orlandelli', NULL, 1, 7, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_031_premium.gif'),
(384, 'Puissance accablante', 'Donne_+4/+4 à un serviteur allié jusqu’à la fin du tour. Puis il meurt. De façon horrible.', NULL, NULL, 1, 'Tom Baxa', NULL, 3, 7, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_316.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_316_premium.gif'),
(385, 'Perroquet du capitaine', '<b>Cri de guerre_:</b> vous piochez un pirate de votre deck.', 1, 1, 2, 'Daren Bader', NULL, 10, 7, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_016_premium.gif'),
(386, 'Vieux Troublœil', '<b>Charge</b>. A +1 ATQ pour chaque autre murloc sur le champ de bataille.', 2, 4, 4, 'Dan Scott', NULL, 10, 7, 1, 7, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_062.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_062_premium.gif'),
(387, 'Drake azur', '<b>Dégâts des sorts : +1</b>.\\n<b>Cri de guerre :</b> vous piochez une carte.', 4, 4, 5, 'Benjamin Zhang', NULL, 10, 7, 1, 2, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_284.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_284_premium.gif'),
(388, 'Elite Tauren Chieftain', '<b>Cri de guerre :</b> confère aux deux joueurs la puissance du ROCK ! (grâce à une carte au riff dément !)', 5, 5, 5, 'Samwise Didier', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/PRO_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/PRO_001_premium.gif'),
(389, 'Gelbin Mekkanivelle', '<b>Cri de guerre :</b> invoque une invention GÉNIALE.', 6, 6, 6, 'Ludo Lullabi', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_112.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_112_premium.gif'),
(390, 'Sylvanas Coursevent', '<b>Râle d’agonie_:</b> prend le contrôle d’un serviteur adverse aléatoire.', 5, 5, 6, 'Glenn Rane', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_016_premium.gif'),
(391, 'Ragnaros, seigneur du feu', 'Ne peut pas attaquer. À la fin de votre tour, inflige 8 points de dégâts à un adversaire aléatoire.', 8, 8, 8, 'Greg Staples', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_298.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_298_premium.gif'),
(392, 'Flamme interdite', 'Dépense tous vos cristaux de mana. Inflige l’équivalent sous forme de dégâts à un serviteur.', NULL, NULL, 0, 'Hideaki Takamura', NULL, 1, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_086.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_086_premium.gif'),
(393, 'Guérison interdite', 'Dépense tout votre mana pour en rendre le double en points de vie.', NULL, NULL, 0, 'Mike Franchina', NULL, 2, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_198.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_198_premium.gif'),
(394, 'Mutation interdite', 'Dépense tous vos cristaux de mana. Invoque un serviteur aléatoire de même coût.', NULL, NULL, 0, 'A.J. Nazzaro', NULL, 5, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_101.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_101_premium.gif'),
(395, 'Rituel interdit', 'Dépense tous vos cristaux de mana. Invoque un nombre équivalent de tentacules 1/1.', NULL, NULL, 0, 'Evgeniy Zagumennyy', NULL, 3, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_114.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_114_premium.gif'),
(396, 'Ancien frappé d’interdit', '<b>Cri de guerre :</b> dépense tous vos cristaux de mana. Gagne +1/+1 pour chaque cristal dépensé.', 1, 1, 1, 'Grace Liu', NULL, 6, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_051.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_051_premium.gif'),
(397, 'Chauve-souris embrasée', '<b>Râle d’agonie :</b> inflige\\n1 point de dégâts à un adversaire aléatoire.', 2, 1, 1, 'Andrew Hou', NULL, 7, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_179.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_179_premium.gif'),
(398, 'Déphaseur Zerus', 'Chaque tour où cette carte est dans votre main, la transforme en un serviteur aléatoire.', 1, 1, 1, 'Daria Tuzova', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_123.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_123_premium.gif'),
(399, 'Du sang à l’ichor', 'Inflige $1 |4(point,points) de dégâts à un serviteur.\\nS’il survit, invoque une gelée 2/2.', NULL, NULL, 1, 'Jim Nelson', NULL, 9, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_314.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_314_premium.gif'),
(400, 'En chasse', 'Inflige $1 |4(point,points) de dégâts. Invoque un mastiff 1/1.', NULL, NULL, 1, 'Zoltan Boros', NULL, 7, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_061.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_061_premium.gif'),
(401, 'Évolution', 'Transforme vos serviteurs en serviteurs aléatoires qui coûtent (1)_|4(cristal,cristaux) de plus.', NULL, NULL, 1, 'Luca Zontini', NULL, 8, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_027_premium.gif'),
(402, 'Force divine', 'Donne +1/+2 à un serviteur.', NULL, NULL, 1, 'Eva Wilderman', NULL, 2, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_223.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_223_premium.gif'),
(403, 'Fusion primordiale', 'Donne_+1/+1 à un serviteur pour chacun de vos totems.', NULL, NULL, 1, 'Jimmy Lo', NULL, 8, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_023_premium.gif'),
(404, 'Héroïne altruiste', '<b>Râle d’agonie :</b> confère <b>Bouclier divin</b> à un serviteur allié aléatoire.', 2, 1, 1, 'Rafael Zanchetin', NULL, 2, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_221.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_221_premium.gif'),
(405, 'Initié zélé', '<b>Râle d’agonie :</b> donne_+1/+1 à un serviteur allié aléatoire.', 1, 1, 1, 'Cole Eastburn', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_158.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_158_premium.gif'),
(406, 'Inquisiteur Aileron noir', '<b>Cri de guerre :</b> votre pouvoir héroïque devient « Invoque un murloc 1/1 ».', 1, 3, 1, 'Jerry Mascho', NULL, 2, 3, 1, 7, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_006_premium.gif'),
(407, 'Périple dans les abîmes', '<b>Découvre</b> une carte avec <b>Râle d’agonie</b>.', NULL, NULL, 1, 'Zoltan Boros', NULL, 4, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_072.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_072_premium.gif'),
(408, 'Second de N’Zoth', '<b>Cri de guerre :</b> vous équipe d’un Crochet rouillé 1/3.', 1, 1, 1, 'Paul Mafayon', NULL, 9, 3, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_312.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_312_premium.gif'),
(409, 'Sectateur de la Lame', '<b>Combo_:</b> gagne +1/+1.', 1, 2, 1, 'Jakub Kasber', NULL, 4, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_070.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_070_premium.gif'),
(410, 'Tentacule de N’Zoth', '<b>Râle d’agonie :</b> inflige\\n1 point de dégâts à tous les serviteurs.', 1, 1, 1, 'J. Meyers & T. Washington', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_151.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_151_premium.gif'),
(411, 'Villageois possédé', '<b>Râle d’agonie :</b> invoque une ombrebête 1/1.', 1, 1, 1, 'Matt Dixon', NULL, 3, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_241.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_241_premium.gif'),
(412, 'Annonciatrice du mal', '<b>Cri de guerre :</b> donne +2/+2 à votre C’Thun <i>(où qu’il soit)</i>.', 2, 3, 2, 'Eva Wilderman', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_281.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_281_premium.gif'),
(413, 'Archiviste de Sombre-Comté', '<b>Cri de guerre :</b> vous défausse d’une carte aléatoire. <b>Râle d’agonie :</b> vous piochez une carte.', 3, 2, 2, 'Rafael Zanchetin', NULL, 3, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_109.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_109_premium.gif'),
(414, 'Colporteur de Fossoyeuse', '<b>Râle d’agonie :</b> ajoute une carte aléatoire dans votre main <i>(de la classe de votre adversaire)</i>.', 2, 2, 2, 'Jon Neimeister', NULL, 4, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_330.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_330_premium.gif'),
(415, 'Coup de tonnerre', 'Inflige $4 |4(point,points) de dégâts à un serviteur. <b>Surcharge :</b> (1)', NULL, NULL, 2, 'Maurico Herrera', NULL, 8, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_206.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_206_premium.gif'),
(416, 'Ensorceleuse du culte', '<b>Dégâts des sorts : +1</b>\\nAprès que vous avez lancé un sort, donne +1/+1 à votre C’Thun <i>(où qu’il soit)</i>.', 3, 2, 2, 'J. Meyers & T. Washington', NULL, 1, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_303.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_303_premium.gif'),
(417, 'Étreindre l’ombre', 'Durant ce tour, vos effets de soin infligent des dégâts à la place.', NULL, NULL, 2, 'Rafael Zanchetin', NULL, 5, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_104.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_104_premium.gif'),
(418, 'Fracasser', 'Détruit un serviteur <b>gelé</b>.', NULL, NULL, 2, 'Trent Kaniuga', NULL, 1, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_081.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_081_premium.gif'),
(419, 'Géomancienne du Crépuscule', '<b>Provocation</b>\\n<b>Cri de guerre_:</b> confère <b>Provocation</b> à votre C’Thun <i>(où qu’il soit)</i>.', 1, 4, 2, 'Eric Braddock', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_284.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_284_premium.gif'),
(420, 'Lumière dans les ténèbres', '<b>Découvre</b> un serviteur.\\nLui donne +1/+1.', NULL, NULL, 2, 'Zoltan Boros', NULL, 2, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_311.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_311_premium.gif'),
(421, 'Marque d’Y’Shaarj', 'Donne +2/+2 à un serviteur. Si c\'est une Bête, vous piochez une carte.', NULL, NULL, 2, 'Efrem Palacios', NULL, 6, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_048.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_048_premium.gif'),
(422, 'Murloc aileron-bilieux', '<b>Cri de guerre :</b> invoque un limon 1/1 avec <b>Provocation</b>.', 2, 1, 2, 'James Ryman', NULL, 10, 3, 1, 7, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_156.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_156_premium.gif'),
(423, 'Nat le sombre pêcheur', 'Au début de son tour, votre adversaire a 50% de chances de piocher une carte supplémentaire.', 2, 4, 2, 'Steve Prescott', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_338.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_338_premium.gif'),
(424, 'Parjurer les ténèbres', 'Remplace votre pouvoir héroïque et vos cartes de démoniste par ceux d’une autre classe. Les cartes coûtent (1)_|4(cristal,cristaux) de moins.', NULL, NULL, 2, 'Dan Scott', NULL, 3, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_118.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_118_premium.gif'),
(425, 'Sanglier de pénombre', NULL, 4, 1, 2, 'Samwise', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_326.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_326_premium.gif'),
(426, 'Sentinelle éternelle', '<b>Cri de guerre :</b> débloque vos cristaux de mana en <b>Surcharge</b>.', 3, 2, 2, 'J. Meyers & Nutchapol ', NULL, 8, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_026_premium.gif'),
(427, 'Worgen corrompu', '<b>Camouflage</b>', 3, 1, 2, 'Trent Kaniuga', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_247.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_247_premium.gif'),
(428, 'Adepte de la Voile sanglante', '<b>Cri de guerre :</b> donne +1/+1 à votre arme si vous contrôlez un autre Pirate.', 3, 4, 3, 'Matt Dixon', NULL, 9, 3, 1, 8, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_315.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_315_premium.gif'),
(429, 'Ancien du Crépuscule', 'À la fin de votre tour, donne_+1/+1 à votre C’Thun <i>(où qu’il soit)</i>.', 3, 4, 3, 'Tooth', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_286.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_286_premium.gif'),
(430, 'Attaque d’ombre', 'Inflige $5 points de dégâts à un personnage indemne.', NULL, NULL, 3, 'Dave Allsop', NULL, 4, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_176.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_176_premium.gif'),
(431, 'Conseiller de Sombre-Comté', 'Gagne +1 ATQ après que vous avez invoqué un serviteur.', 1, 5, 3, 'Garrett Hanna', NULL, 3, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_113.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_113_premium.gif'),
(432, 'Disciple de C’Thun', '<b>Cri de guerre :</b> inflige 2 points de dégâts. Donne +2/+2 à votre C’Thun <i>(où qu’il soit)</i>.', 2, 1, 3, 'Dan Scott', NULL, 10, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_162.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_162_premium.gif'),
(433, 'Enragé am’gam', NULL, 1, 5, 3, 'Matt Gaser', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_248.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_248_premium.gif'),
(434, 'Folie galopante', 'Inflige $9 |4(point,points) de dégâts répartis de façon aléatoire entre TOUS les personnages.', NULL, NULL, 3, 'Mauricio Herrera', NULL, 3, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_116.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_116_premium.gif'),
(435, 'Goule ravageuse', '<b>Cri de guerre :</b> inflige\\n1 point de dégâts à tous les autres serviteurs.', 3, 3, 3, 'Dany Orizio', NULL, 9, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_149.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_149_premium.gif'),
(436, 'Grizzly perturbé', 'Après que vous avez invoqué un serviteur, lui donne +1/+1.', 2, 2, 3, 'Andrew Hou', NULL, 6, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_313.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_313_premium.gif'),
(437, 'Grouillant silithide', 'Ne peut attaquer que si votre héros a attaqué pendant ce tour.', 3, 5, 3, 'Jakub Kasber', NULL, 10, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_034.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_034_premium.gif'),
(438, 'Guerriers de sang', 'Place une copie de chaque serviteur allié blessé dans votre main.', NULL, NULL, 3, 'A.J. Nazzaro', NULL, 9, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_276.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_276_premium.gif'),
(439, 'Infester', 'Confère à vos serviteurs « <b>Râle d’agonie :</b> ajoute une carte Bête aléatoire dans votre main. »', NULL, NULL, 3, 'Anton Zemskov', NULL, 7, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_045.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_045_premium.gif'),
(440, 'Lame de ralliement', '<b>Cri de guerre_:</b> donne_+1/+1 à vos serviteurs avec <b>Bouclier divin</b>.', 3, NULL, 3, 'Jeremy Cranford', 2, 2, 3, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_222.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_222_premium.gif'),
(441, 'Larve putride', NULL, 2, 5, 3, 'Kan Liu', NULL, 7, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_325.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_325_premium.gif'),
(442, 'Mande-flamme du Crépuscule', '<b>Cri de guerre :</b> inflige 1 point de dégâts à tous les serviteurs adverses.', 2, 2, 3, 'Anton Zemskov', NULL, 1, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_083.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_083_premium.gif'),
(443, 'Rage farouche', '<b>Choix des armes_:</b> donne +4_ATQ à votre héros pendant ce tour ou 8_points d’armure.', NULL, NULL, 3, 'Alex Alexandrov', NULL, 6, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_047.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_047_premium.gif'),
(444, 'Régisseuse de Sombre-Comté', 'Quand vous invoquez un serviteur à 1 PV, lui donne <b>Bouclier divin</b>.', 3, 3, 3, 'Phroi Gardner', NULL, 2, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_310.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_310_premium.gif'),
(445, 'Rejeton de N’Zoth', '<b>Râle d’agonie_:</b> donne_+1/+1 à vos serviteurs.', 2, 2, 3, 'Peter Stapleton', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_256.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_256_premium.gif'),
(446, 'Tentacule remuant', '<b>Provocation</b>', 2, 4, 3, 'L. Lullabi & Nutchapol ', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_327.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_327_premium.gif'),
(447, 'Traqueur lugubre', '<b>Cri de guerre :</b> donne +1/+1 à tous les serviteurs avec <b>Râle d’agonie</b> dans votre main.', 4, 2, 3, 'Peter Stapleton', NULL, 7, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_292.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_292_premium.gif'),
(448, 'Acolyte capuchonnée', 'Chaque fois qu’un personnage est soigné, donne +1/+1 à votre C’Thun <i>(où qu’il soit)</i>.', 3, 6, 4, 'Adam Byrne', NULL, 5, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_334.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_334_premium.gif'),
(449, 'Amasseur vicié', '<b>Râle d’agonie :</b> vous piochez une carte.', 4, 2, 4, 'Matt Dixon', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_323.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_323_premium.gif'),
(450, 'Berserker aberrant', '<b>Accès de rage :</b> +2 ATQ.', 3, 5, 4, 'Jim Nelson', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_150.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_150_premium.gif'),
(451, 'Brave Sabot-de-Sang', '<b>Provocation</b>\\n<b>Accès de rage :</b> +3 ATQ.', 2, 6, 4, 'Paul Mafayon', NULL, 9, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_218.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_218_premium.gif'),
(452, 'Drake de minuit', '<b>Cri de guerre_:</b> gagne +1_ATQ pour chaque autre carte dans votre main.', 1, 4, 4, 'Todd Lockwood', NULL, 10, 3, 1, 2, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_320.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_320_premium.gif'),
(453, 'Élue de C’Thun', '<b>Bouclier divin</b>. <b>Cri de\\nguerre :</b> donne +2/+2 à votre C’Thun <i>(où qu’il soit)</i>.', 4, 2, 4, 'Jesper Esjing', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_283.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_283_premium.gif'),
(454, 'Face de poulpe', '<b>Râle d’agonie :</b> donne\\n+2 ATQ à votre arme.', 4, 4, 4, 'Mike Sass', NULL, 4, 3, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_267.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_267_premium.gif'),
(455, 'Fandral Forteramure', 'Vos cartes avec <b>Choix des armes</b> combinent les deux effets.', 3, 5, 4, 'Anton Zemskov', NULL, 6, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_044.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_044_premium.gif'),
(456, 'Gardien du bourbier', '<b>Choix des armes :</b> invoque une gelée 2/2 ou confère un cristal de mana vide.', 3, 3, 4, 'Zoltan Boros', NULL, 6, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_202.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_202_premium.gif'),
(457, 'Horreur cyclopéenne', '<b>Provocation</b>. <b>Cri de guerre :</b> gagne +1 PV pour\\nchaque serviteur adverse.', 3, 3, 4, 'Garrett Hanna', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_337.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_337_premium.gif'),
(458, 'Invocateur du Crépuscule', '<b>Râle d’agonie :</b> invoque un destructeur\\nsans-visage 5/5.', 1, 1, 4, 'Jim Nelson', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_272.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_272_premium.gif'),
(459, 'Kobold évolué', '<b>Dégâts des sorts : +2</b>', 2, 2, 4, 'Genevieve Tsai & Nutchapol ', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_082.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_082_premium.gif'),
(460, 'Loup contaminé', '<b>Râle d’agonie :</b> invoque deux araignées 1/1.', 3, 3, 4, 'E. Guiton & A. Bozonnet', NULL, 7, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_216.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_216_premium.gif'),
(461, 'Maître de l’évolution', '<b>Cri de guerre :</b> transforme un serviteur allié en un serviteur aléatoire coûtant\\n(1) |4(cristal,cristaux) de plus.', 4, 5, 4, 'Dan Scott', NULL, 8, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_328.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_328_premium.gif'),
(462, 'Mande-givre dément', 'Après que vous avez lancé un sort, <b>gèle</b> un adversaire aléatoire.', 2, 4, 4, 'Arthur Gimaldinov', NULL, 1, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_085.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_085_premium.gif'),
(463, 'Mange-secrets', '<b>Cri de guerre :</b> détruit tous les <b>secrets</b> adverses. Gagne +1/+1 par secret détruit.', 2, 4, 4, 'Dan Scott', NULL, 10, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_254.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_254_premium.gif'),
(464, 'Mot de l’ombre : Horreur', 'Détruit tous les serviteurs avec\\n2 Attaque ou moins.', NULL, NULL, 4, 'Andrew Hou', NULL, 5, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_100.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_100_premium.gif'),
(465, 'Ombre mouvante', '<b>Râle d’agonie_:</b> copie une carte du deck de votre adversaire et la place dans votre main.', 4, 3, 4, 'Tyler Walpole', NULL, 5, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_335.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_335_premium.gif'),
(466, 'Pirate des flots noirs', 'Vos armes coûtent (2)_cristaux de moins.', 2, 5, 4, 'Max Grecke', NULL, 10, 3, 1, 8, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_322.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_322_premium.gif'),
(467, 'Sans-visage nimbé de flammes', '<b>Surcharge :</b> (2)', 7, 7, 4, 'E. M. Gist', NULL, 8, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_024_premium.gif'),
(468, 'Tauren contaminé', '<b>Provocation</b>\\n<b>Râle d’agonie :</b> invoque une gelée 2/2.', 2, 3, 4, 'Paul Mafayon', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_249.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_249_premium.gif'),
(469, 'Tisse-ambre klaxxi', '<b>Cri de guerre :</b> gagne\\n+5 PV si votre C’Thun a au moins 10 Attaque.', 4, 5, 4, 'Cole Eastburn', NULL, 6, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_188.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_188_premium.gif'),
(470, 'Traînard sans-visage', '<b>Provocation</b>\\n<b>Cri de guerre :</b> copie l’Attaque et la Vie d’un serviteur allié.', 1, 1, 4, 'Alex Alexandrov', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_174.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_174_premium.gif'),
(471, 'Xaril l’Esprit empoisonné', '<b>Cri de guerre et Râle d’agonie :</b> ajoute une carte Toxine aléatoire dans votre main.', 3, 2, 4, 'Jaemin Kim', NULL, 4, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_080.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_080_premium.gif'),
(472, 'Adorateur fanatisé', '<b>Provocation</b>. Chaque fois que ce serviteur subit des dégâts, donne +1/+1 à votre C’Thun <i>(où qu’il soit)</i>.', 3, 6, 5, 'Gonzalo Ordonez', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_321.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_321_premium.gif'),
(473, 'Alchimiste de Sombre-Comté', '<b>Cri de guerre :</b> rend 5 PV.', 4, 5, 5, 'Chris Seaman', NULL, 5, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_234.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_234_premium.gif'),
(474, 'Apothicaire du culte', '<b>Cri de guerre :</b> rend 2 PV à votre héros pour chaque serviteur adverse.', 4, 4, 5, 'Paul Mafayon', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_295.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_295_premium.gif'),
(475, 'Auspice funeste confirmé', 'Au début de votre tour, porte l’Attaque de ce serviteur à 7.', 0, 7, 5, 'Dan Orizio', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_200.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_200_premium.gif'),
(476, 'Exhalombre', '<b>Cri de guerre_:</b> choisit un serviteur allié et en place une copie_1/1 coûtant (1)_|4(cristal,cristaux) de mana dans votre main.', 4, 4, 5, 'J. Meyers & A. Bozonnet', NULL, 4, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_291.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_291_premium.gif'),
(477, 'Grimoire de cabaliste', 'Place 3 sorts de mage aléatoires dans votre main.', NULL, NULL, 5, 'Milivoj Ceran', NULL, 1, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_090.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_090_premium.gif'),
(478, 'Hallazèle l’Élevé', 'Chaque fois que vos sorts infligent des dégâts, rend l’équivalent sous forme de PV à votre héros.', 4, 6, 5, 'Wayne Reynolds', NULL, 8, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_209.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_209_premium.gif'),
(479, 'Marteau du crépuscule', '<b>Râle d’agonie :</b> invoque un élémentaire 4/2.', 4, NULL, 5, 'James Ryman', 2, 8, 3, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_031_premium.gif'),
(480, 'Mot de pouvoir : Tentacules', 'Donne +2/+6 à un serviteur.', NULL, NULL, 5, 'Jesper Ejsing', NULL, 5, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_094.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_094_premium.gif'),
(481, 'Passeuse d’âmes', 'Chaque fois qu’un serviteur allié meurt, donne +1/+1 à votre C’Thun <i>(où qu’il soit)</i>.', 5, 6, 5, 'Dave Allsop', NULL, 3, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_302.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_302_premium.gif'),
(482, 'Princesse Huhuran', '<b>Cri de guerre :</b> déclenche le <b>Râle d’agonie</b> d’un serviteur allié.', 6, 5, 5, 'Jaemin Kim', NULL, 7, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_309.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_309_premium.gif'),
(483, 'Psych-o-tron', '<b>Provocation</b>\\n<b>Bouclier divin</b>', 3, 4, 5, 'Matt Dixon', NULL, 10, 3, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_145.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_145_premium.gif'),
(484, 'Résister aux ténèbres', 'Invoque cinq recrues de la Main\\nd’argent 1/1.', NULL, NULL, 5, 'Ralph Horsley', NULL, 2, 3, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_273.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_273_premium.gif'),
(485, 'Robot de soins corrompu', '<b>Râle d’agonie :</b> rend 8 PV au héros adverse.', 6, 6, 5, 'Jesper Esjing', NULL, 10, 3, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_147.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_147_premium.gif'),
(486, 'Serviteur de Yogg-Saron', '<b>Cri de guerre :</b> lance un sort aléatoire coûtant au maximum\\n(5) cristaux de mana <i>(cibles choisies au hasard).</i>', 5, 4, 5, 'Slawomir Maniak', NULL, 1, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_087.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_087_premium.gif'),
(487, 'Soigneuse du Crépuscule', '<b>Cri de guerre :</b> rend 10 PV\\nà votre héros si votre\\nC’Thun a au moins\\n10 Attaque.', 6, 5, 5, 'Alex Garner', NULL, 5, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_096.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_096_premium.gif'),
(488, 'Sombre orateur', '<b>Cri de guerre_:</b> échange ses caractéristiques avec celles d’un serviteur allié.', 3, 6, 5, 'Phroi Gardner', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_102.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_102_premium.gif'),
(489, 'Tentacules brachiaux', '<b>Râle d’agonie :</b> replace cette carte dans votre main.', 2, NULL, 5, 'Alex Konstad', 2, 9, 3, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_033_premium.gif'),
(490, 'Ancien héraut', 'Au début de votre tour, place un serviteur coûtant 10 cristaux de mana de votre deck dans votre main.', 4, 6, 6, 'Zoltan Boros', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_290.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_290_premium.gif'),
(491, 'Cauchemar écailleux', 'Au début de votre tour, double l’Attaque de ce serviteur.', 2, 8, 6, 'Luke Mancini', NULL, 10, 3, 1, 2, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_271.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_271_premium.gif'),
(492, 'Chose venue d’en bas', '<b>Provocation</b>\\nCoûte (1) |4(cristal,cristaux) de moins pour chaque totem invoqué par vous dans cette partie.', 5, 5, 6, 'Slawomir Maniak', NULL, 8, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_028_premium.gif');
INSERT INTO `CARD` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(493, 'Héraut Volazj', '<b>Cri de guerre :</b> invoque une copie 1/1 de chacun de vos autres serviteurs.', 5, 5, 6, 'Luke Mancini', NULL, 5, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_316.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_316_premium.gif'),
(494, 'Invocateur sans-visage', '<b>Cri de guerre :</b> invoque un serviteur aléatoire coûtant 3 cristaux.', 5, 5, 6, 'Mark Abadier', NULL, 1, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_207.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_207_premium.gif'),
(495, 'Mukla, tyran du val', '<b>Cri de guerre :</b> place\\n2 bananes dans votre main.', 5, 5, 6, 'Sam Nielson', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_122.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_122_premium.gif'),
(496, 'Prophète nérubien', 'Au début de votre tour, réduit le coût en mana de cette carte de\\n(1) |4(cristal,cristaux).', 4, 4, 6, 'Lars Grant-West', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_138.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_138_premium.gif'),
(497, 'Sectateur Skeram', '<b>Cri de guerre :</b> donne +2/+2 à votre C’Thun <i>(où qu’il soit)</i>.', 7, 6, 6, 'Jaemin Kim', NULL, 10, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_339.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_339_premium.gif'),
(498, 'Sombre arakkoa', '<b>Provocation</b>\\n<b>Cri de guerre_:</b> donne_+3/+3 à votre C’Thun <i>(où qu’il soit)</i>.', 5, 7, 6, 'Nutchapol Thitinunthakorn', NULL, 6, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_293.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_293_premium.gif'),
(499, 'Thé de chardon', 'Vous piochez une carte. En place 2 copies supplémentaires dans votre main.', NULL, NULL, 6, 'Matthew O\'Connor', NULL, 4, 3, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_073.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_073_premium.gif'),
(500, 'Voyant corrompu', '<b>Cri de guerre :</b> inflige\\n2 points de dégâts à tous les serviteurs non murlocs.', 2, 3, 6, 'Ryan Metcalf', NULL, 10, 3, 1, 7, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_161.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_161_premium.gif'),
(501, 'Ancienne porte-bouclier', '<b>Cri de guerre :</b> gagne\\n10 points d’armure si votre C’Thun a au moins 10 Attaque.', 6, 6, 7, 'Alex Konstad', NULL, 9, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_301.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_301_premium.gif'),
(502, 'Cho’gall', '<b>Cri de guerre :</b> le prochain sort que vous lancez ce tour coûte des points de vie plutôt que des cristaux de mana.', 7, 7, 7, 'James Ryman', NULL, 3, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_121.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_121_premium.gif'),
(503, 'Empereur jumeau Vek’lor', '<b>Provocation</b>. <b>Cri de guerre :</b> invoque un autre empereur si votre C’Thun a au moins 10 Attaque.', 4, 6, 7, 'Mike Sass', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_131.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_131_premium.gif'),
(504, 'Faucon-dragon difforme', '<b>Furie des vents</b>', 5, 5, 7, 'Jim Nelson', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_152.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_152_premium.gif'),
(505, 'Feux follets funestes', '<b>Choix des armes :</b> invoque sept feux follets 1/1 ou donne +2/+2 à vos serviteurs.', NULL, NULL, 7, 'Skan Srisuwan', NULL, 6, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_195.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_195_premium.gif'),
(506, 'Lardeur, Perte d’Elwynn', 'Chaque fois que ce serviteur subit des dégâts, invoque un gnoll 2/2 avec <b>Provocation</b>.', 6, 6, 7, 'Matt Dixon', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_318.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_318_premium.gif'),
(507, 'Malkorok', '<b>Cri de guerre :</b> vous équipe d’une arme aléatoire.', 6, 5, 7, 'E. Guiton & Nutchapol ', NULL, 9, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_220.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_220_premium.gif'),
(508, 'Rampant des marais', '<b>Provocation</b>', 6, 8, 7, 'Matt Dixon', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_153.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_153_premium.gif'),
(509, 'Anomalus', '<b>Râle d’agonie :</b> inflige\\n8 points de dégâts à tous les serviteurs.', 8, 6, 8, 'Kan Liu', NULL, 1, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_120.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_120_premium.gif'),
(510, 'Horreur indicible', NULL, 6, 10, 8, 'Mike Sass', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_142.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_142_premium.gif'),
(511, 'Implorateur funeste', '<b>Cri de guerre :</b> donne +2/+2 à votre C’Thun <i>(où qu’il soit)</i>. S’il est mort, le place dans votre deck.', 7, 9, 8, 'Benjamin Zhang', NULL, 10, 3, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_255.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_255_premium.gif'),
(512, 'L’Épouvantueur', 'Quand il attaque un serviteur et le tue,\\ngagne +2/+2.', 6, 7, 8, 'Alex Horley Orlandelli', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_300.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_300_premium.gif'),
(513, 'Ragnaros, porteur de Lumière', 'À la fin de votre tour, rend 8 PV à un personnage allié blessé.', 8, 8, 8, 'James Ryman', NULL, 2, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_229.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_229_premium.gif'),
(514, 'Ver des sables géant', 'Quand ce serviteur en tue un autre, il peut attaquer de nouveau.', 8, 8, 8, 'Slawomir Maniak', NULL, 7, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_308.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_308_premium.gif'),
(515, 'Appel de la nature', 'Invoque les trois compagnons animaux.', NULL, NULL, 9, 'Peter Stapleton', NULL, 7, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_211.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_211_premium.gif'),
(516, 'Lame de C’Thun', '<b>Cri de guerre_:</b> détruit un serviteur. Ajoute son Attaque et sa Vie à celles de votre C’Thun <i>(où qu’il soit)</i>.', 4, 4, 9, 'Steve Prescott', NULL, 4, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_282.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_282_premium.gif'),
(517, 'Sang de l’Ancien', 'Si vous contrôlez deux de ces serviteurs à la fin de votre tour, les fusionne en « l’Ancien ».', 9, 9, 9, 'A. J. Nazzaro', NULL, 10, 3, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_173.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_173_premium.gif'),
(518, 'Soggoth le Rampant', '<b>Provocation</b>\\nNe peut pas être la cible de sorts ou de pouvoirs héroïques.', 5, 9, 9, 'James Ryman', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_340.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_340_premium.gif'),
(519, 'Béhémoth sans-visage', NULL, 10, 10, 10, 'Zoltan Boros', NULL, 10, 3, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_141.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_141_premium.gif'),
(520, 'C’Thun', '<b>Cri de guerre :</b> inflige des dégâts égaux à l’Attaque de ce serviteur répartis aléatoirement entre tous les adversaires.', 6, 6, 10, 'James Ryman', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_280.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_280_premium.gif'),
(521, 'MALÉDICTION !', 'Détruit tous les serviteurs. Pioche une carte pour chaque serviteur détruit.', NULL, NULL, 10, 'Raymond Swanland', NULL, 3, 3, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_239.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_239_premium.gif'),
(522, 'N’Zoth le corrupteur', '<b>Cri de guerre :</b> invoque vos serviteurs avec <b>Râle d’agonie</b> morts pendant cette partie.', 5, 7, 10, 'Tyson Murphy', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_133.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_133_premium.gif'),
(523, 'Seigneur Aile de mort', '<b>Râle d’agonie :</b> place tous les dragons de votre main sur le champ de bataille.', 12, 12, 10, 'Alex Horley Orlandelli', NULL, 10, 3, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_317.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_317_premium.gif'),
(524, 'Y’Shaarj, la rage déchaînée', 'À la fin de votre tour, place un serviteur de votre deck sur le champ de bataille.', 10, 10, 10, 'Samwise', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_042.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_042_premium.gif'),
(525, 'Yogg-Saron, la fin de l’espoir', '<b>Cri de guerre :</b> lance un sort aléatoire pour chaque sort que vous avez lancé pendant cette partie <i>(cibles choisies au hasard)</i>.', 7, 5, 10, 'Tooth', NULL, 10, 3, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/OG_134.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/OG_134_premium.gif'),
(526, 'Anomalie arcanique', 'Chaque fois que vous lancez un sort, donne +1_PV à ce serviteur.', 2, 1, 1, 'Alex Aleksandrov', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_036.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_036_premium.gif'),
(527, 'Corbeau enchanté', NULL, 2, 2, 1, 'Daria Tuzova', NULL, 6, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_300.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_300_premium.gif'),
(528, 'Diablotin de Malchezaar', 'Chaque fois que vous vous défaussez d’une carte, vous en piochez une.', 1, 3, 1, 'Peter Stapleton', NULL, 3, 4, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_089.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_089_premium.gif'),
(529, 'Fieffé forban', '<b>Cri de guerre_:</b> ajoute une carte de classe aléatoire dans votre main <i>(de la classe de votre adversaire).</i>', 1, 1, 1, 'Zoltan Boros', NULL, 4, 4, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_069.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_069_premium.gif'),
(530, 'Grimoire bavard', '<b>Cri de guerre_:</b> ajoute un sort de mage aléatoire dans votre main.', 1, 1, 1, 'A.J. Nazzaro', NULL, 1, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_009_premium.gif'),
(531, 'Œuf runique', '<b>Râle d’agonie :</b> vous piochez une carte.', 0, 2, 1, 'A.J. Nazzaro', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_029_premium.gif'),
(532, 'Biographe de Dédain-du-Néant', '<b>Cri de guerre_:</b> <b>découvre</b> un Dragon si vous en avez déjà un en main.', 1, 3, 2, 'Ralph Horsley', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_062.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_062_premium.gif'),
(533, 'Comédien pompeux', '<b>Provocation</b>', 3, 2, 2, 'Matt Dixon', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_011_premium.gif'),
(534, 'Gentille grand-mère', '<b>Râle d’agonie_:</b> invoque un\\nGrand Méchant Loup_3/2.', 1, 1, 2, 'Matt Dixon', NULL, 7, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_005_premium.gif'),
(535, 'Griffes spectrales', 'A +2 ATQ tant que vous avez <b>Dégâts des sorts</b>.', 1, NULL, 2, 'Ralph Horsley', 3, 8, 4, 2, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_063.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_063_premium.gif'),
(536, 'Portail du Maelström', 'Inflige $1 |4(point,points) de dégâts à tous les serviteurs adverses. Invoque un serviteur aléatoire coûtant 1_cristal.', NULL, NULL, 2, 'Daria Tuzova', NULL, 8, 4, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_073.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_073_premium.gif'),
(537, 'Purification', 'Réduit au <b>Silence</b> un serviteur allié. Vous piochez une carte.', NULL, NULL, 2, 'Rafael Zanchetin', NULL, 5, 4, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_013.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_013_premium.gif'),
(538, 'Surprise du chef', '<b>Secret_:</b> après que votre adversaire a lancé un sort, invoque une panthère 4/2_avec <b>Camouflage</b>.', NULL, NULL, 2, 'Mike Sass', NULL, 7, 4, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_004_premium.gif'),
(539, 'Valet de Medivh', '<b>Cri de guerre_:</b> si vous contrôlez un <b>Secret</b>, inflige 3_points de dégâts.', 2, 3, 2, 'Sean McNally', NULL, 1, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_092.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_092_premium.gif'),
(540, 'Araignée du garde-manger', '<b>Cri de guerre_:</b> invoque une araignée 1/3.', 1, 3, 3, 'Dave Allsop', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_030a.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_030a_premium.gif'),
(541, 'Chasseresse capuchonnée', 'Vos <b>Secrets</b> coûtent (0)_|4(cristal,cristaux).', 3, 4, 3, 'Arthur Bozonnet', NULL, 7, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_006_premium.gif'),
(542, 'Fourchette mortelle', '<b>Râle d’agonie_:</b> ajoute une arme 3/2 dans votre main.', 3, 2, 3, 'Konstantin Turovec', NULL, 4, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_094.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_094_premium.gif'),
(543, 'Golem d’argenterie', 'Si vous vous défaussez de ce serviteur, l’invoque.', 3, 3, 3, 'Daren Bader', NULL, 3, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_205.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_205_premium.gif'),
(544, 'Illusionniste pourpre', 'Pendant votre tour, votre héros est <b>Insensible</b>.', 4, 3, 3, 'Eric Braddock', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_712.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_712_premium.gif'),
(545, 'Moroes', '<b>Camouflage</b>\\nÀ la fin de votre tour, invoque un serveur_1/1.', 1, 1, 3, 'Sean McNally', NULL, 10, 4, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_044.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_044_premium.gif'),
(546, 'Protégez le roi !', 'Invoque un pion_1/1 avec <b>Provocation</b> pour chaque serviteur adverse.', NULL, NULL, 3, 'Jim Nelson', NULL, 9, 4, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_026_premium.gif'),
(547, 'Templier Plaie-de-nuit', '<b>Cri de guerre_:</b> si vous avez un Dragon en main,\\ninvoque deux dragonnets 1/1.', 2, 3, 3, 'Luke Mancini', NULL, 2, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_010_premium.gif'),
(548, 'Zoobot', '<b>Cri de guerre_:</b> donne +1/+1 à une Bête, un Dragon et un Murloc alliés aléatoires.', 3, 3, 3, 'Matt Dixon', NULL, 10, 4, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_095.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_095_premium.gif'),
(549, 'Barnes', '<b>Cri de guerre_:</b> invoque une copie 1/1 d’un serviteur aléatoire dans votre deck.', 3, 4, 4, 'Garrett Hanna', NULL, 10, 4, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_114.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_114_premium.gif'),
(550, 'Forge-Arcanes', '<b>Cri de guerre_:</b> invoque un serviteur 0/5 avec <b>Provocation</b>.', 3, 2, 4, 'Anton Zemskov', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_710.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_710_premium.gif'),
(551, 'Méchante sorcière', 'Chaque fois que vous lancez un sort, invoque un totem basique aléatoire.', 3, 4, 4, 'Rafael Zanchetin', NULL, 8, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_021_premium.gif'),
(552, 'Portail de Lune-d’Argent', 'Donne +2/+2 à un serviteur. Invoque un serviteur aléatoire coûtant 2_cristaux.', NULL, NULL, 4, 'Jimmy Lo', NULL, 2, 4, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_077.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_077_premium.gif'),
(553, 'Prêtre du festin', 'Chaque fois que vous lancez un sort, rend 3_PV à votre héros.', 3, 6, 4, 'Paul Mafayon', NULL, 5, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_035.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_035_premium.gif'),
(554, 'Colporteur éthérien', '<b>Cri de guerre_:</b> réduit de (2)_cristaux le coût des cartes de classe dans votre main qui ne sont pas de la classe voleur.', 5, 6, 5, 'Alex Horley Orlandelli', NULL, 4, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_070.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_070_premium.gif'),
(555, 'Écrase-patate', 'Pas de limite d’attaques par tour. Ne peut pas attaquer les héros.', 3, NULL, 5, 'Anton Zemskov', 4, 9, 4, 2, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_028_premium.gif'),
(556, 'Fou en onyx', '<b>Cri de guerre_:</b> invoque un serviteur allié mort pendant cette partie.', 3, 4, 5, 'Arthur Gimaldinov', NULL, 5, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_204.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_204_premium.gif'),
(557, 'Gardien aviaire', '<b>Cri de guerre_:</b> si vous contrôlez un <b>Secret</b>, gagne_+1/+1 et <b>Provocation</b>.', 3, 6, 5, 'Jim Nelson', NULL, 10, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_037.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_037_premium.gif'),
(558, 'Kara Kazham !', 'Invoque une bougie_1/1, un balai_2/2 et une théière_3/3.', NULL, NULL, 5, 'Jakub Kasper', NULL, 3, 4, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_025_premium.gif'),
(559, 'Magicien de la Ménagerie', '<b>Cri de guerre_:</b> donne +2/+2 à une Bête, un Dragon et un Murloc alliés aléatoires.', 4, 4, 5, 'Garrett Hanna', NULL, 10, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_702.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_702_premium.gif'),
(560, 'Portail de Forgefer', 'Gagne 4 points d’Armure. Invoque un serviteur aléatoire coûtant 4_cristaux de mana.', NULL, NULL, 5, 'Nate Bowden', NULL, 9, 4, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_091.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_091_premium.gif'),
(561, 'Prince Malchezaar', 'Quand la partie commence, ajoute 5 serviteurs <b>légendaires</b> dans votre deck.', 5, 6, 5, 'Joe Madureira & Grace Liu', NULL, 10, 4, 1, 4, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_096.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_096_premium.gif'),
(562, 'Cavalier en ivoire', '<b>Cri de guerre_:</b> <b>découvre</b> un sort. Rend un montant de PV équivalent à son coût à votre héros.', 4, 4, 6, 'Zoltan Boros', NULL, 2, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_057.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_057_premium.gif'),
(563, 'Gardienne de la Ménagerie', '<b>Cri de guerre_:</b> choisit une Bête alliée et en invoque une copie.', 5, 5, 6, 'Alex Horley Orlandelli', NULL, 6, 4, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_065.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_065_premium.gif'),
(564, 'Portail de Reflet-de-Lune', 'Rend #6 PV. Invoque un serviteur aléatoire coûtant 6_cristaux.', NULL, NULL, 6, 'Evgeniy Zaqumyenny', NULL, 6, 4, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_075.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_075_premium.gif'),
(565, 'Rôdeur des douves', '<b>Cri de guerre_:</b> détruit un serviteur. <b>Râle d’agonie_:</b> réinvoque ce serviteur.', 3, 3, 6, 'Jerry Mascho', NULL, 10, 4, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_041.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_041_premium.gif'),
(566, 'Wyrm de bibliothèque', '<b>Cri de guerre_:</b> détruit un serviteur adverse avec 3_ATQ ou moins si vous avez un Dragon en main.', 3, 6, 6, 'Dave Allsop', NULL, 10, 4, 1, 2, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_033_premium.gif'),
(567, 'Le conservateur', '<b>Provocation</b>. <b>Cri de guerre_:</b> vous piochez une Bête, un Dragon et un Murloc dans votre deck.', 4, 6, 7, 'Wei Wang', NULL, 10, 4, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_061.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_061_premium.gif'),
(568, 'Portail des terres de Feu', 'Inflige $5 |4(point,points) de dégâts. Invoque un serviteur aléatoire coûtant 5_cristaux.', NULL, NULL, 7, 'Gustav Schmidt', NULL, 1, 4, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_076.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_076_premium.gif'),
(569, 'Medivh, le Gardien', '<b>Cri de guerre_:</b> vous équipe d’Atiesh, grand bâton du Gardien.', 7, 7, 8, 'James Ryman', NULL, 10, 4, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_097.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_097_premium.gif'),
(570, 'Géant arcanique', 'Coûte (1) |4(cristal,cristaux) de moins pour chaque sort que vous lancez pendant cette partie.', 8, 8, 12, 'Dan Scott', NULL, 10, 4, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/KAR_711.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/KAR_711_premium.gif'),
(571, 'Cible leurre', '<b>Provocation</b>', 0, 2, 0, 'Matt Dixon', NULL, 10, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_093.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_093_premium.gif'),
(572, 'Bombardière d’ombre', '<b>Cri de guerre :</b> inflige 3 points de dégâts aux héros.', 2, 1, 1, 'Matt Dixon', NULL, 5, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_009_premium.gif'),
(573, 'Gnome mécanique', '<b>Râle d’agonie :</b> ajoute une carte <b>Pièce détachée</b> dans votre main.', 2, 1, 1, 'Matt Dixon', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_082.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_082_premium.gif'),
(574, 'Lumière des naaru', 'Rend #3 |4(point,points) de vie. Si la cible est toujours blessée, invoque un Gardelumière.', NULL, NULL, 1, 'Jesper Ejsing', NULL, 5, 9, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_012_premium.gif'),
(575, 'Maître des rouages', 'A +2 ATQ tant que vous avez un Méca.', 1, 2, 1, 'Trent Kaniuga', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_013.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_013_premium.gif'),
(576, 'Robo-baston', '<b>Accès de rage :</b> +1 ATQ.', 1, 3, 1, 'Tyler Walpole', NULL, 9, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_051.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_051_premium.gif'),
(577, 'Appel du familier', 'Vous piochez une carte. Si c’est une Bête, elle coûte (4) cristaux de moins.', NULL, NULL, 2, 'E.M. Gist', NULL, 7, 9, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_017_premium.gif'),
(578, 'Bombe de matière noire', 'Inflige $3 |4(point,points) de dégâts.', NULL, NULL, 2, 'Jeff Haynie', NULL, 3, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_015.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_015_premium.gif'),
(579, 'Boxeur de l’ombre', 'Chaque fois qu’un personnage est soigné, inflige 1 point de dégâts à un adversaire aléatoire.', 2, 3, 2, 'Dan Scott', NULL, 5, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_072.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_072_premium.gif'),
(580, 'Canon du navire', 'Après avoir invoqué un pirate, inflige 2 points de dégâts à un adversaire aléatoire.', 2, 3, 2, 'Warren Mahy', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_075.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_075_premium.gif'),
(581, 'Canon lance-flammes', 'Inflige $4 |4(point,points) de dégâts à un serviteur adverse aléatoire.', NULL, NULL, 2, 'Mauricio Herrera', NULL, 1, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_001_premium.gif'),
(582, 'Crépitement', 'Inflige $3 à $6 points de dégâts. <b>Surcharge :</b> (1)', NULL, NULL, 2, 'Warren Mahy', NULL, 8, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_038.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_038_premium.gif'),
(583, 'Ennuy-o-tron', '<b>Provocation</b>\\n<b>Bouclier divin</b>', 1, 2, 2, 'Matt Dixon', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_085.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_085_premium.gif'),
(584, 'Feindre la mort', 'Déclenche tous les <b>Râles d’agonie</b> de vos serviteurs.', NULL, NULL, 2, 'Luca Zontini', NULL, 7, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_026_premium.gif'),
(585, 'Glaivezooka', '<b>Cri de guerre :</b> donne +1 ATQ à un serviteur allié aléatoire.', 2, NULL, 2, 'Gino Whitehall', 2, 7, 9, 2, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_043.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_043_premium.gif'),
(586, 'Maîtresse de Douleur', 'Les dégâts infligés par ce serviteur soignent aussi votre héros.', 1, 4, 2, 'Carl Critchlow', NULL, 3, 9, 1, 4, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_018.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_018_premium.gif'),
(587, 'Méca-téléporteur', 'Vos Méca coûtent (1) |4(cristal,cristaux) de moins.', 2, 3, 2, 'Phil Saunders', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_006_premium.gif'),
(588, 'Micro-machine', 'Gagne +1 ATQ au début de chaque tour.', 1, 2, 2, 'Skan Srisuwan', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_103.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_103_premium.gif'),
(589, 'Mini-robot blindé', '<b>Bouclier divin</b>', 2, 2, 2, 'Raymond Swanland', NULL, 2, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_058.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_058_premium.gif'),
(590, 'Mouton explosif', '<b>Râle d’agonie :</b> inflige 2 points de dégâts à tous les serviteurs.', 1, 1, 2, 'Ralph Horsley', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_076.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_076_premium.gif'),
(591, 'Ourson robot anodisé', '<b>Provocation</b>.\\n<b>Choix des armes :</b>\\n+1 ATQ ou +1 PV.', 2, 2, 2, 'Eva Widermann', NULL, 6, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_030.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_030_premium.gif'),
(592, 'Portail instable', 'Place un serviteur aléatoire dans votre main. Il coûte (3) cristaux de moins.', NULL, NULL, 2, 'Sean O\'Daniels', NULL, 1, 9, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_003_premium.gif'),
(593, 'Recombobulateur', '<b>Cri de guerre :</b> transforme un serviteur allié en un serviteur aléatoire de même coût.', 3, 2, 2, 'Ben Olson', NULL, 10, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_108.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_108_premium.gif'),
(594, 'Réducteur fou', '<b>Cri de guerre_:</b> donne à un serviteur -2_ATQ pendant ce tour.', 3, 2, 2, 'Jim Nelson', NULL, 5, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_011_premium.gif'),
(595, 'Robot barbier gobelin', '<b>Cri de guerre_:</b> donne +1_ATQ à votre arme.', 3, 2, 2, 'Zolton Boros', NULL, 4, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_023_premium.gif'),
(596, 'Saute-flaque', NULL, 3, 2, 2, 'Jaemin Kim', NULL, 10, 9, 1, 7, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_064.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_064_premium.gif'),
(597, 'Sceau de Lumière', 'Rend #4_|4(point,points) de vie à votre héros et lui donne +2_ATQ pendant ce tour.', NULL, NULL, 2, 'Jason Chan', NULL, 2, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_057.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_057_premium.gif'),
(598, 'Sniper de Gentepression', 'Votre pouvoir héroïque peut viser les serviteurs.', 2, 3, 2, 'Jun Kang', NULL, 7, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_087.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_087_premium.gif'),
(599, 'Souffle-neige', '<b>Gèle</b> tout personnage blessé par ce serviteur.', 2, 3, 2, 'Gabor Szikszai', NULL, 1, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_002.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_002_premium.gif'),
(600, 'Totem de vitalité', 'À la fin de votre tour, rend 4 PV à votre héros.', 0, 3, 2, 'Guangjian Huang', NULL, 8, 9, 1, 1, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_039.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_039_premium.gif'),
(601, 'Traqueur gloubelin', '<b>Camouflage</b>', 2, 3, 2, 'Seamus Gallagher', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_081.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_081_premium.gif'),
(602, 'Tricheur borgne', 'Chaque fois que vous jouez un pirate, gagne <b>Camouflage</b>.', 4, 1, 2, 'Danny Beck', NULL, 4, 9, 1, 8, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_025_premium.gif'),
(603, 'Trogg brisepierre', 'Chaque fois que votre adversaire lance un sort, gagne +1 ATQ.', 2, 3, 2, 'Peet Cooper', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_067.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_067_premium.gif'),
(604, 'Zap-o-matic tournoyant', '<b>Furie des vents</b>', 3, 2, 2, 'Jim Nelson', NULL, 8, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_037.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_037_premium.gif'),
(605, 'Bondisseur dent-de-métal', '<b>Cri de guerre_:</b> donne +2_ATQ à vos autres Méca.', 3, 3, 3, 'Hideaki Takamura', NULL, 7, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_048.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_048_premium.gif'),
(606, 'Brute ogre', '50% de chance d’attaquer le mauvais adversaire.', 4, 4, 3, 'Vinod Rams', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_065.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_065_premium.gif'),
(607, 'Char araignée', NULL, 3, 4, 3, 'Dany Orizio', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_044.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_044_premium.gif'),
(608, 'Choix de Velen', 'Donne_+2/+4 et <b>+1_aux dégâts des sorts</b> à un serviteur.', NULL, NULL, 3, 'Alex Horley Orlandelli', NULL, 5, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_010_premium.gif'),
(609, 'Clé de maître des rouages', 'A +2 ATQ tant que vous avez un Méca.', 1, NULL, 3, 'Richard Wright', 3, 4, 9, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_024_premium.gif'),
(610, 'Cogneguerre ogre', '50% de chance d’attaquer le mauvais adversaire.', 4, NULL, 3, 'Richard Wright', 2, 9, 9, 2, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_054.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_054_premium.gif'),
(611, 'Cracheur de suie', '<b>Dégâts des sorts : +1</b>', 3, 3, 3, 'Phil Saunders', NULL, 1, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_123.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_123_premium.gif'),
(612, 'Expérimentateur gnome', '<b>Cri de guerre :</b> vous piochez une carte. Si c’est un serviteur, le transforme en poulet.', 3, 2, 3, 'Jesper Ejsing', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_092.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_092_premium.gif'),
(613, 'Hobgobelin', 'Chaque fois que vous jouez un serviteur avec 1 ATQ, lui donne +2/+2.', 2, 3, 3, 'Laurel D. Austin', NULL, 10, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_104.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_104_premium.gif'),
(614, 'Illuminatrice', 'Si vous contrôlez un <b>Secret</b> à la fin de votre tour, rend 4 PV à votre héros.', 2, 4, 3, 'Jim Nelson', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_089.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_089_premium.gif'),
(615, 'Infanterie de Gnomeregan', '<b>Charge</b>\\n<b>Provocation</b>', 1, 4, 3, 'Zoltan & Gabor', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_098.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_098_premium.gif'),
(616, 'Lame rebondissante', 'Inflige $1 |4(point,points) de dégâts à un serviteur aléatoire. Recommence jusqu’à ce qu’un serviteur meure.', NULL, NULL, 3, 'Andrew Hou', NULL, 9, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_050.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_050_premium.gif'),
(617, 'Machine volante', '<b>Furie des vents</b>', 1, 4, 3, 'Matt Dixon', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_084.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_084_premium.gif'),
(618, 'Masse de puissance', '<b>Râle d’agonie_:</b> donne à un Méca allié aléatoire_+2/+2.', 3, NULL, 3, 'Zoltan & Gabor', 2, 8, 9, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_036.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_036_premium.gif'),
(619, 'Mini exorciste', '<b>Provocation</b>. <b>Cri de guerre :</b> gagne +1/+1 pour chaque serviteur adverse avec <b>Râle d’agonie</b>.', 2, 3, 3, 'Jim Nelson', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_097.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_097_premium.gif'),
(620, 'Purificateur écarlate', '<b>Cri de guerre_:</b> inflige 2_points de dégâts à tous les serviteurs avec <b>Râle d’agonie</b>.', 4, 3, 3, 'Anton Zemskov', NULL, 2, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_101.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_101_premium.gif'),
(621, 'Régiment de bataille', 'Invoque trois recrues de la Main d’argent 1/1. Équipe une arme 1/4.', NULL, NULL, 3, 'Mike Hayes', NULL, 2, 9, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_061.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_061_premium.gif'),
(622, 'Rouage-marteau', '<b>Cri de guerre_:</b> confère <b>Bouclier divin</b> et <b>Provocation</b> à un serviteur allié aléatoire.', 2, NULL, 3, 'Dany Orizio', 3, 2, 9, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_059.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_059_premium.gif'),
(623, 'Sapeur gobelin', 'A +4 ATQ tant que votre adversaire a 6 cartes ou plus dans sa main.', 2, 4, 3, 'Jesper Ejsing', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_095.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_095_premium.gif'),
(624, 'Sensei de fer', 'À la fin de votre tour, donne +2/+2 à un autre Méca allié.', 2, 2, 3, 'Brian Despain', NULL, 4, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_027_premium.gif'),
(625, 'Sylvenier du Bosquet', '<b>Choix des armes :</b> donne à chaque joueur un cristal de mana ou chaque joueur pioche une carte.', 2, 4, 3, 'Chris Rahn', NULL, 6, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_032.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_032_premium.gif'),
(626, 'Technicien de Brikabrok', '<b>Cri de guerre :</b> si vous avez un Méca, gagne +1/+1 et ajoute une <b>Pièce détachée</b> dans votre main.', 3, 3, 3, 'Gabor Szikszai', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_102.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_102_premium.gif'),
(627, 'Annulateur d’Arcane X-21', '<b>Provocation</b>\\nNe peut pas être la cible de sorts ou de pouvoirs héroïques.', 2, 5, 4, 'Zero Yue', NULL, 10, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_091.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_091_premium.gif'),
(628, 'Appel des ancêtres', 'Prend un serviteur aléatoire dans la main de chaque joueur et les pose sur le champ de bataille.', NULL, NULL, 4, 'Dan Scott', NULL, 8, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_029_premium.gif'),
(629, 'Chaman cognedune', '<b>Furie des vents.</b>\\n50% de chance d’attaquer le mauvais adversaire. \\n<b>Surcharge :</b> (1)', 5, 4, 4, 'José Ladrönn', NULL, 8, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_066.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_066_premium.gif'),
(630, 'Cliquetteur perce-vrille', '<b>Cri de guerre_:</b> donne +2/+2 à un Méca allié.', 2, 5, 4, 'Jesper Ejsing', NULL, 9, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_055.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_055_premium.gif'),
(631, 'Déchiqueteur piloté', '<b>Râle d’agonie :</b> invoque un serviteur aléatoire coûtant 2 cristaux.', 4, 3, 4, 'Dan Scott', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_096.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_096_premium.gif'),
(632, 'Écho de Medivh', 'Place une copie de chaque serviteur allié dans votre main.', NULL, NULL, 4, 'Alex Garner', NULL, 1, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_005_premium.gif'),
(633, 'Éruption de diablotins', 'Inflige $2 à $4 points de dégâts à un serviteur. Invoque un diablotin 1/1 pour chaque point de dégâts infligé.', NULL, NULL, 4, 'Jaemin Kim', NULL, 3, 9, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_045.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_045_premium.gif'),
(634, 'Explomage gobelin', '<b>Cri de guerre :</b> si vous possédez un Méca, inflige 4 points de dégâts répartis de façon aléatoire entre tous les adversaires.', 5, 4, 4, 'Glenn Rane', NULL, 1, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_004_premium.gif'),
(635, 'Gangrecanon', 'À la fin de votre tour, inflige 2 points de dégâts à un serviteur non Méca.', 3, 5, 4, 'Matt Gaser', NULL, 3, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_020_premium.gif'),
(636, 'Haut-trotteur égaré', NULL, 5, 4, 4, 'Benjamin Zhang', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_071.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_071_premium.gif'),
(637, 'Huile d’affûtage de Bricoleur', 'Donne +3_ATQ à votre arme. <b>Combo_:</b> donne +3_ATQ à un serviteur allié aléatoire.', NULL, NULL, 4, 'Den', NULL, 4, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_022_premium.gif'),
(638, 'Jeeves', 'À la fin du tour d’un joueur, ce dernier pioche jusqu’à avoir 3 cartes.', 1, 4, 4, 'Matt Dixon', NULL, 10, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_094.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_094_premium.gif'),
(639, 'Marche-esprit aileron vaseux', 'Chaque fois qu’un autre murloc allié meurt, vous piochez une carte.\\n<b>Surcharge_:</b>_(1)', 2, 5, 4, 'Clint Langley', NULL, 8, 9, 1, 7, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_040.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_040_premium.gif'),
(640, 'Mécano-amplificateur', '<b>Cri de guerre_:</b> confère à vos autres serviteurs <b>Furie des vents</b>, <b>Provocation</b> ou <b>Bouclier divin</b> <i>(au hasard)</i>.', 3, 2, 4, 'Zoltan Boros', NULL, 10, 9, 1, 6, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_107.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_107_premium.gif'),
(641, 'Mini stoppe-sort', 'Les serviteurs adjacents ne peuvent pas être la cible de sorts ou de pouvoirs héroïques.', 2, 5, 4, 'Jonboy Meyers', NULL, 1, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_122.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_122_premium.gif'),
(642, 'Mini-mage', '<b>Camouflage</b>\\n<b>Dégâts des sorts : +1</b>', 4, 1, 4, 'Ben Olson', NULL, 10, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_109.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_109_premium.gif'),
(643, 'Mystique de Kezan', '<b>Cri de guerre :</b> prend le contrôle d’un <b>Secret</b> adverse aléatoire.', 4, 3, 4, 'Jakub Kasper', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_074.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_074_premium.gif'),
(644, 'Sabotage', 'Détruit un serviteur adverse aléatoire. <b>Combo_:</b> détruit aussi l’arme de votre adversaire.', NULL, NULL, 4, 'Dave Allsop', NULL, 4, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_047.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_047_premium.gif'),
(645, 'Trogg mâcheroc mastoc', 'Chaque fois que votre adversaire lance un sort, gagne +2 ATQ.', 3, 5, 4, 'Aleksi Briclot', NULL, 10, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_068.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_068_premium.gif'),
(646, 'Yéti mécanique', '<b>Râle d’agonie :</b> donne une <b>Pièce détachée</b> à chaque joueur.', 4, 5, 4, 'Chris Seaman', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_078.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_078_premium.gif'),
(647, 'Bling-o-tron 3000', '<b>Cri de guerre :</b> équipe chaque joueur d’une arme aléatoire.', 3, 4, 5, 'Jomaro Kindred', NULL, 10, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_119.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_119_premium.gif'),
(648, 'Bolvar Fordragon', 'Chaque fois qu’un serviteur allié meurt quand vous avez cette carte en main, elle gagne +1 ATQ.', 1, 7, 5, 'Tooth', NULL, 2, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_063.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_063_premium.gif'),
(649, 'Bombardier cinglé', '<b>Cri de guerre :</b> inflige 6 points de dégâts répartis de façon aléatoire entre tous les autres personnages.', 5, 4, 5, 'Alex Horley Orlandelli', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_090.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_090_premium.gif'),
(650, 'Brik-à-bot', 'Chaque fois qu’un Méca allié meurt, gagne +2/+2.', 1, 5, 5, 'Zoltan Boros', NULL, 10, 9, 1, 6, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_106.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_106_premium.gif'),
(651, 'Cœur de démon', 'Inflige $5 |4(point,points) de dégâts à un serviteur. Si c’est un démon allié, lui donne +5/+5 à la place.', NULL, NULL, 5, 'Kerem Beyit', NULL, 3, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_019_premium.gif'),
(652, 'Druide du Croc', '<b>Cri de guerre :</b> si vous avez une Bête, transforme ce serviteur en une carte 7/7.', 4, 4, 5, 'Brandon Kitkouski', NULL, 6, 9, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_080.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_080_premium.gif');
INSERT INTO `CARD` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(653, 'Engin de siège', 'Chaque fois que vous gagnez de l’Armure, donne +1 ATQ à ce serviteur.', 5, 5, 5, 'Zero Yue', NULL, 9, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_086.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_086_premium.gif'),
(654, 'Gardien de cobalt', 'Chaque fois que vous invoquez un Méca, gagne <b>Bouclier divin</b>.', 6, 3, 5, 'Jim Nelson', NULL, 2, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_062.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_062_premium.gif'),
(655, 'Guetteur flottant', 'Chaque fois que votre héros subit des dégâts pendant votre tour,\\ngagne +2/+2.', 4, 4, 5, 'Todd Lockwood', NULL, 3, 9, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_100.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_100_premium.gif'),
(656, 'Hemet Nesingwary', '<b>Cri de guerre :</b> détruit une Bête.', 6, 3, 5, 'Ralph Horsley', NULL, 10, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_120.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_120_premium.gif'),
(657, 'Intendant', '<b>Cri de guerre :</b> donne +2/+2 à vos recrues de la Main d’argent.', 2, 5, 5, 'Phroilan Gardner', NULL, 2, 9, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_060.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_060_premium.gif'),
(658, 'Lobe-Bombe', '<b>Cri de guerre :</b> inflige 4 points de dégâts à un serviteur adverse aléatoire.', 3, 3, 5, 'Luca Zontini', NULL, 10, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_099.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_099_premium.gif'),
(659, 'Mataf', NULL, 7, 4, 5, 'Alex Horley Orlandelli', NULL, 10, 9, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_070.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_070_premium.gif'),
(660, 'Ninja ogre', '<b>Camouflage</b>\\n50% de chance d’attaquer le mauvais adversaire.', 6, 6, 5, 'Samwise', NULL, 4, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_088.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_088_premium.gif'),
(661, 'Robot de soins antique', '<b>Cri de guerre :</b> rend 8 PV à votre héros.', 3, 3, 5, 'Jesper Ejsing', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_069.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_069_premium.gif'),
(662, 'Robot réparateur amélioré', '<b>Cri de guerre :</b> donne +4 PV à un Méca allié.', 5, 5, 5, 'Nutchapol Thitinunthakorn', NULL, 5, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_083.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_083_premium.gif'),
(663, 'Roi des bêtes', '<b>Provocation</b>. <b>Cri de guerre :</b> gagne +1 ATQ pour chacune de vos autres Bêtes.', 2, 6, 5, 'Seamus Gallagher', NULL, 7, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_046.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_046_premium.gif'),
(664, 'Saccageur gangrené', 'Chaque fois que votre adversaire joue une carte, retire les 3 cartes du dessus de votre deck.', 8, 8, 5, 'Zoltan & Gabor', NULL, 10, 9, 1, 6, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_016_premium.gif'),
(665, 'Tête de Mimiron', 'Au début de votre tour, si vous avez au moins 3 Méca, les détruit tous pour former V-07-TR-0N.', 4, 5, 5, 'Trent Kaniuga', NULL, 10, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_111.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_111_premium.gif'),
(666, 'Tir du cobra', 'Inflige $3 |4(point,points) de dégâts à un serviteur et au héros adverse.', NULL, NULL, 5, 'Howard Lyon', NULL, 7, 9, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_073.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_073_premium.gif'),
(667, 'Vol’jin', '<b>Cri de guerre :</b> échange sa Vie avec un autre serviteur.', 6, 2, 5, 'Raymond Swanland', NULL, 5, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_014.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_014_premium.gif'),
(668, 'Bombe de lumière', 'Inflige à chaque serviteur des dégâts équivalents à leur ATQ.', NULL, NULL, 6, 'Luca Zontini', NULL, 5, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_008_premium.gif'),
(669, 'Gazleu', 'Chaque fois que vous lancez un sort à 1 cristal, ajoute un Méca aléatoire dans votre main.', 3, 6, 6, 'Luke Mancini', NULL, 10, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_117.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_117_premium.gif'),
(670, 'Golem céleste piloté', '<b>Râle d’agonie :</b> invoque un serviteur aléatoire coûtant 4 cristaux.', 6, 4, 6, 'Michael Phillippi', NULL, 10, 9, 1, 6, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_105.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_105_premium.gif'),
(671, 'Golem d’anima', 'À la fin de chaque tour, détruit ce serviteur si c’est le seul que vous avez.', 9, 9, 6, 'Josh Harris', NULL, 3, 9, 1, 6, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_077.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_077_premium.gif'),
(672, 'Mastodonte de fer', '<b>Cri de guerre :</b> place une mine dans le deck de votre adversaire. Quand elle est piochée, elle explose et inflige 10 points de dégâts.', 6, 5, 6, 'Raymond Swanland', NULL, 9, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_056.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_056_premium.gif'),
(673, 'Méca chat-ours', 'Chaque fois que ce serviteur subit des dégâts, place une carte <b>Pièce détachée</b> dans votre main.', 7, 6, 6, 'Trent Kaniuga', NULL, 6, 9, 1, 6, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_034.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_034_premium.gif'),
(674, 'Mogor l’ogre', 'Tous les serviteurs ont 50% de chance d’attaquer le mauvais adversaire.', 7, 6, 6, 'Michal Ivan', NULL, 10, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_112.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_112_premium.gif'),
(675, 'Prince marchand Gallywix', 'Chaque fois que votre adversaire lance un sort, il obtient une Pièce et vous gagnez une copie du sort.', 5, 8, 6, 'Wei Wang', NULL, 4, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_028_premium.gif'),
(676, 'Recyclage', 'Place un serviteur adverse dans le deck de votre adversaire.', NULL, NULL, 6, 'Efrem Palacios', NULL, 6, 9, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_031_premium.gif'),
(677, 'Sombres feux follets', '<b>Choix des armes :</b> invoque 5_feux follets ou donne_+5/+5 et <b>Provocation</b> à un serviteur.', NULL, NULL, 6, 'Trent Kaniuga', NULL, 6, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_041.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_041_premium.gif'),
(678, 'Toshley', '<b>Cri de guerre et Râle d’agonie :</b> ajoute une carte <b>Pièce détachée</b> dans votre main.', 5, 7, 6, 'Zoltan & Gabor', NULL, 10, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_115.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_115_premium.gif'),
(679, 'Vierge guerrière', '<b>Cri de guerre :</b> gagne 5 points d’armure.', 5, 5, 6, 'Alex Horley Orlandelli', NULL, 9, 9, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_053.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_053_premium.gif'),
(680, 'Dr Boum', '<b>Cri de guerre_:</b> invoque deux Ro’Boum_1/1. <i>ATTENTION_: les Ro’Boum peuvent exploser.</i>', 7, 7, 7, 'Alex Garner', NULL, 10, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_110.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_110_premium.gif'),
(681, 'Écraser', 'Détruit un serviteur. Si vous avez un serviteur blessé, cette carte coûte (4) cristaux de moins.', NULL, NULL, 7, 'Michael Sutfin', NULL, 9, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_052.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_052_premium.gif'),
(682, 'Gahz’rilla', 'Chaque fois que ce serviteur subit des dégâts, double son Attaque.', 6, 9, 7, 'Raymond Swanland', NULL, 7, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_049.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_049_premium.gif'),
(683, 'Léviathan des flammes', 'Quand vous piochez cette carte, inflige 2 points de dégâts à tous les personnages.', 7, 7, 7, 'Aleksi Briclot', NULL, 1, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_007_premium.gif'),
(684, 'Malorne', '<b>Râle d’agonie :</b> place ce serviteur dans votre deck.', 9, 7, 7, 'Oliver Chipping', NULL, 6, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_035.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_035_premium.gif'),
(685, 'Neptulon', '<b>Cri de guerre :</b> ajoute 4 murlocs aléatoires dans votre main.\\n<b>Surcharge :</b> (3)', 7, 7, 7, 'Ruan Jia', NULL, 8, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_042.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_042_premium.gif'),
(686, 'Troggzor le Terreminator', 'Chaque fois que votre adversaire lance un sort, invoque un trogg mâcheroc mastoc.', 6, 6, 7, 'Mike Sass', NULL, 10, 9, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_118.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_118_premium.gif'),
(687, 'Char de force MAX', '<b>Bouclier divin</b>', 7, 7, 8, 'Nutchapol Thitinunthakorn', NULL, 10, 9, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_079.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_079_premium.gif'),
(688, 'Faucheur 4000', 'Inflige également des dégâts aux serviteurs à côté de celui qu’il attaque.', 6, 9, 8, 'James Ryman', NULL, 10, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_113.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_113_premium.gif'),
(689, 'Vieux déchiqueteur de Sneed', '<b>Râle d’agonie :</b> invoque un serviteur <b>Légendaire</b> aléatoire.', 5, 7, 8, 'Christopher Moeller', NULL, 10, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_114.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_114_premium.gif'),
(690, 'Arbre de vie', 'Rend à tous les personnages tous leurs points de vie.', NULL, NULL, 9, 'Steve Prescott', NULL, 6, 9, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_033_premium.gif'),
(691, 'Mal’Ganis', 'Vos autres démons ont +2/+2. Votre héros est <b>Insensible</b>.', 9, 7, 9, 'Wayne Reynolds', NULL, 3, 9, 1, 4, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_021_premium.gif'),
(692, 'Mekgénieur Thermojoncteur', 'Chaque fois qu’un serviteur adverse meurt, invoque un gnome lépreux.', 9, 7, 9, 'Trent Kaniuga', NULL, 10, 9, 1, 6, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_116.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_116_premium.gif'),
(693, 'Géant mécanique', 'Coûte (1) |4(cristal,cristaux) de moins pour chaque carte dans la main de votre adversaire.', 8, 8, 12, 'Dan Scott', NULL, 10, 9, 1, 6, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/GVG_121.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/GVG_121_premium.gif'),
(694, 'Dragonnet du Crépuscule', '<b>Cri de guerre_:</b> gagne +2_PV si vous avez un Dragon en main.', 2, 1, 1, 'Sam Nielson', NULL, 5, 10, 1, 2, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_004_premium.gif'),
(695, 'Œuf de dragon', 'Invoque un dragonnet 2/1 chaque fois que ce serviteur subit des dégâts.', 0, 2, 1, 'Jaemin Kim', NULL, 10, 10, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_022_premium.gif'),
(696, 'Horion de lave', 'Inflige $2 |4(point,points) de dégâts. Débloque vos cristaux de mana en <b>Surcharge</b>.', NULL, NULL, 2, 'Zoltan Boros', NULL, 8, 10, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_011_premium.gif'),
(697, 'Recrutement', 'Choisissez un serviteur. En place 3 copies dans votre deck.', NULL, NULL, 2, 'Jim Nelson', NULL, 4, 10, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_007_premium.gif'),
(698, 'Ressusciter', 'Invoque un serviteur allié aléatoire mort pendant la partie.', NULL, NULL, 2, 'Luke Mancini', NULL, 5, 10, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_017_premium.gif'),
(699, 'Revanche', 'Inflige $1 |4(point,points) de dégâts à tous les serviteurs. Si vous avez 12 PV ou moins, inflige $3 |4(point,points) de dégâts à la place.', NULL, NULL, 2, 'Ben Olson', NULL, 9, 10, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_015.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_015_premium.gif'),
(700, 'Tir réflexe', 'Inflige $3_|4(point,points) de dégâts. Vous piochez une carte si votre main est vide.', NULL, NULL, 2, 'Jonboy Meyers', NULL, 7, 10, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_013.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_013_premium.gif'),
(701, 'Attise-flammes', 'Après que vous avez lancé un sort, inflige 2 points de dégâts répartis de façon aléatoire entre tous les adversaires.', 2, 4, 3, 'Alex Horley Orlandelli', NULL, 1, 10, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_002.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_002_premium.gif'),
(702, 'Chef du gang des diablotins', 'Invoque un diablotin 1/1 chaque fois que ce serviteur subit des dégâts.', 2, 4, 3, 'Steve Prescott', NULL, 3, 10, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_006_premium.gif'),
(703, 'Courroux démoniaque', 'Inflige $2_|4(point,points) de dégâts à tous les serviteurs, sauf aux démons.', NULL, NULL, 3, 'Raymond Swanland', NULL, 3, 10, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_005_premium.gif'),
(704, 'Druidesse de la Flamme', '<b>Choix des armes_:</b> se transforme en un serviteur_5/2 ou en un serviteur_2/5.', 2, 2, 3, 'Stanley Lau', NULL, 6, 10, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_010_premium.gif'),
(705, 'Technicienne de l’Aile noire', '<b>Cri de guerre_:</b> gagne_+1/+1 si vous avez un Dragon en main.', 2, 4, 3, 'Matt Dixon', NULL, 10, 10, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_033_premium.gif'),
(706, 'Destructeur garde du feu', '<b>Cri de guerre_:</b> gagne 1_à_4_points d’Attaque. <b>Surcharge_:</b>_(1)', 3, 6, 4, 'Paul Mafayon', NULL, 8, 10, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_012_premium.gif'),
(707, 'Dragon affamé', '<b>Cri de guerre_:</b> invoque un serviteur aléatoire à 1_cristal pour votre adversaire.', 5, 6, 4, 'John Polidora', NULL, 10, 10, 1, 2, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_026_premium.gif'),
(708, 'Lanceur de hache', 'Inflige 2 points de dégâts au héros adverse chaque fois que ce serviteur subit des dégâts.', 2, 5, 4, 'Efrem Palacios', NULL, 9, 10, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_016_premium.gif'),
(709, 'Rageur du Magma', '<b>Cri de guerre_:</b> gagne_+3/+3 si votre main est vide.', 4, 4, 4, 'Jomaro Kindred', NULL, 7, 10, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_014.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_014_premium.gif'),
(710, 'Sorcier draconien', 'Gagne +1/+1 chaque fois que <b>vous</b> ciblez ce serviteur avec un sort.', 3, 5, 4, 'Edouard Guiton & Stuido HIVE', NULL, 10, 10, 1, 2, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_020_premium.gif'),
(711, 'Client sinistre', 'Invoque un autre client sinistre chaque fois que ce serviteur survit aux dégâts qu’il subit.', 3, 3, 5, 'Bobby Chiu', NULL, 10, 10, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_019_premium.gif'),
(712, 'Corrupteur de l’Aile noire', '<b>Cri de guerre_:</b> inflige 3_points de dégâts si vous avez un Dragon en main.', 5, 4, 5, 'Greg Staples', NULL, 10, 10, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_034.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_034_premium.gif'),
(713, 'Dragon consort', '<b>Cri de guerre :</b> le prochain Dragon que vous jouez coûte (2) cristaux de moins.', 5, 5, 5, 'Raymond Swanland', NULL, 2, 10, 1, 2, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_018.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_018_premium.gif'),
(714, 'Furtif sombrefer', '<b>Cri de guerre :</b> inflige 2 points de dégâts à tous les serviteurs adverses qui ne sont pas blessés.', 4, 3, 5, 'Eric Braddock', NULL, 4, 10, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_008_premium.gif'),
(715, 'Souffle du dragon', 'Inflige $4 points de dégâts. Coûte (1) |4(cristal,cristaux) de mana de moins pour chaque serviteur mort pendant ce tour.', NULL, NULL, 5, 'Mauricio Herrera', NULL, 1, 10, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_003_premium.gif'),
(716, 'Veille solennelle', 'Vous piochez 2 cartes. Coûte (1) |4(cristal,cristaux) de mana de moins pour chaque serviteur mort pendant ce tour.', NULL, NULL, 5, 'Jaime Jones', NULL, 2, 10, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_001_premium.gif'),
(717, 'Drake volcanique', 'Coûte (1) |4(cristal,cristaux) de moins pour chaque serviteur mort pendant ce tour.', 6, 4, 6, 'Lucas Graciano', NULL, 10, 10, 1, 2, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_025_premium.gif'),
(718, 'Écraseur drakônide', '<b>Cri de guerre :</b> gagne +3/+3 si votre adversaire a 15 PV ou moins.', 6, 6, 6, 'Slawomir Maniak', NULL, 10, 10, 1, 2, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_024_premium.gif'),
(719, 'Empereur Thaurissan', 'À la fin de votre tour, réduit de (1) |4(cristal,cristaux) le coût des cartes dans votre main.', 5, 5, 6, 'Wayne Reynolds', NULL, 10, 10, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_028_premium.gif'),
(720, 'Rend Main-Noire', '<b>Cri de guerre :</b> détruit un serviteur <b>légendaire</b> si vous avez un Dragon en main.', 8, 4, 7, 'Alex Horley', NULL, 10, 10, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_029_premium.gif'),
(721, 'Chromaggus', 'Chaque fois que vous piochez une carte, en place une copie dans votre main.', 6, 8, 8, 'Todd Lockwood', NULL, 10, 10, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_031_premium.gif'),
(722, 'Chambellan Executus', '<b>Râle d’agonie :</b> remplace votre héros par Ragnaros, le seigneur du feu.', 9, 7, 9, 'Alex Horley Orlandelli', NULL, 10, 10, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_027_premium.gif'),
(723, 'Lourdaud volcanique', '<b>Provocation</b>.\\n Coûte (1) |4(cristal,cristaux) de moins pour chaque serviteur mort pendant ce tour.', 7, 8, 9, 'Trent Kaniuga', NULL, 6, 10, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_009_premium.gif'),
(724, 'Nefarian', '<b>Cri de guerre :</b> ajoute 2 sorts aléatoires dans votre main <i>(de la classe de votre adversaire)</i>.', 8, 8, 9, 'Ruan Jia', NULL, 10, 10, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/BRM_030.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/BRM_030_premium.gif'),
(725, 'Boucanier', 'Chaque fois que vous vous équipez d’une arme, lui donne +1_ATQ.', 2, 1, 1, 'Matt Dixon', NULL, 4, 11, 1, 8, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_029_premium.gif'),
(726, 'Brave archère', '<b>Exaltation :</b> inflige 2 points de dégâts au héros adverse si votre main est vide.', 2, 1, 1, 'Eva Widermann', NULL, 7, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_059.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_059_premium.gif'),
(727, 'Déflagration des Arcanes', 'Inflige $2 |4(point,points) de dégâts à un serviteur. Le bonus aux <b>Dégâts des sorts</b> est doublé pour ce sort.', NULL, NULL, 1, 'Gabor Szikszai', NULL, 1, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_004_premium.gif'),
(728, 'Esprit combatif', '<b>Secret :</b> donne +1/+1 à vos serviteurs quand votre tour commence.', NULL, NULL, 1, 'Jim Nelson', NULL, 2, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_073.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_073_premium.gif'),
(729, 'Jouteuse de Gadgetzan', '<b>Cri de guerre :</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, gagne +1/+1.', 1, 2, 1, 'Skan Srisuwan', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_133.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_133_premium.gif'),
(730, 'Kvaldir blessé', '<b>Cri de guerre :</b> inflige\\n3 points de dégâts à ce serviteur.', 2, 4, 1, 'Zoltan Boros', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_105.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_105_premium.gif'),
(731, 'Modeste écuyer', '<b>Exaltation :</b> gagne +1 ATQ.', 1, 2, 1, 'Ron Spears', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_082.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_082_premium.gif'),
(732, 'Mot de pouvoir : Gloire', 'Choisissez un serviteur. Chaque fois qu’il attaque, rend 4 PV à votre héros.', NULL, NULL, 1, 'Mike Sass', NULL, 5, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_013.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_013_premium.gif'),
(733, 'Racines vivantes', '<b>Choix des armes :</b> Inflige $2 |4(point,points) de dégâts ou invoque deux arbrisseaux 1/1.', NULL, NULL, 1, 'Dan Brereton', NULL, 6, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_037.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_037_premium.gif'),
(734, 'Soins rapides', 'Rend #5 PV.', NULL, NULL, 1, 'Marcelo Vignali', NULL, 5, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_055.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_055_premium.gif'),
(735, 'Spectateur du tournoi', '<b>Provocation</b>', 2, 1, 1, 'Adam Byrne', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_097.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_097_premium.gif'),
(736, 'Agent du Repos du ver', '<b>Cri de guerre :</b> gagne\\n+1 ATQ et <b>Provocation</b> si vous avez un Dragon en main.', 1, 4, 2, 'Jeff Easley', NULL, 5, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_116.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_116_premium.gif'),
(737, 'Aspirante de Darnassus', '<b>Cri de guerre :</b> gagne un cristal de mana vide.\\n<b>Râle d’agonie :</b> perd un cristal de mana.', 2, 3, 2, 'Laurel Austin', NULL, 6, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_038.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_038_premium.gif'),
(738, 'Championne d’Alexstrasza', '<b>Cri de guerre :</b> gagne\\n+1 ATQ et <b>Charge</b> si vous avez un Dragon en main.', 2, 3, 2, 'Evgeniy Zagumennyy', NULL, 9, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_071.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_071_premium.gif'),
(739, 'Commandant du fief', 'Vous pouvez utiliser votre pouvoir héroïque deux fois par tour.', 2, 3, 2, 'Jesper Ejsing', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_080.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_080_premium.gif'),
(740, 'Confusion', 'Échange l’Attaque et la Vie de tous les serviteurs.', NULL, NULL, 2, 'Sean O\'Danield', NULL, 5, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_016_premium.gif'),
(741, 'Convertir', 'Place une copie d’un serviteur adverse dans votre main.', NULL, NULL, 2, 'Dan Dos Santos', NULL, 5, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_015.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_015_premium.gif'),
(742, 'Druidesse du Sabre', '<b>Choix des armes :</b> se transforme en_2/1 avec <b>Charge</b> ou en_3/2 avec <b>Camouflage</b>.', 2, 1, 2, 'Arthur Gimaldinov', NULL, 6, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_042.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_042_premium.gif'),
(743, 'Elekk du roi', '<b>Cri de guerre :</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, vous le piochez.', 3, 2, 2, 'James Zhang', NULL, 7, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_058.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_058_premium.gif'),
(744, 'Fusion démoniaque', 'Donne_+3/+3 à un démon et un cristal de mana à votre adversaire.', NULL, NULL, 2, 'Kevin Chen', NULL, 3, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_024_premium.gif'),
(745, 'Garde-courroux', 'Chaque fois que ce serviteur subit des dégâts, inflige le même montant de dégâts à votre héros.', 4, 3, 2, 'Sojin Hwang', NULL, 3, 11, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_026_premium.gif'),
(746, 'Golem totémique', '<b>Surcharge :</b> (1)', 3, 4, 2, 'Steve Prescott', NULL, 8, 11, 1, 1, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_052.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_052_premium.gif'),
(747, 'Guetteur d’Argent', 'Ne peut pas attaquer.\\n<b>Exaltation :</b> peut attaquer normalement pendant ce tour.', 2, 4, 2, 'Benjamin Zhang', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_109.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_109_premium.gif'),
(748, 'Héros défunt', 'Votre pouvoir héroïque inflige 1 point de dégâts supplémentaire.', 3, 2, 2, 'Arthur Bozonnet', NULL, 1, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_003_premium.gif'),
(749, 'Jongleur de flammes', '<b>Cri de guerre :</b> inflige 1 point de dégâts à un adversaire aléatoire.', 2, 3, 2, 'James Zhang', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_094.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_094_premium.gif'),
(750, 'Lance d’Argent', '<b>Cri de guerre_:</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, gagne +1_Durabilité.', 2, NULL, 2, 'Joe Wilson', 2, 2, 11, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_077.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_077_premium.gif'),
(751, 'Lieutenant de la garde d’os', '<b>Exaltation :</b> gagne +1 PV.', 3, 2, 2, 'Slawomir Maniak', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_089.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_089_premium.gif'),
(752, 'Minuscule chevalier maléfique', 'Chaque fois que vous vous défaussez d’une carte, gagne +1/+1.', 3, 2, 2, 'Raymond Swanland', NULL, 3, 11, 1, 4, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_021_premium.gif'),
(753, 'Partenaire d’entraînement', '<b>Provocation</b>\\n<b>Cri de guerre :</b> confère <b>Provocation</b> à un serviteur.', 3, 2, 2, 'Jim Nelson', NULL, 9, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_069.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_069_premium.gif'),
(754, 'Piège à ours', '<b>Secret :</b> invoque un ours 3/3 avec <b>Provocation</b> une fois que votre héros a été attaqué.', NULL, NULL, 2, 'Richard Wright', NULL, 7, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_060.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_060_premium.gif'),
(755, 'Porte-lance', '<b>Cri de guerre :</b> donne\\n+2 ATQ à un serviteur allié.', 1, 2, 2, 'Tyson Murphy', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_084.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_084_premium.gif'),
(756, 'Prêt à tirer', 'Chaque fois que vous lancez un sort pendant ce tour, ajoute une carte chasseur aléatoire dans votre main.', NULL, NULL, 2, 'Matt Dixon', NULL, 7, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_061.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_061_premium.gif'),
(757, 'Renforcement', 'Donne_+2/+2 à vos serviteurs avec <b>Provocation</b>.', NULL, NULL, 2, 'Mishi McCaig', NULL, 9, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_068.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_068_premium.gif'),
(758, 'Savoir ancestral', 'Vous piochez 2 cartes. <b>Surcharge :</b> (2)', NULL, NULL, 2, 'Zoltan & Gabor', NULL, 8, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_053.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_053_premium.gif'),
(759, 'Vaillant de Fossoyeuse', '<b>Combo :</b> inflige 1 point de dégâts.', 3, 2, 2, 'Zoltan Boros ', NULL, 4, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_030.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_030_premium.gif'),
(760, 'Vide-gousset', 'Chaque fois que ce serviteur attaque un héros, ajoute une carte La pièce dans votre main.', 2, 2, 2, 'Alex Horley Orlandelli', NULL, 4, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_031_premium.gif'),
(761, 'Aspirant d’Orgrimmar', '<b>Exaltation_:</b> donne +1_ATQ à votre arme.', 3, 3, 3, 'Hideaki Takamura', NULL, 9, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_066.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_066_premium.gif'),
(762, 'Cavalier d’Argent', '<b>Charge</b>\\n<b>Bouclier divin</b>', 2, 1, 3, 'Evgeniy Zagumennyy', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_087.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_087_premium.gif'),
(763, 'Champion de la Lumière', '<b>Cri de guerre_:</b> réduit au <b>Silence</b> un démon.', 4, 3, 3, 'Andrea Uderzo', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_106.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_106_premium.gif'),
(764, 'Charpie', 'Détruit un serviteur.\\nAjoute un serviteur aléatoire dans la main de votre adversaire.', NULL, NULL, 3, 'Dan Scott', NULL, 6, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_044.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_044_premium.gif'),
(765, 'Chevalier silencieux', '<b>Camouflage</b>\\n<b>Bouclier divin</b>', 2, 2, 3, 'Esad Ribic', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_095.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_095_premium.gif'),
(766, 'Chevaucheur de faucon-dragon', '<b>Exaltation :</b> gagne <b>Furie des vents</b> pendant ce tour.', 3, 3, 3, 'Anton Zemskov', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_083.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_083_premium.gif'),
(767, 'Défenseur du roi', '<b>Cri de guerre :</b> gagne\\n+1 Durabilité si vous avez un serviteur avec <b>Provocation</b>.', 3, NULL, 3, 'Michael Franchina', 2, 9, 11, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_065.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_065_premium.gif'),
(768, 'Destruction élémentaire', 'Inflige $4 à $5 points\\nde dégâts à tous les serviteurs.\\n<b>Surcharge :</b> (5)', NULL, NULL, 3, 'Tyler Walpole', NULL, 8, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_051.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_051_premium.gif'),
(769, 'Écaille-d’effroi', 'Inflige 1 point de dégâts à tous les autres serviteurs à la fin de votre tour.', 4, 2, 3, 'Zoltan Boros', NULL, 7, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_063t.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_063t_premium.gif'),
(770, 'Effigie', '<b>Secret :</b> quand un serviteur allié meurt, invoque un serviteur aléatoire de même coût.', NULL, NULL, 3, 'Tooth', NULL, 1, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_002.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_002_premium.gif'),
(771, 'Embusqué', 'Place 3 cartes Embuscade ! dans le deck de votre adversaire. À chaque fois qu’il en pioche une, vous invoquez un nérubien 4/4.', NULL, NULL, 3, 'Daren Bader', NULL, 4, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_035.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_035_premium.gif'),
(772, 'Enragé de glace', NULL, 5, 2, 3, 'Anton Zemskov', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_092.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_092_premium.gif'),
(773, 'Eydis Plaie-sombre', 'Chaque fois que <b>vous</b> ciblez ce serviteur avec un sort, inflige\\n3 points de dégâts à un adversaire aléatoire.', 3, 4, 3, 'Ben Thompson', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_131.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_131_premium.gif'),
(774, 'Fjola Plaie-lumineuse', 'Chaque fois que <b>vous</b> ciblez ce serviteur avec un sort, gagne <b>Bouclier divin</b>.', 3, 4, 3, 'Mark Zug', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_129.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_129_premium.gif'),
(775, 'Jette-sorts', '<b>Cri de guerre :</b> ajoute un sort aléatoire dans la main de chaque joueur.', 3, 4, 3, 'Andrew Hou', NULL, 1, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_007_premium.gif'),
(776, 'Larcin', 'Ajoute 2 cartes de classe aléatoires dans votre main <i>(de la classe de votre adversaire)</i>.', NULL, NULL, 3, 'Matt Dixon', NULL, 4, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_033.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_033_premium.gif'),
(777, 'Maître d’escrime', '<b>Cri de guerre :</b> la prochaine fois que vous utilisez votre pouvoir héroïque, il coûte\\n(2) cristaux de moins.', 2, 2, 3, 'Howard Lyon', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_115.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_115_premium.gif'),
(778, 'Maître des chevaux de guerre', 'Vos recrues de la Main d’argent ont +1 ATQ.', 2, 4, 3, 'Zoltan & Gabor', NULL, 2, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_075.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_075_premium.gif'),
(779, 'Maître des écuries', '<b>Cri de guerre :</b> une Bête alliée devient <b>Insensible</b> pendant ce tour.', 4, 2, 3, 'Tyson Murphy', NULL, 7, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_057.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_057_premium.gif'),
(780, 'Maîtresse de cérémonie', '<b>Cri de guerre_:</b> gagne_+2/+2 si vous avez un serviteur avec <b>Dégâts des sorts</b>.', 4, 2, 3, 'Jesper Ejsing', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_117.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_117_premium.gif'),
(781, 'Marchand douteux', '<b>Cri de guerre :</b> si vous avez un pirate, gagne +1/+1.', 4, 3, 3, 'Tooth', NULL, 4, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_032.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_032_premium.gif'),
(782, 'Métamorphose : sanglier', 'Transforme un serviteur en sanglier 4/2 avec <b>Charge</b>.', NULL, NULL, 3, 'Mike Sass', NULL, 1, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_005_premium.gif'),
(783, 'Ombrefiel', 'Chaque fois que vous piochez une carte, réduit son coût de\\n(1) |4(cristal,cristaux).', 3, 3, 3, 'Warren Mahy', NULL, 5, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_014.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_014_premium.gif'),
(784, 'Régente de la Main d’argent', '<b>Exaltation :</b> invoque une recrue de la Main\\nd’argent 1/1.', 3, 3, 3, 'John Polidora', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_100.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_100_premium.gif'),
(785, 'Régisseur du Colisée', '<b>Exaltation :</b> renvoie ce serviteur dans votre main.', 2, 5, 3, 'Dan Scott', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_110.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_110_premium.gif'),
(786, 'Rohart totémique', '<b>Cri de guerre :</b> invoque un totem de base aléatoire.', 3, 2, 3, 'Eva Widermann', NULL, 8, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_046.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_046_premium.gif'),
(787, 'Saboteur', '<b>Cri de guerre :</b> le pouvoir héroïque de votre adversaire coûte (5) cristaux de plus au tour suivant.', 4, 3, 3, 'Greg Staples', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_086.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_086_premium.gif'),
(788, 'Sceau des champions', 'Donne +3_ATQ et <b>Bouclier divin</b> à un serviteur.', NULL, NULL, 3, 'Jonboy Meyers', NULL, 2, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_074.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_074_premium.gif'),
(789, 'Sonner', 'Inflige $3_|4(point,points) de dégâts. Gagne 3_points d’armure.', NULL, NULL, 3, 'Dany Orizio', NULL, 9, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_064.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_064_premium.gif'),
(790, 'Tir puissant', 'Inflige $2 |4(point,points) de dégâts à un serviteur et aux serviteurs adjacents.', NULL, NULL, 3, 'Jonboy Meyers', NULL, 7, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_056.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_056_premium.gif'),
(791, 'Vague de soins', 'Rend #7 PV. Révèle un serviteur de chaque deck. Si le vôtre coûte plus cher, rend\\n#14 PV à la place.', NULL, NULL, 3, 'Luca Zontini', NULL, 8, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_048.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_048_premium.gif'),
(792, 'Aspirant de Dalaran', '<b>Exaltation :</b> vous gagnez <b>+1 aux dégâts des sorts</b>.', 3, 5, 4, 'Dan Scott', NULL, 1, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_006_premium.gif'),
(793, 'Championne sacrée', 'Chaque fois qu’un personnage est soigné, gagne +2 ATQ.', 3, 5, 4, 'Alex Garner', NULL, 5, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_011_premium.gif'),
(794, 'Cheval de guerre cuirassé', '<b>Cri de guerre :</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, gagne <b>Charge</b>.', 5, 3, 4, 'Edouard Guiton & Tony Washington', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_108.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_108_premium.gif'),
(795, 'Chevalier murloc', '<b>Exaltation :</b> invoque un murloc aléatoire.', 3, 4, 4, 'Sam Nielson', NULL, 2, 11, 1, 7, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_076.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_076_premium.gif'),
(796, 'Combattant sauvage', '<b>Exaltation :</b> donne +2 ATQ\\nà votre héros pendant ce tour.', 5, 4, 4, 'Alex Pascenko', NULL, 6, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_039.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_039_premium.gif'),
(797, 'Communion astrale', 'Gagne 10 cristaux de mana. Vous défausse de votre main.', NULL, NULL, 4, 'Christopher Moeller', NULL, 6, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_043.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_043_premium.gif'),
(798, 'Damoiselle du Lac', 'Votre pouvoir héroïque coûte (1) |4(cristal,cristaux).', 2, 6, 4, 'Froilan Gardner', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_085.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_085_premium.gif'),
(799, 'Destrier de l’effroi', '<b>Râle d’agonie :</b> invoque un destrier de l’effroi.', 1, 1, 4, 'Alex Horley Orlandelli', NULL, 3, 11, 1, 4, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_019_premium.gif'),
(800, 'Favori de la foule', 'Chaque fois que vous jouez une carte avec <b>Cri de guerre</b>, gagne_+1/+1.', 4, 4, 4, 'Jakub Kasper', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_121.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_121_premium.gif'),
(801, 'Frigbold algide', '<b>Dégâts des sorts : +1</b>', 2, 6, 4, 'Matt Dixon', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_093.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_093_premium.gif'),
(802, 'Gardien du Crépuscule', '<b>Cri de guerre :</b> gagne\\n+1 ATQ et <b>Provocation</b> si vous avez un Dragon en main.', 2, 6, 4, 'Slawomir Maniak', NULL, 10, 11, 1, 2, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_017_premium.gif'),
(803, 'Gormok l’Empaleur', '<b>Cri de guerre :</b> inflige\\n4 points de dégâts si vous avez au moins\\n4 autres serviteurs.', 4, 4, 4, 'Nutthapon Petchthai', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_122.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_122_premium.gif'),
(804, 'Grave-totem draeneï', '<b>Cri de guerre_:</b> gagne_+1/+1 pour chaque totem allié.', 4, 4, 4, 'RK Post', NULL, 8, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_047.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_047_premium.gif'),
(805, 'Lame empoisonnée', 'Votre pouvoir héroïque donne à cette arme\\n+1 ATQ au lieu de la remplacer.', 1, NULL, 4, 'Nutthapon Petchthai', 3, 4, 11, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_034.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_034_premium.gif'),
(806, 'Magnataure alpha', 'Inflige également des dégâts aux serviteurs adjacents de celui qu’il attaque.', 5, 3, 4, 'Alex Horley Orlandelli', NULL, 9, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_067.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_067_premium.gif'),
(807, 'Marcheuse sauvage', '<b>Cri de guerre :</b> donne\\n+3 PV à une Bête alliée.', 4, 4, 4, 'James Ryman', NULL, 6, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_040.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_040_premium.gif'),
(808, 'Marteau chargé', '<b>Râle d’agonie :</b> votre pouvoir héroïque devient « Inflige 2 points de dégâts ».', 2, NULL, 4, 'Peet Cooper', 4, 8, 11, 2, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_050.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_050_premium.gif'),
(809, 'Médecin du tournoi', '<b>Exaltation :</b> rend 2 PV à votre héros.', 1, 8, 4, 'Sean McNally', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_091.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_091_premium.gif'),
(810, 'Poing de Jaraxxus', 'Quand vous jouez ou que vous vous défaussez de cette carte, inflige $4 |4(point,points) de dégâts à un adversaire aléatoire.', NULL, NULL, 4, 'Matt Dixon', NULL, 3, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_022_premium.gif');
INSERT INTO `CARD` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(811, 'Provocateur maléfique', '<b>Provocation</b>', 5, 4, 4, 'Dan Scott', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_114.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_114_premium.gif'),
(812, 'Rejeton des Ombres', '<b>Exaltation :</b> inflige 4 points de dégâts à chaque héros.', 5, 4, 4, 'Dave Allsop', NULL, 5, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_012_premium.gif'),
(813, 'Vendeur de rafraîchissements', '<b>Cri de guerre :</b> rend 4 PV à chaque héros.', 3, 5, 4, 'Ron Spears', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_111.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_111_premium.gif'),
(814, 'Champion de Mukla', '<b>Exaltation :</b> donne +1/+1 à vos autres serviteurs.', 4, 3, 5, 'Andrew Hou', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_090.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_090_premium.gif'),
(815, 'Champion du Nexus Saraad', '<b>Exaltation :</b> ajoute un sort aléatoire dans votre main.', 4, 5, 5, 'Marcleo Vignali', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_127.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_127_premium.gif'),
(816, 'Chevalier mécanique', '<b>Cri de guerre_:</b> donne_+1/+1 à un Méca allié.', 5, 5, 5, 'Skan Srisuwan', NULL, 10, 11, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_096.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_096_premium.gif'),
(817, 'Chevaucheur pandashan', '<b>Combo :</b> gagne +3 ATQ.', 3, 7, 5, 'Ryan Metcalf', NULL, 4, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_028_premium.gif'),
(818, 'Combattante de la fosse', NULL, 5, 6, 5, 'Alex Horley Orlandelli', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_101.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_101_premium.gif'),
(819, 'Dompteur de béliers', '<b>Cri de guerre :</b> si vous avez une Bête, invoque une Bête aléatoire.', 3, 3, 5, 'Brandon Kitkouski', NULL, 7, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_010_premium.gif'),
(820, 'Écumeur kvaldir', '<b>Exaltation :</b> gagne +2/+2.', 4, 4, 5, 'Trent Kaniuga', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_119.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_119_premium.gif'),
(821, 'Jouteur rohart', '<b>Cri de guerre :</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, rend 7 PV à votre héros.', 5, 5, 5, 'Skan Srisuwan', NULL, 2, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_104.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_104_premium.gif'),
(822, 'Lance de flammes', 'Inflige $8 |4(point,points) de dégâts à un serviteur.', NULL, NULL, 5, 'Nutthapon Petchthai', NULL, 1, 11, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_001_premium.gif'),
(823, 'Recruteur', '<b>Exaltation :</b> ajoute un écuyer 2/2 dans votre main.', 5, 4, 5, 'Jim Nelson', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_113.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_113_premium.gif'),
(824, 'Vaillant des Pitons-du-Tonnerre', '<b>Exaltation :</b> donne +2 ATQ à vos totems.', 3, 6, 5, 'Sean McNally', NULL, 8, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_049.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_049_premium.gif'),
(825, 'Adversaire mystérieux', '<b>Cri de guerre :</b> place un <b>Secret</b> de chaque type de votre deck sur le champ de bataille.', 6, 6, 6, 'Zoltan Boros', NULL, 2, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_079.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_079_premium.gif'),
(826, 'Bolf Bélier-Frondeur', 'Chaque fois que votre héros subit des dégâts, les inflige à ce serviteur à la place.', 3, 9, 6, 'Wayne Reynolds', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_124.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_124_premium.gif'),
(827, 'Boule d’araignées', 'Invoque trois\\ntisseuses 1/1.', NULL, NULL, 6, 'Skan Srisuwan', NULL, 7, 11, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_062.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_062_premium.gif'),
(828, 'Champion de Mogor', '50% de chance d’attaquer le mauvais adversaire.', 8, 5, 6, 'Steve Prescott', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_088.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_088_premium.gif'),
(829, 'Chevaucheuse de kodo', '<b>Exaltation : </b> invoque un kodo de guerre 3/5.', 3, 5, 6, 'Ben Wootten', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_099.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_099_premium.gif'),
(830, 'Drake de Frimarra', 'Vous pouvez utiliser votre pouvoir héroïque autant de fois que vous voulez.', 6, 6, 6, 'Christopher Moeller', NULL, 1, 11, 1, 2, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_008_premium.gif'),
(831, 'Écraseur du Vide', '<b>Exaltation :</b> détruit aléatoirement un serviteur de chaque joueur.', 5, 4, 6, 'Skan Srisuwan', NULL, 3, 11, 1, 4, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_023_premium.gif'),
(832, 'Entrée dans le Colisée', 'Détruit tous les serviteurs excepté le serviteur ayant l’Attaque la plus élevée pour chaque joueur.', NULL, NULL, 6, 'Mauricio Herrera', NULL, 2, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_078.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_078_premium.gif'),
(833, 'Grande croisée', '<b>Cri de guerre :</b> ajoute une carte paladin aléatoire dans votre main.', 5, 5, 6, 'Todd Lockwood', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_118.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_118_premium.gif'),
(834, 'Justicière Cœur-Vrai', '<b>Cri de guerre :</b> remplace votre pouvoir héroïque de départ en l’améliorant.', 6, 3, 6, 'Jomaro Kindred', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_132.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_132_premium.gif'),
(835, 'Le chevalier squelette', '<b>Râle d’agonie :</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, renvoie le chevalier dans votre main.', 7, 4, 6, 'Mike Sass', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_128.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_128_premium.gif'),
(836, 'Le mandebrume', '<b>Cri de guerre_:</b> donne_+1/+1 à tous les serviteurs dans votre main et votre deck.', 4, 4, 6, 'Wei Wang', NULL, 8, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_054.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_054_premium.gif'),
(837, 'Maître jouteur', '<b>Cri de guerre :</b> révèle un serviteur de chaque deck. Si le vôtre coûte plus, gagne <b>Provocation</b> et <b>Bouclier divin</b>.', 5, 6, 6, 'Penny Arcade', NULL, 10, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_112.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_112_premium.gif'),
(838, 'Mangesort prodigieuse', '<b>Cri de guerre :</b> copie le pouvoir héroïque de votre adversaire.', 6, 5, 6, 'Wayne Reynolds', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_098.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_098_premium.gif'),
(839, 'Saccageur des mers', 'Quand vous piochez cette carte, inflige 1 point de dégâts à vos serviteurs.', 6, 7, 6, 'James Ryman', NULL, 9, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_130.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_130_premium.gif'),
(840, 'Sombre marché', 'Détruit 2 serviteurs adverses aléatoires. Vous vous défaussez de\\n2 cartes aléatoires.', NULL, NULL, 6, 'Paul Mafayon', NULL, 3, 11, 3, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_025_premium.gif'),
(841, 'Wilfred Flopboum', 'Les cartes que vous piochez avec votre pouvoir héroïque coûtent (0) |4(cristal,cristaux).', 4, 4, 6, 'Tooth', NULL, 3, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_027_premium.gif'),
(842, 'Cap’taine céleste Kragg', '<b>Charrrrrge</b>\\nCoûte (1) |4(cristal,cristaux) de moins pour chaque pirate allié.', 4, 6, 7, 'Alex Horley Orlandelli', NULL, 10, 11, 1, 8, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_070.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_070_premium.gif'),
(843, 'Chevalier des étendues sauvages', 'Chaque fois que vous invoquez une Bête, réduit le coût de cette carte de (1) |4(cristal,cristaux).', 6, 6, 7, 'Ralph Horsley', NULL, 6, 11, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_041.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_041_premium.gif'),
(844, 'Confesseur d’argent Paletress', '<b>Exaltation :</b> invoque un serviteur <b>légendaire</b> aléatoire.', 5, 4, 7, 'Chris Rahn', NULL, 5, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_018.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_018_premium.gif'),
(845, 'Eadric le Pur', '<b>Cri de guerre :</b> l’Attaque de tous les serviteurs adverses passe à 1.', 3, 7, 7, 'James Ryman', NULL, 2, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_081.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_081_premium.gif'),
(846, 'Frissegueule', '<b>Provocation</b>. <b>Râle d’agonie_:</b> inflige 3_points de dégâts à tous les serviteurs si vous avez un Dragon en main.', 6, 6, 7, 'Raymond Swanland', NULL, 10, 11, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_123.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_123_premium.gif'),
(847, 'Garde funeste effroyable', NULL, 6, 8, 7, 'Anton Zemskov', NULL, 3, 11, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_020_premium.gif'),
(848, 'Gueule-d’acide', 'Chaque fois qu’un autre serviteur subit des dégâts, le détruit.', 4, 2, 7, 'Andrew Hou', NULL, 7, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_063.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_063_premium.gif'),
(849, 'Jormungar capturé', NULL, 5, 9, 7, 'Gonzalo Ordonez', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_102.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_102_premium.gif'),
(850, 'Rhonin', '<b>Râle d’agonie :</b> ajoute\\n3 copies de Projectiles des Arcanes dans votre main.', 7, 7, 8, 'Zoltan & Gabor', NULL, 1, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_009_premium.gif'),
(851, 'Anub’arak', '<b>Râle d’agonie :</b> le renvoie dans votre main et invoque un nérubien 4/4.', 8, 4, 9, 'Eric Braddock', NULL, 4, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_036.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_036_premium.gif'),
(852, 'Aviana', 'Vos serviteurs coûtent\\n(1) |4(cristal,cristaux).', 5, 5, 9, 'Velvet Engine', NULL, 6, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_045.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_045_premium.gif'),
(853, 'Glace-Hurlante', '<b>Charge</b>\\nNe peut pas attaquer les héros.', 10, 10, 9, 'John Polidora', NULL, 10, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_125.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_125_premium.gif'),
(854, 'Kraken de la mer Boréale', '<b>Cri de guerre :</b> inflige\\n4 points de dégâts.', 9, 7, 9, 'Seamus Gallagher', NULL, 10, 11, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_103.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_103_premium.gif'),
(855, 'Géant du givre', 'Coûte (1) |4(cristal,cristaux) de moins chaque fois que vous utilisez votre pouvoir héroïque pendant cette partie.', 8, 8, 10, 'Greg Staples', NULL, 10, 11, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_120.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_120_premium.gif'),
(856, 'Varian Wrynn', '<b>Cri de guerre :</b> vous piochez\\n3 cartes. Place tout serviteur pioché directement sur le champ de bataille.', 7, 7, 10, 'Wei Wang', NULL, 9, 11, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/AT_072.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/AT_072_premium.gif'),
(857, 'Murloc mini-aileron', NULL, 1, 1, 0, 'Oliver Chipping', NULL, 10, 12, 1, 7, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOEA10_3.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOEA10_3_premium.gif'),
(858, 'Chercheuse du Reliquaire', '<b>Cri de guerre_:</b> gagne_+4/+4 si vous avez 6_autres serviteurs.', 1, 1, 1, 'Wayne Reynolds', NULL, 3, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_116.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_116_premium.gif'),
(859, 'Épreuve sacrée', '<b>Secret :</b> si votre adversaire possède au moins 3 serviteurs et qu’il en joue un autre, le détruit.', NULL, NULL, 1, 'Zoltan Boros', NULL, 2, 12, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_027_premium.gif'),
(860, 'Idole corbeau', '<b>Choix des armes :</b>\\n<b>découvre</b> un serviteur ou un sort.', NULL, NULL, 1, 'A.J. Nazzaro', NULL, 6, 12, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_115.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_115_premium.gif'),
(861, 'Lame maudite', 'Double tous les dégâts subis par votre héros.', 2, NULL, 1, 'Craig Mullins', 3, 9, 12, 2, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_118.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_118_premium.gif'),
(862, 'Serpent de la fosse', '<b>Toxicité</b>', 2, 1, 1, 'Bernie Kang', NULL, 4, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_010_premium.gif'),
(863, 'Sir Finley Mrrgglton', '<b>Cri de guerre : découvre</b> un nouveau pouvoir héroïque de base.', 1, 3, 1, 'Matt Dixon', NULL, 10, 12, 1, 7, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_076.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_076_premium.gif'),
(864, 'Trogg des tunnels', 'Gagne +1 ATQ par cristal de mana verrouillé chaque fois que vous êtes en <b>Surcharge</b>.', 1, 3, 1, 'Andrew Hou', NULL, 8, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_018.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_018_premium.gif'),
(865, 'Chapeau d’explorateur', 'Donne à un serviteur +1/+1 et « <b>Râle d’agonie :</b> ajoute une carte Chapeau d’explorateur dans\\nvotre main. »', NULL, NULL, 2, 'Joe Wilson', NULL, 7, 12, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_105.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_105_premium.gif'),
(866, 'Conservateur du musée', '<b>Cri de guerre : découvre</b> une carte avec <b>Râle d’agonie</b>.', 1, 2, 2, 'Steve Prescott', NULL, 5, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_006.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_006_premium.gif'),
(867, 'Crapaud énorme', '<b>Râle d’agonie :</b> inflige\\n1 point de dégâts à un adversaire aléatoire.', 3, 2, 2, 'Matt Dixon', NULL, 10, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_046.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_046_premium.gif'),
(868, 'Malédiction de Rafaam', 'Donne une carte Maudit ! à votre adversaire.\\nTant qu’elle est dans sa main, il subit 2 points de dégâts au début de son tour.', NULL, NULL, 2, 'Alex Horley Orlandelli', NULL, 3, 12, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_007_premium.gif'),
(869, 'Piège de fléchettes', '<b>Secret :</b> inflige\\n$5 |4(point,points) de dégâts à un adversaire aléatoire après utilisation d’un pouvoir héroïque adverse.', NULL, NULL, 2, 'Zoltan Boros', NULL, 7, 12, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_021_premium.gif'),
(870, 'Scarabée orné de joyaux', '<b>Cri de guerre : découvre</b>\\nune carte à 3 cristaux de mana.', 1, 1, 2, 'Jaemin Kim', NULL, 10, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_029_premium.gif'),
(871, 'Sinistre colporteur', '<b>Cri de guerre : découvre</b> une carte à 1 cristal de mana.', 2, 2, 2, 'George Davis', NULL, 3, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_023_premium.gif'),
(872, 'Brann Barbe-de-Bronze', 'Vos <b>Cris de guerre</b> se déclenchent deux fois.', 2, 4, 3, 'Sam Nielson', NULL, 10, 12, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_077.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_077_premium.gif'),
(873, 'Dromadaire du désert', '<b>Cri de guerre :</b> place un serviteur à 1 cristal de mana de chaque deck sur le champ de bataille.', 2, 4, 3, 'Matt Dixon', NULL, 7, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_020_premium.gif'),
(874, 'Raptor de monte', '<b>Râle d’agonie :</b> invoque un serviteur aléatoire coûtant 1 cristal.', 3, 2, 3, 'Benjamin Zhang', NULL, 6, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_050.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_050_premium.gif'),
(875, 'Raptor déterré', '<b>Cri de guerre_:</b> choisit un serviteur allié. Gagne une copie de son <b>Râle d’agonie</b>.', 3, 4, 3, 'Trent Kaniuga', NULL, 4, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_019_premium.gif'),
(876, 'Singe féroce', '<b>Provocation</b>', 3, 4, 3, 'Peter Stapleton', NULL, 9, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_022_premium.gif'),
(877, 'Torche oubliée', 'Inflige $3 |4(point,points) de dégâts. Place une carte Torche enflammée dans votre deck qui inflige 6 points de dégâts.', NULL, NULL, 3, 'Richard Wright', NULL, 1, 12, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_002.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_002_premium.gif'),
(878, 'Araignée des tombes', '<b>Cri de guerre : découvre</b> une Bête.', 3, 3, 4, 'Turovec Konstantin', NULL, 10, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_047.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_047_premium.gif'),
(879, 'Armure animée', 'Votre héros ne peut pas subir plus de 1 point de dégâts à la fois.', 4, 4, 4, 'Mike Sass', NULL, 1, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_119.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_119_premium.gif'),
(880, 'Élémentaire grondant', 'Après avoir joué un serviteur avec <b>Cri de guerre</b>, inflige\\n2 points de dégâts à un adversaire aléatoire.', 2, 6, 4, 'Cole Eastburn', NULL, 8, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_016_premium.gif'),
(881, 'Élise Cherchétoile', '<b>Cri de guerre :</b> place Carte du singe doré dans votre deck.', 3, 5, 4, 'Luke Mancini', NULL, 10, 12, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_079.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_079_premium.gif'),
(882, 'Gardienne d’Uldaman', '<b>Cri de guerre :</b> fait passer l’Attaque et la Vie d’un serviteur à 3.', 3, 4, 4, 'James Ryman', NULL, 2, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_017_premium.gif'),
(883, 'Gorillobot A-3', '<b>Cri de guerre :</b> si vous contrôlez un autre Méca, <b>découvre</b> un nouveau Méca.', 3, 4, 4, 'Skan Srisuwan', NULL, 10, 12, 1, 6, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_039.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_039_premium.gif'),
(884, 'Ombre ancienne', '<b>Cri de guerre :</b> place une carte Malédiction ancestrale dans votre deck qui vous inflige 7 points de dégâts quand vous la piochez.', 7, 4, 4, 'Slawomir Maniak', NULL, 10, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_110.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_110_premium.gif'),
(885, 'Pilleur de tombes', '<b>Râle d’agonie :</b> ajoute une carte La pièce dans votre main.', 5, 4, 4, 'Dave Allsop', NULL, 4, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_012_premium.gif'),
(886, 'Sélénien de la jungle', 'Chaque joueur a\\n<b>+2 aux dégâts des sorts</b>.', 4, 4, 4, 'Mike Sass', NULL, 6, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_051.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_051_premium.gif'),
(887, 'Statue sinistre', 'Ne peut pas attaquer à moins d’être le seul serviteur sur le champ de bataille.', 7, 7, 4, 'Jim Nelson', NULL, 10, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_107.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_107_premium.gif'),
(888, 'Adjurateur éthérien', '<b>Cri de guerre : découvre</b>\\nun sort.', 6, 3, 5, 'Benjamin Zhang', NULL, 1, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_003_premium.gif'),
(889, 'Djinn des zéphirs', 'Une fois que vous avez lancé un sort sur un autre serviteur allié, en lance une copie sur le djinn.', 4, 6, 5, 'Jakub Kasper', NULL, 10, 12, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_053.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_053_premium.gif'),
(890, 'Mal déterré', 'Inflige $3 |4(point,points) de dégâts à tous les serviteurs.\\nPlace cette carte dans le deck de votre adversaire.', NULL, NULL, 5, 'Raymond Swanland', NULL, 5, 12, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_111.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_111_premium.gif'),
(891, 'Pierre d’invocation', 'Chaque fois que vous lancez un sort, invoque un serviteur aléatoire de même coût.', 0, 6, 5, 'Jason Kang', NULL, 10, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_086.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_086_premium.gif'),
(892, 'Sentinelle Anubisath', '<b>Râle d’agonie :</b> donne +3/+3 à un serviteur allié aléatoire.', 4, 4, 5, 'Paul Mafayon', NULL, 10, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_061.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_061_premium.gif'),
(893, 'Sorcière des mers naga', 'Vos cartes coûtent\\n(5) |4(cristal,cristaux) de mana.', 5, 5, 5, 'Benjamin Zhang', NULL, 10, 12, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_038.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_038_premium.gif'),
(894, 'Avortons tremblants', '<b>Râle d’agonie :</b> invoque trois avortons 2/2.', 2, 6, 6, 'Sam Nielson', NULL, 10, 12, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_089.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_089_premium.gif'),
(895, 'Ensevelir', 'Choisit un serviteur adverse. Le place dans votre deck.', NULL, NULL, 6, 'Alex Konstad', NULL, 5, 12, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_104.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_104_premium.gif'),
(896, 'Reno Jackson', '<b>Cri de guerre_:</b> si votre deck ne contient pas de cartes en double, rend tous ses PV à votre héros.', 4, 6, 6, 'Tyson Murphy', NULL, 10, 12, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_011_premium.gif'),
(897, 'Destructeur d’obsidienne', 'À la fin de votre tour, invoque un scarabée 1/1 avec <b>Provocation</b>.', 7, 7, 7, 'Anton Zemskov', NULL, 9, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_009_premium.gif'),
(898, 'Tout est vraiment génial', 'Donne +2/+2 à vos serviteurs. Coûte\\n (1) |4(cristal,cristaux) de mana de moins pour chaque murloc contrôlé.', NULL, NULL, 7, 'Andrius Matijoshius', NULL, 8, 12, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_113.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_113_premium.gif'),
(899, 'Diablosaure fossilisé', '<b>Cri de guerre :</b> gagne <b>Provocation</b> si vous contrôlez une Bête.', 8, 8, 8, 'Trent Kaniuga', NULL, 10, 12, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_073.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_073_premium.gif'),
(900, 'Prince voleur Rafaam', '<b>Cri de guerre : découvre</b>\\nun puissant artéfact.', 7, 8, 9, 'Alex Horley Orlandelli', NULL, 10, 12, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_092.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_092_premium.gif'),
(901, 'Tous les murlocs de ta vie', 'Invoque 7 murlocs détruits pendant cette partie.', NULL, NULL, 10, 'Ryan Metcalf', NULL, 2, 12, 3, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/LOE_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/LOE_026_premium.gif'),
(902, 'Croq’zombie', '<b>Râle d’agonie :</b> rend 5 PV au héros adverse.', 2, 3, 1, 'E. M. Gist', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_001_premium.gif'),
(903, 'Fossoyeur', 'Gagne +1 ATQ chaque fois que vous invoquez un serviteur avec <b>Râle d’agonie</b>.', 1, 2, 1, 'Jonboy Meyers', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_028.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_028_premium.gif'),
(904, 'Tisseuse', '<b>Râle d’agonie :</b> ajoute une carte Bête aléatoire dans votre main.', 1, 1, 1, 'Dan Brereton', NULL, 7, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_011.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_011_premium.gif'),
(905, 'Venger', '<b>Secret :</b> quand l’un de vos serviteurs meurt, donne +3/+2 à un serviteur allié aléatoire.', NULL, NULL, 1, 'Zoltan & Gabor', NULL, 2, 8, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_020.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_020_premium.gif'),
(906, 'Goule instable', '<b>Provocation</b>\\n<b>Râle d’agonie :</b> inflige 1 point de dégâts à tous les serviteurs.', 1, 3, 2, 'Mike Nicholson', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_024.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_024_premium.gif'),
(907, 'Limon résonnant', '<b>Cri de guerre :</b> invoque une copie conforme de ce serviteur à la fin du tour.', 1, 2, 2, 'Eric Browning', NULL, 10, 8, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_003.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_003_premium.gif'),
(908, 'Œuf de nérubien', '<b>Râle d’agonie :</b> invoque un nérubien 4/4.', 0, 2, 2, 'Justin Thavirat', NULL, 10, 8, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_007.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_007_premium.gif'),
(909, 'Rampante hantée', '<b>Râle d’agonie :</b> invoque deux araignées spectrales 1/1.', 1, 2, 2, 'Jeremy Cranford', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_002.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_002_premium.gif'),
(910, 'Réincarnation', 'Détruit un serviteur, puis le ramène à la vie avec tous ses PV.', NULL, NULL, 2, 'Dan Scott', NULL, 8, 8, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_025.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_025_premium.gif'),
(911, 'Savant fou', '<b>Râle d’agonie :</b> place un <b>Secret</b> de votre deck sur le champ de bataille.', 2, 2, 2, 'James Ryman', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_004.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_004_premium.gif'),
(912, 'Seigneur de la toile nérub’ar', 'Les serviteurs avec <b>Cri de guerre</b> coûtent (2) cristaux de plus.', 1, 4, 2, 'Alex Horley Orlandelli', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_017.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_017_premium.gif'),
(913, 'Dupliquer', '<b>Secret :</b> quand un serviteur allié meurt, en place 2 copies dans votre main.', NULL, NULL, 3, 'Alex Garner', NULL, 1, 8, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_018.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_018_premium.gif'),
(914, 'Épées dansantes', '<b>Râle d’agonie :</b> votre adversaire pioche une carte.', 4, 4, 3, 'Jon McConnell', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_029.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_029_premium.gif'),
(915, 'Gargouille peau-de-pierre', 'Au début de votre tour, rend tous ses points de vie à ce serviteur.', 1, 4, 3, 'Matt Smith', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_027.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_027_premium.gif'),
(916, 'Ombre de Naxxramas', '<b>Camouflage</b>\\nGagne +1/+1 au début de votre tour.', 2, 2, 3, 'Ittoku', NULL, 10, 8, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_005.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_005_premium.gif'),
(917, 'Seigneur de la mort', '<b>Provocation. Râle d’agonie :</b> votre adversaire place un serviteur de son deck sur le champ de bataille.', 2, 8, 3, 'Ben Olson', NULL, 10, 8, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_009.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_009_premium.gif'),
(918, 'Sombre sectateur', '<b>Râle d’agonie_:</b> donne\\n+3_PV à un serviteur allié aléatoire.', 3, 4, 3, 'Phroilan Gardner', NULL, 5, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_023.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_023_premium.gif'),
(919, 'Âme gémissante', '<b>Cri de guerre :</b> réduit au <b>Silence</b> vos autres serviteurs.', 3, 5, 4, 'Glenn Rane', NULL, 10, 8, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_016_premium.gif'),
(920, 'Baron Vaillefendre', 'Vos serviteurs déclenchent deux fois leur <b>Râle d’agonie</b>.', 1, 7, 4, 'Ralph Horsley', NULL, 10, 8, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_031_premium.gif'),
(921, 'Embusqué anub’ar', '<b>Râle d’agonie :</b> renvoie un serviteur allié aléatoire dans votre main.', 5, 5, 4, 'Nate Bowden', NULL, 4, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_026.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_026_premium.gif'),
(922, 'Graines de poison', 'Détruit tous les serviteurs et les remplace par des tréants 2/2.', NULL, NULL, 4, 'Brian Despain', NULL, 6, 8, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_019.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_019_premium.gif'),
(923, 'Implorateur du Vide', '<b>Râle d’agonie :</b> place un démon aléatoire de votre main sur le champ de bataille.', 3, 4, 4, 'Robb Shoberg', NULL, 3, 8, 1, 4, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_022.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_022_premium.gif'),
(924, 'Morsure de la mort', '<b>Râle d’agonie :</b> inflige 1 point de dégâts à tous les serviteurs.', 4, NULL, 4, 'Jim Nelson', 2, 9, 8, 2, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_021.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_021_premium.gif'),
(925, 'Chevalier spectral', 'Ne peut pas être la cible de sorts ou de pouvoirs héroïques.', 4, 6, 5, 'Chris Rahn', NULL, 10, 8, 1, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_008.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_008_premium.gif'),
(926, 'Crache-vase', '<b>Provocation.\\nRâle d’agonie :</b> invoque une gelée 1/2 avec <b>Provocation</b>.', 3, 5, 5, 'Nate Bowden', NULL, 10, 8, 1, NULL, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_012.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_012_premium.gif'),
(927, 'Feugen', '<b>Râle d’agonie :</b> si Stalagg est aussi mort pendant cette partie, invoque Thaddius.', 4, 7, 5, 'Dany Orizio', NULL, 10, 8, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_015.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_015_premium.gif'),
(928, 'Horreb', '<b>Cri de guerre :</b> les sorts adverses coûtent (5) cristaux de plus au prochain tour.', 5, 5, 5, 'Samwise', NULL, 10, 8, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_030.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_030_premium.gif'),
(929, 'Stalagg', '<b>Râle d’agonie :</b> si Feugen est aussi mort pendant cette partie, invoque Thaddius.', 7, 4, 5, 'Dany Orizio', NULL, 10, 8, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_014.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_014_premium.gif'),
(930, 'Maexxna', '<b>Toxicité</b>', 2, 8, 6, 'Howard Lyon', NULL, 10, 8, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_010.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_010_premium.gif'),
(931, 'Kel’Thuzad', 'À la fin de chaque tour, invoque tous les serviteurs alliés qui sont morts pendant ce tour.', 6, 8, 8, 'Chris Robinson', NULL, 10, 8, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/FP1_013.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/FP1_013_premium.gif');

-- --------------------------------------------------------

--
-- Structure de la table `Definition`
--

CREATE TABLE `Definition` (
  `idDefinition` int(11) NOT NULL,
  `word` varchar(45) NOT NULL,
  `wordText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Definition`
--

INSERT INTO `Definition` (`idDefinition`, `word`, `wordText`) VALUES
(1, 'Trade', 'Signifie l\'échange en anglais : on parle souvent d\'un échange de point de dégâts.'),
(2, 'All-in', 'Désigne le fait de prendre un énorme risque qui, s\'il ne paye pas, provoquera votre défaite.'),
(3, 'Blast', 'Définit un sort permettant d’infliger du dégât pur sur les créatures du board, ou à l’adversaire. Ex. : Boule de feu.'),
(4, 'Buff', 'Il s\'agit d\'un bonus d\'attaque ou de vie que l\'on donne à un serviteur.'),
(5, 'Combo', 'Définit une synergie très puissante entre deux cartes ou plus pouvant avoir un très gros impact sur la partie.'),
(6, 'Coin', 'Pièce en anglais.'),
(7, 'Cri de guerre', 'Le serviteur avec cette compétence a un effet lors de son entrée en jeu. Attention, si ce serviteur entre jeu d\'une autre manière que par l\'action de vous jouant la carte, l\'effet ne se déclenche pas.'),
(8, 'Top Deck', 'Expression désignant le fait de piocher la carte parfaitement adaptée à la situation et permettant de gagner la partie.'),
(9, 'Tempo', 'Désigne un archétype Mid cherchant à optimiser son mana à chaque tour en prenant le contrôle du board afin de mettre la pression à l\'adversaire avec ses serviteurs.'),
(10, 'Silence', 'Un silence annule tous les effets présents sur un servite'),
(11, 'Rush', 'Stratégie dont le but est d’infliger le plus de points de dégâts possible au héros adverse et le plus rapidement possible, même si cela implique de perdre le Card Advantage ou de prendre des dégâts sur son propre héros.'),
(12, 'OTK', 'Acronyme de « One Turn Kill », fait de tuer en un tour.'),
(13, 'Miracle', 'Archétype consistant à piocher beaucoup de cartes très rapidement afin de récupérer une combo infligeant beaucoup de dégâts.'),
(14, 'Accès de rage', 'Effet se déclenchant lorsqu’un serviteur est blessé, c’est-à-dire lorsque ses points de vie sont en dessous de son maximum, mais au-dessus de 0. Notez que si le serviteur récupère son nombre de points de vie max, l’effet s’arrête.'),
(15, 'Aggro', 'Définit un archétype de deck particulièrement agressif, qui se joue rapidement et qui a pour objectif principal de terminer la partie très rapidement. Ex. : Le Chasseur Huntard entre dans la catégorie des decks Aggro.'),
(16, 'AoE', 'Acronyme de « Area of Effect » que l’on peut traduire par « Effet de zone ». Cela désigne les sorts ou les serviteurs permettant d’infliger des dégâts à plusieurs personnages en même temps.'),
(17, 'BM', 'Acronyme pour « Bad Manner » qui signifie « Mauvaise manière » en français. Cela correspond au fait de se moquer ou de provoquer son adversaire parce qu\'on a conscience de sa domination dans la partie. Ce comportement est très irrespectueux et vous fera mal voir des autres joueurs.'),
(18, 'Body', 'Désigne les stats d\'un serviteur c\'est-à-dire son attaque et ses points de vie.'),
(19, 'Board', 'Désigne le terrain sur lequel les joueurs posent leurs serviteurs.. Par exemple, « votre board » peut désigner votre côté du terrain comme l\'ensemble de vos serviteurs.'),
(20, 'Bouclier divin', 'Protection annulant tous les dégâts qu\'auraient dû subir un serviteur. Une fois les dégâts absorbés, le bouclier disparaît. Le bouclier divin ne protège pas des effets de destruction directs tel que Siphonner l’âme.'),
(21, 'Burst', 'Équivalent à Blast.'),
(22, 'Card Advantage', '« L’avantage aux cartes » en français, résulte d’une simple analyse : on additionne pour chaque joueur les cartes qu’il possède dans sa main et en jeu, et on compare celui qui en a le plus grand nombre. Celui-ci bénéficiera de plus de possibilités et donc aura le  « Card Advantage » . (Guide sur le Card Advantage).'),
(23, 'Charge', 'La serviteur peut attaquer dès le tour où il est invoqué.'),
(24, 'Choix des armes (druide)', 'Certaines cartes Druide vous permettent de choisir entre deux effets une fois qu’elles sont jouées.'),
(25, 'Combo (voleur)', 'Effet se déclenchant seulement si on a joué une autre carte auparavant durant le tour. Fonctionne comme le Cri de guerre. Notez que la Pièce est considérée comme un sort et permet de déclencher la capacité Combo. Attention, l\'utilisation du pouvoir héroïque ne permet pas de déclencher la Combo.'),
(26, 'Conquest', 'Littéralement « Conquête » . Format de tournoi où le gagnant valide son deck et doit le changer. Pour remporter un match au format Conquest il faut donc valider tout ses decks. Ce format s\'oppose un peu au format KOTH.'),
(27, 'Contrôle', 'Définit un archétype de deck ayant pour but de maîtriser l’adversaire pour l’achever en Late Game. Ex. : Le Démoniste Handlock est un deck Contrôle.'),
(28, 'Coût de mana', 'Valeur que vous devrez payer pour jouer votre carte. Ce coût est représenté par un chiffre dans un cristal en haut à gauche d’une carte.'),
(29, 'Cristal de mana', 'Ressource permettant de jouer vos cartes. Vous commencez la partie avec un seul cristal et en gagnez un nouveau à chaque tour jusqu\'à en avoir 10.'),
(30, 'Deck', 'Paquet qui sera utilisé pendant les parties et dans lequel le joueur piochera ses cartes. Un deck dispose de 30 cartes différentes.'),
(31, 'Deathrattle', 'Râle d\'agonie en anglais.'),
(32, 'Decklist', 'Liste des cartes comprises dans un deck.'),
(33, 'Découverte', 'Mécanique de jeu consistant à laisser le joueur choisir une carte parmi trois qui lui sont proposées.'),
(34, 'Dégâts des sorts', 'Une créature avec cet effet augmentera les dégâts de tout vos sorts du nombre X indiqué. Cet effet est cumulable.'),
(35, 'Dessoudeur(s) ', 'L\'une des 3 familles de Gadgetzan dont la mécanique consiste à buff les serviteurs en main. On y retrouve les classes Chasseur, Guerrier et Paladin.'),
(36, 'Draft', 'Désigne le fait de choisir des cartes parmi certaines proposées. Ce terme est souvent utilisé pour désigner le moment de l\'Arène où il faut créer son deck.'),
(37, 'Draw', 'Désigne l’action de piocher, mais également là ou les cartes que vous piochez durant la partie.'),
(38, 'Durabilité', 'Nombre de fois où vous pouvez attaquer avec votre arme. À chaque attaque, la durabilité diminue de 1. Elle est représentée par un chiffre sur un bouclier à droite de l’arme. Quand la Durabilité tombe à 0, l\'arme est détruite.'),
(39, 'Early game', 'Désigne le début de partie.'),
(40, 'Exaltation', 'Effet se déclenchant à chaque utilisation de votre pouvoir héroïque.'),
(41, 'Face', 'Désigne le fait d\'attaquer le héros adverse sans prendre en compte le board adverse.'),
(42, 'Freeze', 'Geler en anglais.'),
(43, 'Furie des vents', 'Peut attaquer deux fois dans le même tour.'),
(44, 'Game', 'Terme anglais pour  « partie ».'),
(45, 'Geler', 'Empêche un personnage d\'attaquer pendant un tour.'),
(46, 'GG WP', 'Acronyme de « Good Game Well Played » que l\'on peut traduire par \"Bonne Partie Bien joué\". Expression servant à féliciter son adversaire après une partie.'),
(47, 'GL HF', 'Acronyme de « Good Luck Have Fun », signifiant littéralement \"Bonne chance et prend du plaisir à la partie\". Une façon de souhaiter bonne chance à son adversaire.'),
(48, 'Golem de Jade', 'Il s\'agit de la mécanique du Lotus de Jade où chaque golem est plus fort de +1/+1 que le précédent. Le premier est 1/1, le deuxième 2/2, etc...'),
(49, 'Insensible', 'Une carte avec cet effet ne recevra pas de dégâts lorsqu’elle attaquera.'),
(50, 'Kabale', 'L\'une des 3 familles de Gadgetzan dont le principe repose sur les decks sans doublons et les potions. On y retrouve les classes Démoniste, Mage et Prêtre.'),
(51, 'Kill', 'Terme anglais signifiant « tuer ». Avoir le kill signifie tout simplement pouvoir gagner la partie en tuant son adversaire dans le tour. Également appelé « Létal » sur Hearthstone.'),
(52, 'KOTH', 'Acronyme pour  « King Of The Hill » qui signifie « Roi de la colline » . Format de tournoi où le gagnant conserve son deck et élimine le deck adverse qu\'il vient de battre. Pour gagner un match au format KOTH, il faut éliminer tous les decks adverses. Ce format s\'oppose un peu au format Conquest.'),
(53, 'Ladder', 'Littéralement « Échelle » en anglais, définit le classement général du jeu.'),
(54, 'Late Game', 'Désigne la fin de partie.'),
(55, 'Létal', 'Avoir le Léthal signifie avoir la possibilité de tuer le héros adverse.'),
(56, 'Lotus de Jade', 'L\'une des 3 familles de Gadgetzan dont la mécanique consiste à faire apparaître des Golems de Jade. On y retrouve les classes Chaman, Druide et Voleur.'),
(57, 'Méga furie des vents', 'Peut attaquer quatre fois dans le même tour.'),
(58, 'Metagame', 'Terme définissant l’ensemble des concepts et stratégies connus et utilisés par la plupart des joueurs sur une période définie. Par exemple, un deck pourra faire partie de la metagame à une période, car il sera très à la mode, et ne plus être joué du tout par la suite.'),
(59, 'Nerf', 'Désigne le fait de modifier une carte afin de la rendre moins puissante.'),
(60, 'Overload', 'Surcharge en anglais.'),
(61, 'Personnages', 'Désigne les serviteurs et les héros.'),
(62, 'Pièce', 'Carte qui est obtenue par le joueur qui joue en deuxième et permet de gagner un mana supplémentaire pendant un tour afin de compenser l’avantage du joueur qui commence. Notez que la Pièce est considérée comme un sort.'),
(63, 'Poussière des arcanes', 'Ressource permettant de crafter des cartes dans Hearthstone.'),
(64, 'Provocation', 'L’adversaire sera obligé d’attaquer en premier les serviteurs dotés de Provocation. Notez que le Camouflage annule cet effet. Cependant, il est possible de choisir une cible entre plusieurs serviteurs avec Provocation.'),
(65, 'Rage quit', 'Littéralement  « Quitter/Abandonner avec rage » . Désigne l\'action de quitter subitement une partie à cause de l\'énervement. Cet énervement est souvent dû à un coup de chance adverse.'),
(66, 'Râle d’agonie', 'Effet se déclenchant à la mort d\'un serviteur ou à la destruction d\'une arme.'),
(67, 'Ramp', 'Désigne un archétype cherchant à accélérer sa courbe de mana afin de poser de plus gros serviteurs plus tôt dans la partie.'),
(68, 'RNG', 'Acronyme pour  « Random Number Generator » qui signifie « Générateur de nombres aléatoire » . Ceci correspond à l\'aléatoire qui peut exister dans un jeu.'),
(69, 'Secret', 'Carte jouée face cachée, représentée par un point d’interrogation au-dessus du portrait de votre héros. Un Secret se déclenche une fois si certaines conditions sont remplies. Sachez également que vos secrets sont désactivés pendant votre tour et ne peuvent se déclencher que pendant le tour de votre adversaire.'),
(70, 'Serviteur', 'Une créature sur Hearthstone.'),
(71, 'Meule', 'Fait de réduire le deck adverse en le forçant à piocher, ou en détruisant directement des cartes depuis son deck. Ce terme est issu d’une carte du jeu « Magic The Gathering ».'),
(72, 'Mid game', 'Désigne le milieu de la partie.'),
(73, 'Mulligan', 'Faire un Mulligan désigne le fait de refuser sa main de départ pour en piocher une autre. Notez que dans Hearthstone, on peut aussi refuser uniquement une partie de sa main.'),
(74, 'Spell Damage', 'Dégâts des sorts en anglais.'),
(75, 'Surrend', 'Diminutif de « Surrender » qui signifie « Capituler ». Désigne le fait d\'abandonner la partie et de laisser la victoire à son adversaire.'),
(76, 'Surcharge [X] (chaman)', 'Certaines cartes Chaman ont cet effet. Lorsque vous jouez une carte avec cet effet, X de vos cristaux seront bloqués le tour suivant, c\'est-à-dire que vous ne pourrez pas les utiliser. Les Surcharges sont cumulables.'),
(77, 'Taunt', 'Provocation en anglais.'),
(78, 'Token', 'Littéralement « Jeton ». Archétype consistant à s\'étaler sur le board avec plein de petits serviteurs ou avec des serviteurs compliqués à gérer, pour ensuite utiliser un sort pour booster l\'attaque de tous ces serviteurs afin d\'infliger un maximum de dégâts à son adversaire pour le tuer.'),
(79, 'Windfury', 'Furie des vents en anglais.');

-- --------------------------------------------------------

--
-- Structure de la table `Lesson`
--

CREATE TABLE `Lesson` (
  `idLesson` int(11) NOT NULL,
  `numberLesson` int(11) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Lesson`
--

INSERT INTO `Lesson` (`idLesson`, `numberLesson`, `text`, `img`) VALUES
(1, 1, 'Here’s an example. On the image above, there are two minions on the opposing side. The left one is a minion with 1 mana cost, 2 Attack and 1 Health. The right one is a minion with 3 mana cost, 2 Attack, 2 Health, Stealth, and Divine Shield. On my side, there are two minions, the left one is a minion with 3 mana cost, 3 Attack and 3 Health, and the right one is a minion from my Hero Power effect with 1 Attack and 1 Health. To make things easier to read, I will write a minion’s with this format: [Mana Attack/Health]. So, 3 3/3 means a minion costs 3 mana, has 3 attack and 3 health.', 'https://imballinst.files.wordpress.com/2017/02/hearthstone-screenshot-12-21-15-20-32-54.png?w=1100'),
(2, 2, 'Don’t bet the farm against a Mage with secrets in play.\r\n\r\nPro Hearthstone player Thijs Moldendijk lived out a moment many virtual cardsharks are familiar with when he dumped a series of power-ups onto a Tirion Fordring, going straight for the face of Pavel Beltukov. Thijs knew he had a secret in play, which could have been anything from an Ice Block to a Mirror Entity.', 'https://i.kinja-img.com/gawker-media/image/upload/s--4zv49Kd---/c_scale,fl_progressive,q_80,w_800/cdvgfurwv9plg0u09dpt.png'),
(3, 3, 'Pour réussir cette quête, il faut essayer d\'avoir les carte qui permettent de mettre vos serviteurs dans votre main.', 'http://www.pockettactics.com/assets/BlogPosts/_resampled/ScaleWidthWzExNDBd/FillWzExNDAsNjAwXQ/HHeader.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Person`
--

CREATE TABLE `Person` (
  `idPerson` int(4) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `nbGoodAnswer` int(4) NOT NULL,
  `nbQuestionAnswered` int(4) NOT NULL,
  `idRefRole` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Person`
--

INSERT INTO `Person` (`idPerson`, `firstname`, `lastname`, `nbGoodAnswer`, `nbQuestionAnswered`, `idRefRole`, `username`, `password`, `mail`) VALUES
(1, 'Admin', 'Admin', 0, 0, 2, 'Admin', 'niku', 'Admin.niku@learnstone.com'),
(2, 'Louis', 'Mantopoulos', 0, 2, 1, 'MrFrizz', 'MrFrizz', 'MrFrizz@salut.com'),
(3, 'William', 'Morgado', 0, 0, 1, 'Neji', 'Neji', 'Neji@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `PersonLesson`
--

CREATE TABLE `PersonLesson` (
  `idPersonLesson` int(11) NOT NULL,
  `idPerson` int(11) NOT NULL,
  `idLesson` int(11) NOT NULL,
  `dateRead` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PersonLesson`
--

INSERT INTO `PersonLesson` (`idPersonLesson`, `idPerson`, `idLesson`, `dateRead`) VALUES
(2, 2, 1, '2017-07-23 18:37:47'),
(3, 2, 2, '2017-07-23 18:37:50'),
(4, 2, 3, '2017-07-23 18:37:52'),
(5, 2, 2, '2017-07-23 18:38:45'),
(6, 2, 1, '2017-07-23 18:38:46'),
(7, 2, 1, '2017-07-23 18:40:35'),
(8, 2, 1, '2017-07-23 18:40:37'),
(9, 2, 2, '2017-07-23 18:40:41'),
(10, 2, 1, '2017-07-23 18:40:43'),
(11, 2, 2, '2017-07-23 18:40:45'),
(12, 2, 3, '2017-07-23 18:40:46'),
(13, 2, 2, '2017-07-23 18:40:49'),
(14, 2, 1, '2017-07-23 18:40:50');

-- --------------------------------------------------------

--
-- Structure de la table `Question`
--

CREATE TABLE `Question` (
  `idQuestion` int(11) NOT NULL,
  `questionText` text NOT NULL,
  `nbUse` int(11) NOT NULL,
  `nbResult` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Question`
--

INSERT INTO `Question` (`idQuestion`, `questionText`, `nbUse`, `nbResult`, `img`) VALUES
(1, 'Sylvanas fait-elle partie du Hall of Fame ?', 0, 0, NULL),
(2, 'Que fait la carte \"Provocation\" ?', 0, 0, NULL),
(3, 'Quel est le serviteur le plus puissant (ATQ + PV) ?', 0, 0, NULL),
(4, 'Combien y a-t-il de classes dans Hearthstone ?', 0, 0, NULL),
(5, 'Quel niveau de rareté correspond à la gemme Violette ? ', 0, 0, NULL),
(6, 'Quel est le râle d’agonie du déchiqueteur piloté ?', 0, 0, NULL),
(7, 'Quelle est la carte la plus chère en cristaux du jeu ?', 0, 0, NULL),
(8, 'Qui est le Game Director d\'Hearthstone ?', 0, 0, NULL),
(9, 'Cairne Sabot-de-Sang a un petit mot très spécial quand il est invoqué contre…', 0, 0, NULL),
(10, 'Combien de cartes \"Rêve\" différentes Ysera peut-elle invoquer dans votre main ?', 0, 0, NULL),
(11, 'Quel serviteur n\'a pas de stats 4/3 (attaques/vie) ?', 0, 0, NULL),
(12, 'Parmi les classes suivantes, laquelle n\'a pas de sorts à 0 ?', 0, 0, NULL),
(13, 'Que gagne en cri de guerre le rageur du magma si votre main est vide ?', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `QuestionAnswered`
--

CREATE TABLE `QuestionAnswered` (
  `idQuestionAnswered` int(11) NOT NULL,
  `idPerson` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `isAnswerWell` tinyint(1) NOT NULL,
  `dateAnswered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `QuestionAnswered`
--

INSERT INTO `QuestionAnswered` (`idQuestionAnswered`, `idPerson`, `idQuestion`, `isAnswerWell`, `dateAnswered`) VALUES
(1, 2, 2, 1, '2017-07-22 19:10:11'),
(2, 2, 2, 0, '2017-07-22 19:10:28'),
(3, 2, 2, 0, '2017-07-22 19:10:42'),
(4, 2, 2, 0, '2017-07-22 19:10:55'),
(5, 2, 2, 0, '2017-07-22 19:12:24'),
(6, 2, 2, 1, '2017-07-22 19:12:33'),
(7, 2, 2, 0, '2017-07-22 19:13:43'),
(8, 2, 2, 0, '2017-07-22 19:13:57'),
(9, 2, 2, 0, '2017-07-22 19:15:01'),
(10, 2, 2, 1, '2017-07-22 19:18:38'),
(11, 2, 2, 0, '2017-07-22 19:18:58'),
(12, 2, 13, 0, '2017-07-23 18:41:03'),
(13, 2, 8, 1, '2017-07-23 18:41:37'),
(14, 2, 1, 1, '2017-07-23 18:41:40'),
(15, 2, 6, 0, '2017-07-23 18:41:42'),
(16, 2, 6, 1, '2017-07-23 18:42:21'),
(17, 2, 6, 1, '2017-07-23 18:46:12'),
(18, 2, 2, 0, '2017-07-23 18:46:12'),
(19, 2, 6, 1, '2017-07-23 18:46:12'),
(20, 2, 7, 0, '2017-07-23 18:46:13'),
(21, 2, 3, 0, '2017-07-23 18:46:13'),
(22, 2, 4, 0, '2017-07-23 18:46:13'),
(23, 2, 9, 0, '2017-07-23 18:46:13'),
(24, 2, 13, 0, '2017-07-23 18:46:13'),
(25, 2, 10, 0, '2017-07-23 18:46:14'),
(26, 2, 9, 0, '2017-07-23 18:46:14'),
(27, 2, 4, 0, '2017-07-23 18:46:14'),
(28, 2, 4, 0, '2017-07-23 18:46:14'),
(29, 2, 13, 0, '2017-07-23 18:46:14'),
(30, 2, 10, 0, '2017-07-23 18:46:14'),
(31, 2, 3, 0, '2017-07-23 18:46:15'),
(32, 2, 8, 0, '2017-07-23 18:46:15'),
(33, 2, 2, 0, '2017-07-23 18:46:15'),
(34, 2, 1, 0, '2017-07-23 18:46:15'),
(35, 2, 10, 0, '2017-07-23 18:46:15'),
(36, 2, 6, 1, '2017-07-23 18:46:15'),
(37, 2, 5, 0, '2017-07-23 18:46:15'),
(38, 2, 1, 0, '2017-07-23 18:46:16'),
(39, 2, 3, 0, '2017-07-23 18:46:16'),
(40, 2, 9, 0, '2017-07-23 18:46:16'),
(41, 2, 11, 1, '2017-07-23 18:46:16'),
(42, 2, 4, 0, '2017-07-23 18:46:16'),
(43, 2, 12, 0, '2017-07-23 18:46:16'),
(44, 2, 6, 1, '2017-07-23 18:46:17'),
(45, 2, 11, 1, '2017-07-23 18:46:17'),
(46, 2, 7, 0, '2017-07-23 18:46:17'),
(47, 2, 11, 1, '2017-07-23 18:46:17'),
(48, 2, 5, 0, '2017-07-23 18:46:17'),
(49, 2, 4, 0, '2017-07-23 18:46:17'),
(50, 2, 9, 0, '2017-07-23 18:46:18'),
(51, 2, 11, 1, '2017-07-23 18:46:18'),
(52, 2, 3, 0, '2017-07-23 18:46:18'),
(53, 2, 8, 0, '2017-07-23 18:46:18'),
(54, 2, 8, 0, '2017-07-23 18:46:18'),
(55, 2, 5, 0, '2017-07-23 18:46:18'),
(56, 2, 9, 0, '2017-07-23 18:46:18'),
(57, 2, 4, 0, '2017-07-23 19:03:16'),
(58, 2, 5, 0, '2017-07-23 19:03:16'),
(59, 2, 8, 1, '2017-07-23 19:03:16'),
(60, 2, 4, 0, '2017-07-23 19:03:16'),
(61, 2, 9, 1, '2017-07-23 19:03:16'),
(62, 2, 7, 0, '2017-07-23 19:03:16'),
(63, 2, 6, 0, '2017-07-23 19:03:17'),
(64, 2, 2, 1, '2017-07-23 19:03:17'),
(65, 2, 8, 1, '2017-07-23 19:03:17'),
(66, 2, 2, 1, '2017-07-23 19:03:17'),
(67, 2, 1, 1, '2017-07-23 19:03:17'),
(68, 2, 12, 0, '2017-07-23 19:03:17'),
(69, 2, 9, 1, '2017-07-23 19:03:17'),
(70, 2, 6, 0, '2017-07-23 19:03:17'),
(71, 2, 3, 0, '2017-07-23 19:03:18'),
(72, 2, 5, 0, '2017-07-23 19:03:18'),
(73, 2, 13, 0, '2017-07-23 19:03:18'),
(74, 2, 11, 0, '2017-07-23 19:03:18'),
(75, 2, 13, 0, '2017-07-23 19:05:20'),
(76, 2, 7, 0, '2017-07-23 19:05:28');

-- --------------------------------------------------------

--
-- Structure de la table `RefCardsSet`
--

CREATE TABLE `RefCardsSet` (
  `idRefCardsSet` int(11) NOT NULL,
  `lblCardsSet` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefCardsSet`
--

INSERT INTO `RefCardsSet` (`idRefCardsSet`, `lblCardsSet`) VALUES
(1, 'Basic'),
(2, 'Classic'),
(3, 'Whispers of the Old Gods'),
(4, 'One Night in Karazhan'),
(5, 'Mean Streets of Gadgetzan'),
(6, 'Journey to Un\'Goro'),
(7, 'Hall of Fame'),
(8, 'Naxxramas'),
(9, 'Goblins vs Gnomes'),
(10, 'Blackrock Mountain'),
(11, 'The Grand Tournament'),
(12, 'The League of Explorers');

-- --------------------------------------------------------

--
-- Structure de la table `RefClass`
--

CREATE TABLE `RefClass` (
  `idRefClass` int(11) NOT NULL,
  `lblClass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefClass`
--

INSERT INTO `RefClass` (`idRefClass`, `lblClass`) VALUES
(1, 'Mage'),
(2, 'Paladin'),
(3, 'Warlock'),
(4, 'Rogue'),
(5, 'Priest'),
(6, 'Druid'),
(7, 'Hunter'),
(8, 'Shaman'),
(9, 'Warrior'),
(10, 'Neutral');

-- --------------------------------------------------------

--
-- Structure de la table `RefRace`
--

CREATE TABLE `RefRace` (
  `idRefRace` int(11) NOT NULL,
  `lblRace` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRace`
--

INSERT INTO `RefRace` (`idRefRace`, `lblRace`) VALUES
(1, 'Totem'),
(2, 'Dragon'),
(3, 'Bete'),
(4, 'Demon'),
(5, 'Elementaire'),
(6, 'Mech'),
(7, 'Murloc'),
(8, 'Pirate');

-- --------------------------------------------------------

--
-- Structure de la table `RefRarity`
--

CREATE TABLE `RefRarity` (
  `idRefRarity` int(11) NOT NULL,
  `lblRarity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRarity`
--

INSERT INTO `RefRarity` (`idRefRarity`, `lblRarity`) VALUES
(1, 'Free'),
(2, 'Common'),
(3, 'Rare'),
(4, 'Epic'),
(5, 'Legendary');

-- --------------------------------------------------------

--
-- Structure de la table `RefRole`
--

CREATE TABLE `RefRole` (
  `idRefRole` int(11) NOT NULL,
  `lblRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRole`
--

INSERT INTO `RefRole` (`idRefRole`, `lblRole`) VALUES
(1, 'Joueur'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `RefType`
--

CREATE TABLE `RefType` (
  `idRefType` int(11) NOT NULL,
  `lblType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefType`
--

INSERT INTO `RefType` (`idRefType`, `lblType`) VALUES
(1, 'Minion'),
(2, 'Weapon'),
(3, 'Spell'),
(4, 'Hero');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`idAnswer`),
  ADD KEY `FK_Answer_Question` (`idQuestion`);

--
-- Index pour la table `CARD`
--
ALTER TABLE `CARD`
  ADD PRIMARY KEY (`idCard`),
  ADD KEY `FK_Card_RefClass` (`idRefClass`),
  ADD KEY `FK_Card_RefCardsSet` (`idRefCardsSet`),
  ADD KEY `FK_Card_RefType` (`idRefType`),
  ADD KEY `FK_Card_RefRace` (`idRefRace`),
  ADD KEY `FK_Card_RefRarity` (`idRefRarity`);

--
-- Index pour la table `Definition`
--
ALTER TABLE `Definition`
  ADD PRIMARY KEY (`idDefinition`);

--
-- Index pour la table `Lesson`
--
ALTER TABLE `Lesson`
  ADD PRIMARY KEY (`idLesson`);

--
-- Index pour la table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`idPerson`),
  ADD KEY `FK_Person_RefRole` (`idRefRole`);

--
-- Index pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD PRIMARY KEY (`idPersonLesson`),
  ADD KEY `FK_PersonLesson_Person` (`idPerson`),
  ADD KEY `FK_PersonLesson_Lesson` (`idLesson`);

--
-- Index pour la table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD PRIMARY KEY (`idQuestionAnswered`),
  ADD KEY `FK_QuestionAnswered_Person` (`idPerson`),
  ADD KEY `FK_QuestionAnswered_Question` (`idQuestion`);

--
-- Index pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  ADD PRIMARY KEY (`idRefCardsSet`);

--
-- Index pour la table `RefClass`
--
ALTER TABLE `RefClass`
  ADD PRIMARY KEY (`idRefClass`);

--
-- Index pour la table `RefRace`
--
ALTER TABLE `RefRace`
  ADD PRIMARY KEY (`idRefRace`);

--
-- Index pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  ADD PRIMARY KEY (`idRefRarity`);

--
-- Index pour la table `RefRole`
--
ALTER TABLE `RefRole`
  ADD PRIMARY KEY (`idRefRole`);

--
-- Index pour la table `RefType`
--
ALTER TABLE `RefType`
  ADD PRIMARY KEY (`idRefType`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Answer`
--
ALTER TABLE `Answer`
  MODIFY `idAnswer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `CARD`
--
ALTER TABLE `CARD`
  MODIFY `idCard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;
--
-- AUTO_INCREMENT pour la table `Definition`
--
ALTER TABLE `Definition`
  MODIFY `idDefinition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `Lesson`
--
ALTER TABLE `Lesson`
  MODIFY `idLesson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Person`
--
ALTER TABLE `Person`
  MODIFY `idPerson` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  MODIFY `idPersonLesson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `Question`
--
ALTER TABLE `Question`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  MODIFY `idQuestionAnswered` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  MODIFY `idRefCardsSet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `RefClass`
--
ALTER TABLE `RefClass`
  MODIFY `idRefClass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `RefRace`
--
ALTER TABLE `RefRace`
  MODIFY `idRefRace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  MODIFY `idRefRarity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `RefRole`
--
ALTER TABLE `RefRole`
  MODIFY `idRefRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `RefType`
--
ALTER TABLE `RefType`
  MODIFY `idRefType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD CONSTRAINT `FK_Answer_Question` FOREIGN KEY (`idQuestion`) REFERENCES `Question` (`idQuestion`);

--
-- Contraintes pour la table `CARD`
--
ALTER TABLE `CARD`
  ADD CONSTRAINT `FK_Card_RefCardsSet` FOREIGN KEY (`idRefCardsSet`) REFERENCES `RefCardsSet` (`idRefCardsSet`),
  ADD CONSTRAINT `FK_Card_RefClass` FOREIGN KEY (`idRefClass`) REFERENCES `RefClass` (`idRefClass`),
  ADD CONSTRAINT `FK_Card_RefRace` FOREIGN KEY (`idRefRace`) REFERENCES `RefRace` (`idRefRace`),
  ADD CONSTRAINT `FK_Card_RefRarity` FOREIGN KEY (`idRefRarity`) REFERENCES `RefRarity` (`idRefRarity`),
  ADD CONSTRAINT `FK_Card_RefType` FOREIGN KEY (`idRefType`) REFERENCES `RefType` (`idRefType`);

--
-- Contraintes pour la table `Person`
--
ALTER TABLE `Person`
  ADD CONSTRAINT `FK_Person_RefRole` FOREIGN KEY (`idRefRole`) REFERENCES `RefRole` (`idRefRole`);

--
-- Contraintes pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD CONSTRAINT `FK_PersonLesson_Lesson` FOREIGN KEY (`idLesson`) REFERENCES `Lesson` (`idLesson`),
  ADD CONSTRAINT `FK_PersonLesson_Person` FOREIGN KEY (`idPerson`) REFERENCES `Person` (`idPerson`);

--
-- Contraintes pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD CONSTRAINT `FK_QuestionAnswered_Person` FOREIGN KEY (`idPerson`) REFERENCES `Person` (`idPerson`),
  ADD CONSTRAINT `FK_QuestionAnswered_Question` FOREIGN KEY (`idQuestion`) REFERENCES `Question` (`idQuestion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
