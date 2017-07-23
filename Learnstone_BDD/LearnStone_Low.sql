-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Dim 23 Juillet 2017 à 15:14
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `LearnStone_Low`
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
-- Structure de la table `Card`
--

CREATE TABLE `Card` (
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
  `img` varchar(255) DEFAULT NULL,
  `imgGold` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Card`
--

INSERT INTO `Card` (`idCard`, `name`, `text`, `attack`, `health`, `manaCost`, `artist`, `durability`, `idRefClass`, `idRefCardsSet`, `idRefType`, `idRefRace`, `idRefRarity`, `img`, `imgGold`) VALUES
(1, 'Dissimuler', 'Confère <b>Camouflage</b> à vos serviteurs jusqu’à votre prochain tour.', NULL, NULL, 1, 'Steve Hui', NULL, 4, 7, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_128.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_128_premium.gif'),
(2, 'Javelot de glace', '<b>Gèle</b> un personnage. S’il est déjà <b>gelé</b>, inflige $4 |4(point,points) de dégâts à la place.', NULL, NULL, 1, 'Alex Horley Orlandelli', NULL, 1, 7, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/CS2_031.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/CS2_031_premium.gif'),
(3, 'Puissance accablante', 'Donne_+4/+4 à un serviteur allié jusqu’à la fin du tour. Puis il meurt. De façon horrible.', NULL, NULL, 1, 'Tom Baxa', NULL, 3, 7, 3, NULL, 2, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_316.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_316_premium.gif'),
(4, 'Perroquet du capitaine', '<b>Cri de guerre_:</b> vous piochez un pirate de votre deck.', 1, 1, 2, 'Daren Bader', NULL, 10, 7, 1, NULL, 4, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/NEW1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/NEW1_016_premium.gif'),
(5, 'Vieux Troublœil', '<b>Charge</b>. A +1 ATQ pour chaque autre murloc sur le champ de bataille.', 2, 4, 4, 'Dan Scott', NULL, 10, 7, 1, 7, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_062.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_062_premium.gif'),
(6, 'Drake azur', '<b>Dégâts des sorts : +1</b>.\\n<b>Cri de guerre :</b> vous piochez une carte.', 4, 4, 5, 'Benjamin Zhang', NULL, 10, 7, 1, 2, 3, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_284.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_284_premium.gif'),
(7, 'Elite Tauren Chieftain', '<b>Cri de guerre :</b> confère aux deux joueurs la puissance du ROCK ! (grâce à une carte au riff dément !)', 5, 5, 5, 'Samwise Didier', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/PRO_001.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/PRO_001_premium.gif'),
(8, 'Gelbin Mekkanivelle', '<b>Cri de guerre :</b> invoque une invention GÉNIALE.', 6, 6, 6, 'Ludo Lullabi', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_112.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_112_premium.gif'),
(9, 'Sylvanas Coursevent', '<b>Râle d’agonie_:</b> prend le contrôle d’un serviteur adverse aléatoire.', 5, 5, 6, 'Glenn Rane', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_016_premium.gif'),
(10, 'Ragnaros, seigneur du feu', 'Ne peut pas attaquer. À la fin de votre tour, inflige 8 points de dégâts à un adversaire aléatoire.', 8, 8, 8, 'Greg Staples', NULL, 10, 7, 1, NULL, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_298.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_298_premium.gif');

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
(13, 'Miracle', 'Archétype consistant à piocher beaucoup de cartes très rapidement afin de récupérer une combo infligeant beaucoup de dégâts.');

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
(2, 'Louis', 'Mantopoulos', 16, 37, 1, 'MrFrizz', 'MrFrizz', 'MrFrizz@salut.com'),
(3, 'William', 'Morgado', 10, 20, 1, 'Neji', 'Neji', 'Neji@gmail.com');

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
(11, 2, 2, 0, '2017-07-22 19:18:58');

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
-- Index pour la table `Card`
--
ALTER TABLE `Card`
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
-- AUTO_INCREMENT pour la table `Card`
--
ALTER TABLE `Card`
  MODIFY `idCard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `Definition`
--
ALTER TABLE `Definition`
  MODIFY `idDefinition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `idPersonLesson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Question`
--
ALTER TABLE `Question`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  MODIFY `idQuestionAnswered` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
-- Contraintes pour la table `Card`
--
ALTER TABLE `Card`
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