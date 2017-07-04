-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Mar 04 Juillet 2017 à 15:19
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `LearnStone`
--

-- --------------------------------------------------------

--
-- Structure de la table `Answer`
--

CREATE TABLE `Answer` (
  `IdAnswer` int(11) NOT NULL,
  `AnswerText` text NOT NULL,
  `IsCorrectAnswer` tinyint(1) NOT NULL,
  `IdQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Answer`
--

INSERT INTO `Answer` (`IdAnswer`, `AnswerText`, `IsCorrectAnswer`, `IdQuestion`) VALUES
(1, 'Moi', 1, 1),
(2, 'Toi', 0, 1),
(3, 'Learnstone', 1, 2),
(4, 'Hearthstone', 0, 2),
(5, 'Duno', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Card`
--

CREATE TABLE `Card` (
  `IdCard` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Text` text NOT NULL,
  `Attack` int(11) NOT NULL,
  `Health` int(11) NOT NULL,
  `ManaCost` int(11) NOT NULL,
  `Artist` varchar(255) NOT NULL,
  `Durability` int(11) DEFAULT NULL,
  `IdRefClass` int(11) NOT NULL,
  `IdRefCardsSet` int(11) NOT NULL,
  `IdRefType` int(11) NOT NULL,
  `IdRefRace` int(11) DEFAULT NULL,
  `IdRefRarity` int(11) NOT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `ImgGold` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Card`
--

INSERT INTO `Card` (`IdCard`, `Name`, `Text`, `Attack`, `Health`, `ManaCost`, `Artist`, `Durability`, `IdRefClass`, `IdRefCardsSet`, `IdRefType`, `IdRefRace`, `IdRefRarity`, `Img`, `ImgGold`) VALUES
(2, 'Sylvanas Coursevent', '<b>Râle d’agonie :</b> prend le contrôle d’un serviteur adverse aléatoire.', 5, 5, 6, 'Glenn Rane', 0, 10, 7, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_016_premium.gif'),
(3, 'Sylvanas Coursevent', '<b>Râle d’agonie :</b> prend le contrôle d’un serviteur adverse aléatoire.', 5, 5, 6, 'Glenn Rane', 0, 10, 7, 1, 2, 5, 'http://wow.zamimg.com/images/hearthstone/cards/frfr/original/EX1_016.png', 'http://wow.zamimg.com/images/hearthstone/cards/frfr/animated/EX1_016_premium.gif');

-- --------------------------------------------------------

--
-- Structure de la table `CardKeyWord`
--

CREATE TABLE `CardKeyWord` (
  `IdRefCardKeyWord` int(11) NOT NULL,
  `IdKeyWord` int(11) NOT NULL,
  `IdCard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Definition`
--

CREATE TABLE `Definition` (
  `IdDefinition` int(11) NOT NULL,
  `Word` varchar(45) NOT NULL,
  `WordText` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Definition`
--

INSERT INTO `Definition` (`IdDefinition`, `Word`, `WordText`) VALUES
(2, 'Aggro', 'Définit un archétype de deck particulièrement agressif, qui se joue rapidement et qui a pour objectif principal de terminer la partie très rapidement.');

-- --------------------------------------------------------

--
-- Structure de la table `KeyWord`
--

CREATE TABLE `KeyWord` (
  `IdKeyWord` int(11) NOT NULL,
  `LblKeyWord` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Lesson`
--

CREATE TABLE `Lesson` (
  `IdLesson` int(11) NOT NULL,
  `NumberLesson` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Img` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Lesson`
--

INSERT INTO `Lesson` (`IdLesson`, `NumberLesson`, `Text`, `Img`) VALUES
(1, 1, 'Here’s an example. On the image above, there are two minions on the opposing side. The left one is a minion with 1 mana cost, 2 Attack and 1 Health. The right one is a minion with 3 mana cost, 2 Attack, 2 Health, Stealth, and Divine Shield. On my side, there are two minions, the left one is a minion with 3 mana cost, 3 Attack and 3 Health, and the right one is a minion from my Hero Power effect with 1 Attack and 1 Health. To make things easier to read, I will write a minion’s with this format: [Mana Attack/Health]. So, 3 3/3 means a minion costs 3 mana, has 3 attack and 3 health.', 'https://imballinst.files.wordpress.com/2017/02/hearthstone-screenshot-12-21-15-20-32-54.png?w=1100'),
(2, 2, 'Don’t bet the farm against a Mage with secrets in play.\r\n\r\nPro Hearthstone player Thijs Moldendijk lived out a moment many virtual cardsharks are familiar with when he dumped a series of power-ups onto a Tirion Fordring, going straight for the face of Pavel Beltukov. Thijs knew he had a secret in play, which could have been anything from an Ice Block to a Mirror Entity.', 'https://i.kinja-img.com/gawker-media/image/upload/s--4zv49Kd---/c_scale,fl_progressive,q_80,w_800/cdvgfurwv9plg0u09dpt.png'),
(3, 3, 'Pour réussir cette quête, il faut essayer d\'avoir les carte qui permettent de mettre vos serviteurs dans votre main.', 'http://www.pockettactics.com/assets/BlogPosts/_resampled/ScaleWidthWzExNDBd/FillWzExNDAsNjAwXQ/HHeader.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Person`
--

CREATE TABLE `Person` (
  `IdPerson` int(4) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `NbGoodAnswer` int(4) NOT NULL,
  `NbQuestionAnswered` int(4) NOT NULL,
  `IdRefRole` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Person`
--

INSERT INTO `Person` (`IdPerson`, `Firstname`, `Lastname`, `NbGoodAnswer`, `NbQuestionAnswered`, `IdRefRole`, `Username`, `Password`, `Mail`) VALUES
(1, 'William', 'Morgado', 0, 0, 1, 'Neji', 'Neji', 'osef'),
(2, 'Steven', 'Kponou-Johnson', 0, 0, 2, 'Admin', 'niku', 'osef');

-- --------------------------------------------------------

--
-- Structure de la table `PersonLesson`
--

CREATE TABLE `PersonLesson` (
  `IdPersonLesson` int(11) NOT NULL,
  `IdPerson` int(11) NOT NULL,
  `IdLesson` int(11) NOT NULL,
  `DateRead` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Question`
--

CREATE TABLE `Question` (
  `IdQuestion` int(11) NOT NULL,
  `QuestionText` text NOT NULL,
  `NbUse` int(11) NOT NULL,
  `NbResult` int(11) NOT NULL,
  `Img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Question`
--

INSERT INTO `Question` (`IdQuestion`, `QuestionText`, `NbUse`, `NbResult`, `Img`) VALUES
(1, 'Qui es tu ?', 0, 0, NULL),
(2, 'Comment s\'appelle l\'application ?', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `QuestionAnswered`
--

CREATE TABLE `QuestionAnswered` (
  `IdQuestionAnswered` int(11) NOT NULL,
  `IdPerson` int(11) NOT NULL,
  `IdQuestion` int(11) NOT NULL,
  `IsAnswerWell` tinyint(1) NOT NULL,
  `DateAnswered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefCardsSet`
--

CREATE TABLE `RefCardsSet` (
  `IdRefCardsSet` int(11) NOT NULL,
  `LblCardsSet` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefCardsSet`
--

INSERT INTO `RefCardsSet` (`IdRefCardsSet`, `LblCardsSet`) VALUES
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
(12, 'League of Explorers');

-- --------------------------------------------------------

--
-- Structure de la table `RefClass`
--

CREATE TABLE `RefClass` (
  `IdRefClass` int(11) NOT NULL,
  `LblClass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefClass`
--

INSERT INTO `RefClass` (`IdRefClass`, `LblClass`) VALUES
(1, 'Mage'),
(2, 'Paladin'),
(3, 'Guerrier'),
(4, 'Demoniste'),
(5, 'Chasseur'),
(6, 'Voleur'),
(7, 'Chaman'),
(8, 'Pretre'),
(9, 'Druide'),
(10, 'Neutral');

-- --------------------------------------------------------

--
-- Structure de la table `RefRace`
--

CREATE TABLE `RefRace` (
  `IdRefRace` int(11) NOT NULL,
  `LblRace` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRace`
--

INSERT INTO `RefRace` (`IdRefRace`, `LblRace`) VALUES
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
  `IdRefRarity` int(11) NOT NULL,
  `LblRarity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRarity`
--

INSERT INTO `RefRarity` (`IdRefRarity`, `LblRarity`) VALUES
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
  `IdRefRole` int(11) NOT NULL,
  `LblRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRole`
--

INSERT INTO `RefRole` (`IdRefRole`, `LblRole`) VALUES
(1, 'Joueur'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `RefType`
--

CREATE TABLE `RefType` (
  `IdRefType` int(11) NOT NULL,
  `LblType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefType`
--

INSERT INTO `RefType` (`IdRefType`, `LblType`) VALUES
(1, 'Minion'),
(2, 'Weapon'),
(3, 'Spell');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`IdAnswer`),
  ADD KEY `FK_Answer_Question` (`IdQuestion`);

--
-- Index pour la table `Card`
--
ALTER TABLE `Card`
  ADD PRIMARY KEY (`IdCard`),
  ADD KEY `FK_Card_RefClass` (`IdRefClass`),
  ADD KEY `FK_Card_RefCardsSet` (`IdRefCardsSet`),
  ADD KEY `FK_Card_RefType` (`IdRefType`),
  ADD KEY `FK_Card_RefRace` (`IdRefRace`),
  ADD KEY `FK_Card_RefRarity` (`IdRefRarity`);

--
-- Index pour la table `CardKeyWord`
--
ALTER TABLE `CardKeyWord`
  ADD PRIMARY KEY (`IdRefCardKeyWord`),
  ADD KEY `FK_CardKeyWord_Card` (`IdCard`),
  ADD KEY `FK_CardKeyWord_KeyWord` (`IdKeyWord`);

--
-- Index pour la table `Definition`
--
ALTER TABLE `Definition`
  ADD PRIMARY KEY (`IdDefinition`);

--
-- Index pour la table `KeyWord`
--
ALTER TABLE `KeyWord`
  ADD PRIMARY KEY (`IdKeyWord`);

--
-- Index pour la table `Lesson`
--
ALTER TABLE `Lesson`
  ADD PRIMARY KEY (`IdLesson`);

--
-- Index pour la table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`IdPerson`),
  ADD KEY `FK_Person_RefRole` (`IdRefRole`);

--
-- Index pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD PRIMARY KEY (`IdPersonLesson`),
  ADD KEY `FK_PersonLesson_Person` (`IdPerson`),
  ADD KEY `FK_PersonLesson_Lesson` (`IdLesson`);

--
-- Index pour la table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`IdQuestion`);

--
-- Index pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD PRIMARY KEY (`IdQuestionAnswered`),
  ADD KEY `FK_QuestionAnswered_Person` (`IdPerson`),
  ADD KEY `FK_QuestionAnswered_Question` (`IdQuestion`);

--
-- Index pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  ADD PRIMARY KEY (`IdRefCardsSet`);

--
-- Index pour la table `RefClass`
--
ALTER TABLE `RefClass`
  ADD PRIMARY KEY (`IdRefClass`);

--
-- Index pour la table `RefRace`
--
ALTER TABLE `RefRace`
  ADD PRIMARY KEY (`IdRefRace`);

--
-- Index pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  ADD PRIMARY KEY (`IdRefRarity`);

--
-- Index pour la table `RefRole`
--
ALTER TABLE `RefRole`
  ADD PRIMARY KEY (`IdRefRole`);

--
-- Index pour la table `RefType`
--
ALTER TABLE `RefType`
  ADD PRIMARY KEY (`IdRefType`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Answer`
--
ALTER TABLE `Answer`
  MODIFY `IdAnswer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Card`
--
ALTER TABLE `Card`
  MODIFY `IdCard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `CardKeyWord`
--
ALTER TABLE `CardKeyWord`
  MODIFY `IdRefCardKeyWord` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Definition`
--
ALTER TABLE `Definition`
  MODIFY `IdDefinition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `KeyWord`
--
ALTER TABLE `KeyWord`
  MODIFY `IdKeyWord` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Lesson`
--
ALTER TABLE `Lesson`
  MODIFY `IdLesson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Person`
--
ALTER TABLE `Person`
  MODIFY `IdPerson` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  MODIFY `IdPersonLesson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Question`
--
ALTER TABLE `Question`
  MODIFY `IdQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  MODIFY `IdQuestionAnswered` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  MODIFY `IdRefCardsSet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `RefClass`
--
ALTER TABLE `RefClass`
  MODIFY `IdRefClass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `RefRace`
--
ALTER TABLE `RefRace`
  MODIFY `IdRefRace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  MODIFY `IdRefRarity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `RefRole`
--
ALTER TABLE `RefRole`
  MODIFY `IdRefRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `RefType`
--
ALTER TABLE `RefType`
  MODIFY `IdRefType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD CONSTRAINT `FK_Answer_Question` FOREIGN KEY (`IdQuestion`) REFERENCES `Question` (`IdQuestion`);

--
-- Contraintes pour la table `Card`
--
ALTER TABLE `Card`
  ADD CONSTRAINT `FK_Card_RefCardsSet` FOREIGN KEY (`IdRefCardsSet`) REFERENCES `RefCardsSet` (`IdRefCardsSet`),
  ADD CONSTRAINT `FK_Card_RefClass` FOREIGN KEY (`IdRefClass`) REFERENCES `RefClass` (`IdRefClass`),
  ADD CONSTRAINT `FK_Card_RefRace` FOREIGN KEY (`IdRefRace`) REFERENCES `RefRace` (`IdRefRace`),
  ADD CONSTRAINT `FK_Card_RefRarity` FOREIGN KEY (`IdRefRarity`) REFERENCES `RefRarity` (`IdRefRarity`),
  ADD CONSTRAINT `FK_Card_RefType` FOREIGN KEY (`IdRefType`) REFERENCES `RefType` (`IdRefType`);

--
-- Contraintes pour la table `CardKeyWord`
--
ALTER TABLE `CardKeyWord`
  ADD CONSTRAINT `FK_CardKeyWord_Card` FOREIGN KEY (`IdCard`) REFERENCES `Card` (`IdCard`),
  ADD CONSTRAINT `FK_CardKeyWord_KeyWord` FOREIGN KEY (`IdKeyWord`) REFERENCES `KeyWord` (`IdKeyWord`);

--
-- Contraintes pour la table `Person`
--
ALTER TABLE `Person`
  ADD CONSTRAINT `FK_Person_RefRole` FOREIGN KEY (`IdRefRole`) REFERENCES `RefRole` (`IdRefRole`);

--
-- Contraintes pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD CONSTRAINT `FK_PersonLesson_Lesson` FOREIGN KEY (`IdLesson`) REFERENCES `Lesson` (`IdLesson`),
  ADD CONSTRAINT `FK_PersonLesson_Person` FOREIGN KEY (`IdPerson`) REFERENCES `Person` (`IdPerson`);

--
-- Contraintes pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD CONSTRAINT `FK_QuestionAnswered_Person` FOREIGN KEY (`IdPerson`) REFERENCES `Person` (`IdPerson`),
  ADD CONSTRAINT `FK_QuestionAnswered_Question` FOREIGN KEY (`IdQuestion`) REFERENCES `Question` (`IdQuestion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
